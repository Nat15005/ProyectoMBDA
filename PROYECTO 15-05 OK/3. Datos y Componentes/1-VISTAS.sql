
---------------------------------------VISTAS-----------------------------------------------------------

--- LibrosPorSubgenero, mostrar todos los libros de un subgénero específico.
CREATE VIEW LibrosPorSubgenero AS 
SELECT * FROM Libros
WHERE idSubgenero = &idSubgenero;

---CO_UbicacionEjemplar
CREATE VIEW ejemplares_por_ubicacion AS
SELECT ej.id AS id_ejemplar, l.id AS id_libro, l.titulo, ej.ubicacion, ej.estado
FROM Ejemplares ej
JOIN Libros l ON ej.idLibro = l.id
WHERE l.titulo = 'Título del libro específico';

---CO_PrestamosPorUsuario
CREATE VIEW PrestamosPorUsuario AS
SELECT U.id AS idUsuario, U.nombre, U.apellido, COUNT(*) AS totalPrestamos,
       SUM(CASE WHEN E.estado = 'Prestado' THEN 1 ELSE 0 END) AS prestamosActivos
FROM Usuarios U
LEFT JOIN Prestamos P ON U.id = P.idUsuario
LEFT JOIN Ejemplares E ON P.idEjemplar = E.id
GROUP BY U.id, U.nombre, U.apellido;

---CO_ DonacionesPorDonador
CREATE VIEW VistaDonacionesPorDonador AS
SELECT d.id AS id_donacion, d.fechaDonacion, l.titulo, d.tipoDonacion, d.idDonador
FROM Donaciones d
INNER JOIN Libros l ON d.idLibro = l.id
INNER JOIN Donadores don ON d.idDonador = don.idDonador
ORDER BY d.idDonador;

---CO_SuscripcionesActivas
CREATE VIEW suscripciones_activas_por_usuario AS
SELECT u.id AS id_usuario, u.nombre, u.apellido, COUNT(*) AS num_suscripciones_activas,
       MIN(s.fechaInicio) AS fecha_inicio_suscripcion, MAX(s.fechaFin) AS fecha_fin_suscripcion
FROM Usuarios u
JOIN Suscripciones s ON u.id = s.idUsuario
WHERE s.estado = 'Activa'
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
SELECT * FROM LibrosPorSubgenero WHERE subgenero = '1001';

---Consultar los ejemplares de un libro en específico por ubicación:
SELECT * FROM ejemplares_por_ubicacion WHERE titulo = 'Título del libro específico';

---Consultar el número total de préstamos y préstamos activos por usuario:
SELECT * FROM PrestamosPorUsuario WHERE idUsuario = 'id del usuario';

---Consultar todas las donaciones por donador:
SELECT * FROM VistaDonacionesPorDonador WHERE idDonador = 'id del donador';

---Consultar las suscripciones activas por usuario:
SELECT * FROM suscripciones_activas_por_usuario WHERE id_usuario = 'id del usuario';

---------------------------------------xVistas-----------------------------------------------------------


DROP VIEW LibrosPorSubgenero;
DROP VIEW ejemplares_por_ubicacion;
DROP VIEW PrestamosPorUsuario;
DROP VIEW VistaDonacionesPorDonador;
DROP VIEW suscripciones_activas_por_usuario;

DROP INDEX idx_idSubgenero;
DROP INDEX idx_estado;
DROP INDEX idx_estado_suscripciones;
DROP INDEX idx_prestamos_idEjemplar_idUsuario;
