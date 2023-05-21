-- DISPARADORES OK

/*ADD*/

    INSERT INTO Subgeneros(nombre, descripcion)
    VALUES ('Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
    --DELETE FROM SUBGENEROS WHERE ID = 1001;
    --SELECT * FROM SUBGENEROS;
    ---------------------------------------------------------------------------
    INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) 
    VALUES ('El nombre del viento', 'Una novela de Fantasia epica', '2007-03-27', 9788499082479, 1001);
    --SELECT * FROM Libros;
    --DELETE FROM Libros WHERE ID = 100000001;
    ---------------------------------------------------------------------------
    INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES ('J.K. Rowling', 'Reino Unido', '1965-07-31');
    --SELECT * FROM Autores;
    --DELETE FROM Autores WHERE ID = 10001;
    ---------------------------------------------------------------------------
    INSERT INTO LibrosAutores (idLibro, idAutor) values (100000001, 10001);
    --SELECT * FROM LibrosAutores;
    --DELETE FROM LibrosAutores WHERE idLibro = 100000001;
    ---------------------------------------------------------------------------
    INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000001, 'Estanteria 6, ', 'Disponible', '1998-04-30');
    --SELECT * FROM Ejemplares;
    --DELETE FROM Ejemplares WHERE id= 10000001;
    ---------------------------------------------------------------------------
    INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES ('Thebault', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728);
    --SELECT * FROM Usuarios;
    --DELETE FROM Usuarios WHERE id= 1000001;
    ---------------------------------------------------------------------------
    INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-05-15', 10000001, 100000001, 1000001);
    --SELECT * FROM Prestamos;
    --DELETE FROM Prestamos WHERE id= 100001;
    ---------------------------------------------------------------------------
    INSERT INTO Donadores(idDonador) VALUES (1000001);
    --SELECT * FROM Donadores;
    --DELETE FROM Donadores WHERE idDonador= 1000001;
    ---------------------------------------------------------------------------
    INSERT INTO Donaciones (tipoDonacion, idLibro, idDonador) VALUES ('U', 100000001, 1000001);
    --SELECT * FROM Donaciones;
    --DELETE FROM Donaciones WHERE id= 10001;
    ---------------------------------------------------------------------------
    INSERT INTO Suscripciones(fechaFin, estado, idUsuario) VALUES ('2023-06-05','Inactivo', 1000001);
    --SELECT * FROM Suscripciones;
    --DELETE FROM Suscripciones WHERE id= 10000001;
    --UPDATE SUSCRIPCIONES SET estado = 'Inactivo' WHERE id = 10000001;
    ---------------------------------------------------------------------------

    /*DELETE
    UPDATE SUSCRIPCIONES SET estado = 'Inactivo' WHERE id = 10000001;
    DELETE FROM Suscripciones WHERE id= 10000001;
    DELETE FROM Donaciones WHERE id= 10001;
    DELETE FROM Donadores WHERE idDonador= 1000001;
    DELETE FROM Prestamos WHERE id= 100001;
    DELETE FROM Usuarios WHERE id= 1000001;
    UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000001;
    DELETE FROM Ejemplares WHERE id= 10000001;
    DELETE FROM LibrosAutores WHERE idLibro = 100000001;
    DELETE FROM Autores WHERE ID = 10001;
    DELETE FROM Libros WHERE ID = 100000001;
    DELETE FROM SUBGENEROS WHERE ID = 1001;
    */
    ---------------------------------------------------------------------------

    -- Primero agregamos Usuarios
        INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
        ('Thebault', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728);
        INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
        ('Anna', 'Smith', '123 Main Street', 'F', '1990-07-15', 'E', 5551234567);
        INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
        ('John', 'Doe', '456 Oak Avenue', 'M', '1985-02-10', 'E', 1234567890);



    -- Segundo, agregamos Subgeneros
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia mitologica', 'Se basa en mitos y leyendas de diferentes culturas.');
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia de espada y brujeria', 'se enfoca en batallas con espadas, magia y elementos sobrenaturales.');
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia postapocaliptica', 'se desarrolla en un mundo después de una catástrofe o destrucción.');
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia de superheroes', 'involucra personajes con habilidades sobrenaturales o superpoderes.');
        INSERT INTO Subgeneros(nombre, descripcion)
        VALUES ('Fantasia ecologista', 'se enfoca en temas ambientales y conservacionistas.');

    -- Tercero, agregamos Libros
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('El nombre del viento', 'Una novela de fantasia epica', '2007-03-27', 9788499082479, 1001);
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('Harry Potter y la piedra filosofal', 'Primera novela de la saga Harry Potter', '1997-06-26', 9788478884459, 1002);
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('El señor de los anillos', 'Novela de fantasia epica', '1954-07-29', 9788497597343, 1003);
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('Juego de Tronos', 'Primera novela de la saga Canción de Hielo y Fuego', '1996-08-06', 9788496208002, 1004);
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('El hobbit', 'Novela de fantasia juvenil', '1937-09-21', 9788422676466, 1005);
        INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)
        VALUES ('Cien años de soledad', 'Novela realista', '1967-05-30', 9780307474728, 1006);

    -- Cuarto, agregamos Ejemplares
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000001, 'Estanteria 6, ', 'Disponible', '1998-04-30');
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000002, 'Estanteria 3, ', 'Reparacion', '1978-02-05');
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000003, 'Estanteria 8, ', 'Reparacion', '2005-08-31');
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000004, 'Estanteria 2, ', 'Disponible', '2008-09-30');
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000005, 'Estanteria 5, ', 'Reparacion', '2012-12-20');

    -- Quinto, agregamos Prestamos
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-25', 10000001, 100000001, 1000001);
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-03', 10000002, 100000002, 1000001);
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-24', 10000003, 100000003, 1000001);
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-01', 10000004, 100000004, 1000001);
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-18', 10000005, 100000005, 1000001);

        -- NoOK TR_Prestamos_PrestadoOno -> Si se inserta algun ejemplar anterior, no deja porque cada ejemplar ya está prestado
        INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-18', 10000005, 100000005, 1000002);

    /*ahora para probar TR_Prestamos_MaxLibros, primero actualizamos el estado del ejemplar a 'Disponible' ya que
    TR_Ejemplares_estado no nos deja actualizar a prestado directamente si se encuentra en estado 'Oculto'
    */
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000002;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000003;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000004;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000005;
    /*Por el TR_Ejemplares_estado, ahora si podemos pasarlos a prestados*/
        UPDATE Ejemplares SET estado = 'Prestado' WHERE id = 10000001;
        UPDATE Ejemplares SET estado = 'Prestado' WHERE id = 10000002;
        UPDATE Ejemplares SET estado = 'Prestado' WHERE id = 10000003;
        UPDATE Ejemplares SET estado = 'Prestado' WHERE id = 10000004;
        UPDATE Ejemplares SET estado = 'Prestado' WHERE id = 10000005;

    -- NoOk TR_Prestamos_MaxLibros --> Hacemos el siguiente prestamo para comprobar que el Usuario no puede tener más de 5 libros prestados
        insert into Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) values ('2023-06-18', 10000006, 100000006, 1000001);

    --Hacemos una nueva inserción de un ejemplar y un prestamo a este mismo
    INSERT INTO Ejemplares(id, idLibro, ubicacion, estado, fechaAdquisicion) VALUES
    (10000006, 100000006, 'Estanteria 7, ', 'Disponible','2020-03-29');
    SELECT Estado FROM Ejemplares WHERE id = 10000006;
    INSERT INTO Prestamos (fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES ('2023-06-18', 10000006, 100000006, 1000002);
    SELECT Estado FROM Ejemplares WHERE id = 10000006


    /*Si vamos a borrar, primero actualizamos el estado a Disponible, luego a Oculto*/
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000002;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000003;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000004;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000005;
        UPDATE Ejemplares SET estado = 'Disponible' WHERE id = 10000006;

        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000001;
        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000002;
        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000003;
        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000004;
        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000005;
        UPDATE Ejemplares SET estado = 'Oculto' WHERE id = 10000006;

    /*Ahora si podremos borrar los ejemplares y prestamos*/

        DELETE FROM PRESTAMOS WHERE ID =100001;
        DELETE FROM PRESTAMOS WHERE ID =100002;
        DELETE FROM PRESTAMOS WHERE ID =100003;
        DELETE FROM PRESTAMOS WHERE ID =100004;
        DELETE FROM PRESTAMOS WHERE ID =100005;
        DELETE FROM PRESTAMOS WHERE ID =100006;

        DELETE FROM Ejemplares WHERE ID =10000001;
        DELETE FROM Ejemplares WHERE ID =10000002;
        DELETE FROM Ejemplares WHERE ID =10000003;
        DELETE FROM Ejemplares WHERE ID =10000004;
        DELETE FROM Ejemplares WHERE ID =10000005;
        DELETE FROM Ejemplares WHERE ID =10000006;

/*MO*/
    -- El estado se puede modificar de  oculto a disponible o en reparacion, de reparacion a disponible, disponible a prestado, oculto o en reparacion y de prestado a disponible
        INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES (100000001, 'Estanteria 6, ', 'Disponible', '1998-04-30');

        UPDATE ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Oculto' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Reparacion' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Prestado' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Oculto' WHERE id = 10000001;

    --NoOk
        UPDATE ejemplares SET estado = 'Prestado' WHERE id = 10000001;  

/*EL*/

    -- Solo se puede eliminar un ejemplar que no esté prestado
        --NoOk
        UPDATE ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        UPDATE ejemplares SET estado = 'Prestado' WHERE id = 10000001;
        DELETE ejemplares WHERE id = 10000001;
        --OK
        UPDATE ejemplares SET estado = 'Disponible' WHERE id = 10000001;
        DELETE Ejemplares WHERE id = 10000001;


    -- Solo se puede eliminar una suscripcion si su estado está 'Inactivo' OK

        INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2022-05-05','2023-06-05','Activo', 1000001);
        INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-01','2023-06-01','Activo', 1000002);
        INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-31','2023-06-30','Inactivo', 1000003);
        UPDATE Suscripciones SET estado = 'Inactivo' WHERE id=10000001;
        UPDATE Suscripciones SET estado = 'Inactivo' WHERE id=10000002;
        DELETE Suscripciones WHERE id = 10000001;
        DELETE Suscripciones WHERE id = 10000002;

        --NoOk
        
        DELETE FROM Suscripciones WHERE id = 10000003;

    --DELETE
    UPDATE Suscripciones SET estado = 'Inactivo' WHERE id=10000003;
    DELETE FROM suscripciones;
    DELETE FROM correos;
    DELETE FROM donaciones;
    DELETE FROM donadores;
    DELETE FROM prestamos;
    DELETE FROM Usuarios;
    DELETE FROM Ejemplares;
    DELETE FROM LibrosAutores;
    DELETE FROM Autores;
    DELETE FROM Libros;
    DELETE FROM Subgeneros;