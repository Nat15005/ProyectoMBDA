CREATE OR REPLACE PACKAGE BODY PK_EVENTOS AS
-- AD
    PROCEDURE AD_Eventos (  xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaInicio IN DATE, 
                            xFechaFin IN DATE, xUbicacion IN VARCHAR2 )
    AS
        vEventosCount INT;
    BEGIN
        SELECT COUNT(*) INTO vEventosCount FROM Eventos WHERE nombre = xNombre AND fechaInicio = xFechaInicio;
        IF vEventosCount = 0 THEN

            INSERT INTO Eventos (nombre, descripcion, fechaInicio, fechaFin, ubicacion)
            VALUES (xNombre, xDescripcion, xFechaPublicacion, xFechaFin, xUbicacion);

            DBMS_OUTPUT.PUT_LINE('Evento agregado con éxito');
        ELSE
            RAISE_APPLICATION_ERROR(-20001, 'Error: El evento ya existe');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el evento: ' || SQLERRM);
            ROLLBACK;
    END;  
-- MO
    PROCEDURE MO_Evento(xId IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, 
                        xFechaInicio IN DATE, xFechaFin IN DATE, xUbicacion IN VARCHAR2) 
    AS
    vEventoCount INT;
    BEGIN
        -- Verificar si la resena existe
        SELECT COUNT(*) INTO vEventoCount FROM Eventos WHERE id = xId;

        IF vEventoCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El evento no existe');
            RETURN;
        END IF;

        -- Actualizar la resena en la tabla de Resenas
        UPDATE Eventos
        SET nombre = xIdUsuario,
            descripcion = xDescripcion,
            fechaInicio = xFechaInicio,
            fechaFin = xFechaFin,
            ubicacion = xUbicacion
        WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Evento modificada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el evento: ' || SQLERRM);
    END MO_Evento;

-- EL
    PROCEDURE EL_Evento(xId IN INT) AS
        v_count INT;
    BEGIN
    
        SELECT COUNT(*) INTO v_count FROM Eventos WHERE id = xId;

        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El evento no existe');
            RETURN;
        END IF;

        -- Eliminar la resena de la tabla de Resenas
        DELETE FROM Eventos WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Evento eliminada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el evento: ' || SQLERRM);
    END EL_Multa;
END PK_EVENTOS;