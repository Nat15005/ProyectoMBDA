CREATE OR REPLACE PACKAGE BODY PK_PRESTAMOS IS

    /* ------------------- PRESTAMOS ------------------- */
    PROCEDURE AD_Prestamo (xFechaPrestamo IN DATE, xFechaDevolucion IN DATE, xIdEjemplar IN INT, xIdLibro IN INT, xIdUsuario IN INT) AS
    BEGIN
        INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario)
        VALUES (xFechaPrestamo, xFechaDevolucion, xIdEjemplar, xIdLibro, xIdUsuario);
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

    FUNCTION CO_PrestamoPorUsuario
    RETURN SYS_REFCURSOR
    AS
        c_cursor SYS_REFCURSOR;
    BEGIN
        OPEN c_cursor FOR
            SELECT u.nombre || ' ' || u.apellido AS usuario, COUNT(p.id) AS total_prestamos,
                SUM(CASE WHEN e.estado = 'Prestado' THEN 1 ELSE 0 END) AS prestamos_activos
            FROM Usuarios u
            JOIN Prestamos p ON u.id = p.idUsuario
            JOIN Ejemplares e ON p.idEjemplar = e.id
            GROUP BY u.nombre, u.apellido;

        RETURN c_cursor;
    END;

END PK_PRESTAMOS;