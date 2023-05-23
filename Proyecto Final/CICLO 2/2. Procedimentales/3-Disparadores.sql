/*            DISPARADORES           */
    ----  ADD
    CREATE OR REPLACE TRIGGER TR_Resenas_automatizar
    BEFORE INSERT ON Resenas
    FOR EACH ROW
    DECLARE
        ultimo_id INTEGER;
    BEGIN
        SELECT MAX(id) INTO ultimo_id FROM Resenas;
        IF ultimo_id IS NULL THEN
            :NEW.id := 100001;
        ELSE
            :NEW.id := ultimo_id + 1;
        END IF;
            :NEW.fecha := SYSDATE;

    END;
    /

    CREATE OR REPLACE TRIGGER TR_Eventos_automatizar
    BEFORE INSERT ON Eventos
    FOR EACH ROW
    DECLARE
        ultimo_id INTEGER;
    BEGIN
        SELECT MAX(id) INTO ultimo_id FROM Eventos;
        IF ultimo_id IS NULL THEN
            :NEW.id := 101;
        ELSE
            :NEW.id := ultimo_id + 1;
        END IF;
    END;
    /
    CREATE OR REPLACE TRIGGER TR_Multas_automatizar
    BEFORE INSERT ON Multas
    FOR EACH ROW
    DECLARE
        ultimo_id INTEGER;
    BEGIN
        SELECT MAX(id) INTO ultimo_id FROM Multas;
        IF ultimo_id IS NULL THEN
            :NEW.id := 10001;
        ELSE
            :NEW.id := ultimo_id + 1;
        END IF;
        -- Automatizar fecha
        :NEW.fecha := SYSDATE;
    END;
    /

    -- calcular el monto a pagar dependiendo del motivo de la multa
    CREATE OR REPLACE TRIGGER TR_calcular_monto_multa
    BEFORE INSERT ON Multas
    FOR EACH ROW
    BEGIN
        -- Verificar el motivo de la multa y asignar el monto correspondiente
        CASE
            WHEN :NEW.motivo = 'Perdida' THEN
                :NEW.montoAPagar := 20000;
            WHEN :NEW.motivo = 'Daño' THEN
                :NEW.montoAPagar := 10000;
        END CASE;
    END;
/
    -- MO

    CREATE OR REPLACE TRIGGER TR_Eventos_Modificar
    BEFORE UPDATE ON Eventos
    FOR EACH ROW
    DECLARE
    vFechaActual DATE;
    BEGIN
    -- Obtener la fecha actual
    vFechaActual := SYSDATE;

    -- Verificar que la fecha de inicio del evento no sea anterior a la fecha actual
    IF :NEW.fechaInicio < vFechaActual THEN
        RAISE_APPLICATION_ERROR(-20005, 'No se puede modificar un evento que ya ha pasado.');
    END IF;
    END;
    /
    -- Generar multas
    CREATE OR REPLACE TRIGGER TR_Multas_GenerarMultas
    BEFORE UPDATE ON Prestamos
    FOR EACH ROW
    DECLARE
        vEstadoEjemplar VARCHAR2(20);
        vFechaDevolucion DATE;
        vUsuarioId INT;

    BEGIN
        -- Obtener el estado del ejemplar y la fecha de devolución
        SELECT estado, fechaDevolucion, idUsuario INTO vEstadoEjemplar, vFechaDevolucion, vUsuarioId
        FROM Ejemplares
        WHERE id = :NEW.idEjemplar;

        IF vEstadoEjemplar = 'Prestado' AND vFechaDevolucion < SYSDATE THEN
            -- El ejemplar sigue en estado prestado despues de la fecha de devolucion, generar multa por retraso
            INSERT INTO Multas (idUsuario,idPrestamo, montoAPagar, motivo, estado)
            VALUES (vUsuarioId, :NEW.id, 4000, 'Retraso en la devolución', 'Pendiente');

            DBMS_OUTPUT.PUT_LINE('Se ha generado una multa por retraso en la devolución');
        END IF;

    END;
    /
    -- EL
    --- Solo se puede eliminar un evento que no haya terminado
    CREATE OR REPLACE TRIGGER TR_evitar_eliminar_evento
    BEFORE DELETE ON Eventos
    FOR EACH ROW
    DECLARE
    BEGIN
        IF :OLD.fecha > SYSDATE THEN
            RAISE_APPLICATION_ERROR(-20008, 'No se puede eliminar un evento que no ha terminado.');
        END IF;
    END;
    /

    --No se puede eliminar una multa que tenga estado 'Pendiente'
    CREATE OR REPLACE TRIGGER TR_evitar_eliminar_multa
    BEFORE DELETE ON Multas
    FOR EACH ROW
    DECLARE
        v_estado VARCHAR2(15);
    BEGIN
        SELECT estado INTO v_estado
        FROM Multas
        WHERE id = :OLD.id;
        
        IF v_estado = 'Pendiente' THEN
            RAISE_APPLICATION_ERROR(-20009, 'No se puede eliminar una multa que tenga estado "Pendiente".');
        END IF;
    END;
    /

