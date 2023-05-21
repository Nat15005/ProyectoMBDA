/*CRUDE*/

CREATE OR REPLACE PACKAGE PK_LIBROS AS
    /*LIBROS*/
    -- Procedimiento para agregar un nuevo libro a la base de datos
    PROCEDURE AD_Libro (xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE, xISBN IN INT, xIdSubgenero IN INT);
    -- Procedimiento para modificar los datos de un libro existente en la base de datos
    PROCEDURE MO_Libro(xId IN INT, xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE, xISBN IN INT, xIdSubgenero IN INT);
    -- Procedimiento para eliminar un autor de la base de datos
    PROCEDURE EL_Libro(xId IN INT);

    /*AUTORES*/
    -- Procedimiento para agregar un nuevo autor a la base de datos
    PROCEDURE AD_Autor (xNombre IN VARCHAR2, xNacionalidad IN VARCHAR2, xFechaNacimiento IN DATE);
    -- Procedimiento para modificar los datos de un autor existente en la base de datos
    PROCEDURE MO_Autor (xId IN INT, xNombre IN VARCHAR2, xNacionalidad IN VARCHAR2, xFechaNacimiento IN DATE);
    -- Procedimiento para eliminar un autor de la base de datos
    PROCEDURE EL_Autor (xId IN INT);

    /*SUBGENEROS*/
    -- Procedimiento para agregar un nuevo Subgenero a la base de datos
    PROCEDURE AD_Subgenero (xNombre IN VARCHAR2, xDescripcion IN VARCHAR2);
    -- Procedimiento para modificar un nuevo Subgenero a la base de datos
    PROCEDURE MO_Subgenero (xId IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2);
    -- Procedimiento para eliminar un nuevo Subgenero a la base de datos
    PROCEDURE EL_Subgenero (xId IN INT);

    /*EJEMPLARES*/
    -- Procedimiento para adicionar un nuevo Ejemplar a la base de datos
    PROCEDURE AD_Ejemplar(xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2, xFechaAdquisicion IN DATE);
    -- Procedimiento para modificar un nuevo Ejemplar a la base de datos
    PROCEDURE MO_Ejemplar(xIdEjemplar IN INT, xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2, xFechaAdquisicion IN DATE);
    -- Procedimiento para eliminar un nuevo Ejemplar a la base de datos
    PROCEDURE EL_Ejemplar (xId IN INT);

    /*CONSULTAS CRUD LIBROS*/
    -- Consultar todos los libros de un determinado subgenero
    FUNCTION CO_LibrosSubgenero (xSubgenero IN INT) RETURN SYS_REFCURSOR;
    -- Mostrar dónde se encuentran los ejemplares de un libro específico y cuál es su estado actual (disponible, en préstamo, etc.)
    FUNCTION CO_UbicacionEjemplar (xTitulo IN VARCHAR2) RETURN SYS_REFCURSOR;
END PK_LIBROS;
/

CREATE OR REPLACE PACKAGE PK_PRESTAMOS AS
    PROCEDURE AD_Prestamo (xFechaPrestamo IN DATE, xFechaDevolucion IN DATE, xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT);
    PROCEDURE MO_Prestamo (xId IN INT, xFechaPrestamo IN DATE, xFechaDevolucion IN DATE, xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT);
    PROCEDURE EL_Prestamo (xId IN INT);
    -- muestra cuántos libros ha prestado cada usuario y cuántos de esos préstamos siguen activos
    FUNCTION CO_PrestamoPorUsuario RETURN SYS_REFCURSOR;
END PK_PRESTAMOS;
/

CREATE OR REPLACE PACKAGE PK_DONACIONES AS
    PROCEDURE AD_Donacion (xFechaDonacion IN DATE, xTipoDonacion IN VARCHAR2, xIdLibro IN INT, xIdDonador IN INT);
    PROCEDURE MO_Donacion (xId IN INT, xFechaDonacion IN DATE, xTipoDonacion IN VARCHAR2, xIdLibro IN INT, xIdDonador IN INT);
    PROCEDURE EL_Donacion (xId IN INT);

    PROCEDURE AD_Donador(xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                         xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                         xTelefono IN INT, xCorreo IN VARCHAR2);
    PROCEDURE MO_Donador (
        xIdDonador IN INT,
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN INT
    );
    PROCEDURE EL_Donador (xIdDonador IN INT);
    -- mostrar cuántos libros ha donado cada donador y en qué fechas
    FUNCTION CO_DonacionesDonador RETURN SYS_REFCURSOR;
END PK_DONACIONES;
/

CREATE OR REPLACE PACKAGE PK_USUARIOS AS
    PROCEDURE AD_Usuario (
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN NUMBER,
        xCorreo IN VARCHAR2
    );
    PROCEDURE MO_Usuario (
        xIdUsuario IN INT,
        xNombre IN VARCHAR2,
        xApellido IN VARCHAR2,
        xDireccion IN VARCHAR2,
        xGenero IN VARCHAR2,
        xFechaNacimiento IN DATE,
        xOcupacion IN VARCHAR2,
        xTelefono IN NUMBER,
        xCorreo IN VARCHAR2);
    PROCEDURE EL_Usuario (xIdUsuario IN INT);

    PROCEDURE AD_Suscripcion (xFechaInicio IN DATE, xFechaFin IN DATE, xEstado IN VARCHAR2, xIdUsuario IN INT);
    PROCEDURE MO_Suscripcion (xIdSuscripcion IN INT,
        xFechaInicio IN DATE,
        xFechaFin IN DATE,
        xEstado IN VARCHAR2,
        xIdUsuario IN INT);
    PROCEDURE EL_Suscripcion (xIdSuscripcion IN INT);
    -- Mostrar cuántas suscripciones activas tiene cada usuario y en qué fechas expiran
    FUNCTION CO_SuscripcionesActivas RETURN SYS_REFCURSOR;
END PK_USUARIOS;
/




   PROCEDURE EL_Usuario (
        xIdUsuario IN INT
    ) AS
        vCorreoId INT;
        vSuscripcionId INT;
        vDonadorId INT;
    BEGIN
        /*-- Verificar si el usuario es también un donador
        SELECT idDonador INTO vDonadorId FROM Donadores WHERE idDonador = xIdUsuario;

        -- Borrar los registros de Correos relacionados con el usuario
        DELETE FROM Correos WHERE idUsuario = xIdUsuario;

        -- Borrar los registros de Suscripciones relacionados con el usuario
        DELETE FROM Suscripciones WHERE idUsuario = xIdUsuario;

        -- Borrar el registro de Donadores si el usuario es también un donador
        IF vDonadorId = xIdUsuario THEN
            DELETE FROM Donadores WHERE idDonador = xIdUsuario;
        END IF;
        */
        -- Borrar el registro de Usuarios
        DELETE FROM Usuarios WHERE id = xIdUsuario;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Usuario eliminado con éxito.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al eliminar el usuario: ' || SQLERRM);
            ROLLBACK;
    END EL_Usuario;