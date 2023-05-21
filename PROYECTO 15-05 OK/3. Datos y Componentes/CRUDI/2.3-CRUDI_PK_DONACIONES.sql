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

    PROCEDURE MO_Donador(
        xIdDonador IN INT,
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN INT,
        xCorreo IN VARCHAR2
    ) AS
    BEGIN
        UPDATE Usuarios
        SET nombre = xNombre,
            apellido = xApellido,
            direccion = xDireccion,
            genero = xGenero,
            fechaNacimiento = xFechaNacimiento,
            ocupacion = xOcupacion,
            telefono = xTelefono
        WHERE id = (SELECT idDonador FROM Donadores WHERE idDonador = xIdDonador);
        
        -- Actualizar el correo electrónico del usuario
        UPDATE Correos
        SET correo = xCorreo
        WHERE idDonador = xIdDonador;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Donador modificado con éxito');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('El donador con id ' || xIdDonador || ' no existe');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar el donador: ' || SQLERRM);
            ROLLBACK;
    END MO_Donador;

    PROCEDURE EL_Donador(xIdDonador IN INT) AS
    BEGIN
    DELETE FROM Donadores WHERE idDonador = xIdDonador;
    DELETE FROM Usuarios WHERE id = xIdDonador;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Donador eliminado con éxito');
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('El donador con el id ' || xIdDonador || ' no existe');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar el donador: ' || SQLERRM);
        ROLLBACK;
    END EL_Donador;

    /* ------------------- DONACIONES ------------------- */

    PROCEDURE AD_Donacion (xFechaDonacion IN DATE, xTipoDonacion IN VARCHAR2, xIdLibro IN INT, xIdDonador IN INT) AS
    BEGIN
        INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador)
        VALUES (xFechaDonacion, xTipoDonacion, xIdLibro, xIdDonador);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Donación agregada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al registrar el prestamo: ' || SQLERRM);
            ROLLBACK;
    END AD_Donacion;

    PROCEDURE MO_Donacion (
        xId IN INT,
        xFechaDonacion IN DATE,
        xTipoDonacion IN VARCHAR2,
        xIdLibro IN INT,
        xIdDonador IN INT
    ) AS
    BEGIN
        UPDATE Donaciones
        SET fechaDonacion = xFechaDonacion,
            tipoDonacion = xTipoDonacion,
            idLibro = xIdLibro,
            idDonador = xIdDonador
        WHERE id = xId;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Donación modificada con éxito');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al modificar la donación: ' || SQLERRM);
            ROLLBACK;

    END MO_Donacion;

    PROCEDURE EL_Donacion(xId IN INT) AS
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

    FUNCTION CO_DonacionesDonador
    RETURN SYS_REFCURSOR
    IS
        c SYS_REFCURSOR;
    BEGIN
        OPEN c FOR
            SELECT d.idDonador, COUNT(d.id) AS totalDonaciones, LISTAGG(l.titulo || ' (' || d.fechaDonacion || ')', ', ') WITHIN GROUP (ORDER BY d.fechaDonacion) AS donacionesRealizadas
            FROM Donaciones d
            INNER JOIN Libros l ON d.idLibro = l.id
            GROUP BY d.idDonador;
        RETURN c;
    END CO_DonacionesDonador;

END PK_DONACIONES; 
    

