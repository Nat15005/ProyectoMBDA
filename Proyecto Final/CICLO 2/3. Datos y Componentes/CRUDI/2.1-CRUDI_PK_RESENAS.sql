CREATE OR REPLACE PACKAGE BODY PK_RESENAS AS
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
END PK_RESENAS;