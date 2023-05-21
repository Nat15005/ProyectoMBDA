
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';


-- Función CO_PrestamoPorUsuario
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000001, 'Estanteria 6, Pasillo Principal', 'Disponible', '1998-04-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000002, 'Estanteria 6, Pasillo Principal', 'Disponible', '1998-04-30');

UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000001;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000002;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000003;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000004;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000005;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000006;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000007;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000008;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000009;
UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000010;

insert into Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) values 
('Thebault', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728);

INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
('Anna', 'Smith', '123 Main Street', 'F', '1990-07-15', 'E', 5551234567);
SELECT * FROM Usuarios;
-----------------------------------------------------
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-11-02','2023-07-25', 10000001, 100000001, 1000001);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-12-11','2023-11-03', 10000002, 100000002, 1000001);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-12-25','2023-07-24', 10000003, 100000003, 1000002);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-03-07','2023-09-01', 10000004, 100000004, 1000001);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-03-26','2023-07-18', 10000005, 100000005, 1000002);
