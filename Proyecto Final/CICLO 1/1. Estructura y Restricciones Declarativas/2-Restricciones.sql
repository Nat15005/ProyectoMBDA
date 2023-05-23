/*Restricciones*/
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

-- CICLO 1: Primarias
ALTER TABLE Libros ADD CONSTRAINT PK_Libros PRIMARY KEY (id);
ALTER TABLE Subgeneros ADD CONSTRAINT PK_Subgeneros PRIMARY KEY (id);
ALTER TABLE LibrosAutores ADD CONSTRAINT PK_LibrosAutores PRIMARY KEY (idLibro, idAutor);
ALTER TABLE Ejemplares ADD CONSTRAINT PK_Ejemplares PRIMARY KEY (id, idLibro);
ALTER TABLE Autores ADD CONSTRAINT PK_Autores PRIMARY KEY (id);
ALTER TABLE Prestamos ADD CONSTRAINT PK_Prestamos PRIMARY KEY (id);
ALTER TABLE Donaciones ADD CONSTRAINT PK_Donaciones PRIMARY KEY (id);
ALTER TABLE Donadores ADD CONSTRAINT PK_Donadores PRIMARY KEY (idDonador);
ALTER TABLE Usuarios ADD CONSTRAINT PK_Usuarios PRIMARY KEY (id);
ALTER TABLE Correos ADD CONSTRAINT PK_Correos PRIMARY KEY (idUsuario, correo);
ALTER TABLE Suscripciones ADD CONSTRAINT PK_Suscripciones PRIMARY KEY(id);

-- CICLO 1: Unicas
ALTER TABLE Libros ADD CONSTRAINT UK_Libros_isbn UNIQUE (isbn);
ALTER TABLE Correos ADD CONSTRAINT UK_Correos_correo UNIQUE (correo);
ALTER TABLE Subgeneros ADD CONSTRAINT UK_Subgeneros_nombre UNIQUE (nombre);

-- CICLO 1: Foráneas

/*
ALTER TABLE Libros ADD CONSTRAINT FK_Libros_Subgenero FOREIGN KEY (idSubgenero) REFERENCES Subgeneros(id);
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_LibrosAutoresLibros_LibrosDU FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_LibrosAutoresLibros_AutoresD FOREIGN KEY (idAutor) REFERENCES Autores(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Ejemplares ADD CONSTRAINT FK_Ejemplares_LibrosD FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Prestamos ADD CONSTRAINT FK_Prestamos_Ejemplares FOREIGN KEY (idEjemplar, idLibro) REFERENCES Ejemplares(id, idLibro) ON UPDATE CASCADE;
ALTER TABLE Prestamos ADD CONSTRAINT FK_Prestamos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Donaciones ADD CONSTRAINT FK_Donaciones_Libros FOREIGN KEY (idLibro) REFERENCES Libros(id) ON UPDATE CASCADE;
ALTER TABLE Donaciones ADD CONSTRAINT FK_Donaciones_Donadores FOREIGN KEY (idDonador) REFERENCES Donadores(idDonador) ON UPDATE CASCADE;
ALTER TABLE Donadores ADD CONSTRAINT FK_Donadores_Usuarios FOREIGN KEY (idDonador) REFERENCES Usuarios(id) ON UPDATE CASCADE;
ALTER TABLE Correos ADD CONSTRAINT FK_Correos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Suscripciones ADD CONSTRAINT FK_Suscripciones_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON UPDATE CASCADE;
*/

ALTER TABLE Libros ADD CONSTRAINT FK_Libros_Subgenero FOREIGN KEY (idSubgenero) REFERENCES Subgeneros(id);
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_LibrosAutoresLibros_LibrosDU FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE;
ALTER TABLE LibrosAutores ADD CONSTRAINT FK_LibrosAutoresLibros_AutoresD FOREIGN KEY (idAutor) REFERENCES Autores(id) ON DELETE CASCADE;
ALTER TABLE Ejemplares ADD CONSTRAINT FK_Ejemplares_LibrosD FOREIGN KEY (idLibro) REFERENCES Libros(id) ON DELETE CASCADE;
ALTER TABLE Correos ADD CONSTRAINT FK_Correos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id) ON DELETE CASCADE;
ALTER TABLE Prestamos ADD CONSTRAINT FK_Prestamos_Ejemplares FOREIGN KEY (idEjemplar, idLibro) REFERENCES Ejemplares(id, idLibro);
ALTER TABLE Prestamos ADD CONSTRAINT FK_Prestamos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id);
ALTER TABLE Donaciones ADD CONSTRAINT FK_Donaciones_Libros FOREIGN KEY (idLibro) REFERENCES Libros(id);
ALTER TABLE Donaciones ADD CONSTRAINT FK_Donaciones_Donadores FOREIGN KEY (idDonador) REFERENCES Donadores(idDonador);
ALTER TABLE Donadores ADD CONSTRAINT FK_Donadores_Usuarios FOREIGN KEY (idDonador) REFERENCES Usuarios(id);
ALTER TABLE Suscripciones ADD CONSTRAINT FK_Suscripciones_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(id);

-- CICLO 1: Atributos

---- LIBROS
ALTER TABLE Libros ADD CONSTRAINT CK_Libros_id CHECK (LENGTH(TO_CHAR(id)) = 9 AND id >= 0);
ALTER TABLE Libros ADD CONSTRAINT CK_Libros_isbn CHECK (LENGTH(TO_CHAR(isbn)) = 13 AND isbn >= 0);
ALTER TABLE Libros ADD CONSTRAINT CK_Libros_idSubgenero CHECK (LENGTH(TO_CHAR(idSubgenero)) = 4 AND idSubgenero >= 0);

---- SUBGENEROS
ALTER TABLE Subgeneros ADD CONSTRAINT CK_Subgenero_id CHECK (LENGTH(TO_CHAR(id)) = 4 AND id >= 0);

---- LIBROSAUTORES
ALTER TABLE LibrosAutores ADD CONSTRAINT CK_LibrosAutores_idLibro CHECK (LENGTH(TO_CHAR(idLibro)) = 9 AND idLibro >= 0);
ALTER TABLE LibrosAutores ADD CONSTRAINT CK_LibrosAutores_idAutor CHECK (LENGTH(TO_CHAR(idAutor)) = 5 AND idAutor >= 0);

---- EJEMPLARES
ALTER TABLE Ejemplares ADD CONSTRAINT CK_Ejemplares_id CHECK (LENGTH(TO_CHAR(id)) = 8 AND id >= 0);
ALTER TABLE Ejemplares ADD CONSTRAINT CK_Ejemplares_idLibro CHECK (LENGTH(TO_CHAR(idLibro)) = 9 AND idLibro >= 0);
ALTER TABLE Ejemplares ADD CONSTRAINT CK_Ejemplares_ubicacion CHECK (ubicacion LIKE 'Estanteria%, %');
ALTER TABLE Ejemplares ADD CONSTRAINT CK_Ejemplares_estado CHECK (estado IN ('Disponible','Prestado','Reparacion','Oculto'));

---- AUTORES
ALTER TABLE Autores ADD CONSTRAINT CK_Autores_id CHECK (LENGTH(TO_CHAR(id)) = 5 AND id >= 0);

---- PRESTAMOS
ALTER TABLE Prestamos ADD CONSTRAINT CK_Prestamos_id CHECK (LENGTH(TO_CHAR(id)) = 6 AND id >= 0);
ALTER TABLE Prestamos ADD CONSTRAINT CK_Prestamos_idEjemplar CHECK (LENGTH(TO_CHAR(idEjemplar)) = 8 AND idEjemplar >= 0);
ALTER TABLE Prestamos ADD CONSTRAINT CK_Prestamos_idLibro CHECK (LENGTH(TO_CHAR(idLibro)) = 9 AND idLibro >= 0);
ALTER TABLE Prestamos ADD CONSTRAINT CK_Prestamos_idUsuario CHECK (LENGTH(TO_CHAR(idUsuario)) = 7 AND idUsuario >= 0);



---- DONACIONES
ALTER TABLE Donaciones ADD CONSTRAINT CK_Donaciones_id CHECK (LENGTH(TO_CHAR(id)) = 5 AND id >= 0);
ALTER TABLE Donaciones ADD CONSTRAINT CK_Donaciones_idLibro CHECK (LENGTH(TO_CHAR(idLibro)) = 9 AND idLibro >= 0);
ALTER TABLE Donaciones ADD CONSTRAINT CK_Donaciones_idUsuario CHECK (LENGTH(TO_CHAR(idDonador)) = 7 AND idDonador >= 0);

---- DONADORES
ALTER TABLE Donadores ADD CONSTRAINT CK_Donadores_idDonador CHECK (LENGTH(TO_CHAR(idDonador)) = 7 AND idDonador >= 0);

---- USUARIOS
ALTER TABLE Usuarios ADD CONSTRAINT CK_Usuarios_id CHECK (LENGTH(TO_CHAR(id)) = 7 AND id >= 0);
ALTER TABLE Usuarios ADD CONSTRAINT CK_Usuarios_genero CHECK (genero IN('F','M'));
ALTER TABLE Usuarios ADD CONSTRAINT CK_Usuarios_ocupacion CHECK (ocupacion IN('E','O'));
ALTER TABLE Usuarios ADD CONSTRAINT CK_Usuarios_telefono CHECK (LENGTH(TO_CHAR(telefono)) = 10 AND telefono>= 0);

---- CORREOS
ALTER TABLE Correos ADD CONSTRAINT CK_Correos_idUsuario CHECK (LENGTH(TO_CHAR(idUsuario)) = 7 AND idUsuario >= 0);
ALTER TABLE Correos ADD CONSTRAINT CK_Correos_correo CHECK (REGEXP_LIKE(correo, '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'));

---- SUSCRIPCIONES
ALTER TABLE Suscripciones ADD CONSTRAINT CK_Suscripciones_id CHECK (LENGTH(TO_CHAR(id)) = 8 AND id >= 0);
ALTER TABLE Suscripciones ADD CONSTRAINT CK_Suscripciones_estado CHECK (estado IN ('Activo', 'Inactivo'));
ALTER TABLE Suscripciones ADD CONSTRAINT CK_Suscripciones_idUsuario CHECK (LENGTH(TO_CHAR(idUsuario)) = 7 AND idUsuario >= 0);



/*DROP CK'S

ALTER TABLE Libros DROP CONSTRAINT PK_Libros;
ALTER TABLE Subgeneros DROP CONSTRAINT PK_Subgeneros;
ALTER TABLE LibrosAutores DROP CONSTRAINT PK_LibrosAutores;
ALTER TABLE Ejemplares DROP CONSTRAINT PK_Ejemplares;
ALTER TABLE Autores DROP CONSTRAINT PK_Autores;
ALTER TABLE Prestamos DROP CONSTRAINT PK_Prestamos;
ALTER TABLE Donaciones DROP CONSTRAINT PK_Donaciones;
ALTER TABLE Donadores DROP CONSTRAINT PK_Donadores;
ALTER TABLE Usuarios DROP CONSTRAINT PK_Usuarios;
ALTER TABLE Correos DROP CONSTRAINT PK_Correos;
ALTER TABLE Suscripciones DROP CONSTRAINT PK_Suscripciones;

ALTER TABLE Libros DROP CONSTRAINT UK_Libros_isbn;
ALTER TABLE Correos DROP CONSTRAINT UK_Correos_correo;

ALTER TABLE Libros DROP CONSTRAINT FK_Libros_Subgenero;
ALTER TABLE LibrosAutores DROP CONSTRAINT FK_LibrosAutoresLibros_LibrosDU;
ALTER TABLE LibrosAutores DROP CONSTRAINT FK_LibrosAutoresLibros_AutoresD;
ALTER TABLE Ejemplares DROP CONSTRAINT FK_Ejemplares_LibrosD;
ALTER TABLE Prestamos DROP CONSTRAINT FK_Prestamos_Ejemplares;
ALTER TABLE Prestamos DROP CONSTRAINT FK_Prestamos_Usuarios;
ALTER TABLE Donaciones DROP CONSTRAINT FK_Donaciones_Libros;
ALTER TABLE Donaciones DROP CONSTRAINT FK_Donaciones_Donadores;
ALTER TABLE Donadores DROP CONSTRAINT FK_Donadores_Usuarios;
ALTER TABLE Correos DROP CONSTRAINT FK_Correos_Usuarios;
ALTER TABLE Suscripciones DROP CONSTRAINT FK_Suscripciones_Usuarios;


ALTER TABLE Libros DROP CONSTRAINT CK_Libros_id;
ALTER TABLE Libros DROP CONSTRAINT CK_Libros_isbn;
ALTER TABLE Libros DROP CONSTRAINT CK_Libros_idSubgenero;
ALTER TABLE Subgeneros DROP CONSTRAINT CK_Subgenero_id;
ALTER TABLE LibrosAutores DROP CONSTRAINT CK_LibrosAutores_idLibro;
ALTER TABLE LibrosAutores DROP CONSTRAINT CK_LibrosAutores_idAutor;
ALTER TABLE Ejemplares DROP CONSTRAINT CK_Ejemplares_id;
ALTER TABLE Ejemplares DROP CONSTRAINT CK_Ejemplares_idLibro;
ALTER TABLE Ejemplares DROP CONSTRAINT CK_Ejemplares_ubicacion;
ALTER TABLE Ejemplares DROP CONSTRAINT CK_Ejemplares_estado;
ALTER TABLE Autores DROP CONSTRAINT CK_Autores_id;
ALTER TABLE Prestamos DROP CONSTRAINT CK_Prestamos_id;
ALTER TABLE Prestamos DROP CONSTRAINT CK_Prestamos_idEjemplar;
ALTER TABLE Prestamos DROP CONSTRAINT CK_Prestamos_idLibro;
ALTER TABLE Prestamos DROP CONSTRAINT CK_Prestamos_idUsuario;
ALTER TABLE Donaciones DROP CONSTRAINT CK_Donaciones_id;
ALTER TABLE Donaciones DROP CONSTRAINT CK_Donaciones_idLibro;
ALTER TABLE Donaciones DROP CONSTRAINT CK_Donaciones_idUsuario;
ALTER TABLE Donadores DROP CONSTRAINT CK_Donadores_idDonador;
ALTER TABLE Usuarios DROP CONSTRAINT CK_Usuarios_id;
ALTER TABLE Usuarios DROP CONSTRAINT CK_Usuarios_genero;
ALTER TABLE Usuarios DROP CONSTRAINT CK_Usuarios_ocupacion;
ALTER TABLE Usuarios DROP CONSTRAINT CK_Usuarios_telefono;
ALTER TABLE Correos DROP CONSTRAINT CK_Correos_idUsuario;
ALTER TABLE Correos DROP CONSTRAINT CK_Correos_correo;
ALTER TABLE Suscripciones DROP CONSTRAINT CK_Suscripciones_id;
ALTER TABLE Suscripciones DROP CONSTRAINT CK_Suscripciones_estado;
ALTER TABLE Suscripciones DROP CONSTRAINT CK_Suscripciones_idUsuario;
*/