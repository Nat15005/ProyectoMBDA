----Atributo comentario

    --Estructura
    <comentario>
        <comentarioLibro>Texto del comentario sobre el libro</comentarioLibro>
        <comentarioEjemplar>Texto del comentario sobre el ejemplar</comentarioEjemplar>
        <experienciaBiblioteca>Texto de la experiencia en la biblioteca
            <atencion>Atención recibida en la biblioteca</atencion>
            <ambiente>Ambiente de la biblioteca</ambiente>
        </experienciaBiblioteca>
        <recomendaciones>
            <recomendacion1>Recomendación 1</recomendacion1>
            <recomendacion2>Recomendación 2</recomendacion2>
        </recomendaciones>
    </comentario>

    --DTD
    <!ELEMENT comentario (comentarioLibro, comentarioEjemplar, experienciaBiblioteca, valoracion, recomendaciones)>
    <!ELEMENT comentarioLibro (#PCDATA)>
    <!ELEMENT comentarioEjemplar (#PCDATA)>
    <!ELEMENT experienciaBiblioteca (atencion, ambiente)>
    <!ELEMENT atencion (#PCDATA)>
    <!ELEMENT ambiente (#PCDATA)>
    <!ELEMENT recomendaciones (recomendacion1, recomendacion2)>
    <!ELEMENT recomendacion1 (#PCDATA)>
    <!ELEMENT recomendacion2 (#PCDATA)>

----Atributo Descripcion

    --Estructura
    <descripcion>
        <detalle>Detalles del evento</detalle>
        <tematica>Tematica del evento</tematica>
        <tipo>Tipo de evento</tipo>
        <cupoMaximo>Capacidad máxima del evento</cupoMaximo>
        <ubicacion>
            <direccion>Dirección del evento</direccion>
        </ubicacion>
        <organizador>
            <nombre>Nombre del organizador</nombre>
            <email>Email del organizador</email>
        </organizador>
    </descripcion>

    --DTD
    <!ELEMENT descripcion (detalle, tematica, tipo, cupoMaximo, ubicacion, organizador)>
    <!ELEMENT detalle (#PCDATA)>
    <!ELEMENT tematica (#PCDATA)>
    <!ELEMENT tipo (#PCDATA)>
    <!ELEMENT cupoMaximo (#PCDATA)>
    <!ELEMENT ubicacion (direccion, ciudad, pais)>
    <!ELEMENT direccion (#PCDATA)>
    <!ELEMENT ciudad (#PCDATA)>
    <!ELEMENT pais (#PCDATA)>
    <!ELEMENT organizador (nombre, email)>
    <!ELEMENT nombre (#PCDATA)>
    <!ELEMENT email (#PCDATA)>


------------------CONSULTAS----------------
--extraer el contenido del elemento "comentarioLibro" dentro del atributo "comentario"
SELECT id, XMLQuery('/comentario/comentarioLibro' PASSING comentario RETURNING CONTENT) AS comentario_libro
FROM Resenas
WHERE idLibro = 100000001;

--extraer el contenido de los elementos "detalle", "tematica", "tipo" y "cupoMaximo" de la estructura XML
SELECT id, XMLQuery('/descripcion/detalle' PASSING descripcion RETURNING CONTENT) AS detalle,
       XMLQuery('/descripcion/tematica' PASSING descripcion RETURNING CONTENT) AS tematica,
       XMLQuery('/descripcion/tipo' PASSING descripcion RETURNING CONTENT) AS tipo,
       XMLQuery('/descripcion/cupoMaximo' PASSING descripcion RETURNING CONTENT) AS cupo_maximo
FROM Eventos
WHERE id = 101;

