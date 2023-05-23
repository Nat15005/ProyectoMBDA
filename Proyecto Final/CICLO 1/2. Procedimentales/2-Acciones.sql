
/*            ACCIONES REFERENCIALES           */

ALTER TABLE Ejemplares ADD CONSTRAINT FK_Libros_Ejemplares FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE;
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_Libros_LibrosAutores FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE;
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_Autores_LibrosAutores FOREIGN KEY (idAutor) REFERENCES Autores(id) ON DELETE CASCADE;
ALTER TABLE Correos ADD CONSTRAINT FK_Usuarios_Correos FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON DELETE CASCADE;

--cuando se modifica el identificador de un libro en la tabla "Libros", se deben modificar también cualquier registro en la tabla "Prestamos" que haga referencia a ese libro.
ALTER TABLE Prestamos ADD CONSTRAINT FK_Libros_Prestamos FOREIGN KEY (idLibro) REFERENCES Libros(id) ON UPDATE CASCADE;
ALTER TABLE Ejemplares ADD CONSTRAINT FK_Libros_Ejemplares FOREIGN KEY (idLibro) REFERENCES Libros(id) ON UPDATE CASCADE;
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_Libros_LibrosAutores FOREIGN KEY (idLibro) REFERENCES Libros(id) ON UPDATE CASCADE;
ALTER TABLE Donaciones ADD CONSTRAINT FK_Libros_Donaciones FOREIGN KEY (idLibro) REFERENCES Libros(id) ON UPDATE CASCADE;

ALTER TABLE LibrosAutores ADD CONSTRAINT FK_Autores_LibrosAutores FOREIGN KEY (idAutor) REFERENCES Autores(id) ON UPDATE CASCADE;

ALTER TABLE Correos ADD CONSTRAINT FK_Usuarios_Correos FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Prestamos ADD CONSTRAINT FK_Usuarios_Prestamos FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Suscripciones ADD CONSTRAINT FK_Usuarios_Suscripciones FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Donadores ADD CONSTRAINT FK_Usuarios_Donadores FOREIGN KEY (idDonador) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Donaciones ADD CONSTRAINT FK_Usuarios_Donaciones FOREIGN KEY (idDonador) REFERENCES Usuarios(id) ON UPDATE CASCADE;
------------------------------------------

-- AccionesOK
INSERT INTO Subgeneros(id, nombre, descripcion) VALUES (1001, 'Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
INSERT INTO Libros(id, titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES (100000001, 'El nombre del viento', 'Una novela de fantasia epica','2007-03-27', 9788499082479, 1001);
INSERT INTO Ejemplares(id, idLibro, ubicacion, estado, fechaAdquisicion) VALUES (10000001, 100000001, 'Estanteria 6, ', 'Disponible', '1998-04-30');

DELETE FROM Libros WHERE id = 100000001;

    SELECT * FROM Subgeneros;
    SELECT * FROM Libros;
    SELECT * FROM Autores;
    SELECT * FROM LibrosAutores;
-------------------------------------
INSERT INTO Libros(id, titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES (100000001, 'El nombre del viento', 'Una novela de fantasia epica','2007-03-27', 9788499082479, 1001);
INSERT INTO Autores(id, nombre, nacionalidad, fechaNacimiento) VALUES (10001, 'J.K. Rowling', 'Reino Unido','1965-07-31');
INSERT INTO LibrosAutores(idLibro, idAutor) VALUES (100000001, 10001);

DELETE FROM Autores WHERE id = 10001;

    SELECT * FROM Autores;
    SELECT * FROM LibrosAutores;
-------------------------------------

INSERT INTO Autores(id, nombre, nacionalidad, fechaNacimiento) VALUES (10001, 'J.K. Rowling', 'Reino Unido','1965-07-31');
INSERT INTO LibrosAutores(idLibro, idAutor) VALUES (100000001, 10001);

DELETE FROM Libros WHERE id = 100000001;
    SELECT * FROM Libros;
    SELECT * FROM LibrosAutores;
-------------------------------------
INSERT INTO Usuarios (id, nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES (1000001, 'Anna', 'Smith', '123 Main Street', 'F', '1990-07-15', 'E', 5551234567);
INSERT INTO Correos (idUsuario, correo) VALUES (1000001, 'thebault.elwel@example.com');

DELETE FROM Usuarios WHERE id = 1000001;
    SELECT * FROM Usuarios;
    SELECT * FROM Correos;
-------------------------------------
-- ON UPDATE CASDE NO FUNCIONA EN SQL ORACLE
/*UPDATE Libros SET isbn = 9788499082456, idSubgenero = 1006 WHERE id = 100000001;
UPDATE Autores SET nombre = 'J.P. Rowling', nacionalidad = 'Estados Unidos' WHERE id = 10003;
UPDATE Usuarios SET direccion = '6 West Court', telefono = 3468893728 WHERE id = 1000001;*/

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
