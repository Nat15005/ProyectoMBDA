/*            DISPARADORES           */
    ----  ADD
CREATE OR REPLACE TRIGGER TR_Libros_automatizar
BEFORE INSERT ON Libros
FOR EACH ROW
DECLARE
    ultimo_id INTEGER;
BEGIN
    SELECT MAX(id) INTO ultimo_id FROM Libros;
    IF ultimo_id IS NULL THEN
        :NEW.id := 100000001;
    ELSE
        :NEW.id := ultimo_id + 1;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER TR_Subgeneros_automatizar
BEFORE INSERT ON Subgeneros
FOR EACH ROW
DECLARE
  last_id INTEGER;
BEGIN
  SELECT MAX(id) INTO last_id FROM Subgeneros;
  IF last_id IS NULL THEN
    :NEW.id := 1001;
  ELSE
    :NEW.id := last_id + 1;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER TR_Ejemplares_automatizar
BEFORE INSERT ON Ejemplares
FOR EACH ROW
DECLARE
  last_id INTEGER;
BEGIN
  SELECT MAX(id) INTO last_id FROM Ejemplares;
  IF last_id IS NULL THEN
    :NEW.id := 10000001;
  ELSE
    :NEW.id := last_id + 1;
  END IF;
  :NEW.fechaAdquisicion := SYSDATE;
  :NEW.estado := 'Oculto';
END;
/

CREATE OR REPLACE TRIGGER TR_Autores_automatizar
BEFORE INSERT ON Autores
FOR EACH ROW
DECLARE
    ultimo_id INTEGER;
BEGIN
    SELECT MAX(id) INTO ultimo_id FROM Autores;
    IF ultimo_id IS NULL THEN
        :NEW.id := 10001;
    ELSE
        :NEW.id := ultimo_id + 1;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER TR_Prestamos_automatizar
BEFORE INSERT ON Prestamos
FOR EACH ROW
DECLARE
    ultimo_id INTEGER;
BEGIN
    SELECT MAX(id) INTO ultimo_id FROM Prestamos;
    IF ultimo_id IS NULL THEN
        :NEW.id := 100001;
    ELSE
        :NEW.id := ultimo_id + 1;
    END IF;
    :NEW.fechaPrestamo := SYSDATE;
    :NEW.fechaDevolucion:= SYSDATE+7;
END;
/

CREATE OR REPLACE TRIGGER TR_Donaciones_automatizar
BEFORE INSERT ON Donaciones
FOR EACH ROW
DECLARE
  last_id INTEGER;
BEGIN
  SELECT MAX(id) INTO last_id FROM Donaciones;
  IF last_id IS NULL THEN
    :NEW.id := 10001;
  ELSE
    :NEW.id := last_id + 1;
  END IF;
  :NEW.fechaDonacion := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER TR_Usuarios_automatizar
BEFORE INSERT ON Usuarios
FOR EACH ROW
DECLARE
  last_id INTEGER;
BEGIN
  SELECT MAX(id) INTO last_id FROM Usuarios;
  IF last_id IS NULL THEN
    :NEW.id := 1000001;
  ELSE
    :NEW.id := last_id + 1;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER TR_Suscripciones_automatizar
BEFORE INSERT ON Suscripciones
FOR EACH ROW
DECLARE
    ultimo_id INTEGER;
BEGIN
    SELECT MAX(id) INTO ultimo_id FROM Suscripciones;
    IF ultimo_id IS NULL THEN
        :NEW.id := 10000001;
    ELSE
        :NEW.id := ultimo_id + 1;
    END IF;
    :NEW.fechaInicio := SYSDATE;
    :NEW.fechaFin := SYSDATE+30;
    :NEW.estado := 'Activo';
END;
/    


    -- Cuando se intenta insertar un nuevo registro en la tabla "Prestamos", se debe verificar que el libro correspondiente no esté actualmente prestado
CREATE OR REPLACE TRIGGER TR_Prestamos_PrestadoOno
BEFORE INSERT ON Prestamos
FOR EACH ROW
DECLARE
  num_ejemplares_prestados INTEGER;
BEGIN
  SELECT COUNT(*) INTO num_ejemplares_prestados
  FROM Prestamos
  WHERE idEjemplar = :NEW.idEjemplar;
  
  IF num_ejemplares_prestados > 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'El ejemplar ya está prestado.');
  END IF;
END;
/

    -- verifica si el usuario tiene demasiados libros prestados antes de insertar un registro en la tabla "Prestamos":
CREATE OR REPLACE TRIGGER TR_Prestamos_MaxLibros
BEFORE INSERT ON Prestamos
FOR EACH ROW
DECLARE
    num_libros_prestados INTEGER;
    max_libros_prestados INTEGER := 5; -- limite de préstamos activos permitidos por usuario
BEGIN
    SELECT COUNT(*) INTO num_libros_prestados
    FROM Prestamos JOIN ejemplares ON prestamos.idEjemplar = ejemplares.id
    WHERE idUsuario = :NEW.idUsuario
    AND ejemplares.estado = 'Prestado';
    IF num_libros_prestados >= max_libros_prestados THEN
        RAISE_APPLICATION_ERROR(-20003, 'El usuario ha alcanzado el límite de préstamos permitidos.');
    END IF;
END;
/

--Actualizar el estado del ejemplar a "Prestado" cada vez que se inserte una fila en la tabla "Prestamos"
CREATE OR REPLACE TRIGGER TR_ACTUALIZAR_ESTADO_EJEMPLAR
AFTER INSERT ON Prestamos
FOR EACH ROW
DECLARE
  ejemplar_estado VARCHAR2(15);
BEGIN
  SELECT estado INTO ejemplar_estado FROM Ejemplares WHERE id = :NEW.idEjemplar;
  
  IF ejemplar_estado = 'Oculto' THEN
    UPDATE Ejemplares SET estado = 'Disponible' WHERE id = :NEW.idEjemplar;
    UPDATE Ejemplares SET estado = 'Prestado' WHERE id = :NEW.idEjemplar;
  ELSIF ejemplar_estado = 'Disponible' THEN
    UPDATE Ejemplares SET estado = 'Prestado' WHERE id = :NEW.idEjemplar;
  END IF;
END;
/


    -- MO
-- El estado se puede modificar de  oculto a disponible o en reparacion, de reparacion a disponible, disponible a prestado, oculto o en reparacion y de prestado a disponible
CREATE OR REPLACE TRIGGER TR_Ejemplares_estado
BEFORE UPDATE ON Ejemplares
FOR EACH ROW
BEGIN
    IF :OLD.estado = :NEW.estado THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Oculto' AND :NEW.estado = 'Disponible' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Oculto' AND :NEW.estado = 'Reparacion' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Reparacion' AND :NEW.estado = 'Disponible' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Disponible' AND :NEW.estado = 'Prestado' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Disponible' AND :NEW.estado = 'Oculto' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Disponible' AND :NEW.estado = 'Reparacion' THEN
        :NEW.estado := :NEW.estado;
    ELSIF :OLD.estado = 'Prestado' AND :NEW.estado = 'Disponible' THEN
        :NEW.estado := :NEW.estado;
    ELSE
        RAISE_APPLICATION_ERROR(-20008, 'No se puede realizar esta acción de cambio de estado');
    END IF;
END;
/

    -- EL
    --- Solo se puede eliminar un ejemplar que no esté prestado
CREATE OR REPLACE TRIGGER TR_evitar_eliminar_ejemplar
BEFORE DELETE ON Ejemplares
FOR EACH ROW
DECLARE
BEGIN
    IF :OLD.estado = 'Prestado' THEN
        RAISE_APPLICATION_ERROR(-20008, 'No se puede eliminar un ejemplar que está prestado.');
    ELSE
        NULL;
    END IF;
END;
/

    --- Solo se puede eliminar una suscripcion si su estado está 'Inactivo'
CREATE OR REPLACE TRIGGER TR_evitar_eliminar_suscripcion
BEFORE DELETE ON Suscripciones
FOR EACH ROW
DECLARE
BEGIN
    IF :OLD.estado <> 'Inactivo' THEN
        RAISE_APPLICATION_ERROR(-20009, 'No se puede eliminar una suscripción que no está inactiva.');
    END IF;
END;
/
