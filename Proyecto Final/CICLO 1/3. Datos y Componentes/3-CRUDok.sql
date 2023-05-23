-------------------------------------------------------CRUDOK-------------------------------------------------
                /* CRUD PK_LIBROS */
-- LIBROS - AUTORES - LIBROSAUTORES
    --AD
        BEGIN
            PK_LIBROS.AD_LibroAutor('Cumbres Borrascosas', 'Una novela de fantasía épica', '2007-03-27', 9788499082477, 1001, 'Miguel de Cervantes', 'España','1965-07-31');
        END;
        /
        --SELECT * FROM AUTORES WHERE id = 10101;
        --SELECT * FROM LIBROS WHERE id = 100000101;
        --SELECT * FROM LIBROSAUTORES WHERE idLibro = 100000101;
    --MO
        BEGIN
            PK_LIBROS.MO_LibroAutor(100000101, 'Cumbres Borrascosas y gulupa', 'Una novela de fantasía épica', '2007-03-27', 9788499082477, 1002, 10001, 'Miguel Cervantes', 'España', '1965-07-29');
        END;
        /
        --SELECT * FROM AUTORES WHERE id = 10101;
        --SELECT * FROM LIBROS WHERE id = 100000101;

    --EL
        BEGIN
            PK_LIBROS.EL_LibroAutor(100000101,10101);
        END;
        /
        --SELECT * FROM AUTORES WHERE id = 10101;
        --SELECT * FROM LIBROS WHERE id = 100000101;
        --SELECT * FROM LIBROSAUTORES WHERE idLibro = 100000101;

-- SUBGENEROS
    -- AD
        BEGIN
            PK_LIBROS.AD_Subgenero('Fantasia de dragones', 'La fantasía de dragones es un subgénero dentro de la literatura fantástica que se centra en la presencia y protagonismo de los dragones.');
        END;
        /
        --SELECT * FROM Subgeneros WHERE nombre = 'Fantasia de dragones';
   --MO
        BEGIN
            PK_LIBROS.MO_Subgenero(1020, 'Fantasia de dragones', 'Es un subgénero que se dirige a un público joven, a menudo con personajes y situaciones simples y divertidos.');
        END;
        /
    --EL
        BEGIN
            PK_LIBROS.EL_Subgenero(1020);
        END;
        /

-- EJEMPLAR
    --AD (primero hay que hacer inserciones en subgeneros y en libros, utilizar la de la linea 4)
        BEGIN
            PK_LIBROS.AD_Ejemplar(100000001, 'Estanteria 6, ', 'Disponible');
        END;
        /
        --SELECT * FROM Ejemplares WHERE id = 10000101;
    --MO
        BEGIN
            PK_LIBROS.MO_Ejemplar(10000001, 100000001, 'Estanteria 6, ', 'Disponible','2022-08-14');
        END;
        /
        --SELECT * FROM Ejemplares WHERE id = 10000001;

    --EL
        BEGIN
            PK_LIBROS.EL_Ejemplar(10000101);
        END;
        /
        --SELECT * FROM Ejemplares WHERE id = 10000101;
-- CO_LibrosSubgenero
    SET SERVEROUTPUT ON;
    DECLARE
        libros_cursor SYS_REFCURSOR;
    BEGIN
        libros_cursor := PK_LIBROS.CO_LibrosSubgenero('1001'); 
        DBMS_SQL.RETURN_RESULT(libros_cursor);
    END;
    /

-- CO_UbicacionEjemplar
    SET SERVEROUTPUT ON;
    DECLARE
        ref_cursor SYS_REFCURSOR;
    BEGIN
        ref_cursor := PK_LIBROS.CO_UbicacionEjemplar('Harry Potter y la piedra filosofal'); 
        DBMS_SQL.RETURN_RESULT(ref_cursor);
    END;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_USUARIOS*/
-- USUARIOS
    --AD
        BEGIN
            PK_USUARIOS.AD_UsuarioCorreo ('John', 'Doe', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890, 'NATA@gmail.com');
        END;

    --MO
        BEGIN -- cuidado con el id
            PK_USUARIOS.MO_UsuarioCorreo (1000101, 'Natalia', 'Rojas', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890, 'NAT@gmail.com');
        END;
    --EL 
        BEGIN
            PK_USUARIOS.EL_UsuarioCorreo (1000101);
        END;
-- 
    --select * from usuarios;
    --select * from correos;
    --select * from suscripciones;

-- SUSCRIPCIONES
    --AD
        BEGIN
            PK_USUARIOS.AD_Suscripcion ('2022-05-05','2022-06-05','Activo', 1000001);
        END;

    --MO
        BEGIN
            PK_USUARIOS.MO_Suscripcion (10000001,'2022-05-05', '2022-06-05','Inactivo', 1000001);
        END;

    --EL
        BEGIN
            PK_USUARIOS.EL_Suscripcion (10000001);
        END;

-- CO_SuscripcionesActivas

    -- Dos opciones
    
    VAR resultado REFCURSOR;
    EXEC :resultado := PK_USUARIOS.CO_SuscripcionesActivas;
    PRINT resultado;
    -------------------------------------------------------
    DECLARE
        resultado SYS_REFCURSOR;
        id_usuario INT;
        nombre VARCHAR2(15);
        apellido VARCHAR2(15);
        num_suscripciones INT;
        fecha_inicio DATE;
        fecha_fin DATE;
    BEGIN
        resultado := PK_USUARIOS.CO_SuscripcionesActivas();

    -- Puedes utilizar el cursor 'resultado' para procesar o mostrar los datos
    -- Por ejemplo, imprimir los resultados en la salida estándar
    DBMS_OUTPUT.PUT_LINE('ID Usuario | Nombre | Apellido | Num. Suscripciones | Fecha Inicio | Fecha Fin');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');

    -- Recorrer el cursor y mostrar los datos
    LOOP
        FETCH resultado INTO id_usuario, nombre, apellido, num_suscripciones, fecha_inicio, fecha_fin;
        EXIT WHEN resultado%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(id_usuario || ' | ' || nombre || ' | ' || apellido || ' | ' || num_suscripciones || ' | ' || fecha_inicio || ' | ' || fecha_fin);
    END LOOP;

    -- Cerrar el cursor
    CLOSE resultado;

    EXCEPTION
    WHEN OTHERS THEN
        -- Manejar el error aquí si es necesario
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    END;
    /
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_PRESTAMOS */

-- PRESTAMOS
    --AD
        BEGIN
            PK_PRESTAMOS.AD_Prestamo(10000001, 100000001, 1000001);
        END;
        /
        --SELECT * FROM PRESTAMOS;
        --SELECT * FROM LIBROS;
        --SELECT * FROM EJEMPLARES;
        --SELECT * FROM USUARIOS;
    --MO
        BEGIN
            PK_PRESTAMOS.MO_Prestamo(100001, '2022-11-02', '2023-07-25', 10000001, 100000001, 1000001);
        END;
        /
    --EL
        BEGIN
            PK_PRESTAMOS.EL_Prestamo(100001);
        END;

    -- CO_PrestamoPorUsuario
    VAR resultadoP REFCURSOR;
    EXEC :resultadoP := PK_PRESTAMOS.CO_PrestamoPorUsuario;
    PRINT resultadoP;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_DONACIONES*/
-- DONADORES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donador('Ana', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728, 'ana@gmail.com');
        END;
        /
        SELECT * FROM usuarios WHERE id = 1000101 ;
        SELECT * FROM correos WHERE idUsuario = 1000101 ;
        SELECT * FROM Donadores WHERE idDonador = 1000101 ;
    --MO
        BEGIN
            PK_DONACIONES.MO_Donador(1000101, 'Ana', 'Duran', '123 Main Street', 'F','2003-07-15', 'E', 9876543210,'ana.durannn@gmail.com');
        END;
        /

    --EL
        BEGIN
            PK_DONACIONES.EL_Donador(1000101);
        END;

-- DONACIONES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donacion (1000002,'N','Multiverso', 'La historia de un joven músico ', '2007-03-27', 9788499182479, 1001,'J.K. Rowling', 'Reino Unido','1965-07-31','Estanteria 5, ');
        END;
        /
        SELECT * FROM DONACIONES;
        SELECT * FROM Libros;
        SELECT * FROM Autores;
        SELECT * FROM librosautores;
        SELECT * FROM ejemplares;
    --MO
        BEGIN
            PK_DONACIONES.MO_Donacion (10101,1000002,'N', 100000001, 'El nombre', 'La historia de un joven músico que busca el conocimiento y el poder para vengar a su familia y a sí mismo', '2006-03-27', 9788499082479, 1001, 10001,'J.K. Rowling', 'Colombia','1965-07-31');
        END;
        /
    --EL
        BEGIN
            PK_DONACIONES.EL_Donacion (10101);
        END;

    --CO
        SET SERVEROUTPUT ON;
        DECLARE
            vCursor SYS_REFCURSOR;
        BEGIN
            vCursor := PK_DONACIONES.CO_DonacionesDonador('1000002'); 
            DBMS_SQL.RETURN_RESULT(vCursor);
        END;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
