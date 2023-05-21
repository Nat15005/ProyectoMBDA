<proyecto>
  <nombre>TCondiciones</nombre>
  <condiciones>
    <nivel_ruido>
      <dia>75</dia>
      <noche>60</noche>
    </nivel_ruido>
    <protectores>
      <protector>cabeza</protector>
      <protector>auditivos</protector>
      <protector>vias respiratorias</protector>
    </protectores>
  </condiciones>
</proyecto>

<!ELEMENT proyecto (nombre, condiciones)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT condiciones (nivel_ruido, protectores)>
<!ELEMENT nivel_ruido (dia, noche)>
<!ELEMENT dia (#PCDATA)>
<!ELEMENT noche (#PCDATA)>
<!ELEMENT protectores (protector*)>
<!ELEMENT protector (#PCDATA)>

POBLARXML
INSERT INTO PROYECTOS (CODIGO, NOMBRE, FECHA, PRECIO, FIN, RECURSOS, CONDICIONES)
VALUES ('P001', '<proyecto>
  <nombre>Proyecto-A1</nombre>
  <condiciones>
    <nivel_ruido>
      <dia>75</dia>
      <noche>60</noche>
    </nivel_ruido>
    <protectores>
      <protector>cabeza</protector>
      <protector>auditivos</protector>
      <protector>vias respiratorias</protector>
    </protectores>
  </condiciones>
</proyecto>', TO_DATE('2023-05-21', 'YYYY-MM-DD'), 100000, TO_DATE('2023-08-31', 'YYYY-MM-DD'), 5, 'Condición 1');

INSERT INTO PROYECTOS (CODIGO, NOMBRE, FECHA, PRECIO, FIN, RECURSOS, CONDICIONES)
VALUES ('P002', '<proyecto>
  <nombre>Proyecto-B2</nombre>
  <condiciones>
    <nivel_ruido>
      <dia>80</dia>
      <noche>55</noche>
    </nivel_ruido>
    <protectores>
      <protector>auditivos</protector>
      <protector>vias respiratorias</protector>
    </protectores>
  </condiciones>
</proyecto>', TO_DATE('2023-06-15', 'YYYY-MM-DD'), 50000, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 3, 'Condición 2');

CONSULTA: Implemente la siguiente consulta operativa:
Consultar los proyectos activos con más de tres protectores

SELECT p.CODIGO, p.NOMBRE
FROM PROYECTOS p
INNER JOIN (
    SELECT CODIGO, COUNT(*) AS num_protectores
    FROM PROYECTOS
    CROSS JOIN XMLTABLE('/proyecto/condiciones/protectores/protector' PASSING XMLTYPE(CONDICIONES) COLUMNS CODIGO VARCHAR2(15) PATH '../../nombre', protector VARCHAR2(30) PATH '.') t
    GROUP BY CODIGO
    HAVING COUNT(*) > 3
) subquery ON p.CODIGO = subquery.CODIGO
WHERE p.FIN IS NULL -- Filtra solo los proyectos activos sin fecha de finalización
ORDER BY p.CODIGO;
--------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE CRUD_Proyecto AS
  -- Procedimiento para agregar un nuevo proyecto
  PROCEDURE AdicionarProyecto(
    p_codigo IN VARCHAR2,
    p_nombre IN VARCHAR2,
    p_fecha IN DATE,
    p_precio IN NUMBER,
    p_fin IN DATE,
    p_recursos IN NUMBER,
    p_condiciones IN VARCHAR2
  );
  
  -- Función para consultar los proyectos activos con más de tres protectores
  FUNCTION ConsultarProyectosActivos() RETURN SYS_REFCURSOR;
  
  -- Función para consultar un proyecto por su código
  FUNCTION ConsultarProyectoPorCodigo(p_codigo IN VARCHAR2) RETURN SYS_REFCURSOR;
  
END CRUD_Proyecto;
/
------------------------------------------------
CREATE OR REPLACE PACKAGE BODY CRUD_Proyecto AS
  -- Procedimiento para agregar un nuevo proyecto
  PROCEDURE AdicionarProyecto(
    p_codigo IN VARCHAR2,
    p_nombre IN VARCHAR2,
    p_fecha IN DATE,
    p_precio IN NUMBER,
    p_fin IN DATE,
    p_recursos IN NUMBER,
    p_condiciones IN VARCHAR2
  ) AS
  BEGIN
    INSERT INTO PROYECTOS (
      CODIGO, NOMBRE, FECHA, PRECIO, FIN, RECURSOS, CONDICIONES
    ) VALUES (
      p_codigo, p_nombre, p_fecha, p_precio, p_fin, p_recursos, p_condiciones
    );
  END AdicionarProyecto;
  
  -- Función para consultar los proyectos activos con más de tres protectores
  FUNCTION ConsultarProyectosActivos() RETURN SYS_REFCURSOR AS
    c_result SYS_REFCURSOR;
  BEGIN
    OPEN c_result FOR
      SELECT p.CODIGO, p.NOMBRE
      FROM PROYECTOS p
      INNER JOIN (
        SELECT CODIGO, COUNT(*) AS num_protectores
        FROM PROYECTOS
        CROSS JOIN XMLTABLE('/proyecto/condiciones/protectores/protector'
          PASSING XMLTYPE(CONDICIONES) COLUMNS
          CODIGO VARCHAR2(15) PATH '../../nombre',
          protector VARCHAR2(30) PATH '.'
        ) t
        GROUP BY CODIGO
        HAVING COUNT(*) > 3
      ) subquery ON p.CODIGO = subquery.CODIGO
      WHERE p.FIN IS NULL;
      
    RETURN c_result;
  END ConsultarProyectosActivos;
  
  -- Función para consultar un proyecto por su código
  FUNCTION ConsultarProyectoPorCodigo(p_codigo IN VARCHAR2) RETURN SYS_REFCURSOR AS
    c_result SYS_REFCURSOR;
  BEGIN
    OPEN c_result FOR
      SELECT *
      FROM PROYECTOS
      WHERE CODIGO = p_codigo;
      
    RETURN c_result;
  END ConsultarProyectoPorCodigo;
  
END CRUD_Proyecto;
/
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE Actores_Gerente_Gestion_Humana AS
  -- Procedimiento para listar todos los empleados
  PROCEDURE ListarEmpleados(p_cursor OUT SYS_REFCURSOR);
  
  -- Función para obtener el salario promedio de los empleados
  FUNCTION ObtenerSalarioPromedio RETURN NUMBER;
  
  -- Procedimiento para actualizar el salario de un empleado
  PROCEDURE ActualizarSalarioEmpleado(p_codigo IN VARCHAR2, p_salario IN NUMBER);
  
END Actores_Gerente_Gestion_Humana;
/
----------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY Actores_Gerente_Gestion_Humana AS
  -- Procedimiento para listar todos los empleados
  PROCEDURE ListarEmpleados(p_cursor OUT SYS_REFCURSOR) AS
  BEGIN
    OPEN p_cursor FOR
      SELECT CODIGO, NOMBRE, SALARIO
      FROM EMPLEADOS;
  END ListarEmpleados;
  
  -- Función para obtener el salario promedio de los empleados
  FUNCTION ObtenerSalarioPromedio RETURN NUMBER AS
    v_promedio NUMBER;
  BEGIN
    SELECT AVG(SALARIO) INTO v_promedio
    FROM EMPLEADOS;
    
    RETURN v_promedio;
  END ObtenerSalarioPromedio;
  
  -- Procedimiento para actualizar el salario de un empleado
  PROCEDURE ActualizarSalarioEmpleado(p_codigo IN VARCHAR2, p_salario IN NUMBER) AS
  BEGIN
    UPDATE EMPLEADOS
    SET SALARIO = p_salario
    WHERE CODIGO = p_codigo;
    
    COMMIT;
  END ActualizarSalarioEmpleado;
  
END Actores_Gerente_Gestion_Humana;
/
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Defina el rol y de permiso al Gerente de gestión humana sobre este
paquete.
CREATE ROLE Rol_Gerente_Gestion_Humana;
--Otorgar permisos al rol para ejecutar el paquete:
GRANT EXECUTE ON Actores_Gerente_Gestion_Humana TO Rol_Gerente_Gestion_Humana;
--Asignar el rol al usuario del Gerente de Gestión Humana
GRANT Rol_Gerente_Gestion_Humana TO <nombre_usuario>;


