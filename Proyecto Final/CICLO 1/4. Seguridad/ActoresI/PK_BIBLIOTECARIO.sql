CREATE OR REPLACE PACKAGE BODY PK_BIBLIOTECARIO IS 

    PROCEDURE AD_Donacion(
            xIdDonador IN INT,
            xTipoDonacion IN VARCHAR2,
            xTituloLibro IN VARCHAR2,
            xDescripcionLibro IN VARCHAR2,
            xFechaPublicacion IN DATE,
            xISBN IN INT,
            xIdSubgenero IN INT,
            xNombreAutor IN VARCHAR2,
            xNacionalidadAutor IN VARCHAR2,
            xFechaNacimientoAutor IN DATE,
            xUbicacionEjemplar IN VARCHAR2
        ) AS
            vIdLibro INT;
            vLibroCount INT;
            vIdAutor INT;
            vAutorCount INT;
            LACount INT;
            vAutorExistente INT; -- Variable adicional para determinar si el autor existe
        BEGIN
            -- Verificar si el libro existe en la tabla "Libros"
            SELECT COUNT(*) INTO vLibroCount FROM Libros WHERE titulo = xTituloLibro;

            IF vLibroCount = 0 THEN
                -- El libro no existe, registrar un nuevo libro
                INSERT INTO Libros (titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
                VALUES (xTituloLibro, xDescripcionLibro, xFechaPublicacion, xISBN, xIdSubgenero)
                RETURNING id INTO vIdLibro;
                
                -- Crear el ejemplar del libro
                INSERT INTO Ejemplares (idLibro, ubicacion)
                VALUES (vIdLibro, xUbicacionEjemplar);
            ELSE
                -- El libro existe, obtener su ID
                SELECT id INTO vIdLibro FROM Libros WHERE titulo = xTituloLibro;
                
                -- Añadir un ejemplar del libro
                INSERT INTO Ejemplares (idLibro, ubicacion)
                VALUES (vIdLibro, xUbicacionEjemplar);
            END IF;

            -- Verificar si el autor existe en la tabla "Autores"
            SELECT COUNT(*) INTO vAutorCount FROM Autores WHERE nombre = xNombreAutor AND fechaNacimiento = xFechaNacimientoAutor;

            IF vAutorCount = 0 THEN
                -- El autor no existe, registrar un nuevo autor
                INSERT INTO Autores (nombre, nacionalidad, fechaNacimiento)
                VALUES (xNombreAutor, xNacionalidadAutor, xFechaNacimientoAutor)
                RETURNING id INTO vIdAutor;
                vAutorExistente := 0; -- Marcar que el autor no existía previamente
            ELSE
                -- El autor existe, obtener su ID
                SELECT id INTO vIdAutor FROM Autores WHERE nombre = xNombreAutor AND fechaNacimiento = xFechaNacimientoAutor;
                vAutorExistente := 1; -- Marcar que el autor existe
            END IF;

            IF vAutorExistente = 0 THEN
                -- Relacionar el libro con el autor en la tabla LibrosAutores
                INSERT INTO LibrosAutores (idLibro, idAutor)
                VALUES (vIdLibro, vIdAutor);
            END IF;

            -- Registrar la donación
            INSERT INTO Donaciones (tipoDonacion, idLibro, idDonador)
            VALUES (xTipoDonacion, vIdLibro, xIdDonador);

            DBMS_OUTPUT.PUT_LINE('Donación registrada con éxito');
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('Error: El libro o el autor asociado no existen');
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error al registrar la donación: ' || SQLERRM);
        END;

    FUNCTION CO_Donacion
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM Donaciones;

        RETURN v_cursor;
    END;

    PROCEDURE AD_Donador (xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                                xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                                xTelefono IN INT, xCorreo IN VARCHAR2) AS
            vIdUsuario INT;
            vIdDonador INT;
        BEGIN
            -- Insertar el usuario en la tabla Usuarios y obtener el ID generado automáticamente
            INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono)
            VALUES (xNombre, xApellido, xDireccion, xGenero, xFechaNacimiento, xOcupacion, xTelefono)
            RETURNING id INTO vIdUsuario;

            -- Insertar el ID del usuario en la tabla Donadores
            INSERT INTO Donadores (idDonador)
            VALUES (vIdUsuario);

            -- Insertar el correo electrónico en la tabla Correos
            INSERT INTO Correos (idUsuario, correo)
            VALUES (vIdUsuario, xCorreo);

            -- Mensaje de éxito
            DBMS_OUTPUT.PUT_LINE('Donador agregado con éxito');

            -- Hacer commit de las transacciones
            COMMIT;
        EXCEPTION
            -- En caso de error, hacer rollback de las transacciones y mostrar el mensaje de error
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error al agregar el donador: ' || SQLERRM);
                ROLLBACK;
        END AD_Donador;

    FUNCTION CO_Donador
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM DONADORES;
        RETURN v_cursor;
    END;

    PROCEDURE AD_UsuarioCorreo (
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN NUMBER,
        xCorreo IN VARCHAR2
    ) AS
        vIdUsuario INT;
    BEGIN
        -- Insertar datos en la tabla Usuarios
        INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono)
        VALUES (xNombre, xApellido, xDireccion, xGenero, xFechaNacimiento, xOcupacion, xTelefono) RETURNING id INTO vIdUsuario ;

        -- Insertar el correo electrónico del usuario
        INSERT INTO Correos (idUsuario, correo)
        VALUES (vIdUsuario, xCorreo);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Usuario agregado con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar el usuario: ' || SQLERRM);
            ROLLBACK;
    END AD_UsuarioCorreo;

    PROCEDURE MO_UsuarioCorreo (
        xIdUsuario IN INT,
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN NUMBER,
        xCorreo IN VARCHAR2
    ) AS
    BEGIN
        -- Actualizar los datos del usuario
        UPDATE Usuarios
        SET nombre = xNombre,
            apellido = xApellido,
            direccion = xDireccion,
            genero = xGenero,
            fechaNacimiento = xFechaNacimiento,
            ocupacion = xOcupacion,
            telefono = xTelefono
        WHERE id = xIdUsuario;

        -- Actualizar el correo electrónico del usuario
        UPDATE Correos
        SET correo = xCorreo
        WHERE idUsuario = xIdUsuario;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Usuario modificado con éxito.');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No se encontró el usuario con ID ' || xIdUsuario);
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el usuario: ' || SQLERRM);
            ROLLBACK;
    END MO_UsuarioCorreo;

    FUNCTION CO_Usuario
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM USUARIOS;

        RETURN v_cursor;
    END;

    PROCEDURE AD_Suscripcion (
        xFechaInicio IN DATE,
        xFechaFin IN DATE,
        xEstado IN VARCHAR2,
        xIdUsuario IN INT
    ) AS
    BEGIN
        -- Insertar datos en la tabla Suscripciones
        INSERT INTO Suscripciones (fechaInicio, fechaFin, estado, idUsuario)
        VALUES (xFechaInicio, xFechaFin, xEstado, xIdUsuario);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Suscripción agregada con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al agregar la suscripción: ' || SQLERRM);
            ROLLBACK;
    END AD_Suscripcion;

    PROCEDURE MO_Suscripcion (
        xIdSuscripcion IN INT,
        xFechaInicio IN DATE,
        xFechaFin IN DATE,
        xEstado IN VARCHAR2,
        xIdUsuario IN INT
    ) AS
    BEGIN
        -- Actualizar datos en la tabla Suscripciones
        UPDATE Suscripciones
        SET fechaInicio = xFechaInicio,
            fechaFin = xFechaFin,
            estado = xEstado,
            idUsuario = xIdUsuario
        WHERE id = xIdSuscripcion;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Suscripción modificada con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar la suscripción: ' || SQLERRM);
            ROLLBACK;
    END MO_Suscripcion;

    FUNCTION CO_Suscripcion
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM SUSCRIPCIONES;

        RETURN v_cursor;
    END;

    PROCEDURE AD_Prestamo (xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT) AS
    BEGIN
        INSERT INTO Prestamos (idEjemplar, idLibro, idUsuario)
        VALUES (xIdEjemplar, xIdLibro, xIdUsuario);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Prestamo agregado con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al registrar el prestamo: ' || SQLERRM);
            ROLLBACK;
    END AD_Prestamo;

    PROCEDURE MO_Prestamo(
        xId IN INT,
        xFechaPrestamo IN DATE,
        xFechaDevolucion IN DATE,
        xIdEjemplar IN INT,
        xIdLibro IN INT,
        xIdUsuario IN INT
    ) AS
    BEGIN
        UPDATE Prestamos
        SET fechaPrestamo = xFechaPrestamo,
            fechaDevolucion = xFechaDevolucion,
            idEjemplar = xIdEjemplar,
            idLibro = xIdLibro,
            idUsuario = xIdUsuario
        WHERE id = xId;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Prestamo modificado con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el prestamo: ' || SQLERRM);
            ROLLBACK;
    END MO_Prestamo;

    PROCEDURE EL_Prestamo(xId IN INT) AS
    BEGIN
        DELETE FROM Prestamos WHERE id = xId;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Préstamo eliminado con éxito');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El préstamo con ID ' || xId || ' no existe');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el préstamo: ' || SQLERRM);
            ROLLBACK;
    END EL_Prestamo;

    FUNCTION CO_Prestamo
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM PRESTAMOS;

        RETURN v_cursor;
    END;

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
    BEGIN
        -- Eliminar la relación entre el libro y el autor en la tabla de asociación
        DELETE FROM LibrosAutores
        WHERE idLibro = xIdLibro AND idAutor = xIdAutor;

        -- Eliminar el libro si no tiene más autores asociados
        DELETE FROM Libros WHERE id = xIdLibro;

        -- Eliminar el autor si no tiene más libros asociados
        DELETE FROM Autores WHERE id = xIdAutor;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('El libro y el autor se han eliminado exitosamente.');
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error al eliminar el libro y el autor: ' || SQLERRM);
    END;

    FUNCTION CO_Libros
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM LIBROS;

        RETURN v_cursor;
    END;

    FUNCTION CO_Autores
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM AUTORES;

        RETURN v_cursor;
    END;

    FUNCTION CO_LibrosAutores
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM LIBROSAUTORES;

        RETURN v_cursor;
    END;

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

    FUNCTION CO_Subgenero
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM SUBGENEROS;

        RETURN v_cursor;
    END;

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

    FUNCTION CO_Ejemplar
        RETURN SYS_REFCURSOR
    IS
        v_cursor SYS_REFCURSOR;
    BEGIN
        OPEN v_cursor FOR
            SELECT *
            FROM EJEMPLARES;
        RETURN v_cursor;
    END;

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

    FUNCTION CO_PrestamoPorUsuario
    RETURN SYS_REFCURSOR
    IS
        res SYS_REFCURSOR;
    BEGIN
        OPEN res FOR
            SELECT id_usuario, nombre, apellido, num_libros_prestados,num_prestamos_activos
            FROM PrestamosPorUsuario;
        RETURN res;
    END CO_PrestamoPorUsuario;

END PK_BIBLIOTECARIO;