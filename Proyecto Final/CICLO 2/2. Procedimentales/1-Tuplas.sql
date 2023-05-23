
--CICLO 2 : TUPLAS
ALTER TABLE Eventos ADD CONSTRAINT CK_Eventos_fechas CHECK (fechaInicio < fechaFin);



--INSERT INTO Eventos (idEvento, nombre, fechaInicio, fechaFin, descripcion)
--VALUES (1, 'Conferencia de Literatura', TO_DATE('2023-05-20 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2023-05-20 12:00', 'YYYY-MM-DD HH24:MI'), 'Conferencia sobre literatura contemporánea');


