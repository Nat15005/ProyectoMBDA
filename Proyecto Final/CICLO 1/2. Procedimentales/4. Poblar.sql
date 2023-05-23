--Subgeneros

INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia heroica', 'Se enfoca en hazañas heroicas y aventuras épicas.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia mitologica', 'Se basa en mitos y leyendas de diferentes culturas.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de espada y brujeria', 'Se enfoca en batallas con espadas, magia y elementos sobrenaturales.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia postapocaliptica', 'Se desarrolla en un mundo después de una catástrofe o destrucción.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de superheroes', 'Involucra personajes con habilidades sobrenaturales o superpoderes.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia ecologista', 'Se enfoca en temas ambientales y conservacionistas.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de viajes en el tiempo', 'Involucra viajes en el tiempo o universos alternativos.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia oriental', 'Se basa en la cultura y mitología de Asia.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de terror', 'Se enfoca en elementos de horror y terror.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de portal', 'involucra viajes entre mundos o dimensiones paralelas.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia epica', 'Se caracteriza por contar historias que se desarrollan en mundos imaginarios y en los que tienen lugar grandes batallas y gestas heroicas.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia urbana', 'Se caracteriza por ambientar sus historias en entornos urbanos y contemporáneos, mezclando elementos sobrenaturales con la vida cotidiana.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia oscura', 'Se caracteriza por tener un tono más oscuro y violento que la Fantasia tradicional, y por explorar temas como la muerte y la decadencia.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia historica', 'Se caracteriza por estar ambientado en épocas históricas, como la Edad Media, la Antigüedad o el Renacimiento, y por incluir elementos fantásticos.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de humor', 'Se caracteriza por tener un tono humorístico, irónico o paródico, y por incluir personajes y situaciones extravagantes.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia romantica', 'Se caracteriza por combinar elementos de la Fantasia con el género romántico, y por explorar temas como el amor, la pasión y el sacrificio.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia juvenil', 'Es dirigido a un público joven, que se caracteriza por incluir elementos fantásticos y por explorar temas como la amistad, la aventura y el descubrimiento.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES
('Fantasia de ciencia ficcion', 'se caracteriza por incluir elementos de la ciencia ficción, como los viajes en el tiempo, los mundos paralelos o la tecnología avanzada, combinados con elementos fantásticos.');
INSERT INTO Subgeneros(nombre, descripcion) VALUES 
('Fantasia infantil', 'Es un subgénero que se dirige a un público joven, a menudo con personajes y situaciones simples y divertidos.');


--Libros
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El nombre del viento', 'La historia de un joven músico que busca el conocimiento y el poder para vengar a su familia y a sí mismo', '2007-03-27', 9788499082479, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Harry Potter y la piedra filosofal', 'El inicio de la aventura de un niño huérfano que descubre que es un mago y se enfrenta al malvado Lord Voldemort', '1997-06-26', 9788478884459, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El señor de los anillos', 'La lucha épica de un hobbit y su grupo de compañeros para destruir un anillo mágico y salvar su mundo de la oscuridad', '1954-07-29', 9788497597343, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Juego de Tronos', 'Intrigas políticas, guerras sangrientas y un invierno que se acerca en un mundo de fantasía medieval', '1996-08-06', 9788496208002, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El hobbit', 'Aventuras de un hobbit en busca de un tesoro custodiado por un dragón', '1937-09-21', 9788422676466, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Cien años de soledad', 'Novela realista sobre una familia en un pueblo imaginario', '1967-05-30', 9780307474728, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La metamorfosis', 'Una novela corta que cuenta la historia de un hombre que se transforma en un insecto', '1915-10-15', 9781496131639, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El código Da Vinci', 'Una novela de misterio y conspiraciones que involucra a la Iglesia Católica', '2003-03-18', 9781400079179, 1008);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Orgullo y prejuicio', 'Una novela romántica que trata sobre el amor en la época victoriana', '1813-01-28', 9788497942321, 1009);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El amor en los tiempos del cólera', 'La historia de un amor apasionado que dura toda una vida', '1985-10-08', 9781400034682, 1013);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Las crónicas de Narnia: El león, la bruja y el armario', 'Aventuras de niños en un mundo fantástico', '1950-10-16', 9788408007035, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La historia interminable', 'Un niño que salva un mundo de fantasía', '1979-09-10', 9788478880161, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El cazador de sueños', 'Amigos enfrentando extraterrestres', '2001-03-20', 9788497594755, 1008);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Canción de hielo y fuego: Tormenta de espadas', 'Intrigas políticas en un mundo de fantasía medieval', '2000-08-08', 9788496208187, 1019);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Elantris', 'Un príncipe maldito lucha por recuperar su ciudad', '2005-05-30', 9780765311771, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El último deseo', 'Aventuras de Geralt de Rivia, un cazador de monstruos', '1993-11-02', 9788498890783, 1005);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La espada de la verdad: El mago - La primera novela de Richard y Kahlan', 'Un joven guerrero busca salvar al mundo de la oscuridad', '1994-08-15', 9780452262147, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Los juegos del hambre', 'Un concurso mortal donde solo uno puede salir victorioso', '2008-09-14', 9788498382544, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El ciclo de la puerta de la muerte', 'Un grupo de héroes intenta cerrar la brecha entre dos mundos', '1983-05-12', 9780446600411, 1009);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La rueda del tiempo', 'Un joven campesino se convierte en el salvador de un mundo asediado por las fuerzas del mal', '1990-01-15', 9788490948002, 1003);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('American Gods', 'Un ex-convicto se ve envuelto en una guerra entre los dioses antiguos y los nuevos dioses de la tecnología y los medios de comunicación.', '2001-06-19', 9780380789030, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El fin de los tiempos', 'Una plaga amenaza con extinguir a la humanidad mientras el Anticristo y el arcángel Gabriel se preparan para enfrentarse en la batalla final.', '2019-11-05', 9788466347175, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La leyenda de Drizzt', 'Un elfo oscuro se rebela contra su malvado hogar y se convierte en un héroe mientras lucha por la supervivencia en el peligroso mundo subterráneo.', '1988-09-05', 9780786948619, 1003);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El cementerio de los libros olvidados', 'Un joven escritor se adentra en los secretos oscuros de Barcelona y descubre un misterio oculto detrás de un autor maldito.', '2001-04-10', 9788408043642, 1004);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('1984', 'En un futuro distópico, el Gran Hermano controla todos los aspectos de la vida de los ciudadanos y un hombre comienza a cuestionar la verdad detrás de su sociedad.', '1949-06-08', 9780452284234, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Crónicas marcianas', 'Ciencia ficción de Bradbury', '1950-05-01', 9788445071873, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El jardín de los cerezos', 'Obra de teatro de Chejov', '1904-01-17', 9788420668645, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Cumbres borrascosas', 'Novela gótica de Bronte', '1847-12-29', 9788491051464, 1009);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El señor de los anillos', 'Fantasía épica de Tolkien', '1954-07-29', 9780544003415, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Canción de hielo y fuego', 'Fantasía épica de Martin', '1996-08-06', 9780553103540, 1019);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Crónicas de Narnia', 'Serie de fantasía infantil', '1950-10-16', 9780066238500, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La rueda del tiempo', 'Serie de fantasía épica', '1990-01-15', 9788448034705, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El nombre del viento', 'Novela de fantasía épica', '2007-03-27', 9788499082429, 1013);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('American Gods', 'Novela de fantasía urbana', '2001-06-19', 9780060558123, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Elantris', 'Novela de fantasía épica', '2005-04-21', 9780575097384, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El mago de Terramar', 'Novela de fantasía juvenil', '1968-06-14', 9788416859610, 1010);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Malaz: El libro de los caídos', 'Serie de fantasía épica', '1999-05-01', 9788448035146, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La espada de Shannara', 'Novela de fantasía épica', '1977-04-26', 9788490705243, 1008);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Harry Potter y la piedra filosofal', 'Novela de fantasía juvenil', '1997-06-26', 9781478884459, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Las mil y una noches', 'Esta obra eterna y clásica, también conocida como Las noches árabes, es una recopilación medieval de cuentos tradicionales del Oriente Medio.', '1800-05-18', 9781432156789, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Alicia en el país de las maravillas', 'una niña curiosa cae por la madriguera de un conejo en un mundo mágico, tentador y aterrador poblado por animales antropomórficos y debe enfrentar la tiranía de una reina.', '1865-06-13', 9780876543210, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La Torre Oscura', 'Roland de Gilead, último miembro de una orden de caballería conocida como Pistoleros, comienza una búsqueda obsesiva a través de un mundo moribundo con el objetivo de encontrar la Torre Oscura, un edificio legendario que se dice es el centro de todo el tiempo y el espacio', '1982-01-01', 9788401337429, 1008);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('American Gods', 'Sombra es un exconvicto que acepta trabajar como guardaespaldas y compañero de viaje del enigmático y estafador señor Wednesday. En el camino, se verán envueltos en una guerra entre los antiguos dioses mitológicos que llegaron a América con los inmigrantes y las nuevas deidades que representan al dinero y la tecnología', '2001-06-19', 9788401352002, 1013);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La Espada de Shannara', 'En un futuro lejano después de una guerra atómica, un joven llamado Shea Ohmsford es el único ser humano que puede manejar la Espada de Shannara, una espada mágica que puede destruir al malvado Señor de la Guerra que amenaza con conquistar el mundo', '1977-04-22', 9788445001920, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Coraline', 'Coraline Jones descubre una puerta secreta en su nuevo hogar y entra en un mundo paralelo donde sus padres alternativos intentan retenerla permanentemente. Con la ayuda de un gato parlante y otros aliados inesperados, Coraline debe usar toda su inteligencia y recursos para volver a su hogar y salvar a su familia', '2002-05-24', 9780061139376, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La Comunidad del Anillo', 'Frodo Bolsón hereda un anillo mágico y emprende un peligroso viaje para destruirlo antes de que caiga en manos del Señor Oscuro Sauron y desate la destrucción del mundo', '1954-07-29', 9788445000725, 1009);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Cinco niños y esto', 'El Psammead tiene poderes mágicos: puede conceder a cada niño un deseo al día', '1999-05-18', 9781234567892, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La espada de Shannara', 'Serie de novelas de fantasía épica', '1977-04-12', 9788448032108, 1019);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Bad management begin far.', 'Paper detail peace among. Think rich economic happy site method science.', '2008-01-23', 8460860385043, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Effect wind even air seek.', 'Half open pressure manager gun.', '2008-06-25', 5731876972352, 1013);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Site represent institution finish.', 'Soldier even single rule hold on produce. Person have game later health. Thought gun tend traditional south down knowledge.', '1989-11-20', 1427209754593, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Share movie land military.', 'Significant information throughout per all age various table. Company himself which experience chair. Common something information lose. Ball value raise share.', '1995-10-31', 6524129450467, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES 
('Mary Poppins', 'serie de cuentos extravagantes sobre la asediada familia Banks', '1964-10-14', 9780999988887, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('El león, la bruja y el ropero', 'n grupo de niños tropieza con una puerta que conduce a un mundo secreto detrás del más prosaico de los muebles, un armario.','1950-11-14', 9781111122223, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Major administration your.', 'On tonight discuss. Economy man piece someone end medical country. Month model pull nation draw crime activity campaign.','1987-06-26', 5026113750416, 1005);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Vote stand party.', 'Work soldier space red explain. Century before apply than group chance. Whose time blue section fire president. Each line theory party.','1995-01-02', 9637588854676, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('La travesía del Viajero del Alba', 'sintetiza de manera única la cultura yoruba .','1950-06-11', 9780555566664, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Put indeed difficult car level.', 'Meet of detail Congress across camera short. Interview million conference station suggest down edge upon.','2006-05-14', 2903760096056, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Goal plan type begin.', 'Degree pretty century national hair. Others money agent begin. Open necessary join bit. Fire general meet vote wrong way particular.','1984-08-25', 5062414520424, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Travel decade compare suddenly perhaps.', 'Science half cold discussion resource level provide. Everybody most face memory these power during guy. West technology different follow its analysis.','1980-09-21', 7929077732140, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Only somebody day speech.', 'New can project scene arrive thank before. Really suddenly movie show follow for. Several ten shoulder east.','2006-04-23', 4023772624667, 1019);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Poor four recently.', 'Leader too major very produce side. Factor head happen student. Send seven away process.','1999-06-04', 6600836137663, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Indicate floor leader always security.', 'Agent last create whole. Level whatever community mission majority.','2013-04-30', 4724174527705, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Anyone some security wide plant.', 'Whom course blue listen century audience billion. Son open vote despite letter skin military.','1995-08-09', 2091514830982, 1001);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Represent but high low energy.', 'Paper both son order system. Yourself happen artist adult of customer anything. Account yeah finally compare marriage Congress.','2018-10-19', 5828743394010, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Middle total factor media.', 'Lose plant actually order weight media. War agreement hold fast continue action.','2003-04-30', 8286633504270, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Happy idea alone.', 'Bit wish right ability food they laugh. Including friend bad nearly.','2002-01-23', 8336140639688, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Serve evening.', 'She throw response at right like. Cause eye structure station.','1993-12-25', 1889715891199, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Big around both particular.', 'Assume window pay line challenge page help. Nature hit building. Reflect follow word north democratic. Kind space trouble tend project.','2009-01-07', 5041502332336, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Blue economic.', 'Nature worry raise person remember student. Down beautiful loss our himself. Wife call security position.','2015-08-17', '9813457343950', 1001);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Under teacher claim.', 'During left alone number.','1995-12-23', '9674767393975', 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Wait environmental.', 'Part well pressure present. Though dark entire. Purpose space present thank computer.','2012-11-03', '9413796751747', 1003);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Performance none role role accept.', 'Two affect nice offer. Occur someone face everybody enter federal. Reach bill PM cup professor.','1973-10-05', '9322825036431', 1004);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Close any story.', 'Per event some. Usually money peace relationship success three. Amount own majority.','2017-02-09', '9396642812201', 1005);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Conference economic dream really nor.', 'Material myself memory represent school along however. Big will last anything. His along available. Or state hotel.','2006-08-08', '9093684941968', 1006);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Road act year full.', 'Apply campaign herself vote catch return board. Avoid success memory current ahead able service. Mention ok message attention wear. Question lot service general gas pass.','2005-12-09', '9731094462269', 1007);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Card generation amount local realize.', 'Herself style book cultural month. Large meeting standard though Congress government building. Could know including page property act fly.','1986-07-30', '9231885013316', 1008);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Campaign cut scene campaign boy.', 'Your executive action gun catch son option. Responsibility meet yard clear sea. Different center religious PM.','1974-11-24', '9608112332380', 1009);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Need yes look various.', 'Individual population dark decision rate against. Go science local wife throw. White cell size factor rock tonight war size.','2022-01-26', 9802262268659, 1010);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Card war out toward nearly.', 'Sister pull reason argue. Cultural full type. White happen phone leader nature.','1977-01-22', 9704558138207, 1011);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Drop serve.', 'Message case station which check open sign. Plant official tell remember join task. Police prevent lay under data under news.','1978-12-22', 9517715079206, 1012);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('National drop trip continue.', 'Network glass traditional behavior partner address garden. Member piece cell benefit remain. Simple dark involve model political.','2021-05-23', 9638458467173, 1013);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Deep phone.', 'Onto listen act computer. Fine front here authority produce choose turn. Place even occur meeting read boy.','2004-02-01', 9614116931387, 1014);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Around carry mention policy right.', 'She their political throw continue. Control enjoy approach necessary experience. Remember situation want. Could technology yard mouth step least citizen.','2013-12-03', 9619388631689, 1015);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Vote record medical.', 'Answer red remember. As per cover today walk sense away ball. Lose practice still little public quite.','1996-08-12', 9922673543954, 1016);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Seven painting beautiful public parent.', 'Well because bar agency class event environmental.','2007-04-08', 9406074705266, 1017);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero)  VALUES
('Material standard performance truth understand.', 'Trouble practice dark like include month suffer glass. Dream check guess.','1998-09-01', 9991016273966, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('La comunidad del anillo.', 'secuela de El hobbit.','1954-07-09', 9781234567805, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Camelot.', 'La serie cuenta la historia del Rey Arturo.','1940-02-03', 9780987654321, 1018);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Jim y el durazno gigante.', 'Enormes insectos parlantes, tías malvadas y una pieza de fruta más grande que la vida.','1982-09-30', 9781234567812, 1004);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('El unicornio', 'Lainez sigue a Melusine mientras se enamora y libra muchas batallas en la Europa medieval durante las cruzadas.','1965-11-23', 9780123456789, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Un mago de Terramar', 'relata una historia está ambientada en el archipiélago ficticio de Terramar.','1968-06-21', 9780596529321, 1006);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Together Democrat road true college.', 'Amount ball natural four live hair. Believe space cup.','1988-12-08', 9342048594760, 1007);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Know station born civil.', 'Identify Congress choice several. Rise assume daughter star probably. Garden hear material wife food financial.','1990-06-29', 9174076537449, 1002);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Establish traditional nice would.', 'Measure gun question low civil. Free he song across development fact might.','2019-09-06', 9424989620699, 1003);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('During green rather news.', 'Unit education already language fund bag put those. Visit consider central individual. Too suggest big compare budget article science.','1973-12-05', 9378305657646, 1004);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Often number hard.', 'Country resource wish computer similar find. Carry lot bag film process them. Available doctor consider add son gas small.','1999-10-27', 9151766749610, 1005);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Senior bed stage inside executive.', 'Kid find its eight hard. Herself plan truth local long. State current cost international forget decide staff.','1991-12-24', 9616459162855, 1006);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES
('Sound improve citizen.', 'Plant say where face choice nearly. Campaign community thank.','2015-06-01', 9955123038435, 1007);
INSERT INTO Libros(titulo, descripcion, fechaPublicacion, isbn, idSubgenero) VALUES 
('Very majority offer development way.', 'Where every child traditional chair. Commercial follow town lawyer nation rise notice.','2011-10-24', 9015199730404, 1008);

-- Autores

INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.K. Rowling', 'Reino Unido','1965-07-31');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('George R.R. Martin', 'Estados Unidos','1948-09-20');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.R.R. Tolkien', 'Reino Unido','1892-01-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Neil Gaiman', 'Reino Unido','1960-11-10');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Brandon Sanderson', 'Estados Unidos','1975-12-19');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Terry Pratchett', 'Reino Unido','1948-04-28');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ursula K. Le Guin', 'Estados Unidos','1929-10-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Robert Jordan', 'Estados Unidos','1948-10-17');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Robin Hobb', 'Estados Unidos','1952-03-05');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Patrick Rothfuss', 'Estados Unidos','1973-06-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Raymond E. Feist', 'Estados Unidos','1945-12-23');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Tad Williams', 'Estados Unidos','1957-03-14');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Terry Brooks', 'Estados Unidos','1944-01-08');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Anne McCaffrey', 'Estados Unidos','1926-04-01');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('C.S. Lewis', 'Reino Unido','1898-11-29');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Leigh Bardugo', 'Estados Unidos','1975-04-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Marie Lu', 'China','1984-07-11');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Sabaa Tahir', 'Estados Unidos','1983-06-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Naomi Novik', 'Estados Unidos','1973-04-30');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Victoria Schwab', 'Estados Unidos','1987-07-07');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Lev Grossman', 'Estados Unidos','1969-06-26');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Susanna Clarke', 'Reino Unido','1959-11-01');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Scott Lynch', 'Estados Unidos','1978-04-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Joe Abercrombie', 'Reino Unido','1974-12-31');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Mark Lawrence', 'Reino Unido','1968-08-28');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('John Smith', 'Estados Unidos','1975-05-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Patrick Rothfuss', 'Estados Unidos','1973-06-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Robin Hobb', 'Estados Unidos','1952-03-05');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Scott Lynch', 'Estados Unidos','1978-04-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Andrzej Sapkowski', 'Polonia','1948-06-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Terry Pratchett', 'Reino Unido','1948-04-28');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Stephen King', 'Estados Unidos','1947-09-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Robert Jordan', 'Estados Unidos','1948-10-17');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ursula K. Le Guin', 'Estados Unidos','1929-10-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Gabriel García Márquez', 'Colombia','1927-03-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Haruki Murakami', 'Japón','1949-01-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.K. Rowling', 'Reino Unido','1965-07-31');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Stephen King', 'Estados Unidos','1947-09-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Margaret Atwood', 'Canadá','1939-11-18');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Isabel Allende', 'Chile','1942-08-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Franz Kafka', 'República Checa','1883-07-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Virginia Woolf', 'Reino Unido','1882-01-25');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Albert Camus', 'Francia','1913-11-07');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Leo Tolstoy', 'Rusia','1828-09-09');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Emily Bronte', 'Reino Unido','1818-07-30');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Fyodor Dostoevsky', 'Rusia','1821-11-11');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Hermann Hesse', 'Alemania','1877-07-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.R.R. Tolkien', 'Reino Unido','1892-01-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Agatha Christie', 'Reino Unido','1890-09-15');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Philip K. Dick', 'Estados Unidos','1928-12-16');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Jules Verne', 'Francia','1828-02-08');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ernest Hemingway', 'Estados Unidos','1899-07-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Oscar Wilde', 'Irlanda','1854-10-16');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Aldous Huxley', 'Reino Unido','1894-07-26');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Mark Twain', 'Estados Unidos','1835-11-30');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('George Orwell', 'Reino Unido','1903-06-25');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('F. Scott Fitzgerald', 'Estados Unidos','1896-09-24');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Jane Austen', 'Reino Unido','1775-12-16');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Anton Chekhov', 'Rusia','1860-01-29');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Toni Morrison', 'Estados Unidos','1931-02-18');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Gabriel García Márquez', 'Colombia','1927-03-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Isabel Allende', 'Chile','1942-08-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Octavia Butler', 'Estados Unidos','1947-06-22');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Italo Calvino', 'Italia','1923-10-15');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Jorge Luis Borges', 'Argentina','1899-08-24');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('John Steinbeck', 'Estados Unidos','1902-02-27');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Virginia Woolf', 'Reino Unido','1882-01-25');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Haruki Murakami', 'Japón','1949-01-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Margaret Atwood', 'Canadá','1939-11-18');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ray Bradbury', 'Estados Unidos','1920-08-22');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Mary Shelley', 'Reino Unido','1797-08-30');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Neil Gaiman', 'Reino Unido','1960-11-10');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Kurt Vonnegut', 'Estados Unidos','1922-11-11');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Gustave Flaubert', 'Francia','1821-12-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Charles Dickens', 'Reino Unido','1812-02-07');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.D. Salinger', 'Estados Unidos','1919-01-01');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ernest Hemingway', 'Estados Unidos','1899-07-21');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('William Faulkner', 'Estados Unidos','1897-09-25');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('F. Scott Fitzgerald', 'Estados Unidos','1896-09-24');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Ayn Rand', 'Estados Unidos','1905-02-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Edgar Allan Poe', 'Estados Unidos','1809-01-19');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('H.P. Lovecraft', 'Estados Unidos','1890-08-20');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Arthur Conan Doyle', 'Reino Unido','1859-05-22');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('J.R.R. Tolkien', 'Reino Unido','1892-01-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('George Orwell', 'Reino Unido','1903-06-25');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Aldous Huxley', 'Reino Unido','1894-07-26');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Agatha Christie', 'Reino Unido','1890-09-15');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Roald Dahl', 'Reino Unido','1916-09-13');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Isaac Asimov', 'Estados Unidos','1920-01-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Philip K. Dick', 'Estados Unidos','1928-12-16');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Isabel Allende', 'Chile','1942-08-02');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Kurt Vonnegut', 'Estados Unidos','1922-11-11');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Jack Kerouac', 'Estados Unidos','1922-03-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Allen Ginsberg', 'Estados Unidos','1926-06-03');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Truman Capote', 'Estados Unidos','1924-09-30');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Margaret Atwood', 'Canadá','1939-11-18');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Gabriel García Márquez', 'Colombia','1927-03-06');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Julio Cortázar', 'Argentina','1914-08-26');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES
('Pablo Neruda', 'Chile','1904-07-12');
INSERT INTO Autores(nombre, nacionalidad, fechaNacimiento) VALUES 
('Jorge Luis Borges', 'Argentina','1899-08-24');


--Ejemplares
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000001, 'Estanteria 6, ', 'Disponible','1998-04-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000002, 'Estanteria 3, ', 'Reparacion','1978-02-05');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000003, 'Estanteria 8, ', 'Reparacion','2005-08-31');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000004, 'Estanteria 2, ', 'Disponible','2008-09-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000005, 'Estanteria 5, ', 'Reparacion','2012-12-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000006, 'Estanteria 7, ', 'Disponible','2020-03-29');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000007, 'Estanteria 9, ', 'Reparacion','1983-11-04');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000008, 'Estanteria 1, ', 'Disponible','2019-11-23');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000009, 'Estanteria 6, ', 'Reparacion','1974-05-26');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES 
(100000010, 'Estanteria 10, ', 'Prestado','2019-11-02');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000011, 'Estanteria 10, ', 'Prestado', '1974-03-21');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000012, 'Estanteria 3, ', 'Disponible', '2016-04-24');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000013, 'Estanteria 5, ', 'Disponible', '1985-12-06');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000014, 'Estanteria 9, ', 'Reparacion', '2001-01-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000015, 'Estanteria 2, ', 'Reparacion', '2021-12-05');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000016, 'Estanteria 1, ', 'Disponible', '2003-06-02');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000017, 'Estanteria 4, ', 'Prestado', '1986-09-12');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000018, 'Estanteria 4, ', 'Reparacion', '2003-12-27');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000019, 'Estanteria 7, ', 'Prestado', '1973-06-23');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000020, 'Estanteria 3, ', 'Prestado', '1984-10-15');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000021, 'Estanteria 9, ', 'Disponible', '2014-08-24');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000022, 'Estanteria 8, ', 'Prestado', '1982-02-02');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000023, 'Estanteria 5, ', 'Prestado', '1994-11-09');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000024, 'Estanteria 2, ', 'Reparacion', '1985-02-08');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000025, 'Estanteria 7, ', 'Prestado', '1980-01-03');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000026, 'Estanteria 9, ', 'Reparacion', '1988-04-19');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000027, 'Estanteria 6, ', 'Reparacion', '1983-10-09');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000028, 'Estanteria 9, ', 'Reparacion', '1975-02-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000029, 'Estanteria 2, ', 'Prestado', '1986-11-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000030, 'Estanteria 9, ', 'Prestado', '1983-07-26');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000031, 'Estanteria 9, ', 'Reparacion','1978-02-14');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000032, 'Estanteria 8, ', 'Reparacion','1981-08-08');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000033, 'Estanteria 1, ', 'Disponible','1998-09-12');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000034, 'Estanteria 1, ', 'Disponible','2006-12-02');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000035, 'Estanteria 5, ', 'Reparacion','2006-06-16');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000036, 'Estanteria 7, ', 'Disponible','2003-04-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000037, 'Estanteria 5, ', 'Prestado','1978-08-16');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000038, 'Estanteria 1, ', 'Prestado','1975-09-04');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000039, 'Estanteria 3, ', 'Disponible','1998-01-18');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000040, 'Estanteria 6, ', 'Reparacion','1978-03-23');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000041, 'Estanteria 9, ', 'Prestado','1979-07-11');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000042, 'Estanteria 8, ', 'Reparacion','1992-06-17');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000043, 'Estanteria 2, ', 'Disponible','1992-07-12');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000044, 'Estanteria 1, ', 'Disponible','1997-01-28');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000045, 'Estanteria 8, ', 'Reparacion','2013-11-25');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000046, 'Estanteria 6, ', 'Disponible','1995-09-26');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000047, 'Estanteria 1, ', 'Reparacion','1992-02-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000048, 'Estanteria 6, ', 'Reparacion','1982-12-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000049, 'Estanteria 6, ', 'Reparacion','1990-07-01');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000050, 'Estanteria 3, ', 'Reparacion','1977-12-27');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000051, 'Estanteria 4, ', 'Disponible','1991-05-25');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000052, 'Estanteria 7, ', 'Reparacion','1989-07-04');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000053, 'Estanteria 8, ', 'Disponible','2018-02-28');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000054, 'Estanteria 1, ', 'Reparacion','1985-04-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000055, 'Estanteria 2, ', 'Reparacion','1987-12-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000056, 'Estanteria 5, ', 'Prestado','1987-11-25');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000057, 'Estanteria 7, ', 'Disponible','2020-03-09');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000058, 'Estanteria 8, ', 'Reparacion','2007-11-08');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000059, 'Estanteria 7, ', 'Reparacion','2002-11-10');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000060, 'Estanteria 7, ', 'Prestado','1993-02-08');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000061, 'Estanteria 9, ', 'Reparacion','2013-04-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000062, 'Estanteria 3, ', 'Disponible','1981-05-14');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000063, 'Estanteria 6, ', 'Disponible','2015-04-16');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000064, 'Estanteria 5, ', 'Disponible','1976-10-10');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000065, 'Estanteria 8, ', 'Disponible','2006-07-14');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000066, 'Estanteria 7, ', 'Prestado','2007-06-05');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000067, 'Estanteria 3, ', 'Disponible','1982-05-04');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000068, 'Estanteria 9, ', 'Reparacion','1981-06-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000069, 'Estanteria 2, ', 'Disponible','1998-08-31');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000070, 'Estanteria 5, ', 'Reparacion','2008-12-23');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000071, 'Estanteria 3, ', 'Disponible','2011-05-27');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000072, 'Estanteria 3, ', 'Prestado','2002-08-07');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000073, 'Estanteria 8, ', 'Disponible','2005-04-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000074, 'Estanteria 3, ', 'Reparacion','1996-07-11');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000075, 'Estanteria 4, ', 'Prestado','2017-06-16');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000076, 'Estanteria 5, ', 'Disponible','1995-01-16');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000077, 'Estanteria 4, ', 'Reparacion','2007-04-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000078, 'Estanteria 1, ', 'Prestado','1985-10-29');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000079, 'Estanteria 10, ', 'Disponible','1991-11-11');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000080, 'Estanteria 10, ', 'Disponible','2008-02-03');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000081, 'Estanteria 2, ', 'Reparacion','2016-07-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000082, 'Estanteria 1, ', 'Prestado','2000-05-28');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000083, 'Estanteria 8, ', 'Prestado','1996-05-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000084, 'Estanteria 6, ', 'Reparacion','2013-11-24');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000085, 'Estanteria 3, ', 'Disponible','2012-05-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000086, 'Estanteria 1, ', 'Prestado','2001-07-04');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000087, 'Estanteria 10, ', 'Prestado','1981-07-02');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000088, 'Estanteria 2, ', 'Prestado','2020-12-17');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000089, 'Estanteria 1, ', 'Disponible','1999-04-30');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000090, 'Estanteria 8, ', 'Reparacion','1988-08-07');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000091, 'Estanteria 1, ', 'Reparacion','2021-07-07');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000092, 'Estanteria 4, ', 'Reparacion','1974-06-05');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000093, 'Estanteria 10, ', 'Disponible','2010-07-13');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000094, 'Estanteria 7, ', 'Prestado','2020-07-10');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000095, 'Estanteria 8, ', 'Prestado','2005-11-25');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000096, 'Estanteria 10, ', 'Prestado','1996-12-28');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000097, 'Estanteria 5, ', 'Prestado','1996-12-23');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000098, 'Estanteria 10, ', 'Prestado','1996-12-21');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000099, 'Estanteria 7, ', 'Prestado','1973-07-20');
INSERT INTO Ejemplares(idLibro, ubicacion, estado, fechaAdquisicion) VALUES
(100000100,'Estanteria 9, ', 'Disponible','1982-03-28');


--Usuarios
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
('Thebault', 'Elwel', '6 East Court', 'M', '1929-10-21', 'E', 3468893728);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
('Anna', 'Smith', '123 Main Street', 'F', '1990-07-15', 'E', 5551234567);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('John', 'Doe', '456 Oak Avenue', 'M','1985-02-10', 'E', 1234567890);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Linda', 'Lee', '789 Elm Street', 'F','1974-12-02', 'O', 9876543210);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Royall', 'Whetnell', '119 Waywood Court', 'M','1945-12-23', 'O', 2036938221);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Giovanni', 'Easterby', '00269 Eagan Pass', 'M','1975-04-06', 'E', 3873549581);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jason', 'Garcia', '890 Maple Street', 'M','1998-03-05', 'E', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Max', 'Ragbourn', '2 Kipling Center', 'M','1944-01-08', 'E', 3205375216);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Banky', 'Tapin', '88 Bashford Circle', 'M','1898-11-29', 'O', 3679035686);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emery', 'Mibourne', '131 Morningstar Trail', 'M','1898-11-29', 'O', 3102464257);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Patin', 'Ruppel', '68949 Surrey Crossing', 'M','1926-04-01', 'E', 3162468257);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Honey', 'Ksandra', '2 Bay Trail', 'F','1952-03-05', 'O', 3406845660);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jorie', 'Dickson', '6 Hauk Crossing', 'F','1948-10-17', 'E', 3217717230);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Megan', 'Lopez', '777 Cherry Lane', 'F','1986-08-08', 'O', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Eric', 'Nguyen', '888 Pine Avenue', 'M','1997-01-25', 'E', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Michelle', 'Chen', '999 Oak Road', 'F','1990-11-12', 'O', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ryan', 'Kim', '1111 Elm Street', 'M','1993-04-19', 'E', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Kimberly', 'Wong', '2222 Maple Avenue', 'F','1988-08-30', 'O', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Daniel', 'Park', '3333 Pine Lane', 'M','1999-02-15', 'E', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Karen', 'Singh', '4444 Oak Road', 'F','1985-06-05', 'O', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Steven', 'Kim', '5555 Pine Lane', 'M','1984-09-23', 'E', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Amanda', 'Chen', '6666 Elm Street', 'F','1983-12-10', 'O', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Thomas', 'Lee', '7777 Maple Avenue', 'M','1992-05-02', 'E', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jennifer', 'Wang', '8888 Pine Lane', 'F','1991-01-19', 'O', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jason', 'Nguyen', '9999 Oak Road', 'M','1996-01-19', 'O',2223314444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Samantha', 'Liu', '1111 Elm Street', 'F','1986-07-03', 'O', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('David', 'Lee', '2222 Maple Avenue', 'M','1995-02-12', 'E', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emily', 'Chen', '3333 Pine Lane', 'F','1993-10-25', 'O', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Kevin', 'Kim', '4444 Oak Road', 'M','1998-05-15', 'E', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Melissa', 'Wang', '5555 Pine Lane', 'F','1991-12-07', 'O', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jacob', 'Park', '6666 Elm Street', 'M','1988-02-28', 'E', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Evelyn', 'Nguyen', '7777 Maple Avenue', 'F','1994-06-18', 'O', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Joshua', 'Chen', '8888 Pine Lane', 'M','1990-09-10', 'E', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Christine', 'Lee', '9999 Oak Road', 'F','1997-03-22', 'O', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Matthew', 'Kim', '1111 Elm Street', 'M','1989-11-04', 'E', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Sarah', 'Garcia', '2222 Maple Avenue', 'F','1996-08-14', 'O', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Justin', 'Martinez', '3333 Pine Lane', 'M','1992-05-27', 'E', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ava', 'Smith', '4444 Oak Road', 'F','1999-02-08', 'O', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Andrew', 'Nguyen', '5555 Pine Lane', 'M','1987-12-30', 'E', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Isabella', 'Wang', '6666 Elm Street', 'F','1995-09-21', 'O', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Daniel', 'Park', '7777 Maple Avenue', 'M','1991-11-12', 'E', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Olivia', 'Chen', '8888 Pine Lane', 'F','1998-06-03', 'O', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Alexander', 'Lee', '9999 Oak Road', 'M','1990-03-15', 'E', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Sophia', 'Kim', '1111 Elm Street', 'F','1997-10-26', 'O', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ryan', 'Garcia', '2222 Maple Avenue', 'M','1988-09-17', 'E', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emily', 'Tran', '3333 Pine Lane', 'F','1993-07-08', 'O', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Matthew', 'Gonzalez', '4444 Oak Road', 'M','1994-11-21', 'E', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Avery', 'Lopez', '5555 Pine Lane', 'F','1999-04-01', 'O', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jonathan', 'Nguyen', '6666 Elm Street', 'M','1985-12-23', 'E', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Grace', 'Lee', '7777 Maple Avenue', 'F','1996-02-04', 'O', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('William', 'Chen', '8888 Pine Lane', 'M','1990-10-15', 'E', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Natalie', 'Kim', '9999 Oak Road', 'F','1993-05-26', 'O', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ethan', 'Garcia', '1111 Elm Street', 'M','1998-04-17', 'E', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Madison', 'Tran', '2222 Maple Avenue', 'F','1991-12-08', 'O', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('David', 'Gonzalez', '3333 Pine Lane', 'M','1996-01-21', 'E', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Olivia', 'Lopez', '4444 Oak Road', 'F','1995-07-12', 'O', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Isabella', 'Nguyen', '5555 Pine Lane', 'F','1998-11-28', 'E', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Daniel', 'Lee', '6666 Elm Street', 'M','1992-04-05', 'O', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Mia', 'Chen', '7777 Maple Avenue', 'F','1997-08-19', 'E', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Lucas', 'Kim', '8888 Pine Lane', 'M','1993-06-02', 'O', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Sophia', 'Garcia', '9999 Oak Road', 'F','1996-05-22', 'E', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jacob', 'Tran', '1111 Elm Street', 'M','1999-09-23', 'O', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emma', 'Gonzalez', '2222 Maple Avenue', 'F','1994-02-18', 'E', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Michael', 'Lopez', '3333 Pine Lane', 'M','1991-12-11', 'O', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Samantha', 'Nguyen', '4444 Oak Road', 'F','1997-04-28', 'E', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Aiden', 'Gomez', '5555 Elm Street', 'M','1995-11-02', 'O', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Evelyn', 'Chen', '6666 Maple Avenue', 'F','1998-06-12', 'E', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('William', 'Kim', '7777 Pine Lane', 'M','1993-09-01', 'O', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Madison', 'Tran', '8888 Oak Road', 'F','1997-07-18', 'E', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Noah', 'Garcia', '9999 Elm Street', 'M','1992-03-14', 'O', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ava', 'Tran', '1111 Maple Avenue', 'F','1996-08-11', 'E', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Alexander', 'Gonzalez', '2222 Pine Lane', 'M','1994-12-27', 'O', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emily', 'Lopez', '3333 Oak Road', 'F','1999-02-05', 'E', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Mason', 'Nguyen', '4444 Elm Street', 'M','1995-05-23', 'O', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Abigail', 'Gomez', '5555 Maple Avenue', 'F','1998-10-15', 'E', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Ethan', 'Chen', '6666 Pine Lane', 'M','1993-12-30', 'O', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Isabella', 'Tran', '7777 Oak Road', 'F','1997-09-28', 'E', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Oliver', 'Garcia', '8888 Elm Street', 'M','1992-06-05', 'O', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Sophia', 'Tran', '9999 Maple Avenue', 'F','1996-04-08', 'E', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Lucas', 'Gonzalez', '1111 Pine Lane', 'M','1994-01-12', 'O', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Chloe', 'Lopez', '2222 Oak Road', 'F','1999-07-29', 'E', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Liam', 'Nguyen', '3333 Elm Street', 'M','1995-10-16', 'O', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Harper', 'Gomez', '4444 Maple Avenue', 'F','1998-03-27', 'E', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Jackson', 'Chen', '5555 Pine Lane', 'M','1993-11-19', 'O', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Avery', 'Tran', '6666 Oak Road', 'F','1997-02-09', 'E', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Aiden', 'Garcia', '7777 Elm Street', 'M','1992-09-15', 'O', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Emma', 'Tran', '8888 Maple Avenue', 'F','1996-05-22', 'E', 1112223333);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Mason', 'Gonzalez', '9999 Pine Lane', 'M','1994-03-06', 'O', 2223334444);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Madison', 'Lopez', '1111 Oak Road', 'F','1999-12-03', 'E', 3334445555);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Noah', 'Nguyen', '2222 Elm Street', 'M','1995-08-18', 'O', 4445556666);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Aria', 'Gomez', '3333 Maple Avenue', 'F','1998-01-09', 'E', 5556667777);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Elijah', 'Chen', '4444 Pine Lane', 'M','1993-07-27', 'O', 6667778888);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Aaliyah', 'Tran', '5555 Oak Road', 'F','1997-05-13', 'E', 7778889999);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Carter', 'Garcia', '6666 Elm Street', 'M','1992-12-20', 'O', 8889990000);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Aubrey', 'Tran', '7777 Maple Avenue', 'F','1996-02-17', 'E', 9990001111);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Leah', 'Johnson', '500 Elm Street', 'F','1985-12-03', 'E', 5559876543);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('John', 'Doe', '100 Main Street', 'M','1995-01-20', 'O', 5553456789);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('Sophia', 'Lee', '72 Oak Lane', 'F','1978-08-12', 'E', 5552314321);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES
('David', 'Garcia', '111 Main Street', 'M','1992-04-30', 'O', 5558765432);
INSERT INTO Usuarios (nombre, apellido, direccion, genero, fechaNacimiento, ocupacion, telefono) VALUES 
('Sarah', 'Chen', '25 Willow Road', 'F','2001-03-07', 'E', 5555551212);

-- PRESTAMOS  
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-11-02','2022-07-25', 10000001, 100000001, 1000067);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-12-11','2022-11-03', 10000002, 100000002, 1000053);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-12-25','2022-07-24', 10000003, 100000003, 1000019);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-03-07','2022-09-01', 10000004, 100000004, 1000064);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-03-26','2022-05-18', 10000005, 100000005, 1000030);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-01-04','2023-03-05', 10000006, 100000006, 1000041);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-03-04','2023-01-16', 10000007, 100000007, 1000040);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2023-04-07','2022-08-08', 10000008, 100000008, 1000038);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-06-21','2022-06-15', 10000009, 100000009, 1000052);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-05-23','2022-06-19', 10000010, 100000010, 1000083);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-05-30','2022-06-07', 10000011, 100000011, 1000041);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-09-22','2023-05-05', 10000012, 100000012, 1000035);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-12-22','2022-10-27', 10000013, 100000013, 1000077);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-07-10','2022-10-13', 10000014, 100000014, 1000023);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-01-17','2023-08-23', 10000015, 100000015, 1000076);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-18','2022-04-15', 10000016, 100000016, 1000078);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-28','2022-10-05', 10000017, 100000017, 1000022);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-10-01','2023-06-25', 10000018, 100000018, 1000075);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-19','2022-11-18', 10000019, 100000019, 1000096);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-06','2022-11-09', 10000020, 100000020, 1000050);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-02','2023-01-17', 10000021, 100000021, 1000028);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-07','2022-12-13', 10000022, 100000022, 1000074);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-05-15','2022-03-21', 10000023, 100000023, 1000051);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-25','2022-09-04', 10000024, 100000024, 1000088);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-03-18','2022-10-27', 10000025, 100000025, 1000096);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-30','2022-10-26', 10000026, 100000026, 1000018);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-17','2023-03-08', 10000027, 100000027, 1000089);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-05','2022-10-06', 10000028, 100000028, 1000073);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-08','2022-09-23', 10000029, 100000029, 1000021);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-21','2022-10-02', 10000030, 100000030, 1000047);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-09','2022-11-20', 10000031, 100000031, 1000011);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-18','2022-11-26', 10000032, 100000032, 1000043);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-18','2022-11-30', 10000033, 100000033, 1000089);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-08-17','2022-10-08', 10000034, 100000034, 1000068);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-19','2022-10-20', 10000035, 100000035, 1000092);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-26','2022-08-18', 10000036, 100000036, 1000019);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-23','2022-10-08', 10000037, 100000037, 1000096);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-17','2022-09-12', 10000038, 100000038, 1000006);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-03-29','2023-01-03', 10000039, 100000039, 1000100);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-27','2022-08-10', 10000040, 100000040, 1000069);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-04','2022-12-26', 10000041, 100000041, 1000019);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-10-13','2022-09-01', 10000042, 100000042, 1000080);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-24','2023-03-27', 10000043, 100000043, 1000084);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-08-07','2022-04-25', 10000044, 100000044, 1000066);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-19','2022-12-27', 10000045, 100000045, 1000010);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-18','2022-08-04', 10000046, 100000046, 1000077);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-13','2023-01-06', 10000047, 100000047, 1000018);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-22','2022-11-08', 10000048, 100000048, 1000065);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-22','2022-09-13', 10000049, 100000049, 1000073);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-28','2022-08-17', 10000050, 100000050, 1000080);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-24','2022-06-13', 10000051, 100000051, 1000082);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-25','2023-03-24', 10000052, 100000052, 1000044);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-17','2022-12-18', 10000053, 100000053, 1000008);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-01-19','2022-09-19', 10000054, 100000054, 1000031);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-20','2022-07-16', 10000055, 100000055, 1000040);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-14','2022-12-21', 10000056, 100000056, 1000025);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-29','2022-12-08', 10000057, 100000057, 1000059);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-23','2022-09-19', 10000058, 100000058, 1000003);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-10','2023-03-12', 10000059, 100000059, 1000068);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-01','2022-05-26', 10000060, 100000060, 1000041);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-12','2023-02-11', 10000061, 100000061, 1000076);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-13','2023-02-23', 10000062, 100000062, 1000048);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-14','2022-06-10', 10000063, 100000063, 1000024);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-24','2023-04-11', 10000064, 100000064, 1000005);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-03-29','2022-07-26', 10000065, 100000065, 1000001);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-02','2022-06-29', 10000066, 100000066, 1000033);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-13','2022-12-15', 10000067, 100000067, 1000069);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-11','2022-11-28', 10000068, 100000068, 1000016);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-08-02','2022-11-14', 10000069, 100000069, 1000063);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-01','2023-10-27', 10000070, 100000070, 1000086);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-20','2022-09-09', 10000071, 100000071, 1000015);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-04','2023-03-23', 10000072, 100000072, 1000094);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-15','2022-08-05', 10000073, 100000073, 1000037);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-21','2023-11-03', 10000074, 100000074, 1000037);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-08-04','2022-12-12', 10000075, 100000075, 1000048);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-14','2022-11-26', 10000076, 100000076, 1000020);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-04-02','2023-03-08', 10000077, 100000077, 1000078);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-29','2022-09-19', 10000078, 100000078, 1000024);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-15','2022-04-21', 10000079, 100000079, 1000054);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-03-30','2023-03-03', 10000080, 100000080, 1000086);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-01-31','2022-05-19', 10000081, 100000081, 1000005);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-02','2022-12-24', 10000082, 100000082, 1000027);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-05-13','2022-10-03', 10000083, 100000083, 1000085);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-09-03','2022-12-24', 10000084, 100000084, 1000100);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-28','2023-02-05', 10000085, 100000085, 1000032);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-25','2023-03-09', 10000086, 100000086, 1000075);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-09','2022-09-12', 10000087, 100000087, 1000096);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-04-11','2023-04-25', 10000088, 100000088, 1000096);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-03-05','2023-05-08', 10000089, 100000089, 1000077);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-01-30','2022-05-17', 10000090, 100000090, 1000010);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-08-24','2022-06-29', 10000091, 100000091, 1000004);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-10-25','2023-01-24', 10000092, 100000092, 1000034);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-07-22','2022-08-09', 10000093, 100000093, 1000029);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-11-28','2023-01-31', 10000094, 100000094, 1000040);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-01-10','2023-02-21', 10000095, 100000095, 1000001);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-06-12','2022-07-03', 10000096, 100000096, 1000027);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2023-02-25','2022-11-15', 10000097, 100000097, 1000078);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-04-22','2023-02-01', 10000098, 100000098, 1000077);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES
('2022-12-09','2022-11-07', 10000099, 100000099, 1000084);
INSERT INTO Prestamos (fechaPrestamo, fechaDevolucion, idEjemplar, idLibro, idUsuario) VALUES 
('2022-05-30','2022-06-27', 10000100, 100000100, 1000024);

-- DONADORES (tener en cuenta que no todos son donadores)
INSERT INTO Donadores(idDonador) VALUES (1000001);
INSERT INTO Donadores(idDonador) VALUES (1000002);
INSERT INTO Donadores(idDonador) VALUES (1000003);
INSERT INTO Donadores(idDonador) VALUES (1000004);
INSERT INTO Donadores(idDonador) VALUES (1000005);
INSERT INTO Donadores(idDonador) VALUES (1000006);
INSERT INTO Donadores(idDonador) VALUES (1000007);
INSERT INTO Donadores(idDonador) VALUES (1000008);
INSERT INTO Donadores(idDonador) VALUES (1000009);
INSERT INTO Donadores(idDonador) VALUES (1000010);
INSERT INTO Donadores(idDonador) VALUES (1000011);
INSERT INTO Donadores(idDonador) VALUES (1000012);
INSERT INTO Donadores(idDonador) VALUES (1000013);
INSERT INTO Donadores(idDonador) VALUES (1000014);
INSERT INTO Donadores(idDonador) VALUES (1000015);
INSERT INTO Donadores(idDonador) VALUES (1000016);
INSERT INTO Donadores(idDonador) VALUES (1000017);
INSERT INTO Donadores(idDonador) VALUES (1000018);
INSERT INTO Donadores(idDonador) VALUES (1000019);
INSERT INTO Donadores(idDonador) VALUES (1000020);
INSERT INTO Donadores(idDonador) VALUES (1000021);
INSERT INTO Donadores(idDonador) VALUES (1000022);
INSERT INTO Donadores(idDonador) VALUES (1000023);
INSERT INTO Donadores(idDonador) VALUES (1000024);
INSERT INTO Donadores(idDonador) VALUES (1000025);
INSERT INTO Donadores(idDonador) VALUES (1000026);
INSERT INTO Donadores(idDonador) VALUES (1000027);
INSERT INTO Donadores(idDonador) VALUES (1000028);
INSERT INTO Donadores(idDonador) VALUES (1000029);
INSERT INTO Donadores(idDonador) VALUES (1000030);
INSERT INTO Donadores(idDonador) VALUES (1000031);
INSERT INTO Donadores(idDonador) VALUES (1000032);
INSERT INTO Donadores(idDonador) VALUES (1000033);
INSERT INTO Donadores(idDonador) VALUES (1000034);
INSERT INTO Donadores(idDonador) VALUES (1000035);
INSERT INTO Donadores(idDonador) VALUES (1000036);
INSERT INTO Donadores(idDonador) VALUES (1000037);
INSERT INTO Donadores(idDonador) VALUES (1000038);
INSERT INTO Donadores(idDonador) VALUES (1000039);
INSERT INTO Donadores(idDonador) VALUES (1000040);
INSERT INTO Donadores(idDonador) VALUES (1000041);
INSERT INTO Donadores(idDonador) VALUES (1000042);
INSERT INTO Donadores(idDonador) VALUES (1000043);
INSERT INTO Donadores(idDonador) VALUES (1000044);
INSERT INTO Donadores(idDonador) VALUES (1000045);
INSERT INTO Donadores(idDonador) VALUES (1000046);
INSERT INTO Donadores(idDonador) VALUES (1000047);
INSERT INTO Donadores(idDonador) VALUES (1000048);
INSERT INTO Donadores(idDonador) VALUES (1000049);
INSERT INTO Donadores(idDonador) VALUES (1000050);
INSERT INTO Donadores(idDonador) VALUES (1000051);
INSERT INTO Donadores(idDonador) VALUES (1000052);
INSERT INTO Donadores(idDonador) VALUES (1000053);
INSERT INTO Donadores(idDonador) VALUES (1000054);
INSERT INTO Donadores(idDonador) VALUES (1000055);
INSERT INTO Donadores(idDonador) VALUES (1000056);
INSERT INTO Donadores(idDonador) VALUES (1000057);
INSERT INTO Donadores(idDonador) VALUES (1000058);
INSERT INTO Donadores(idDonador) VALUES (1000059);
INSERT INTO Donadores(idDonador) VALUES (1000060);
INSERT INTO Donadores(idDonador) VALUES (1000061);
INSERT INTO Donadores(idDonador) VALUES (1000062);
INSERT INTO Donadores(idDonador) VALUES (1000063);
INSERT INTO Donadores(idDonador) VALUES (1000064);
INSERT INTO Donadores(idDonador) VALUES (1000065);
INSERT INTO Donadores(idDonador) VALUES (1000066);
INSERT INTO Donadores(idDonador) VALUES (1000067);
INSERT INTO Donadores(idDonador) VALUES (1000068);
INSERT INTO Donadores(idDonador) VALUES (1000069);
INSERT INTO Donadores(idDonador) VALUES (1000070);
INSERT INTO Donadores(idDonador) VALUES (1000071);
INSERT INTO Donadores(idDonador) VALUES (1000072);
INSERT INTO Donadores(idDonador) VALUES (1000073);
INSERT INTO Donadores(idDonador) VALUES (1000074);
INSERT INTO Donadores(idDonador) VALUES (1000075);
INSERT INTO Donadores(idDonador) VALUES (1000076);
INSERT INTO Donadores(idDonador) VALUES (1000077);
INSERT INTO Donadores(idDonador) VALUES (1000078);
INSERT INTO Donadores(idDonador) VALUES (1000079);
INSERT INTO Donadores(idDonador) VALUES (1000080);
INSERT INTO Donadores(idDonador) VALUES (1000081);
INSERT INTO Donadores(idDonador) VALUES (1000082);
INSERT INTO Donadores(idDonador) VALUES (1000083);
INSERT INTO Donadores(idDonador) VALUES (1000084);
INSERT INTO Donadores(idDonador) VALUES (1000085);
INSERT INTO Donadores(idDonador) VALUES (1000086);
INSERT INTO Donadores(idDonador) VALUES (1000087);
INSERT INTO Donadores(idDonador) VALUES (1000088);
INSERT INTO Donadores(idDonador) VALUES (1000089);
INSERT INTO Donadores(idDonador) VALUES (1000090);
INSERT INTO Donadores(idDonador) VALUES (1000091);
INSERT INTO Donadores(idDonador) VALUES (1000092);
INSERT INTO Donadores(idDonador) VALUES (1000093);
INSERT INTO Donadores(idDonador) VALUES (1000094);
INSERT INTO Donadores(idDonador) VALUES (1000095);
INSERT INTO Donadores(idDonador) VALUES (1000096);
INSERT INTO Donadores(idDonador) VALUES (1000097);
INSERT INTO Donadores(idDonador) VALUES (1000098);
INSERT INTO Donadores(idDonador) VALUES (1000099);
INSERT INTO Donadores(idDonador) VALUES (1000100);

--DONACIONES

INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-17', 'U', 100000028, 1000012);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-15', 'N', 100000052, 1000062);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-13', 'N', 100000051, 1000097);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-25', 'U', 100000049, 1000082);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-19', 'U', 100000100, 1000080);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-17', 'U', 100000076, 1000050);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-30', 'N', 100000069, 1000016);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-04-05', 'N', 100000047, 1000054);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-05', 'U', 100000040, 1000073);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-26', 'U', 100000090, 1000056);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-20', 'N', 100000091, 1000064);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-12-12', 'U', 100000049, 1000070);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-29', 'N', 100000034, 1000034);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-22', 'N', 100000068, 1000009);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-12', 'U', 100000014, 1000090);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-27', 'N', 100000059, 1000013);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-04-05', 'N', 100000067, 1000025);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-08', 'N', 100000015, 1000082);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-28', 'N', 100000028, 1000080);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-27', 'U', 100000036, 1000063);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-19', 'N', 100000026, 1000047);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-18', 'N', 100000043, 1000052);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-27', 'U', 100000097, 1000004);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-12', 'U', 100000060, 1000077);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-13', 'N', 100000058, 1000077);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-06', 'N', 100000027, 1000042);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-07', 'U', 100000078, 1000007);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-12', 'U', 100000083, 1000002);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-06', 'U', 100000037, 1000063);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-22', 'U', 100000047, 1000005);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-27', 'U', 100000067, 1000031);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-12-12', 'U', 100000027, 1000031);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-04-07', 'U', 100000013, 1000045);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-02', 'U', 100000071, 1000031);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-07', 'N', 100000034, 1000029);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-22', 'N', 100000036, 1000091);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-27', 'N', 100000028, 1000059);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-20', 'N', 100000012, 1000001);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-22', 'U', 100000083, 1000007);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-20', 'U', 100000009, 1000008);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-18', 'N', 100000013, 1000069);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-06', 'N', 100000013, 1000018);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-02', 'U', 100000039, 1000076);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-25', 'U', 100000057, 1000096);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-29', 'U', 100000052, 1000024);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-04', 'N', 100000006, 1000008);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-08', 'U', 100000088, 1000012);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-12-19', 'U', 100000013, 1000028);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-03', 'N', 100000096, 1000068);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-15', 'N', 100000089, 1000044);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-12-05', 'N', 100000084, 1000056);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-13', 'U', 100000078, 1000011);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-04', 'U', 100000052, 1000040);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-18', 'U', 100000073, 1000005);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-17', 'U', 100000007, 1000091);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-06', 'N', 100000098, 1000098);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-02', 'N', 100000037, 1000013);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-24', 'N', 100000042, 1000054);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-04', 'U', 100000092, 1000042);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-17', 'U', 100000060, 1000100);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-24', 'U', 100000057, 1000072);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-19', 'N', 100000008, 1000063);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-14', 'N', 100000041, 1000089);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-23', 'N', 100000062, 1000061);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-20', 'U', 100000001, 1000069);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-04', 'U', 100000003, 1000078);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-12', 'U', 100000033, 1000094);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-05', 'N', 100000080, 1000063);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-19', 'N', 100000094, 1000087);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-24', 'N', 100000039, 1000072);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-26', 'N', 100000098, 1000053);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-10', 'N', 100000001, 1000039);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-27', 'U', 100000032, 1000012);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-13', 'U', 100000040, 1000029);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-08', 'U', 100000054, 1000059);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-06', 'U', 100000096, 1000035);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-11', 'N', 100000049, 1000043);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-29', 'U', 100000073, 1000046);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-19', 'N', 100000099, 1000084);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-24', 'U', 100000031, 1000077);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-01', 'U', 100000078, 1000082);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-10', 'N', 100000005, 1000036);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-02', 'U', 100000048, 1000068);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-23', 'U', 100000030, 1000044);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-08-26', 'N', 100000043, 1000027);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-06-28', 'U', 100000064, 1000042);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-12-28', 'N', 100000071, 1000083);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-03-19', 'U', 100000098, 1000022);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-04-10', 'U', 100000083, 1000090);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-23', 'U', 100000033, 1000044);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-04-15', 'U', 100000079, 1000045);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-13', 'N', 100000019, 1000031);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-11-16', 'U', 100000069, 1000050);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-07-15', 'N', 100000009, 1000048);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-10-11', 'N', 100000061, 1000044);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-05-29', 'U', 100000049, 1000073);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2022-09-27', 'U', 100000056, 1000006);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-01-08', 'U', 100000099, 1000078);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES
('2023-02-09', 'U', 100000074, 1000052);
INSERT INTO Donaciones (fechaDonacion, tipoDonacion, idLibro, idDonador) VALUES 
('2022-11-27', 'N', 100000047, 1000052);


-- Correos 
INSERT INTO Correos (idUsuario, correo) VALUES (1000001, 'thebault.elwel@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000002, 'anna.smith@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000003, 'john.doe@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000004, 'mary.jones@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000005, 'james.davis@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000006, 'samantha.green@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000007, 'michael.brown@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000008, 'jennifer.white@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000009, 'matthew.taylor@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000010, 'olivia.wilson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000011, 'emily.jackson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000012, 'william.anderson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000013, 'natalie.clark@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000014, 'charles.edwards@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000015, 'madison.johnson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000016, 'andrew.baker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000017, 'sarah.taylor@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000018, 'jacob.carter@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000019, 'laura.davis@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000020, 'justin.miller@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000021, 'amanda.moore@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000022, 'brandon.adams@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000023, 'emily.allen@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000024, 'victoria.collins@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000025, 'eric.evans@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000026, 'ashley.foster@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000027, 'jessica.green@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000028, 'daniel.hill@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000029, 'olivia.jackson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000030, 'nathan.kelly@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000031, 'hannah.lewis@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000032, 'adam.miller@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000033, 'lauren.nelson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000034, 'oliver.parker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000035, 'amanda.rodriguez@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000036, 'jacob.smith@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000037, 'samantha.taylor@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000038, 'matthew.walker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000039, 'mia.young@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000040, 'aaron.barnes@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000041, 'olivia.ross@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000042, 'daniel.brown@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000043, 'emily.campbell@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000044, 'william.davis@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000045, 'sophia.edwards@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000046, 'james.foster@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000047, 'chloe.green@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000048, 'benjamin.hall@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000049, 'natalie.jackson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000050, 'alexander.king@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000051, 'grace.lee@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000052, 'dylan.martin@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000053, 'olivia.nelson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000054, 'mason.owens@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000055, 'isabella.parker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000056, 'ethan.quinn@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000057, 'madison.ross@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000058, 'jacob.scott@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000059, 'lily.taylor@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000060, 'noah.upton@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000061, 'victoria.vaughn@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000062, 'william.walker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000063, 'sophia.xavier@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000064, 'zachary.young@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000065, 'ava.zimmerman@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000066, 'jayden.adams@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000067, 'natalie.brown@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000068, 'ryan.collins@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000069, 'kaitlyn.davis@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000070, 'jordan.evans@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000071, 'jocelyn.foster@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000072, 'peter.williams@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000073, 'emily.nguyen@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000074, 'roberta.brown@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000075, 'henry.johnson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000076, 'samuel.wilson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000077, 'victoria.miller@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000078, 'charles.jackson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000079, 'olivia.robinson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000080, 'joseph.garcia@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000081, 'amelia.white@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000082, 'thomas.campbell@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000083, 'emily.collins@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000084, 'joseph.bailey@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000085, 'olivia.evans@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000086, 'lucas.nelson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000087, 'grace.hall@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000088, 'jack.baker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000089, 'mia.turner@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000090, 'william.garcia@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000091, 'charlotte.jones@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000092, 'daniel.rodriguez@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000093, 'josephine.garcia@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000094, 'hannah.baker@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000095, 'julian.ramirez@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000096, 'oliver.green@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000097, 'nataly.jackson@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000098, 'ethan.foster@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000099, 'zoey.barnes@example.com');
INSERT INTO Correos (idUsuario, correo) VALUES (1000100, 'brandon.sanders@example.com');

--Suscripciones

INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2022-05-05','2022-06-05','Activo', 1000001);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-01','2023-05-01','Activo', 1000002);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-31','2023-04-30','Inactivo', 1000003);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-30','2023-04-29','Activo', 1000004);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-29','2023-04-28','Inactivo', 1000005);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-28','2023-04-27','Activo', 1000006);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-27','2023-04-26','Inactivo', 1000007);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-26','2023-04-25','Activo', 1000008);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-25','2023-04-24','Inactivo', 1000009);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-24','2023-04-23','Activo', 1000010);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-23','2023-04-22','Inactivo', 1000011);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-01','2023-05-01','Activo', 1000012);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-31','2023-04-30','Inactivo', 1000013);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-30','2023-04-29','Activo', 1000014);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-29','2023-04-28','Inactivo', 1000015);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-28','2023-04-27','Activo', 1000016);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-27','2023-04-26','Inactivo', 1000017);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-26','2023-04-25','Activo', 1000018);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-25','2023-04-24','Inactivo', 1000019);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-24','2023-04-23','Activo', 1000020);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-23','2023-04-22','Inactivo', 1000021);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-22','2023-04-21', 'Activo', 1000022);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-21','2023-04-20', 'Activo', 1000023);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-20','2023-04-19', 'Inactivo', 1000024);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-19','2023-04-18', 'Activo', 1000025);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-18','2023-04-17', 'Activo', 1000026);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-17','2023-04-16', 'Inactivo', 1000027);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-16','2023-04-15', 'Activo', 1000028);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-15','2023-04-14', 'Inactivo', 1000029);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-14','2023-04-13', 'Activo', 1000030);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-13','2023-04-12', 'Inactivo', 1000031);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-12','2023-04-11', 'Activo', 1000032);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-11','2023-04-10', 'Inactivo', 1000033);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-10','2023-04-09', 'Activo', 1000034);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-09','2023-04-08', 'Inactivo', 1000035);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-08','2023-04-07', 'Activo', 1000036);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-07','2023-04-06', 'Inactivo', 1000037);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-06','2023-04-05', 'Activo', 1000038);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-05','2023-04-04', 'Inactivo', 1000039);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-04','2023-04-03', 'Activo', 1000040);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-03','2023-04-02', 'Inactivo', 1000041);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-02','2023-04-01', 'Activo', 1000042);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-02-10','2023-03-10', 'Inactivo', 1000043);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-02-15','2023-03-15', 'Activo', 1000044);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-02-20','2023-03-20', 'Activo', 1000045);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-02-25','2023-03-25', 'Inactivo', 1000046);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-01','2023-04-01', 'Activo', 1000047);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-06','2023-04-06', 'Inactivo', 1000048);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-11','2023-04-11', 'Activo', 1000049);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-16','2023-04-16', 'Activo', 1000050);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-21','2023-04-21', 'Inactivo', 1000051);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-03-26','2023-04-26', 'Activo', 1000052);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-02','2023-05-02', 'Activo', 1000053);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-07','2023-05-07', 'Inactivo', 1000054);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-12','2023-05-12', 'Activo', 1000055);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-17','2023-05-17', 'Activo', 1000056);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-22','2023-05-22', 'Inactivo', 1000057);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-04-27','2023-05-27', 'Activo', 1000058);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-01','2023-06-01', 'Activo', 1000059);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-06','2023-06-06', 'Inactivo', 1000060);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-11','2023-06-11', 'Activo', 1000061);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-16','2023-06-16', 'Activo', 1000062);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-21','2023-06-21', 'Inactivo', 1000063);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-26','2023-06-26', 'Activo', 1000064);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-05-31','2023-06-30', 'Activo', 1000065);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-05','2023-07-05', 'Inactivo', 1000066);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-10','2023-07-10', 'Activo', 1000067);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-15','2023-07-15', 'Activo', 1000068);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-20','2023-07-20', 'Inactivo', 1000069);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-25','2023-07-25', 'Activo', 1000070);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-06-30','2023-07-30', 'Activo', 1000071);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-05','2023-08-05', 'Inactivo', 1000072);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-10','2023-08-10', 'Activo', 1000073);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-15','2023-08-15', 'Inactivo', 1000074);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-20','2023-08-20', 'Activo', 1000075);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-25','2023-08-25', 'Activo', 1000076);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-07-30','2023-08-30', 'Inactivo', 1000077);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-04','2023-09-04', 'Activo', 1000078);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-09','2023-09-09', 'Inactivo', 1000079);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-14','2023-09-14', 'Activo', 1000080);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-19','2023-09-19', 'Activo', 1000081);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-24','2023-09-24', 'Inactivo', 1000082);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-08-29','2023-09-29', 'Activo', 1000083);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-03','2023-10-03', 'Inactivo', 1000084);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-08','2023-10-08', 'Activo', 1000085);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-13','2023-10-13', 'Activo', 1000086);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-18','2023-10-18', 'Inactivo', 1000087);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-23','2023-10-23', 'Activo', 1000088);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-09-28','2023-10-28', 'Inactivo', 1000089);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-03','2023-11-03', 'Activo', 1000090);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-08','2023-11-08', 'Activo', 1000091);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-13','2023-11-13', 'Inactivo', 1000092);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-18','2023-11-18', 'Activo', 1000093);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-23','2023-11-23', 'Inactivo', 1000094);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-10-28','2023-11-28', 'Activo', 1000095);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-11-02','2023-12-02', 'Activo', 1000096);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-11-07','2023-12-07', 'Inactivo', 1000097);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-11-12','2023-12-12', 'Activo', 1000098);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-11-17','2023-12-17', 'Activo', 1000099);
INSERT INTO Suscripciones(fechaInicio, fechaFin, estado, idUsuario) VALUES ('2023-11-22','2023-12-22', 'Inactivo', 1000100);