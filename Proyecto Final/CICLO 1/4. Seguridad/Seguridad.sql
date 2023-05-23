
--Definición de roles y permisos

CREATE ROLE USUARIODR;
GRANT EXECUTE ON PK_USUARIO TO USUARIO;

CREATE ROLE ADMINISTRADORDR;
GRANT EXECUTE ON PK_ADMINISTRADOR TO ADMINISTRADORDR;

CREATE ROLE BIBLIOTECARIODR;
GRANT EXECUTE ON PK_BIBLIOTECARIO TO BIBLIOTECARIODR;


-- SeguridadOk
SET SERVEROUTPUT ON
EXECUTE DBMS_SESSION.SET_ROLE('USUARIODR');
DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_USUARIO.CO_LibrosSubgenero(1001);
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/

SET SERVEROUTPUT ON
EXECUTE DBMS_SESSION.SET_ROLE('ADMINISTRADORDR');
DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_ADMINISTRADOR.CO_PrestamoPorUsuario;
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/

EXECUTE DBMS_SESSION.SET_ROLE('BIBLIOTECARIO');
DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_BIBLIOTECARIO.CO_UbicacionEjemplar('El nombre del viento');
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/

--- Seguridad NoOk
--No funciona porque el rol no tiene permiso de acceder a esta funcion 
SET SERVEROUTPUT ON
EXECUTE DBMS_SESSION.SET_ROLE('USUARIODR');

DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_USUARIO.CO_PrestamoPorUsuario;
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/
--No funciona porque el rol no tiene permiso de acceder a esta funcion 
SET SERVEROUTPUT ON
EXECUTE DBMS_SESSION.SET_ROLE('ADMINISTRADORDR');

DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_ADMINISTRADOR.CO_UbicacionEjemplar;
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/
--No funciona porque el rol no tiene permiso de acceder a esta funcion 
EXECUTE DBMS_SESSION.SET_ROLE('BIBLIOTECARIODR');

DECLARE
  resultado SYS_REFCURSOR;
BEGIN
  resultado := PK_BIBLIOTECARIO.CO_DonacionesDonador(1000001);
  DBMS_SQL.RETURN_RESULT(resultado);
END;
/
--xSEGURIDAD
REVOKE EXECUTE ON PK_ADMINISTRADOR FROM ADMINISTRADORDR;
REVOKE EXECUTE ON PK_BIBLIOTECARIO FROM BIBLIOTECARIODR;
REVOKE EXECUTE ON PK_USUARIO FROM USUARIODR;

DROP ROLE ADMINISTRADORDR;
DROP ROLE BIBLIOTECARIODR;
DROP ROLE USUARIODR;

DROP PACKAGE PK_ADMINISTRADOR;
DROP PACKAGE PK_BIBLIOTECARIO;
DROP PACKAGE PK_USUARIO;