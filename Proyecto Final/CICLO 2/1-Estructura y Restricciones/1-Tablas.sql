

CREATE TABLE Resenas (
    id INT NOT NULL,
    idEjemplar INT NOT NULL,
    idUsuario INT NOT NULL,
    fecha DATE NOT NULL,
    comentario XMLTYPE NOT NULL,
    calificacion INT NOT NULL
);

CREATE TABLE Multas(
    id INT NOT NULL
    idUsuario INT NOT NULL,
    idPrestamo INT NOT NULL,
    fecha DATE NOT NULL,
    montoAPagar INT NOT NULL,
    motivo VARCHAR2(15) NOT NULL,
    estado VARCHAR (10) NOT NULL
);

CREATE TABLE Eventos(
    id INT NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    descripcion XMLTYPE NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    ubicacion VARCHAR(250) NOT NULL
);

CREATE TABLE Asistentes(
    idUsuario INT NOT NULL,
    idEvento IN NOT NULL
);

