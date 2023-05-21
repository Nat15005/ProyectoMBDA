CREATE OR REPLACE PACKAGE BODY PK_LIBROS IS 
    /* ------------------- LIBROS ------------------- */
    PROCEDURE AD_Libro (
        xTitulo IN VARCHAR2,
        xDescripcion IN VARCHAR2,
        xFechaPublicacion IN DATE,
        xISBN IN INT,
        xIdSubgenero IN INT
    ) AS
    BEGIN
        INSERT INTO Libros (titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES (xTitulo, xDescripcion, xFechaPublicacion, xISBN, xIdSubgenero);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Libro agregado con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el libro: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE MO_Libro (xId IN INT, xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE, xISBN IN INT, xIdSubgenero IN INT) AS
    v_count NUMBER;
    BEGIN
        -- Verificar si el libro existe
        SELECT COUNT(*) INTO v_count FROM Libros WHERE id = xId;
        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('El libro con ID ' || xId || ' no existe.');
        ELSE
            -- Actualizar los datos del libro
            UPDATE Libros
            SET titulo = xTitulo,
                descripcion = xDescripcion,
                fechaPublicacion = xFechaPublicacion,
                isbn = xISBN,
                idSubgenero = xIdSubgenero
            WHERE id = xId;
            
            DBMS_OUTPUT.PUT_LINE('El libro con ID ' || xId || ' ha sido modificado exitosamente.');
        END IF;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el libro: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE EL_Libro(xId IN INT) AS
        v_count INT;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM Ejemplares WHERE idLibro = xId;
        
        IF v_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('No se puede eliminar el libro porque existen ejemplares asociados a él');
        ELSE
            DELETE FROM Libros WHERE id = xId;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Libro eliminado con éxito');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El libro no existe en la base de datos');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el libro: ' || SQLERRM);
            ROLLBACK;
    END;

    /* ------------------- AUTORES ------------------- */
    PROCEDURE AD_Autor (xNombre IN VARCHAR2, xNacionalidad IN VARCHAR2, xFechaNacimiento IN DATE) AS
    BEGIN
        INSERT INTO Autores (nombre, nacionalidad, fechaNacimiento)
        VALUES (xNombre, xNacionalidad, xFechaNacimiento);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Autor agregado con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el autor: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE MO_Autor (xId IN INT, xNombre IN VARCHAR2, xNacionalidad IN VARCHAR2, xFechaNacimiento IN DATE) AS
    v_count NUMBER;
    BEGIN
        -- Verificar si el autor existe
        SELECT COUNT(*) INTO v_count FROM Autores WHERE id = xId;
        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('El autor con ID ' || xId || ' no existe.');
        ELSE
            -- Actualizar los datos del autor
            UPDATE Autores
            SET nombre = xNombre,
                nacionalidad = xNacionalidad,
                fechaNacimiento = xFechaNacimiento
            WHERE id = xId;
            
            DBMS_OUTPUT.PUT_LINE('El autor con ID ' || xId || ' ha sido modificado exitosamente.');
        END IF;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el autor: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE EL_Autor (xId IN INT) AS
        v_count INT;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM LibrosAutores WHERE idAutor = xId;

        IF v_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('No se puede eliminar el autor porque existen libros asociados a él');
        ELSE
            DELETE FROM Autores WHERE id = xId;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Autor eliminado con éxito');
        END IF;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El autor no existe en la base de datos');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el autor: ' || SQLERRM);
            ROLLBACK;
    END;

    /* ------------------- SUBGENERO ------------------- */

    PROCEDURE AD_Subgenero(xNombre IN VARCHAR2, xDescripcion IN VARCHAR2)
    AS
    BEGIN
        INSERT INTO Subgeneros (nombre, descripcion)
        VALUES (xNombre, xDescripcion);
        
        COMMIT;
        
        DBMS_OUTPUT.PUT_LINE('El subgénero ha sido agregado exitosamente.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el subgénero: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE MO_Subgenero(
        xId IN INT,
        xNombre IN VARCHAR2,
        xDescripcion IN VARCHAR2
    )
    AS
        v_count NUMBER;
    BEGIN
        -- Verificar si el subgénero existe
        SELECT COUNT(*) INTO v_count FROM Subgeneros WHERE id = xId;
        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('El subgénero con ID ' || xId || ' no existe.');
        ELSE
            -- Actualizar los datos del subgénero
            UPDATE Subgeneros
            SET nombre = xNombre,
                descripcion = xDescripcion
            WHERE id = xId;
            
            DBMS_OUTPUT.PUT_LINE('El subgénero con ID ' || xId || ' ha sido modificado exitosamente.');
        END IF;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el subgénero: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE EL_Subgenero(xId IN INT) AS
        v_count INT;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM Libros WHERE idSubgenero = xId;
        
        IF v_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('No se puede eliminar el subgénero porque existen libros asociados a él.');
        ELSE
            DELETE FROM Subgeneros WHERE id = xId;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Subgénero eliminado con éxito.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El subgénero no existe en la base de datos.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el subgénero: ' || SQLERRM);
            ROLLBACK;
    END;

    /* ------------------- EJEMPLAR ------------------- */

    PROCEDURE AD_Ejemplar (xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2, xFechaAdquisicion IN DATE) 
    AS
        v_count NUMBER;
    BEGIN
        -- Verificar si el libro existe
        SELECT COUNT(*) INTO v_count FROM Libros WHERE id = xIdLibro;
        IF v_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('El libro con ID ' || xIdLibro || ' no existe.');
        ELSE
            -- Agregar el nuevo ejemplar
            INSERT INTO Ejemplares (idLibro, ubicacion, estado, fechaAdquisicion)
            VALUES (xIdLibro, xUbicacion, xEstado, xFechaAdquisicion);
            
            DBMS_OUTPUT.PUT_LINE('El ejemplar ha sido agregado exitosamente.');
        END IF;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el ejemplar: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE MO_Ejemplar (xIdEjemplar IN INT, xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2, xFechaAdquisicion IN DATE)
    AS
    BEGIN
            -- Actualizar los datos del ejemplar
        UPDATE Ejemplares
        SET ubicacion = xUbicacion, estado = xEstado, fechaAdquisicion = xFechaAdquisicion
        WHERE id = xIdEjemplar;

        DBMS_OUTPUT.PUT_LINE('El ejemplar con ID ' || xIdEjemplar || ' ha sido modificado exitosamente.');
    
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el ejemplar: ' || SQLERRM);
            ROLLBACK;
    END;

    PROCEDURE EL_Ejemplar(xId IN INT) AS
        v_count INT;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM Prestamos WHERE idEjemplar = xId;
        
        IF v_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('No se puede eliminar el ejemplar porque tiene préstamos asociados a él.');
        ELSE
            DELETE FROM Ejemplares WHERE id = xId;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Ejemplar eliminado con éxito.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El ejemplar no existe en la base de datos.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el ejemplar: ' || SQLERRM);
            ROLLBACK;
    END;

    /* ------------------- CONSULTAS ------------------- */

    FUNCTION CO_LibrosSubgenero(xSubgenero IN INT)
    RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM LibrosPorSubgenero
            WHERE subgenero = xSubgenero;
        RETURN v_cursor;
    END;

    FUNCTION CO_UbicacionEjemplar (xTitulo IN VARCHAR2) RETURN SYS_REFCURSOR IS
    -- Mostrar dónde se encuentran los ejemplares de un libro específico y cuál es su estado actual (disponible, en préstamo, etc.)
    ref_cursor SYS_REFCURSOR;
    BEGIN
    OPEN ref_cursor FOR
        SELECT ej.id AS id_ejemplar, l.id AS id_libro, l.titulo, ej.ubicacion, ej.estado
        FROM Ejemplares ej
        JOIN Libros l ON ej.idLibro = l.id
        WHERE l.titulo = xTitulo;
    RETURN ref_cursor;
    END;

END PK_LIBROS;