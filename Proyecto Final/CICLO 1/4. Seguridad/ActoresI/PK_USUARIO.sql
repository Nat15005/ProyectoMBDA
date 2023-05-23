CREATE OR REPLACE PACKAGE BODY PK_USUARIO IS 

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

    FUNCTION CO_LIBROS
        RETURN SYS_REFCURSOR
    IS
        libros_cursor SYS_REFCURSOR;
    BEGIN
        OPEN libros_cursor FOR
            SELECT *
            FROM Libros;

        RETURN libros_cursor;
    END;

END PK_USUARIO;
