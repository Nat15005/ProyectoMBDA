CREATE OR REPLACE PACKAGE BODY PK_DONACIONES IS
    /* ------------------- DONADORES ------------------- */

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

    PROCEDURE MO_Donador(   xIdDonador IN INT, xNombre IN VARCHAR2, xApellido IN VARCHAR2,
                            xDireccion IN VARCHAR2, xGenero IN VARCHAR2, xFechaNacimiento IN DATE,
                            xOcupacion IN VARCHAR2, xTelefono IN INT, xCorreo IN VARCHAR2) 
    AS
        vDonadorCount INT;
    BEGIN
        -- Verificar si el donador existe
        SELECT COUNT(*) INTO vDonadorCount FROM Donadores WHERE idDonador = xIdDonador;

        IF vDonadorCount > 0 THEN
            -- Modificar los datos del donador y su correo electrónico
            UPDATE Usuarios
            SET nombre = xNombre,
                apellido = xApellido,
                direccion = xDireccion,
                genero = xGenero,
                fechaNacimiento = xFechaNacimiento,
                ocupacion = xOcupacion,
                telefono = xTelefono
            WHERE id = xIdDonador;

            UPDATE Correos
            SET correo = xCorreo
            WHERE idUsuario = xIdDonador;

            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Donador modificado con éxito');
        ELSE
            DBMS_OUTPUT.PUT_LINE('El donador con el ID ' || xIdDonador || ' no existe');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el donador: ' || SQLERRM);
            ROLLBACK;
    END MO_Donador;


    PROCEDURE EL_Donador(xIdDonador IN INT) AS
        vDonadorCount INT;
    BEGIN
        -- Verificar si el donador existe
        SELECT COUNT(*) INTO vDonadorCount FROM Donadores WHERE idDonador = xIdDonador;
        IF vDonadorCount > 0 THEN
            -- Eliminar el donador y sus registros relacionados
            DELETE FROM Donadores WHERE idDonador = xIdDonador;
            DELETE FROM Correos WHERE idUsuario = xIdDonador;
            DELETE FROM Usuarios WHERE id = xIdDonador;
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Donador eliminado con éxito');
        ELSE
            DBMS_OUTPUT.PUT_LINE('El donador con el ID ' || xIdDonador || ' no existe');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el donador: ' || SQLERRM);
            ROLLBACK;
    END EL_Donador;

    /* ------------------- DONACIONES ------------------- */
-- ADD
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

-- MO
    PROCEDURE MO_Donacion(
        xIdDonacion IN INT,
        xIdDonador IN INT,
        xTipoDonacion IN VARCHAR2,
        xIdLibro IN INT,
        xTituloLibro IN VARCHAR2,
        xDescripcionLibro IN VARCHAR2,
        xFechaPublicacion IN DATE,
        xISBN IN INT,
        xIdSubgenero IN INT,
        xIdAutor IN INT,
        xNombreAutor IN VARCHAR2,
        xNacionalidadAutor IN VARCHAR2,
        xFechaNacimientoAutor IN DATE
    ) AS
        vIdLibro INT;
        vLibroCount INT;
        vIdAutor INT;
        vAutorCount INT;
        LACount INT;
        vAutorExistente INT; -- Variable adicional para determinar si el autor existe
    BEGIN
        -- Verificar si la donación existe
        SELECT COUNT(*) INTO vLibroCount FROM Donaciones WHERE id = xIdDonacion;

        IF vLibroCount = 0 THEN
            -- La donación no existe, mostrar mensaje de error
            DBMS_OUTPUT.PUT_LINE('Error: La donación no existe');
            RETURN;
        END IF;

        -- Actualizar los datos del libro
        UPDATE Libros
        SET titulo = xTituloLibro,
            descripcion = xDescripcionLibro,
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

        -- Actualizar la donación existente
        UPDATE Donaciones
        SET tipoDonacion = xTipoDonacion,
            idLibro = xIdLibro,
            idDonador = xIdDonador
        WHERE id = xIdDonacion;

        DBMS_OUTPUT.PUT_LINE('Donación modificada con éxito');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Error: La donación, el libro o el autor asociado no existen');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar la donación: ' || SQLERRM);
    END;

    PROCEDURE EL_Donacion (xId IN INT) AS
    BEGIN
        DELETE FROM Donaciones WHERE id = xId;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Donación eliminada con éxito');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('La donación con ID ' || xId || ' no existe');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar la donación: ' || SQLERRM);
            ROLLBACK;
        
    END EL_Donacion;  

    /* ------------------- CONSULTAS ------------------- */

    FUNCTION CO_DonacionesDonador(
        xIdDonador IN INT
    ) RETURN SYS_REFCURSOR AS
        vCursor SYS_REFCURSOR;
    BEGIN
        OPEN vCursor FOR
        SELECT *
        FROM VistaDonacionesPorDonador
        WHERE idDonador = xIdDonador;

        RETURN vCursor;
    END;

END PK_DONACIONES;
