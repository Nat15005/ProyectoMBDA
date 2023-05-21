--  EN ADD ELIMINAR INSERCIONES DE PREUBA
DELETE FROM Prestamos WHERE id= 100001;
DELETE FROM Ejemplares WHERE id= 10000001;
DELETE FROM Donaciones WHERE id= 10001;
DELETE FROM Libros WHERE ID = 100000001;
DELETE FROM SUBGENEROS WHERE ID = 1001;
DELETE FROM LibrosAutores WHERE idLibro = 100000001;
DELETE FROM Autores WHERE ID = 10001;

UPDATE SUSCRIPCIONES SET estado = 'Inactivo' WHERE id = 10000001;
DELETE FROM Suscripciones WHERE id= 10000001;

DELETE FROM Donadores WHERE idDonador= 1000001;
DELETE FROM Usuarios WHERE id= 1000001;

SELECT * FROM Prestamos;
SELECT * FROM Ejemplares;
SELECT * FROM Donaciones;
SELECT * FROM Libros;
SELECT * FROM Subgeneros;
SELECT * FROM LibrosAutores;
SELECT * FROM Autores;
SELECT * FROM Suscripciones;
SELECT * FROM Donadores;
SELECT * FROM Usuarios;

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