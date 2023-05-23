-- CONSULTAS GERENCIALES

---- Promedio de prestamos por usuario
SELECT COUNT(*) / COUNT(DISTINCT id) AS promedio_prestamos_por_usuario
FROM prestamos;

---- Numero de suscripciones en el ultimo mes
SELECT COUNT(*) AS num_suscripciones_ultimo_mes
FROM Suscripciones
WHERE fechaInicio >= ADD_MONTHS(SYSDATE, -1);


-- CONSULTAS OPERATIVAS

----Consultar todos los prestamos realizados por un usuario determinado
SELECT Prestamos.id, Prestamos.fechaPrestamo, Prestamos.fechaDevolucion, Prestamos.idEjemplar, Prestamos.idLibro, Prestamos.idUsuario
FROM Prestamos
JOIN Usuarios ON Prestamos.idUsuario = Usuarios.id
WHERE Usuarios.nombre = 'Thebault' AND Usuarios.apellido = 'Elwel';

--Consultar todos los libros de un determinado subgenero
SELECT Libros.id, Libros.titulo, Libros.descripcion, Libros.fechaPublicacion, Libros.isbn, Libros.idSubgenero
FROM Libros
JOIN Subgeneros ON Libros.idSubgenero = Subgeneros.id
WHERE Subgeneros.nombre = 'Fantasia juvenil';