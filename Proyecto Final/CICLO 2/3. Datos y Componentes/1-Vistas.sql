-------------------------------------------VISTAS--------------------------------------------------------
--Vista de Multas por Usuario:

CREATE VIEW Vista_MultasPendientes AS
SELECT m.id, m.idUsuario, m.idPrestamo, m.fecha, m.montoAPagar, m.motivo,
       u.nombre AS nombre_usuario, p.fechaDevolucion
FROM Multas m
JOIN Usuarios u ON m.idUsuario = u.id
JOIN Prestamos p ON m.idPrestamo = p.id
WHERE m.estado = 'Pendiente';

--Vista para obtener los eventos y sus asistentes:
CREATE VIEW Vista_Eventos AS
SELECT e.id, e.nombre, e.descripcion, e.fechaInicio, e.fechaFin, e.ubicacion,
       COUNT(a.idUsuario) AS asistentes_count
FROM Eventos e
LEFT JOIN Asistentes a ON e.id = a.idEvento
GROUP BY e.id, e.nombre, e.descripcion, e.fechaInicio, e.fechaFin, e.ubicacion;

--Vista de Reseñas por Libro
CREATE VIEW Vista_ResenasPorLibro AS
SELECT r.id, r.idEjemplar, r.idUsuario, r.fecha, r.comentario, r.calificacion,
       l.titulo AS titulo_libro, l.descripcion AS descripcion_libro
FROM Resenas r
JOIN Ejemplares e ON r.idEjemplar = e.id
JOIN Libros l ON e.idLibro = l.id;

--Vista de eventos por Fecha
CREATE VIEW Vista_EventosPorFecha AS
SELECT id, nombre, descripcion, fechaInicio, fechaFin, ubicacion
FROM Eventos
ORDER BY fechaInicio;

--------------------------------------INDICES------------------------------------------------
--idEjemplar en la tabla resenas
CREATE INDEX IDX_Vista_ResenasPorLibro_Ejemplar ON Resenas (idEjemplar);

--fecha en la tabla eventos
CREATE INDEX IDX_Vista_EventosPorFecha_FechaInicio ON Eventos (fechaInicio);

--idUsuario en la tabla multas
CREATE INDEX IDX_Vista_MultasPendientes_Usuario ON Multas (idUsuario);

