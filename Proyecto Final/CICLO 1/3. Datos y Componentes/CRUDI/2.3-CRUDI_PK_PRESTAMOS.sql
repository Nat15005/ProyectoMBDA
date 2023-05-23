CREATE OR REPLACE PACKAGE BODY PK_PRESTAMOS IS

    /* ------------------- PRESTAMOS ------------------- */
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


END PK_PRESTAMOS;