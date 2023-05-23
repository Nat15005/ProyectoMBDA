
/*           TUPLAS           */

    ---- En PRESTAMOS la fechaPrestamo debe ser menor a la fechaDevolucion
ALTER TABLE Prestamos ADD CONSTRAINT CK_Prestamos_fechas CHECK (fechaPrestamo < fechaDevolucion);

    ---- En SUSCRIPCIONES la fechaInicio debe ser menor a la fechaFin
ALTER TABLE Suscripciones ADD CONSTRAINT CK_Suscripciones_fechas CHECK (fechaInicio < fechaFin);


--- TuplasOk
    /*PRESTAMOS*/
        INSERT INTO Usuarios (id, nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES (1000002, 'Anna', 'Smith', '123 Main Street', 'F', '1990-07-15', 'E', 5551234567);
        INSERT INTO Subgeneros(id, nombre, descripcion) VALUES (1001, 'Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
        INSERT INTO Libros(id, titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES (100000001, 'El nombre del viento', 'Una novela de fantasia epica','2007-03-27', 9788499082479, 1001);
        INSERT INTO Ejemplares(id, idLibro, ubicacion, estado, fechaAdquisicion) VALUES (10000001, 100000001, 'Estanteria 6, ', 'Disponible', '1998-04-30');
        INSERT INTO Prestamos (id, fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) values (100001, '2022-11-02', '2022-12-25', 10000001, 100000001, 1000002);
        --DELETE FROM PRESTAMOS WHERE ID =100001;
        --SELECT * FROM PRESTAMOS;

    /*SUSCRIPCIONES*/
        INSERT INTO Suscripciones(id, fechaInicio, fechaFin, estado, idUsuario) VALUES (10000000, '2022-05-05', '2022-06-05','Activo', 1000002);

--- TuplasNoOK
    INSERT INTO Prestamos (id, fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES (100001, '2022-11-02', '2022-07-25', 10000001, 100000001, 1000002);
    -- No es una insercion valida porque la fechaDevolucion es menor a la fechaPrestamo
    INSERT INTO Suscripciones(id, fechaInicio, fechaFin, estado, idUsuario) VALUES (10000000, '2022-07-05', '2022-06-05','Activo', 1000002);
    -- No es una insercion valida porque la fechaFin es menor a la fechaInicio

--Delete
DELETE FROM suscripciones;
DELETE FROM correos;
DELETE FROM donaciones;
DELETE FROM donadores;
DELETE FROM prestamos;
DELETE FROM Usuarios;
DELETE FROM Ejemplares;
DELETE FROM LibrosAutores;
DELETE FROM Autores;
DELETE FROM Libros;
DELETE FROM Subgeneros;