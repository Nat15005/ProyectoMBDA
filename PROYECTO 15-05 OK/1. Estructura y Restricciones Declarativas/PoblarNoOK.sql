
/*Poblar NoOK*/

-- LIBROS
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES (100000001, 'El id,  del viento', 'Una novela de fantasia epica','2007-03-27', 9788499082479, 1001);
---- No es una insercion valida porque el id de Libros debe ser de 9 digitos
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES (100000002, 'Harry Potter y la piedra filosofal', 'Primera novela de la saga Harry Potter','1997-06-26', 978847888445, 1002);
---- No es una insercion valida porque el isbn de Libros debe ser de 13 digitos
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES (100000002, 'Harry Potter y la piedra filosofal', 'Primera novela de la saga Harry Potter','1997-06-26', 978847888445, 10002);
---- No es una insercion valida porque el idSubgenero de Libros debe ser de 4 digitos


-- SUBGENEROS
INSERT INTO Subgeneros(id, , descripcion) VALUES (10001, 'Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
---- No es una insercion valida porque el id de Subgeneros debe ser de 4 digitos


-- LIBROS AUTORES
INSERT INTO LibrosAutores (idLibro, idAutor) VALUES (1000000096, 10057);
--No es una inserción valida porque el idLibro debe
ser de 9 digitos
INSERT INTO LibrosAutores (idLibro, idAutor) VALUES (100000006, 100084);
--No es una inserción valida porque el idAutor debe ser de 5 digitos


-- EJEMPLARES
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000065, 100000065, 'Estanteria 8, ', 'Disponible','2006-07-14', 9);
--No es una inserción valida porque el id debe ser de 8 digitos
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (10000066, 1000000066, 'Estanteria 7, ', 'Prestado','2007-06-05', 6);
--No es una inserción valida porque el idLibro debe ser de 9 digitos
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (10000067, 100000067, '3, ', 'Disponible','1982-05-04', 6);
--No es una inserción valida porque el ubicacion debe empezar con 'Estanter

INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (10000068, 100000068, 'Estanteria 9, ', 'usado','1981-06-30', 9);
--No es una inserción valida porque el estado debe ser 'Disponible' o 'Prestado' o 'Reparacion'


-- AUTORES
INSERT INTO Autores(id, , nacionalidad, fechaNacimiento) VALUES (1001, 'J.K. Rowling', 'Reino Unido','1965-07-31');
---- No es una insercion valida porque el id de Autores debe ser de 5 digitos


-- PRESTAMOS
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES (1000010,'2022-11-02','2022-07-25', 10000001, 100000001, 1000067);
---- No es una insercion valida porque el id de Prestamos debe ser de 6 digitos
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES (100002,'2022-12-11','2022-11-03', 100000032, 100000002, 1000053);
---- No es una insercion valida porque el idEjemplar de Prestamos debe ser de 8 digitos
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES (100003,'2022-12-25','2022-07-24', 10000003, 1000000023, 1000019);
---- No es una insercion valida porque el idLibro de Prestamos debe ser de 9 digitos
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES (100004,'2023-03-07','2022-09-01', 10000004, 100000004, 10000645);
---- No es una insercion valida porque el idUsuario de Prestamos debe ser de 7 digitos


-- DONACIONES
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idUsuario) VALUES (100003,'2023-03-13', 'N', 100000051, 1000097);
--No es una inserción valida porque el id debe ser de 5 digitos
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idUsuario) VALUES (10004,'2022-11-25', 'U', 1000000049, 1000082);
--No es una inserción valida porque el idLibro debe ser de 9 digitos
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idUsuario) VALUES (10005,'2023-01-19', 'U', 100000100, 10000080);
--No es una inserción valida porque el idUsuario debe ser de 7 digitos


-- DONADORES
INSERT INTO Donadores(idUsuario) VALUES (10000075);
--No es una inserción valida porque el idUsuario debe ser de 7 digitos


-- USUARIOS
INSERT INTO Usuarios (id, , apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES (10000001, 'Thebault', 'Elwel', '6 East Court', 'M','1929-10-21', 'E', 3468893728);
---- No es una insercion valida porque el id de Usuarios debe ser de 7 digitos
INSERT INTO Usuarios (id, , apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES (1000002, 'Anna', 'Smith', '123 Main Street', 'O','1990-07-15', 'E', 5551234567);
---- No es una insercion valida porque el genero de Usuarios debe ser 'F' o 'M'
INSERT INTO Usuarios (id, , apellido, direccion, genero, fechaNacimieno, ocupacion, telefono) VALUES (1000003, 'John', 'Doe', '456 Oak Avenue', 'M','1985-02-10', 'P', 1234567890);
---- No es una insercion valida porque el ocupacion de Usuarios debe ser 'E' o 'O'
INSERT INTO Usuarios (id, , apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES (1000004, 'Linda', 'Lee', '789 Elm Street', 'F','1974-12-02', 'O', 987654321000);
---- No es una insercion valida porque el telefono de Usuarios debe ser de 10 digitos


-- CORREOS
INSERT INTO Correos (idUsuario, correo) VALUES (10000007, 'michael.brown@example.com');
--No es una inserción valida porque el idUsuar
o debe ser de 7 digitos
INSERT INTO Correos (idUsuario, correo) VALUES (1000008, 'jennifer.whiteexample.com');
--No es una inserción valida porque el correo debe ser de la forma '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'


-- SUSCRIPCIONES
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES (100000082,'2023-08-29','2023-09-29', 'Activo', 1000083);
--No es una inserción valida porque el id debe ser de 8 digitos
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES (10000083,'2023-09-03','2023-10-03', 'Inactivo', 1000084);
--No es una inserción valida porque el estado debe ser 'Activo' o 'Inactiv

INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES (10000084,'2023-09-08','2023-10-08', 'Activo', 10000085);
--No es una inserción valida porque el idUsuario debe ser de 7 digitos

