
---------------------------------------VISTAS-----------------------------------------------------------

--- LibrosPorSubgenero, mostrar todos los libros de un subgénero específico. ***SI ESTÁ EN UNA FUNCIÓN***
CREATE VIEW VistaLibrosPorSubgenero AS 
SELECT l.id, l.titulo, l.descripcion, l.fechaPublicacion, l.isbn, l.idSubgenero
FROM Libros l
JOIN Subgeneros s ON l.idSubgenero = s.id;

---CO_UbicacionEjemplar
CREATE VIEW VistaUbicacionEjemplar AS
SELECT ej.id AS id_ejemplar, l.id AS id_libro, l.titulo, ej.ubicacion, ej.estado
FROM Ejemplares ej
JOIN Libros l ON ej.idLibro = l.id;

---CO_PrestamosPorUsuario ***SI ESTÁ EN UNA FUNCIÓN***
CREATE OR REPLACE VIEW PrestamosPorUsuario AS
SELECT u.id AS id_usuario, u.nombre, u.apellido, COUNT(*) AS num_libros_prestados, SUM(CASE WHEN e.estado = 'Prestado' THEN 1 ELSE 0 END) AS num_prestamos_activos
FROM Usuarios u
JOIN Prestamos p ON u.id = p.idUsuario
JOIN Ejemplares e ON p.idEjemplar = e.id
WHERE e.estado = 'Prestado'
GROUP BY u.id, u.nombre, u.apellido;

---CO_ DonacionesPorDonador
CREATE VIEW VistaDonacionesPorDonador AS
SELECT d.id AS id_donacion, d.fechaDonacion, l.titulo, d.tipoDonacion, d.idDonador
FROM Donaciones d
INNER JOIN Libros l ON d.idLibro = l.id
INNER JOIN Donadores don ON d.idDonador = don.idDonador
ORDER BY d.idDonador;

---CO_SuscripcionesActivas ***SI ESTÁ EN UNA FUNCIÓN***
CREATE VIEW suscripciones_activas_por_usuario AS
SELECT u.id AS id_usuario, u.nombre, u.apellido, COUNT(*) AS num_suscripciones_activas,
        MIN(s.fechaInicio) AS fecha_inicio_suscripcion, MAX(s.fechaFin) AS fecha_fin_suscripcion
FROM Usuarios u
JOIN Suscripciones s ON u.id = s.idUsuario
WHERE s.estado = 'Activo'
GROUP BY u.id, u.nombre, u.apellido;

---------------------------------------INDICES-----------------------------------------------------------

---idSubgenero en la tabla Libros
CREATE INDEX idx_idSubgenero ON Libros(idSubgenero);

---Estado para la tabla ejemplares
CREATE INDEX idx_estado ON Ejemplares(estado);

---Estado para la tabla suscripciones
CREATE INDEX idx_estado_suscripciones ON Suscripciones (estado);

---idEjemplar, idUsuario para la tabla prestamos
CREATE INDEX idx_prestamos_idEjemplar_idUsuario ON Prestamos (idEjemplar, idUsuario);


---------------------------------------VistasOK-----------------------------------------------------------

---Consultar todos los libros por subgénero:
SELECT * FROM VistaLibrosPorSubgenero WHERE idSubgenero = 1001;

---Consultar los ejemplares de un libro en específico por ubicación:
SELECT ubicacion
FROM VistaUbicacionEjemplar
WHERE titulo = 'El nombre del viento';

---Consultar el número total de préstamos y préstamos activos por usuario:
SELECT * FROM PrestamosPorUsuario;

---Consultar todas las donaciones por donador:
SELECT * FROM VistaDonacionesPorDonador;

---Consultar las suscripciones activas por usuario:
SELECT * FROM suscripciones_activas_por_usuario;

---------------------------------------xVistas-----------------------------------------------------------


DROP VIEW VistaLibrosPorSubgenero;
DROP VIEW VistaUbicacionEjemplar;
DROP VIEW PrestamosPorUsuario;
DROP VIEW VistaDonacionesPorDonador;
DROP VIEW suscripciones_activas_por_usuario;

DROP INDEX idx_idSubgenero;
DROP INDEX idx_estado;
DROP INDEX idx_estado_suscripciones;
DROP INDEX idx_prestamos_idEjemplar_idUsuario;
