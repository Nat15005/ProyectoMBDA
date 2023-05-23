/* CICLO 1: Tablas 
Eliminé la tabla pertenecenA, agregué atributos segun el modelo logico*/

CREATE TABLE Universidades(
codigo VARCHAR(3) NOT NULL,
nombre VARCHAR(20) NOT NULL,
direccion VARCHAR(50) NOT NULL
);

CREATE TABLE Usuarios(
codigo VARCHAR(10) NOT NULL,
codigoUniversidad VARCHAR(3) NOT NULL,
tid VARCHAR (2) NOT NULL,
nid VARCHAR(10) NOT NULL,
nombre VARCHAR(50) NOT NULL,
programa VARCHAR(20) NOT NULL,
correo VARCHAR (50) NOT NULL,
registro DATE NOT NULL,
suspension DATE NULL,
nSuspensiones INT NOT NULL
);

CREATE TABLE CombosOfertas(
    numero INT NOT NULL,
    fecha DATE NOT NULL,
    precio INT NOT NULL,
    foto VARCHAR(40) NOT NULL,
    descripcion XMLTYPE NOT NULL,
    estado VARCHAR(1) NOT NULL,
    trueque VARCHAR(1),
    codigoUsuario VARCHAR(10) NOT NULL,
    codigoUniversidad VARCHAR(3) NOT NULL
);

CREATE TABLE Categorias(
    codigo VARCHAR(5) NOT NULL,
    nombre VARCHAR(5) NOT NULL,
    tipo CHAR (1) NOT NULL,
    minimo INT NOT NULL,
    maximo INT NOT NULL,
    codigoCategoria VARCHAR(5)
);

CREATE TABLE Calificaciones(
    estrellas INT NOT NULL,
    codigoUsuario VARCHAR(10) NOT NULL,
    codigoUniversidad VARCHAR(3) NOT NULL,
    idArticulo INT NOT NULL
);

CREATE TABLE Articulos(
    idArticulo INT NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    estado VARCHAR (1) NOT NULL,
    foto VARCHAR (40) NOT NULL,
    precio INT NOT NULL,
    disponible VARCHAR2(1) NOT NULL,
    codigoUsuario VARCHAR(10) NOT NULL,
    codigoUniversidad VARCHAR(3) NOT NULL,
    codigoCategoria VARCHAR(5) NOT NULL
);

CREATE TABLE Ropa(
    talla VARCHAR(2) NOT NULL,
    material VARCHAR(10) NOT NULL,
    color VARCHAR(10) NOT NULL,
    idArticulo INT NOT NULL
);

CREATE TABLE Perecederos(
    vencimiento DATE NOT NULL,
    idArticulo INT NOT NULL
);

CREATE TABLE Caracteristicas(
    id INT NOT NULL,
    caracteristicas VARCHAR(20) NOT NULL
);

CREATE TABLE ComboOfertaArticulos(
    idArticulo INT NOT NULL,
    numero INT NOT NULL
);

/*--------PUNTO DOS. (XML – Oracle) trueques Combo-Oferta. TDescripcion --------*/
--1) Proponga la estructura XML necesaria para tener la información del atributo
-- descripcion. DTD y ejemplos XML OK y XML NoOK. Explique.

<?xml version="1.0"?>
<!DOCTYPE TDescripcion>
<TDescripcion>
  <informacion>
    <combinaciones descripcion="Combo 1" usoPropuesto="Uso propuesto combo 1" />
    <combinaciones descripcion="Combo 2" usoPropuesto="Uso propuesto combo 2" />
    <peso gramos="numero" />
    <volumen ancho="numero" largo="numero" alto="numero" />
  </informacion>
</TDescripcion>


---DTD

<?xml version="1.0"?>
<!DOCTYPE TDescripcion[
<!ELEMENT TDescripcion (informacion*)>
<!ELEMENT información (combinaciones, peso, volumen)+>
<!ELEMENT combinaciones (descripcion, usoPropuesto)?>
<!ELEMENT peso (gramos)?>
<!ELEMENT volumen (ancho, largo, alto)?>
<!ATTLIST combinaciones
            descripcion CDATA #REQUIRED
            usoPropuesto CDATA #REQUIRED>
<!ATTLIST peso
            gramos CDATA >

<!ATTLIST volumen
            ancho CDATA #REQUIRED
            largo CDATA #REQUIRED
            alto CDATA #REQUIRED>
    
]>



---XML OK
<?xml version="1.0"?>
<!DOCTYPE TDescripcion>
<TDescripcion>
  <informacion>
    <combinaciones descripcion="Libro de Cocina + Batidora de mano" usoPropuesto="Hornear, batir y mezclar ingredientes para preparar deliciosas recetas"/>
    <peso gramos="2500"/>
    <volumen ancho="20" largo="30" alto="40"/>
  </informacion>
</TDescripcion>


<?xml version="1.0"?>
<!DOCTYPE TDescripcion>
<TDescripcion>
  <informacion>
    <combinaciones descripcion="Kit de entrenamiento básico" usoPropuesto="Ideal para entrenamientos de fuerza y resistencia">
      <articulos>
        <articulo id="123" nombre="Banda elástica de resistencia" cantidad="2" />
        <articulo id="456" nombre="Pesas de mano de 1kg" cantidad="2" />
        <articulo id="789" nombre="Pelota medicinal de 2kg" cantidad="1" />
      </articulos>
    </combinaciones>
    <peso gramos="5000" />
    <volumen ancho="30" largo="40" alto="20" />
  </informacion>
</TDescripcion>


---XML NoOk
--Este es un XML NoOk porque no cierra bien la etiqueta
<TDescripcion>
  <informacion>
    <combinaciones descripcion="Combo 1" usoPropuesto="Uso propuesto combo 1" >
    <combinaciones descripcion="Combo 2" usoPropuesto="Uso propuesto combo 2" />
    <peso gramos="numero" />
    <volumen ancho="numero" largo="numero" alto="numero" />
  </informacion>
</TDescripcion>

--Este es un XML NoOk porque la etiqueta información no tiene cierre
<TDescripcion>
  <informacion>
    <combinaciones descripcion="Combo 1" usoPropuesto="Uso propuesto combo 1" >
    <combinaciones descripcion="Combo 2" usoPropuesto="Uso propuesto combo 2" />
    <peso gramos="numero" />
    <volumen ancho="numero" largo="numero" alto="numero" />
  <descripcion>
</TDescripcion>

--2). Actualice la tabla y los datos adicionados a la base de datos. (PoblandoOK,
--ProblandoNoOK)

/*PoblarOK*/
/*Universidades*/
INSERT INTO Universidades (codigo, nombre, direccion) VALUES ('123', 'El Rosario', 'Cl. 12c #Nº 6-25');
INSERT INTO Universidades (codigo, nombre, direccion) VALUES ('121', 'Los Andes', 'Cra. 1 #18a-12');
INSERT INTO Universidades (codigo, nombre, direccion) VALUES ('122', 'La Salle', 'Cra. 5 #59a-44');

/*Usuarios*/
INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo,  registro, suspension, nsuspensiones) 
VALUES ('1000084523', '123', 'CC', '1000378902', 'Carmenza Lopez', 'Economía', 'carmeza.lopez@universidad.edu', TO_DATE('02-MAR-23', 'DD-MON-YY'), NULL, 000);
INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo, registro, suspension, nsuspensiones) 
VALUES ('1000065432', '456', 'CC', '1000456789', 'Juan Pérez', 'IngenieríaSistemas', 'juan.perez@universidad.edu', TO_DATE('04-MAR-22', 'DD-MON-YY'), NULL, 000);
INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo, registro, suspension, nsuspensiones) 
VALUES ('1000023456', '789', 'TI', '1000897654', 'María Torres', 'ContaduríaPública', 'maria.torres@universidad.edu', TO_DATE('02-MAY-22', 'DD-MON-YY'), NULL, 000);

/*Categorias*/
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00001', 'Aseo', 'A', '10000', '5000');
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00002', 'ropa', 'R', '20000', '45000');
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00003', 'Libro', 'L', '10000', '20000');

/*Combos-Ofertas*/
--------------- CombosOfertas ---------------
INSERT INTO ComboOfertas (fecha, precio, foto, descripcion, estado, trueque, codigoUsuario, codigoUniversidad) VALUES 
(TO_DATE('25/07/2023', 'DD/MM/YYYY'), '50', 'https://ejemplo.com/foto.pdf', 
'<TDescripcion>
  <informacion>
    <combinaciones descripcion="Libro de Cocina + Batidora de mano" usoPropuesto="Hornear, batir y mezclar ingredientes para preparar deliciosas recetas"/>
    <peso gramos="2500"/>
    <volumen ancho="20" largo="30" alto="40"/>
  </informacion>
</TDescripcion>', 
'O',  NULL, '1000084523','123');

INSERT INTO ComboOfertas (fecha, precio, foto, descripcion, estado, trueque, codigoUsuario, codigoUniversidad) VALUES 
(TO_DATE('25/07/2023', 'DD/MM/YYYY'), '100', 'https://ejemplo.com/foto.pdf', 
'<TDescripcion>
  <informacion>
    <combinaciones descripcion="Combo de Ropa: Camisa + Pantalón" usoPropuesto="Conjunto de ropa para uso diario"/>
    <peso gramos="800"/>
    <volumen ancho="15" largo="25" alto="10"/>
  </informacion>
</TDescripcion>', 
'O',  NULL, '1000065432','456');

INSERT INTO ComboOfertas (fecha, precio, foto, descripcion, estado, trueque, codigoUsuario, codigoUniversidad) VALUES 
(TO_DATE('25/07/2023', 'DD/MM/YYYY'), '35', 'https://ejemplo.com/foto.pdf', 
'<TDescripcion>
  <informacion>
    <combinaciones descripcion="Juego de Mesa + Película en DVD" usoPropuesto="Entretenimiento para toda la familia"/>
    <peso gramos="1500"/>
    <volumen ancho="10" largo="10" alto="5"/>
  </informacion>
</TDescripcion>', 
'A',  NULL, '1000023456','789');

/*Articulos*/
INSERT INTO Articulos (idArticulo, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUsuario, codigoUniversidad, codigoCategoria) 
VALUES ('236598456', '100000001', 'Descalzos', 'R', 'https://urosario.edu.co/claustro.pdf', '1500', 'T', '123', '00001');
INSERT INTO Articulos (idArticulo, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUsuario, codigoUniversidad, codigoCategoria) 
VALUES ('987654321', '100000002', 'Camiseta Roja', 'D', 'https://example.com/img/camiseta.jpg', '20000', 'F', '456', '00002');
INSERT INTO Articulos (idArticulo, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUsuario, codigoUniversidad, codigoCategoria) 
VALUES ('123456789', '100000003', 'Zapatos Negros', 'O', 'https://example.com/img/zapatos.jpg', '50000', 'T', '789', '00003');

/*Calificaciones*/
INSERT INTO Calificaciones (estrellas, codigoUsuario, codigoUniversidad, idArticulo) VALUES (2, '1000084523',12345);
INSERT INTO Calificaciones (estrellas, codigoUsuario, codigoUniversidad, idArticulo) VALUES (4, '1000065432',56789);
INSERT INTO Calificaciones (estrellas, codigoUsuario, codigoUniversidad, idArticulo) VALUES (5, '1000023456',23456);

/*Caracteristicas*/
INSERT INTO Caracteristicas (id, caracteristicas) VALUES ('236598456', 'PiesFrios');
INSERT INTO Caracteristicas (id, caracteristicas) VALUES ('987654321', 'CamisaRoja');
INSERT INTO Caracteristicas (id, caracteristicas) VALUES ('123456789', 'ZapatosNegros');

/*Ropas*/
INSERT INTO Ropa (talla, material, color, idArticulo) VALUES ('XS', 'algodon','azul', '100000001' );
INSERT INTO Ropa (talla, material, color, idArticulo) VALUES ('S', 'satin','lila', '100000002' );
INSERT INTO Ropa (talla, material, color, idArticulo) VALUES ('M', 'algodon','negro', '100000002' );

/*Perecederos*/
INSERT INTO Perecederos (vencimiento, idArticulo) VALUES (TO_DATE('08/09/2023', 'DD/MM/YYYY'), '100000001' );
INSERT INTO Perecederos (vencimiento, idArticulo) VALUES (TO_DATE('13/08/2023', 'DD/MM/YYYY'), '100000001' );
INSERT INTO Perecederos (vencimiento, idArticulo) VALUES (TO_DATE('08/09/2023', 'DD/MM/YYYY'), '100000002' );

/* ComboOfertaArticulos*/
INSERT INTO ComboOfertaArticulos (idArticulo, numero) VALUES ('123456789', '100000001');
INSERT INTO ComboOfertaArticulos (idArticulo, numero) VALUES ('987654321', '100000002');
INSERT INTO ComboOfertaArticulos (idArticulo, numero) VALUES ('236598456', '100000003');

/*PoblarNoOK*/
INSERT INTO Universidades (codigo, nombre, direccion) VALUES ('12356', 'El Rosario', 'Cl. 12c #Nº 6-25');
/* está protegido por el tipo de dato codigo, ya que es una cadena de más de 3 */

INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo,  registro, suspension, nsuspension) VALUES ('1000084523', '123', 'CE', '1000378902', 'Carmenza Lopez', 'Economía', 'carmeza.lopez@universidad.edu', '2022/03/01', NULL, 000);
/* está protegido por el tipo de dato abstracto tid, ya que no es CC ni TI el tipo de documento */
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00025', 'Alimentos', 'T', '-10000', '15000');
/* está protegido por el tipo de dato abstracto TMoneda, ya que minimo es un negativo*/
INSERT INTO Articulos (id, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUniversidad, codigoCategoria) VALUES ('23659845600000000000', '000000001', 'Descalzos', 'R', 'https://urosario.edu.co/claustro.pdf', '1500', 'T', '123', '00001');
/* está protegido por el tipo de dato id, ya que es una cadena de más de 16 */
INSERT INTO Ropas (talla, material, color, idArticulo) VALUES ('GG', 'algodon', 'azul', '10236598456');
/* está protegido los tipos de datos TTalla y TIdArticulo, ya que talla es GG y TIdArticulo no es la concatenacion del codigo de la universidad y el codigo de estudiante*/


/*PoblarNoOK2*/
INSERT INTO Universidades (codigo, nombre, direccion) VALUES ('12356','El Rosario', 'Cl. 12c #Nº 6-25');
/* está protegido por el tipo de dato codigo, ya que es una cadena de más de 3 */
INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo,  registro, suspension, nsuspension) VALUES ('1000084523', '123', 'cedula', '1000378902', 'Carmenza Lopez', 'Economía', 'carmeza.lopez@universidad.edu', '2022/03/01', NULL, '000');
/* está protegido por el tipo de dato abstracto tid, ya que no es no es una cadena de 2*/
INSERT INTO Articulos (id, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUniversidad, codigoCategoria) VALUES ('23659845600000000000', '000000001', 'Descalzos', 'R', 'https://urosario.edu.co/claustro.pdf', '1500', 'T', '123', '00001');
/* está protegido por el tipo de dato id, ya que es una cadena de más de 16 */
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00001348', 'alimentos', 'A', '10000', '15000');
/* está protegido por el tipo de dato codigo, ya que es una cadena de más de 5 */
INSERT INTO Ropas (talla, material, color, idArticulo) VALUES ('pequeña', 'algodon','azul', '10236598456');
/* está protegido por el tipo de dato talla, ya que es una cadena de más de 2 */


/*PoblarNoOK3*/

INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo,  registro, suspension, nsuspension) VALUES ('1000084523', '123', 'CE', '1000378902', 'Carmenza Lopez', 'Economía', 'carmeza.lopez@universidad.edu', '2022/03/01', NULL, 000);
/* está protegido por el tipo de dato abstracto tid, ya que no es CC ni TI el tipo de documento */
INSERT INTO Categorias (codigo, nombre, tipo, minimo, maximo) VALUES ('00025', 'Alimentos', 'T', '-10000', '15000');
/* está protegido por el tipo de dato abstracto TMoneda, ya que minimo es un negativo*/
INSERT INTO Ropa (talla, material, color, idArticulo) VALUES ('GG', 'algodon', 'azul', '10236598456');
/* está protegido los tipos de datos TTalla y TIdArticulo, ya que talla es GG y TIdArticulo no es la concatenación del codigo de la universidad y el codigo de estudiante*/
INSERT INTO Usuarios (codigo, codigoUniversidad, tid, nid, nombre, programa, correo,  registro, suspension, nsuspension) VALUES ('1000084523', '123', 'CC', '1000378902', 'Carmenza Lopez', 'Economía', 'carmeza.lopez', '2022/03/01', NULL, 000);
/* está protegido por el tipo de dato correo, pasa porque es una cadena(50) pero no deberia porque no contiene el arroba */
INSERT INTO Articulos (id, numeroCombos, descripcion, estado, foto, precio, disponible, codigoUniversidad, codigoCategoria) VALUES ('236598456', '000000001', 'Descalzos', 'R', 'https://urosario.edu.co/claustro.pdf', '1500', 'T', '123', '0001');
/* está protegido por el tipo de dato correo, pasa porque es una cadena(1) pero no deberia porque los valores de este tipo de dato solo pueden ser ‘U’ o ‘N’ */


--3)  Implemente la consulta Consultar los usos propuestos en las combo-ofertas del
--último mes

SELECT XMLQuery('//usoPropuesto/text()' 
                PASSING c.descripcion 
                RETURNING CONTENT).getStringVal() as usoPropuesto
FROM CombosOfertas c
WHERE c.fecha >= ADD_MONTHS(SYSDATE, -1);

--4) Proponga otra nueva consulta que use Anexos (Diseño e implementación)
SELECT x.etiqueta, x.valor
FROM CombosOfertas c, XMLTable('/TDescripcion/informacion/combinaciones'
  PASSING c.descripcion
  COLUMNS etiqueta VARCHAR2(20) PATH '@descripcion',
            valor VARCHAR2(50) PATH '@usoPropuesto') x;


/*--5) Extienda la información de este atributo (Anexos-DTD) y proponga una nueva
consulta que ilustre la pertinencia de la nueva información registrada en XML.
(Diseño e implementación)*/

<?xml version="1.0"?>
<!DOCTYPE TDescripcion[
<!ELEMENT TDescripcion (informacion*)>
<!ELEMENT informacion (combinaciones, peso, volumen, caracteristicas, comentarios*)>
<!ELEMENT combinaciones (descripcion, usoPropuesto)>
<!ELEMENT peso (gramos)>
<!ELEMENT volumen (ancho, largo, alto)>
<!ELEMENT caracteristicas (color, material)>
<!ELEMENT comentarios (#PCDATA)>
<!ATTLIST combinaciones
            descripcion CDATA #REQUIRED
            usoPropuesto CDATA #REQUIRED>
<!ATTLIST peso
            gramos CDATA #IMPLIED>
<!ATTLIST volumen
            ancho CDATA #REQUIRED
            largo CDATA #REQUIRED
            alto CDATA #REQUIRED>
<!ATTLIST color
            valor CDATA #REQUIRED>
<!ATTLIST material
            tipo CDATA #REQUIRED>

]>
-- Consulta : Consultar la información de la descripción de la combo oferta con mayor peso.
SELECT EXTRACTVALUE(descripcion, 'TDescripcion/informacion[max(TDescripcion/informacion/peso)]/@gramos') FROM
CombosOfertas;