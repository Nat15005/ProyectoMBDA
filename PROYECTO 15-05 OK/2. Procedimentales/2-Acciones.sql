
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

-- AccionesOK

DELETE FROM Libros WHERE id = 100000009;
DELETE FROM Autores WHERE id = 10015;
DELETE FROM Usuarios WHERE id = 1000056;

UPDATE Libros SET isbn = 9788499082456, idSubgenero = 1006 WHERE id = 100000001;
UPDATE Autores SET nombre = 'J.P. Rowling', nacionalidad = 'Estados Unidos' WHERE id = 10003;
UPDATE Usuarios SET direccion = '6 West Court', telefono = 3468893728 WHERE id = 1000001;


