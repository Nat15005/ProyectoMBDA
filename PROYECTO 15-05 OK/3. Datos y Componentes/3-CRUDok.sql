-------------------------------------------------------CRUDOK-------------------------------------------------
                /* CRUD PK_LIBROS */
-- LIBROS
    --AD
        BEGIN
            PK_LIBROS.AD_Libro('Cumbres Borrascosas', 'Una novela de fantasía épica', TO_DATE('2007-03-27', 'yyyy-mm-dd'), 9788499082477, 1001);
        END;
        /
        -- select * from libros
    --MO
        BEGIN
            PK_LIBROS.MO_Libro(100000001, 'Mujercitas', 'Una novela de fantasía épica', TO_DATE('2007-03-27', 'yyyy-mm-dd'), 9788499082457, 1001);
        END;
        /
    --EL
        BEGIN
            PK_LIBROS.EL_Libro(100000002);
        END;
        /

-- AUTORES
    --AD
        BEGIN
            PK_LIBROS.AD_Autor('Miguel de Cervantes', 'España','1965-07-31');
        END;
        /
        -- select * from autores
    --MO
        BEGIN
            PK_LIBROS.MO_Autor(10001, 'Lope de Vega', 'Costa Rica','1562-07-31');
        END;
        /
    --EL
        BEGIN
            PK_LIBROS.EL_Autor(10001);
        END;
        /

-- SUBGENEROS
    -- AD
        BEGIN
            PK_LIBROS.AD_Subgenero('Fantasía infantil', 'Se dirige a un público joven, 
            a menudo con personajes y situaciones simples y divertidos.');
        END;
        /
        SELECT * FROM Subgeneros
    --MO
        BEGIN
            PK_LIBROS.MO_Subgenero(1018, 'Fantasía infantil', 'Es un subgénero que se dirige a un público joven,
             a menudo con personajes y situaciones simples y divertidos.');
        END;
        /
    --EL
        BEGIN
            PK_LIBROS.EL_Subgenero(1018);
        END;
        /

-- EJEMPLAR
    --AD (primero hay que hacer inserciones en subgeneros y en libros, utilizar la de la linea 4)
        BEGIN
            PK_LIBROS.AD_Ejemplar(100000001, 'Estanteria 6, ', 'Disponible', TO_DATE('1998-04-30', 'YYYY-MM-DD'));
        END;
        /
        SELECT * FROM Ejemplares
    --MO
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 1000000

        BEGIN
            PK_LIBROS.MO_Ejemplar(10000001, 100000001, 'Estanteria 6, ', 'Disponible', TO_DATE('1976-08-14', 'YYYY-MM-DD'));
        END;
        /

    --EL
        BEGIN
            PK_LIBROS.EL_Ejemplar(10000001);
        END;
        /
-- CO_LibrosSubgenero
    VAR libros_cursor REFCURSOR;
    EXEC :libros_cursor := PK_LIBROS.CO_LibrosSubgenero(1001);
    PRINT libros_cursor;

-- CO_UbicacionEjemplar
    VAR ubicacion_cursor REFCURSOR;
    EXEC :ubicacion_cursor := PK_LIBROS.CO_UbicacionEjemplar('Anyone some security wide plant.');
    PRINT ubicacion_cursor;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_PRESTAMOS */

-- PRESTAMOS
    --AD
        BEGIN
            PK_PRESTAMOS.AD_Prestamo(TO_DATE('2022-11-02', 'YYYY-MM-DD'), TO_DATE('2022-07-25', 'YYYY-MM-DD'), 10000001, 100000001, 1000001);
        END;
        /
    --MO
        BEGIN
            PK_PRESTAMOS.MO_Prestamo(100001, TO_DATE('2022-11-02', 'YYYY-MM-DD'), TO_DATE('2023-07-25', 'YYYY-MM-DD'), 10000001, 100000001, 1000001);
        END;
        /
    --EL
        BEGIN
            PK_PRESTAMOS.EL_Prestamo(100001);
        END;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_DONACIONES*/
-- DONADORES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donador('Thebault', 'Elwel', '6 East Court', 'M', TO_DATE('1929-10-21', 'YYYY-MM-DD'), 'E', 3468893728, 'ana@gmail.com');
        END;

    --MO
        BEGIN
            PK_DONACIONES.MO_Donador(1000002, 'Anna', 'Smith', '123 Main Street', 'F', TO_DATE('1990-07-15', 'YYYY-MM-DD'), 'E', 5551234567);
        END;

    --EL
        BEGIN
            PK_DONACIONES.EL_Donador(1000002);
        END;

-- DONACIONES
    --AD
        BEGIN
            PK_DONACIONES.AD_Donacion (TO_DATE('2022-11-17', 'YYYY-MM-DD'), 'U', 100000001, 1000002);
        END;

    --MO
        BEGIN
            PK_DONACIONES.MO_Donacion (10001, TO_DATE('2023-12-07', 'YYYY-MM-DD'), 'U', 100000001, 1000002);
        END;

    --EL
        BEGIN
            PK_DONACIONES.EL_Donacion (10001);
        END;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                /* CRUD PK_USUARIOS*/
-- USUARIOS
    --AD
        BEGIN
            PK_USUARIOS.AD_Usuario ('John', 'Doe', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890, 'NAT@gmail.com');
        END;

    --MO
        BEGIN
            PK_USUARIOS.MO_Usuario (1000003, 'Nat', 'Rojas', '456 Oak Avenue', 'M', TO_DATE('1985-02-10', 'YYYY-MM-DD'), 'E', 1234567890, 'NAT@gmail.com');
        END;

    --EL
        BEGIN
            PK_USUARIOS.EL_Usuario (1000001);
        END;

-- SUSCRIPCIONES
    --AD
        BEGIN
            PK_USUARIOS.AD_Suscripcion (TO_DATE('2022-05-05', 'YYYY-MM-DD'), TO_DATE('2022-06-05', 'YYYY-MM-DD'),'Activo', 1000001);
        END;

    --MO
        BEGIN
            PK_USUARIOS.MO_Suscripcion (10000001, TO_DATE('2022-05-05', 'YYYY-MM-DD'), TO_DATE('2022-06-05', 'YYYY-MM-DD'),'Inactivo', 1000001);
        END;

    --EL
        BEGIN
            PK_USUARIOS.EL_Suscripcion (10000001);
        END;