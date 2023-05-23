CREATE OR REPLACE PACKAGE BODY PK_USUARIOS IS 
    /* ------------------- USUARIOS ------------------- */

    PROCEDURE AD_UsuarioCorreo (    xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                                    xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                                    xTelefono IN NUMBER, xCorreo IN VARCHAR2    ) 
    AS
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


    PROCEDURE MO_UsuarioCorreo (    xIdUsuario IN INT, xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                                    xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                                    xTelefono IN NUMBER, xCorreo IN VARCHAR2    ) 
    AS
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

    PROCEDURE EL_UsuarioCorreo (    xIdUsuario IN INT   ) 
    AS
        vCorreoId INT;
        vSuscripcionId INT;
        vDonadorId INT;
    BEGIN
        -- Verificar si el usuario es también un donador
        SELECT COUNT(*) INTO vDonadorId FROM Donadores WHERE idDonador = xIdUsuario;

        -- Borrar los registros de Correos relacionados con el usuario
        DELETE FROM Correos WHERE idUsuario = xIdUsuario;

        -- Borrar los registros de Suscripciones relacionados con el usuario
        DELETE FROM Suscripciones WHERE idUsuario = xIdUsuario;

        -- Borrar el registro de Donadores si el usuario es también un donador
        IF vDonadorId = 0 THEN
            DELETE FROM Donaciones WHERE idDonador = xIdUsuario;
            DELETE FROM Donadores WHERE idDonador = xIdUsuario;
        END IF;

        -- Borrar el registro de Usuarios
        DELETE FROM Usuarios WHERE id = xIdUsuario;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Usuario eliminado con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el usuario: ' || SQLERRM);
            ROLLBACK;
    END EL_UsuarioCorreo;


    /* ------------------- SUSCRIPCIONES ------------------- */

    PROCEDURE AD_Suscripcion (  xFechaInicio IN DATE, xFechaFin IN DATE, xEstado IN VARCHAR2,
                                xIdUsuario IN INT   ) 
    AS
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

    PROCEDURE MO_Suscripcion (  xIdSuscripcion IN INT, xFechaInicio IN DATE, xFechaFin IN DATE,
                                xEstado IN VARCHAR2, xIdUsuario IN INT  ) 
    AS
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

    PROCEDURE EL_Suscripcion(   xIdSuscripcion IN INT   ) 
    AS
    BEGIN
        DELETE FROM Suscripciones WHERE id = xIdSuscripcion;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Suscripción eliminada con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar la suscripción: ' || SQLERRM);
            ROLLBACK;
    END EL_Suscripcion;

    /* ------------------- CONSULTAS ------------------- */

    FUNCTION CO_SuscripcionesActivas --con base a la vista <suscripciones_activas_por_usuario>
    RETURN SYS_REFCURSOR
    IS
        cur SYS_REFCURSOR;
    BEGIN
        OPEN cur FOR
            SELECT id_usuario, nombre, apellido, num_suscripciones_activas, fecha_inicio_suscripcion, fecha_fin_suscripcion
            FROM suscripciones_activas_por_usuario;
        RETURN cur;
    END CO_SuscripcionesActivas;


END PK_USUARIOS;

