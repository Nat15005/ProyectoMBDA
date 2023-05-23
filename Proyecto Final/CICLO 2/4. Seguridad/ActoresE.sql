CREATE OR REPLACE PK_ADMINISTRADOR2
    PROCEDURE AD_Resena (xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE MO_Resena (xId IN INT, xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE EL_Resena (xId IN INT);
    PROCEDURE AD_Multa (xIdUsuario IN INT, xIdPrestamo IN INT, motivo IN VARCHAR2, estado IN VARCHAR2);
    PROCEDURE MO_Multa (xId IN INT, xIdUsuario IN INT, xIdPrestamo IN INT, xFecha IN DATE, nmotivo IN VARCHAR2, estado IN VARCHAR2);
    PROCEDURE EL_Multa (xId IN INT);
    PROCEDURE AD_Evento (xIdAsistente IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaInicio IN DATE, xFechaFin IN DATE, xUbicacion IN VARCHAR2);
    PROCEDURE MO_Evento (xId IN INT, xIdAsistente IN INT, xNombre IN VARCHAR2, xDescripcion IN VARCHAR2, xFechaInicio IN DATE, xFechaFin IN DATE, xUbicacion IN VARCHAR2);
    PROCEDURE EL_Evento (xId IN INT);
END PK_ADMINISTRADOR2;
/

CREATE OR REPLACE PK_BIBLIOTECARIO2
    PROCEDURE AD_Resena (xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE MO_Resena (xId IN INT, xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE AD_Multa (xIdUsuario IN INT, xIdPrestamo IN INT, motivo IN VARCHAR2, estado IN VARCHAR2);
    PROCEDURE MO_Multa (xId IN INT, xIdUsuario IN INT, xIdPrestamo IN INT, xFecha IN DATE, nmotivo IN VARCHAR2, estado IN VARCHAR2);
    PROCEDURE EL_Multa (xId IN INT);
END PK_BIBLIOTECARIO2;
/

CREATE OR REPLACE PK_USUARIO2
    PROCEDURE AD_Resena (xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE MO_Resena (xId IN INT, xIdEjemplar IN INT, xIdUsuario IN INT, xComentario IN VARCHAR2, xCalificacion IN INT);
    PROCEDURE EL_Resena (xId IN INT);
END PK_USUARIO2;
/