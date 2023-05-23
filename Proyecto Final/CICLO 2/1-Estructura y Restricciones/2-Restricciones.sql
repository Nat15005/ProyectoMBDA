
--PRIMARY KEYS
ALTER TABLE Resenas ADD CONSTRAINT PK_Resenas PRIMARY KEY (id);
ALTER TABLE Multas ADD CONSTRAINT PK_Multas PRIMARY KEY (id);
ALTER TABLE Eventos ADD CONSTRAINT PK_Eventos PRIMARY KEY (id);
ALTER TABLE Asistentes ADD CONSTRAINT PK_Asistentes PRIMARY KEY (idUsuario, idEvento);


--FOREIGN KEYS

ALTER TABLE Asistentes ADD CONSTRAINT FK_Asistentes_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(id);
ALTER TABLE Asistentes ADD CONSTRAINT FK_Asistentes_Evento FOREIGN KEY (idEvento) REFERENCES Eventos(id);
ALTER TABLE Resenas ADD CONSTRAINT FK_Resenas_Ejemplares FOREIGN KEY (idEjemplar) REFERENCES Ejemplares(id);
ALTER TABLE Resenas ADD CONSTRAINT FK_Resenas_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(id);
ALTER TABLE Multas ADD CONSTRAINT FK_Multas_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(id);
ALTER TABLE Multas ADD CONSTRAINT FK_Multas_Prestamo FOREIGN KEY (idPrestamo) REFERENCES Prestamos(id);

-- CICLO 2 : Atributos

ALTER TABLE Eventos ADD CONSTRAINT CK_Eventos_id CHECK (LENGTH(TO_CHAR(id)) = 3 AND id >= 0);
ALTER TABLE Resenas ADD CONSTRAINT CK_Resenas_id CHECK (LENGTH(TO_CHAR(id)) = 6 AND id >= 0);
ALTER TABLE Resenas ADD CONSTRAINT CK_Resenas_calificacion CHECK (calificacion >= 1 AND calificacion <= 5);
ALTER TABLE Multas ADD CONSTRAINT CK_Multas_id CHECK (LENGTH(TO_CHAR(id)) = 5 AND id >= 0);
ALTER TABLE Multas ADD CONSTRAINT CK_Multas_motivo CHECK (motivo IN ('Daño','Perdida','Retraso'));
ALTER TABLE Multas ADD CONSTRAINT CK_Multas_estado CHECK (estado IN ('Pendiente','Pagada'));
ALTER TABLE Multas ADD CONSTRAINT CK_Multas_monto CHECK (monto > 0);
ALTER TABLE Asistentes ADD CONSTRAINT CK_Asistentes_idUsuario CHECK (LENGTH(TO_CHAR(idUsuario)) = 7 AND idUsuario >= 0);
ALTER TABLE Asistentes ADD CONSTRAINT CK_Asistentes_idEvento CHECK (LENGTH(TO_CHAR(idEvento)) = 3 AND idLibidEventoro >= 0);


