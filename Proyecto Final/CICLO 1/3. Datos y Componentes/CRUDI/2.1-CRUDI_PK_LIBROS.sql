CREATE OR REPLACE PACKAGE BODY PK_LIBROS IS 
    /* ------------------- LIBROS - AUTORES - LIBROSAUTORES ------------------- */
    --AD
        PROCEDURE AD_LibroAutor (xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE,
                                xISBN IN INT, xIdSubgenero IN INT, xNombreAutor IN VARCHAR2, xNacionalidadAutor IN VARCHAR2, 
                                xFechaNacimientoAutor IN DATE) 
        AS
            vIdLibro Libros.id%TYPE;
            vIdAutor Autores.id%TYPE;
            vLibrosACount INT;
        BEGIN
            SELECT COUNT(*) INTO vLibrosACount FROM Libros WHERE titulo = xTitulo;
            IF vLibrosACount = 0 THEN
            -- Insertar el libro
                INSERT INTO Libros (titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
                VALUES (xTitulo, xDescripcion, xFechaPublicacion, xISBN, xIdSubgenero)
                RETURNING id INTO vIdLibro;
                
                -- Insertar el autor
                INSERT INTO Autores (nombre, nacionalidad, fechaNacimiento)
                VALUES (xNombreAutor, xNacionalidadAutor, xFechaNacimientoAutor)
                RETURNING id INTO vIdAutor;
    
                -- Asociar el libro y el autor en la tabla LibrosAutores
                INSERT INTO LibrosAutores (idLibro, idAutor)
                VALUES (vIdLibro, vIdAutor);
                COMMIT;
                DBMS_OUTPUT.PUT_LINE('Libro agregado con éxito');
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: El libro ya existe');
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error al agregar el libro: ' || SQLERRM);
                ROLLBACK;
        END;   
    --MO
        PROCEDURE MO_LibroAutor (xIdLibro IN INT, xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE,
                                xISBN IN INT, xIdSubgenero IN INT, xIdAutor IN INT, xNombreAutor IN VARCHAR2, 
                                xNacionalidadAutor IN VARCHAR2, xFechaNacimientoAutor IN DATE) 
        AS
        BEGIN
            -- Actualizar los datos del libro
            UPDATE Libros
            SET titulo = xTitulo,
                descripcion = xDescripcion,
                fechaPublicacion = xFechaPublicacion,
                isbn = xISBN,
                idSubgenero = xIdSubgenero
            WHERE id = xIdLibro;

            -- Actualizar los datos del autor
            UPDATE Autores
            SET nombre = xNombreAutor,
                nacionalidad = xNacionalidadAutor,
                fechaNacimiento = xFechaNacimientoAutor
            WHERE id = xIdAutor;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('El libro y el autor se han modificado exitosamente.');
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                DBMS_OUTPUT.PUT_LINE('Error al modificar el libro y el autor: ' || SQLERRM);
        END;
    --EL
        PROCEDURE EL_LibroAutor(xIdLibro IN INT, xIdAutor IN INT) AS
            vLibroCount INT;
            vAutorCount INT;
        BEGIN
            -- Verificar si el libro existe
            SELECT COUNT(*) INTO vLibroCount FROM Libros WHERE id = xIdLibro;
            
            IF vLibroCount = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Error: El libro no existe');
                RETURN;
            END IF;
            
            -- Verificar si el autor existe
            SELECT COUNT(*) INTO vAutorCount FROM Autores WHERE id = xIdAutor;
            
            IF vAutorCount = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Error: El autor no existe');
                RETURN;
            END IF;
            
            -- Eliminar la relación entre el libro y el autor en la tabla de asociación
            DELETE FROM LibrosAutores
            WHERE idLibro = xIdLibro AND idAutor = xIdAutor;
            
            -- Verificar si el libro tiene más autores asociados
            SELECT COUNT(*) INTO vLibroCount FROM LibrosAutores WHERE idLibro = xIdLibro;
            
            IF vLibroCount = 0 THEN
                -- No tiene más autores asociados, eliminar el libro
                DELETE FROM Libros WHERE id = xIdLibro;
            END IF;
            
            -- Verificar si el autor tiene más libros asociados
            SELECT COUNT(*) INTO vAutorCount FROM LibrosAutores WHERE idAutor = xIdAutor;
            
            IF vAutorCount = 0 THEN
                -- No tiene más libros asociados, eliminar el autor
                DELETE FROM Autores WHERE id = xIdAutor;
            END IF;
            
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('El libro y el autor se han eliminado exitosamente.');
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                DBMS_OUTPUT.PUT_LINE('Error al eliminar el libro y el autor: ' || SQLERRM);
        END;


    /* ------------------- SUBGENERO ------------------- */
    --AD
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
    --MO
        PROCEDURE MO_Subgenero(
            xId IN INT,
            xNombre IN VARCHAR2,
            xDescripcion IN VARCHAR2
        )
        AS
        BEGIN
            -- Actualizar los datos del subgénero
            UPDATE Subgeneros
            SET descripcion = xDescripcion
            WHERE nombre = xNombre;
                
            DBMS_OUTPUT.PUT_LINE('El subgénero con nombre ' || xNombre || ' ha sido modificado exitosamente.');

            COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error al modificar el subgénero: ' || SQLERRM);
                ROLLBACK;
        END;

    --EL
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
    --AD
        PROCEDURE AD_Ejemplar (xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2) 
        AS
            v_count NUMBER;
        BEGIN
            -- Verificar si el libro existe
            SELECT COUNT(*) INTO v_count FROM Libros WHERE id = xIdLibro;
            IF v_count = 0 THEN
                DBMS_OUTPUT.PUT_LINE('El libro con ID ' || xIdLibro || ' no existe.');
            ELSE
                -- Agregar el nuevo ejemplar
                INSERT INTO Ejemplares (idLibro, ubicacion, estado)
                VALUES (xIdLibro, xUbicacion, xEstado);
                
                DBMS_OUTPUT.PUT_LINE('El ejemplar ha sido agregado exitosamente.');
            END IF;
            
            COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error al agregar el ejemplar: ' || SQLERRM);
                ROLLBACK;
        END;
    --MO
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
    -- EL
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

    -- Mostrar todos los libros de un subgénero específico.
    FUNCTION CO_LibrosSubgenero(xSubgenero IN INT)
        RETURN SYS_REFCURSOR
    IS
        libros_cursor SYS_REFCURSOR;
    BEGIN
        OPEN libros_cursor FOR
            SELECT id, titulo, descripcion, fechaPublicacion, isbn
            FROM VistaLibrosPorSubgenero
            WHERE idSubgenero = xSubgenero;
        RETURN libros_cursor;
    END CO_LibrosSubgenero;

    -- Mostrar dónde se encuentran los ejemplares de un libro específico 
    -- y cuál es su estado actual (disponible, en préstamo, etc.)
    FUNCTION CO_UbicacionEjemplar (xTitulo IN VARCHAR2) 
        RETURN SYS_REFCURSOR 
    IS
        ref_cursor SYS_REFCURSOR;
    BEGIN
        OPEN ref_cursor FOR
            SELECT *
            FROM VistaUbicacionEjemplar
            WHERE TITULO = xTitulo;
        RETURN  ref_cursor;
    END CO_UbicacionEjemplar;

END PK_LIBROS;