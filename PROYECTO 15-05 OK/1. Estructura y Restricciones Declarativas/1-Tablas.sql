
/* CICLO 1: Tablas */
CREATE TABLE Libros(
    id INT NOT NULL,
    titulo VARCHAR2(100) NOT NULL,
    descripcion VARCHAR2(500) NOT NULL,
    fechaPublicacion DATE NOT NULL,
    isbn INT NOT NULL,
    idSubgenero INT NOT NULL
);

CREATE TABLE Subgeneros(
    id INT NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    descripcion VARCHAR2(500) NOT NULL
);

CREATE TABLE LibrosAutores(
    idLibro INT NOT NULL,
    idAutor INT NOT NULL
);

CREATE TABLE Ejemplares(
    id INT NOT NULL,
    idLibro INT NOT NULL,
    ubicacion VARCHAR2(100) NOT NULL,
    estado VARCHAR2(15) NOT NULL,
    fechaAdquisicion DATE NOT NULL
);

CREATE TABLE Autores(
    id INT NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    nacionalidad VARCHAR2(60) NOT NULL,
    fechaNacimiento DATE NOT NULL
);

CREATE TABLE Prestamos(
    id INT NOT NULL,
    fechaPrestamo DATE NOT NULL,
    fechaDevolucion DATE NOT NULL,
    idEjemplar INT NOT NULL,
    idLibro INT NOT NULL,
    idUsuario INT NOT NULL
);

CREATE TABLE Donaciones(
    id INT NOT NULL,
    fechaDonacion DATE NOT NULL,
    tipoDonacion VARCHAR2(1) NOT NULL,
    idLibro INT NOT NULL,
    idDonador INT NOT NULL
);

CREATE TABLE Donadores(
    idDonador INT NOT NULL
);

CREATE TABLE Usuarios(
    id INT NOT NULL,
    nombre VARCHAR2(15) NOT NULL,
    apellido VARCHAR2(15) NOT NULL,
    direccion VARCHAR2(100) NOT NULL,
    genero VARCHAR2(1),
    fechaNacimiento DATE NOT NULL,
    ocupacion VARCHAR2(1),
    telefono INT NOT NULL
);

CREATE TABLE Correos(
    idUsuario INT NOT NULL,
    correo VARCHAR2(30) NOT NULL
);

CREATE TABLE Suscripciones(
    id INT NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    estado VARCHAR2(8) NOT NULL,
    idUsuario INT NOT NULL
);


/* CICLO 1: XTablas 
DROP TABLE suscripciones;
DROP TABLE correos;
DROP TABLE donaciones;
DROP TABLE donadores;
DROP TABLE prestamos;
DROP TABLE Usuarios;
DROP TABLE Ejemplares;
DROP TABLE LibrosAutores;
DROP TABLE Autores;
DROP TABLE Libros;
DROP TABLE Subgeneros;
*/
