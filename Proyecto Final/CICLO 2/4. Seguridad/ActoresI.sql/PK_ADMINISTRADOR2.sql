CREATE OR REPLACE PACKAGE BODY PK_ADMINISTRADOR2 AS

-- AD
    PROCEDURE AD_Resena (   xIdEjemplar IN INT, xIdUsuario IN INT, 
                            xComentario IN VARCHAR2, xCalificacion IN INT   )
    AS
        vIdResena Resenas.id%TYPE;
        vUsuarioCount INT;
        vEjemplarCount INT;
    BEGIN
        -- Verificar si el usuario y el ejemplar existen
        SELECT COUNT(*) INTO vUsuarioCount FROM Usuarios WHERE id = xIdUsuario;
        SELECT COUNT(*) INTO vEjemplarCount FROM Ejemplares WHERE id = xIdEjemplar;

        IF vUsuarioCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El usuario no existe');
            RETURN;
        END IF;

        IF vEjemplarCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El ejemplar no existe');
            RETURN;
        END IF;

        INSERT INTO Resenas (idEjemplar,idUsuario,comentario,calificacion)
        VALUES (xIdEjemplar, xIdUsuario, xComentario, xCalificacion)
        RETURNING id INTO vIdResena;

        DBMS_OUTPUT.PUT_LINE('Reseña agregada con éxito');
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al agregar la reseña: ' || SQLERRM);
    END AD_Resena;

-- MO
    PROCEDURE MO_Resena(    xId IN INT, xIdEjemplar IN INT, xIdUsuario IN INT, 
                            xComentario IN VARCHAR2, xCalificacion IN INT   ) 
    AS
    vResenaCount INT;
    BEGIN
        -- Verificar si la resena existe
        SELECT COUNT(*) INTO vResenaCount FROM Resenas WHERE id = xId;

        IF vResenaCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: La reseña no existe');
            RETURN;
        END IF;

        -- Actualizar la resena en la tabla de Resenas
        UPDATE Resenas
        SET idEjemplar = xIdEjemplar,
            idUsuario = xIdUsuario,
            comentario = xComentario,
            calificacion = xCalificacion
        WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Reseña modificada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar la reseña: ' || SQLERRM);
    END MO_Resena;

 -- EL
    PROCEDURE EL_Resena(xId IN INT) AS
        v_count INT;
    BEGIN
    -- Verificar si la reseña existe
        SELECT COUNT(*) INTO v_count FROM Resenas WHERE id = xId;

        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: La reseña no existe');
            RETURN;
        END IF;

        -- Eliminar la reseña de la tabla de Resenas
        DELETE FROM Resenas WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Reseña eliminada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar la reseña: ' || SQLERRM);
    END EL_Resena;

-- AD
    PROCEDURE AD_Multa (xIdUsuario IN INT, xIdPrestamo IN INT, 
                        xMotivo IN VARCHAR2, xEstado IN VARCHAR2)
    AS
    BEGIN
    AS
        vIdMulta Multas.id%TYPE;
        vUsuarioCount INT;
        vPrestamoCount INT;
    BEGIN
        -- Verificar si el usuario y el ejemplar existen
        SELECT COUNT(*) INTO vUsuarioCount FROM Usuarios WHERE id = xIdUsuario;
        SELECT COUNT(*) INTO vPrestamoCount FROM Prestamos WHERE id = xIdPrestamo;

        IF vUsuarioCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El usuario no existe');
            RETURN;
        END IF;

        IF xIdPrestamo = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: El prestamo no existe');
            RETURN;
        END IF;

        INSERT INTO Multas (idUsuario,idPrestamo,motivo,estado)
        VALUES (xIdUsuario, xIdPrestamo, xMotivo, xEstado)
        RETURNING id INTO vIdMulta;

        DBMS_OUTPUT.PUT_LINE('Multa agregada con éxito');
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al agregar la multa: ' || SQLERRM);
    END AD_Resena;

-- MO
    PROCEDURE MO_Multa(    xId IN INT, xIdUsuario IN INT, xIdPrestamo IN INT, 
                            xFecha IN DATE, xMotivo IN VARCHAR2, xEstado IN VARCHAR2   ) 
    AS
    vMultaCount INT;
    BEGIN
        -- Verificar si la resena existe
        SELECT COUNT(*) INTO vMultaCount FROM Multas WHERE id = xId;

        IF vMultaCount = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: La multa no existe');
            RETURN;
        END IF;

        -- Actualizar la resena en la tabla de Resenas
        UPDATE Multas
        SET idUsuario = xIdUsuario,
            idPrestamo = xIdPrestamo,
            fecha = xFecha,
            montoAPagar = xCalificacion,
            estado = xEstado
        WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Multa modificada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar la multa: ' || SQLERRM);
    END MO_Multa;

-- EL
    PROCEDURE EL_Multa(xId IN INT) AS
        v_count INT;
    BEGIN
    
        SELECT COUNT(*) INTO v_count FROM Multas WHERE id = xId;

        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Error: La multa no existe');
            RETURN;
        END IF;

        -- Eliminar la reseña de la tabla de Resenas
        DELETE FROM Multa WHERE id = xId;

        DBMS_OUTPUT.PUT_LINE('Multa eliminada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar la multa: ' || SQLERRM);
    END EL_Multa;

END PK_ADMINISTRADOR2;
