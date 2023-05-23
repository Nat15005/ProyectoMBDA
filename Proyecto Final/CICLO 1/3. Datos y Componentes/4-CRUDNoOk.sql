-------------------------------------------------------CRUDNoOK-------------------------------------------------
                /* CRUD PK_LIBROS */
-- LIBROS - AUTORES - LIBROSAUTORES
    --AD
        BEGIN
            PK_LIBROS.AD_LibroAutor('Cumbres Borrascosas', 'Una novela de fantasía épica', '2007-03-27', 9788499082477, 'Miguel de Cervantes', 'España','1965-07-31');
        END;
        -- No funciona porque AD_LibroAutor recibe como parametro tambien el id del Subgenero, lo que le hace falta a esta prueba
    --MO
        BEGIN
            PK_LIBROS.MO_LibroAutor('Cumbres Borrascosas y gulupa', 'Una novela de fantasía épica', '2007-03-27', 9788499082477, 1002, 10001, 'Miguel Cervantes', 'España', '1965-07-29');
        END;
        -- No funciona porque MO_LibroAutor recibe como parametro el id del libro a modificar, lo que le hace falta a esta prueba
    --EL
        BEGIN
            PK_LIBROS.EL_LibroAutor(100000150,10001);
        END;
        -- No funciona porque no existe el id 100000150


-- SUBGENEROS
    -- AD
        BEGIN
            PK_LIBROS.AD_Subgenero('Se dirige a un público joven, 
            a menudo con personajes y situaciones simples y divertidos.');
        END;
        -- No funciona porque AD_Subgenero recibe como parametro el nombre del subgenero a ingresar, lo que le hace falta a esta prueba
    --MO
        BEGIN
            PK_LIBROS.MO_Subgenero('Fantasía infantil', 'Es un subgénero que se dirige a un público joven, a menudo con personajes y situaciones simples y divertidos.');
        END;
        -- No funciona porque MO_Subgenero recibe como parametro el id del subgenero a modificar, lo que le hace falta a esta prueba
    --EL
        BEGIN
            PK_LIBROS.EL_Subgenero(10012);
        END;
        -- No funciona porque el numero ingresado excede los caracteres permitidos

-- EJEMPLAR
    --AD
        BEGIN
            PK_LIBROS.AD_Ejemplar(100000001, 'Estanteria 6 ', 'Disponible');
        END;
        -- No funciona porque viola la ck de ubicacion ejemplar, la cual dice que debe contener una coma después del número de estanteria
    --MO
        BEGIN
            PK_LIBROS.MO_Ejemplar(10000001, 100000001, 'Estanteria 6, ', 'Prestado','2022-08-14');
        END;
        -- No funciona porque no se puede pasar el estado de oculto a prestado

    --EL
        BEGIN
            PK_LIBROS.EL_Ejemplar(10000001);
        END;
        -- No funciona porque no se puede eliminar un ejemplar prestado

-- CO_LibrosSubgenero

    DECLARE
        libros_cursor SYS_REFCURSOR;
    BEGIN
        libros_cursor := PK_LIBROS.CO_LibrosSubgenero('1000'); 
        DBMS_SQL.RETURN_RESULT(libros_cursor);
    END;
        -- No funciona porque no existe un subgenero con el id 1000

-- CO_UbicacionEjemplar

    DECLARE
        ref_cursor SYS_REFCURSOR;
    BEGIN
        ref_cursor := PK_LIBROS.CO_UbicacionEjemplar('Harry Potter y la piedra filosofal'); 
        DBMS_SQL.RETURN_RESULT(ref_cursor);
    END;
        -- No funciona porque no existe un ejemplar con ese titulo
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_USUARIOS*/
-- USUARIOS
    --AD
        BEGIN
            PK_USUARIOS.AD_UsuarioCorreo ('John', 'Doe', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890);
        END;
        -- No funciona porque falta el parametro de correo
    --MO
        BEGIN
            PK_USUARIOS.MO_Usuario ('Nat', 'Rojas', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890, 'NAT@gmail.com');
        END;
        -- No funciona porque falta el el id del usuario del que se quiere modificar la informarcion
    --EL
        BEGIN
            PK_USUARIOS.EL_Usuario (1000000);
        -- No funciona porque el Usuario no existe
        END;

-- SUSCRIPCIONES
    --AD
        BEGIN
            PK_USUARIOS.AD_Suscripcion ('2022-05-05','2022-06-05','Activo');
        END;
        -- No funciona porque falta el id del Usuario no está
    --MO
        BEGIN
            PK_USUARIOS.MO_Suscripcion ('2022-05-05', '2022-06-05','Inactivo', 1000001);
        END;
        -- No funciona porque falta el id de la suscripcion a modificar no está
    --EL
        BEGIN
            PK_USUARIOS.EL_Suscripcion (10000000);
        END;
        -- No funciona porque la suscripcion no existe

-- CO_SuscripcionesActivas
    VAR resultado REFCURSOR;
    EXEC :resultado := PK_USUARIOS.CO_SuscripcionesActivas;
    PRINT resultado;
        -- Si no hay suscripciones, no retornara nada
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_PRESTAMOS */

-- PRESTAMOS
    --AD
        BEGIN
            PK_PRESTAMOS.AD_Prestamo(10000001, 100000001, 1000000);
        END;
        -- No funciona porque el id del usuario no existe
    --MO
        BEGIN
            PK_PRESTAMOS.MO_Prestamo(100001,'2023-07-25', 10000001, 100000001, 1000001);
        END;
        -- No funciona porque la fecha del prestamo no está ingresada
    --EL
        BEGIN
            PK_PRESTAMOS.EL_Prestamo(100000);
        END;
        -- No funciona porque el prestamo no existe

    -- CO_PrestamoPorUsuario
    VAR resultadoP REFCURSOR;
    EXEC :resultadoP := PK_PRESTAMOS.CO_PrestamoPorUsuario;
    PRINT resultadoP;
        -- Si no hay prestamos, no retornara nada
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_DONACIONES*/
-- DONADORES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donador('Ana', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728);
        END;
        -- No funciona porque no se incluye el correo
    --MO
        BEGIN
            PK_DONACIONES.MO_Donador('Ana', 'Duran', '123 Main Street', 'F','2003-07-15', 'E', 9876543210,'ana.duran@gmail.com');
        END;
        -- No funciona porque no esta el id del donador
    --EL
        BEGIN
            PK_DONACIONES.EL_Donador(1000000);
        END;
        -- No funciona porque no hay un donador con id 1000000
-- DONACIONES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donacion ('N','El nombre del viento', 'La historia de un joven músico que busca el conocimiento y el poder para vengar a su familia y a sí mismo', '2007-03-27', 9788499082479, 1001,'J.K. Rowling', 'Reino Unido','1965-07-31','Estanteria 5, ');
        END;
        -- No funciona porque no hay un id de donador relacionado
    --MO
        BEGIN
            PK_DONACIONES.MO_Donacion (1000003,'U', 100000001, 'El nombre', 'La historia de un joven músico que busca el conocimiento y el poder para vengar a su familia y a sí mismo', '2006-03-27', 9788499082479, 1001, 10001,'J.K. Rowling', 'Colombia','1965-07-31');
        END;
        -- No funciona porque no hay id de la donacion proporcionado
    --EL
        BEGIN
            PK_DONACIONES.EL_Donacion (10001);
        END;
        -- No funciona porque no hay una donacion con id 1000000

    --CO
        SET SERVEROUTPUT ON;
        DECLARE
            vCursor SYS_REFCURSOR;
        BEGIN
            vCursor := PK_DONACIONES.CO_DonacionesDonador('1000003'); 
            DBMS_SQL.RETURN_RESULT(vCursor);
        END;
        -- No funciona porque no hay un donador con id 1000003
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
