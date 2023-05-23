CREATE OR REPLACE PACKAGE PK_RESENAS AS
    PROCEDURE AD_Resena (xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE MO_Resena (xId IN INT, xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE EL_Resena (xId IN INT);
END PK_RESENAS;
/
CREATE OR REPLACE PACKAGE PK_MULTAS AS
    PROCEDURE AD_Multa (xIdUsuario IN INT, xIdPrestamo IN INT, 
                        xMotivo IN VARCHAR2, xEstado IN VARCHAR2);
    PROCEDURE MO_Multa (xId IN INT, xIdUsuario IN INT, xIdPrestamo IN INT, 
                        xFecha IN DATE, xMmotivo IN VARCHAR2,xEestado IN VARCHAR2);
    PROCEDURE EL_Multa (xId IN INT);
END PK_MULTAS;
/

CREATE OR REPLACE PACKAGE PK_EVENTOS AS
    PROCEDURE AD_Evento (xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaInicio IN DATE, xFechaFin IN DATE, xUbicacion IN VARCHAR2);
    PROCEDURE MO_Evento (xId IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaInicio IN DATE, xFechaFin IN DATE, xUbicacion IN VARCHAR2);
    PROCEDURE EL_Evento (xId IN INT);
    -- falta mirar como meter Asistentes
END PK_EVENTOS;
/
