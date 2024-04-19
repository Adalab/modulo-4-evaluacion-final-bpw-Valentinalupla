CREATE DATABASE signos_zodiaco;


USE signos_zodiaco;
 
CREATE TABLE signos(
id INT AUTO_INCREMENT KEY,
nombre VARCHAR(45),
fecha DATE, 
elemento VARCHAR(45),
descripcion text
);

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Aries', '2024-03-21', 'fuego', 'El signo de Aries, abarca a los nacidos en las fechas entre el 21 de marzo y el 19 de abril y es el primer signo del Horóscopo. Pertenece en el Zodíaco al elemento Fuego. Su planeta regente es Marte. Son líderes naturales y tienen un gran poder de iniciativa, además de ser rápidos e instintivos en la toma de decisiones. Se anticipan a los acontecimientos, son rápidos e instintivos, no se dejan manejar y algunas veces ni aconsejar.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Tauro', '2024-04-20', 'tierra', 'El signo de Tauro, es el segundo del Horóscopo, abarca a los nacidos en las fechas entre el 20 de abril y el 20 de mayo. Pertenece en el Zodíaco al elemento Tierra. Su Planeta regente es Venus. Es un signo de luchadores, tienen mucha fuerza de voluntad y suelen alcanzar lo que se proponen. Son absolutamente leales y pueden ser muy románticos si la ocasión es propicia.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Géminis', '2024-05-21', 'aire', 'El signo de Géminis, es el tercero del Horóscopo, abarca a los nacidos entre el 21 de mayo y el 20 de junio. Pertenece en el Zodíaco al elemento Aire. Su planeta regente es Mercurio. Su personalidad está marcada por constantes cambios, según ese día tenga más influencia de uno u otro gemelo. Son brillantes comunicadores y poseen una notable inteligencia. Por su dualidad, no son demasiado fáciles de llevar por su dualidad.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Cáncer', '2024-06-21', 'agua', 'El signo de Cáncer es el cuarto del Horóscopo, abarca a los nacidos entre el 21 de junio y el 22 de julio. Pertenece en el Zodíaco al elemento Agua. Su planeta regente es la Luna. Su empatía no tiene límite, se sitúan rápidamente en el lugar de los demás. Además son simpáticos y muy apasionados, aman su entorno familiar. Su único punto débil es que son sensibles en exceso.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Leo', '24-07-23', 'fuego', 'El signo de Leo es el quinto del Horóscopo, abarca a los nacidos entre el 23 de julio y el 22 de agosto. Pertenece en el Zodíaco al elemento Fuego. Su planeta regente es el Sol. Los nativos de este signo brillan en cualquier parte con la luz del Sol que impregna su signo. Ello lo saben y le sacan partido. Les gusta llevar siempre la voz cantante y saben dar lo mejor de sí mismos, si la soberbia no les supera.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Virgo', '2024-08-23', 'tierra', 'El signo de Virgo es el sexto del Horóscopo. Abarca a los nacidos entre el 23 de agosto y el 22 de septiembre. Pertenece en el Zodíaco al elemento Tierra. Su planeta regente es Mercurio. Tienen las ideas súper claras y saben hacer comulgar a los demás con ellas. Poseen una personalidad fuerte aunque quizá no la demuestran. Son perfeccionistas hasta el límite y sólo deberían dejarse llevar un poco más por la vida.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Libra', '2024-09-23', 'aire', 'El signo de Libra es el séptimo del Horóscopo. Abarca a los nacidos entre el 23 de septiembre y el 22 de octubre. Pertenece en el Zodíaco al elemento Aire. Su planeta regente es Venus. Buscan siempre el equilibrio, aunque a veces no lo alcanzan. Aman la armonía y la tranquilidad en su entorno. Muy románticos pero también muy indecisos. Su elegancia innata les hace destacar siempre.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Escorpio', '24-10-23', 'agua', 'El signo de Escorpio es el octavo del Horóscopo. Abarca a los nacidos entre el 23 de octubre y el 21 de noviembre. Pertenece en el Zodíaco al elemento Agua. Su planeta regente es Plutón. Llevan bastante oculto su carácter fuerte, que protegen con una gran sensibilidad y bondad hacia los demás. Son intensos en todas sus facetas y suelen alcanzar lo que se proponen.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Sagitario', '2024-11-22', 'fuego', 'El signo de Sagitario es el noveno del Horóscopo. Abarca a los nacidos entre el 22 de noviembre y el 21 de diciembre. Pertenece en el Zodíaco al elemento Fuego. Su planeta regente es Júpiter. Tienen a la suerte de su parte, pero cuando algo les falla montan en cólera. Suelen concentrar toda su energía en salvar cualquier obstáculo. Son muy sociables y caen bien a cualquiera que se les acerque.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Capricornio', '2024-12-22', 'tierra', 'El signo de Capricornio es el décimo del Horóscopo. Abarca a los nacidos entre el 22 de diciembre y el 19 de enero. Pertenece en el Zodíaco al elemento Tierra. Su planeta regente es Saturno. Planificadores en grado sumo, no soportan que nada altere el orden y la estabilidad que persiguen. Cuando algo se tuerce, se esfuerzan en hallar solución. El trabajo es esencial en su vida, incluso por delante de otros temas importantes.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES('Acuario', '2024-01-20', 'aire', 'El signo de Acuario es el undécimo del Horóscopo. Abarca a los nacidos entre el 20 de enero y el 18 de febrero. Pertenece en el Zodíaco al elemento Aire. Su planeta regente es Urano. Amantes de la libertad, son algo rebeldes por naturaleza. Aman defender las causas en las que creen y lo hacen de modo altruista. Sus intereses son muy diversos, hay muchas cosas por las que creen necesario luchar.');

INSERT INTO signos (nombre, fecha, elemento, descripcion)
VALUES ('Piscis', '2024-02-19', 'agua', 'El signo de Piscis es el duodécimo del Horóscopo. Abarca a los nacidos entre el 19 de febrero al 20 de marzo. Pertenece en el Zodíaco al elemento Agua. Su planeta regente es Neptuno. Originales y creativos, son también muy románticos y con una fantasía desbordada. Les salva su intuición, que muchas veces les evita meterse innecesariamente en líos. Su honestidad y su carácter tranquilo les vale tener muchos adeptos.');
