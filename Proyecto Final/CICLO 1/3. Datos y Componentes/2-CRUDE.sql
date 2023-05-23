/*CRUDE*/
SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE PK_LIBROS AS
/*LIBROS - AUTORES - LIBROSAUTORES*/
    PROCEDURE AD_LibroAutor (   xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE,
                                xISBN IN INT, xIdSubgenero IN INT, xNombreAutor IN VARCHAR2, xNacionalidadAutor IN VARCHAR2, 
                                xFechaNacimientoAutor IN DATE   );
    PROCEDURE MO_LibroAutor(    xIdLibro IN INT, xTitulo IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaPublicacion IN DATE,
                                xISBN IN INT, xIdSubgenero IN INT, xIdAutor IN INT, xNombreAutor IN VARCHAR2, 
                                xNacionalidadAutor IN VARCHAR2, xFechaNacimientoAutor IN DATE   );
    PROCEDURE EL_LibroAutor(    xIdLibro IN INT, xIdAutor IN INT    );

/*SUBGENEROS*/
    PROCEDURE AD_Subgenero (    xNombre IN VARCHAR2, xDescripcion IN VARCHAR2   );
    PROCEDURE MO_Subgenero (    xId IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2   );
    PROCEDURE EL_Subgenero (    xId IN INT  );

/*EJEMPLARES*/
    PROCEDURE AD_Ejemplar (     xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2    );
    PROCEDURE MO_Ejemplar (     xIdEjemplar IN INT, xIdLibro IN INT, xUbicacion IN VARCHAR2, xEstado IN VARCHAR2, xFechaAdquisicion IN DATE );
    PROCEDURE EL_Ejemplar (     xId IN INT  );

/*CONSULTAS CRUD LIBROS*/
    -- Consultar todos los libros de un determinado subgenero
    FUNCTION CO_LibrosSubgenero (xSubgenero IN INT) RETURN SYS_REFCURSOR;
    -- Mostrar dónde se encuentran los ejemplares de un libro específico y cuál es su estado actual (disponible, en préstamo, etc.)
    FUNCTION CO_UbicacionEjemplar (xTitulo IN VARCHAR2) RETURN SYS_REFCURSOR;
END PK_LIBROS;
/
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE PK_USUARIOS AS
/*USUARIOS*/
    PROCEDURE AD_UsuarioCorreo (xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                                xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                                xTelefono IN NUMBER, xCorreo IN VARCHAR2);
    PROCEDURE MO_UsuarioCorreo (xIdUsuario IN INT, xNombre IN VARCHAR2, xApellido IN VARCHAR2, 
                                xDireccion IN VARCHAR2, xGenero IN VARCHAR2, xFechaNacimiento IN DATE, 
                                xOcupacion IN VARCHAR2, xTelefono IN NUMBER, xCorreo IN VARCHAR2);
    PROCEDURE EL_UsuarioCorreo (xIdUsuario IN INT);

/*SUSCRIPCION*/
    PROCEDURE AD_Suscripcion (  xFechaInicio IN DATE, xFechaFin IN DATE, xEstado IN VARCHAR2, xIdUsuario IN INT );
    PROCEDURE MO_Suscripcion (  xIdSuscripcion IN INT, xFechaInicio IN DATE, xFechaFin IN DATE, 
                                xEstado IN VARCHAR2, xIdUsuario IN INT  );
    PROCEDURE EL_Suscripcion (  xIdSuscripcion IN INT   );

/*CONSULTA*/
    -- Mostrar cuántas suscripciones activas tiene cada usuario y en qué fechas expiran
    FUNCTION CO_SuscripcionesActivas RETURN SYS_REFCURSOR;
END PK_USUARIOS;
/
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE PK_PRESTAMOS AS
/*PRESTAMOS*/
    PROCEDURE AD_Prestamo (     xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT   );
    PROCEDURE MO_Prestamo (     xId IN INT, xFechaPrestamo IN DATE, xFechaDevolucion IN DATE, xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT );
    PROCEDURE EL_Prestamo (     xId IN INT   );
    -- muestra cuántos libros ha prestado cada usuario y cuántos de esos préstamos siguen activos
    FUNCTION CO_PrestamoPorUsuario RETURN SYS_REFCURSOR;
END PK_PRESTAMOS;
/
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE PK_DONACIONES AS
/*DONADOR*/
    PROCEDURE AD_Donador (      xNombre IN VARCHAR2, xApellido IN VARCHAR2, xDireccion IN VARCHAR2,
                                xGenero IN VARCHAR2, xFechaNacimiento IN DATE, xOcupacion IN VARCHAR2,
                                xTelefono IN INT, xCorreo IN VARCHAR2   );
    PROCEDURE MO_Donador (      xIdDonador IN INT, xNombre IN VARCHAR2, xApellido IN VARCHAR2,
                                xDireccion IN VARCHAR2, xGenero IN VARCHAR2, xFechaNacimiento IN DATE,
                                xOcupacion IN VARCHAR2, xTelefono IN INT,xCorreo IN VARCHAR2    );
    PROCEDURE EL_Donador (      xIdDonador IN INT   );

/*DONACION*/
    PROCEDURE AD_Donacion (     xIdDonador IN INT, xTipoDonacion IN VARCHAR2, xTituloLibro IN VARCHAR2,
                                xDescripcionLibro IN VARCHAR2, xFechaPublicacion IN DATE, xISBN IN INT,
                                xIdSubgenero IN INT, xNombreAutor IN VARCHAR2, xNacionalidadAutor IN VARCHAR2,
                                xFechaNacimientoAutor IN DATE, xUbicacionEjemplar IN VARCHAR2   );
    PROCEDURE MO_Donacion (     xIdDonacion IN INT, xIdDonador IN INT, xTipoDonacion IN VARCHAR2,
                                xIdLibro IN INT, xTituloLibro IN VARCHAR2, xDescripcionLibro IN VARCHAR2,
                                xFechaPublicacion IN DATE, xISBN IN INT, xIdSubgenero IN INT,
                                xIdAutor IN INT, xNombreAutor IN VARCHAR2, xNacionalidadAutor IN VARCHAR2,
                                xFechaNacimientoAutor IN DATE   );
    PROCEDURE EL_Donacion (     xId IN INT  );

/*CONSULTA*/    
    -- mostrar cuántos libros ha donado cada donador y en qué fechas
    FUNCTION CO_DonacionesDonador(xIdDonador IN INT) RETURN SYS_REFCURSOR;
END PK_DONACIONES;
/
--------------------------------------------------------------------------------------------------------------------------------------------
