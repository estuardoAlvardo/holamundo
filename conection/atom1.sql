-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2019 a las 23:09:36
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `atom1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadprueba`
--

CREATE TABLE `actividadprueba` (
  `idPrueba` int(255) NOT NULL,
  `nombrePrueba` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `numeroPreguntas` int(255) NOT NULL,
  `punteoPrueba` int(255) NOT NULL,
  `tipoPunteo` int(255) NOT NULL,
  `idLeccion` int(255) NOT NULL,
  `punteoRespuestas` int(255) NOT NULL,
  `fechaTerminado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaTerminado` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `actividadprueba`
--

INSERT INTO `actividadprueba` (`idPrueba`, `nombrePrueba`, `numeroPreguntas`, `punteoPrueba`, `tipoPunteo`, `idLeccion`, `punteoRespuestas`, `fechaTerminado`, `horaTerminado`) VALUES
(18, 'Prueba 1 - Analisis de software', 1, 20, 2, 15, 20, '04/04/2018', '15 : 54 : 13'),
(19, 'Prueba corta IntroducciÃ³n a la ciencias', 1, 1, 2, 11, 1, '04/04/2018', '15 : 10 : 01'),
(20, 'Prueba corta Lenguaje', 1, 10, 2, 18, 10, '04/04/2018', '16 : 42 : 58'),
(21, 'Prueba 1 - Analisis de software 2', 1, 20, 2, 15, 20, '04/04/2018', '15 : 54 : 03'),
(22, 'Prueba 1 - Analisis de software 3', 3, 30, 2, 17, 10, '04/04/2018', '15 : 32 : 29'),
(23, 'Prueba 1 - Analisis de software 4', 1, 1, 2, 18, 0, '04/04/2018', '16 : 45 : 17'),
(24, 'Prueba computaciÃ³n 1', 1, 10, 2, 9, 10, '04/04/2018', '17 : 05 : 27'),
(25, 'Prueba 1 - Analisis de software 2', 1, 15, 2, 9, 0, '', ''),
(26, 'Prueba 1 - Analisis de software 3', 1, 20, 2, 17, 0, '', ''),
(27, 'Prueba 1 - Analisis de software 3', 1, 20, 2, 17, 0, '', ''),
(28, 'Prueba 1 - Analisis de software111', 1, 1, 2, 15, 1, '05/04/2018', '09 : 00 : 00'),
(29, 'Prueba 1 - Analisis de software 4', 1, 20, 2, 10, 20, '05/04/2018', '13 : 02 : 27'),
(30, 'Prueba EvaluaciÃ³n OpciÃ³n MÃºltiple', 2, 10, 2, 0, 0, '', ''),
(31, 'Prueba EvaluaciÃ³n OpciÃ³n MÃºltiple', 1, 5, 2, 0, 0, '', ''),
(32, 'Prueba prueba', 1, 4, 2, 0, 0, '', ''),
(33, 'Prueba prueba2', 1, 1, 2, 20, 1, '16/05/2018', '15 : 18 : 48'),
(34, 'Prueba EvaluaciÃ³n OpciÃ³n MÃºltiple 1000', 2, 10, 2, 15, 10, '18/05/2018', '14 : 32 : 06'),
(35, 'prueba11', 2, 10, 2, 0, 0, '', ''),
(36, 'prueba11', 1, 5, 2, 0, 0, '', ''),
(37, 'prueba11', 1, 1, 2, 0, 0, '', ''),
(38, 'prueba11aa', 2, 3, 1, 0, 0, '', ''),
(39, 'prueba11', 2, 1, 2, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadtare`
--

CREATE TABLE `actividadtare` (
  `idTarea` int(255) NOT NULL,
  `nombreTarea` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `instrucciones` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `archivos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `punteoTarea` int(255) NOT NULL,
  `tipoPunteo` int(255) NOT NULL,
  `idLeccion` int(255) NOT NULL,
  `nombreArchivo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actividadtare`
--

INSERT INTO `actividadtare` (`idTarea`, `nombreTarea`, `instrucciones`, `archivos`, `punteoTarea`, `tipoPunteo`, `idLeccion`, `nombreArchivo`) VALUES
(13, 'Tarea 1', 'Del archivo adjunto, lea y luego cree un archivo word y adjuntelo', 'directorioTarea/13/iris1.png', 1, 2, 13, 'documento1'),
(14, 'Tarea Analisis 22', 'Del archivo adjunto, lea y luego cree un archivo word y adjuntelo', 'directorioTarea/15/guia_desarrollo_de_informes_de_investigacion.pdf', 22, 2, 15, 'documento2'),
(15, 'Tarea Analisis', 'asdasdasd', 'directorioTarea/17/Informe Edutic 2 de abril Colegios potenciales.xlsx', 11, 2, 17, 'documento3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `area`, `grado`) VALUES
(1, 'Área de Comunicación y Lenguaje L 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomobullying`
--

CREATE TABLE `atomobullying` (
  `idBullyng` int(11) NOT NULL,
  `tipoBullying` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreVictima` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `gradoSeccionVictima` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreAgresor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `gradoSeccionAgresor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaAlerta` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaAlerta` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomobullying`
--

INSERT INTO `atomobullying` (`idBullyng`, `tipoBullying`, `nombreVictima`, `gradoSeccionVictima`, `nombreAgresor`, `gradoSeccionAgresor`, `descripcion`, `fechaAlerta`, `horaAlerta`) VALUES
(1, 'Agresion Verbal', 'Martin gonzalez', '1ero primaria b', 'Jose Manuel ', '2do primaria seccion a', 'le pego muy fuerte', '13/12/2018', '09:45:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomocircular`
--

CREATE TABLE `atomocircular` (
  `idCircular` int(11) NOT NULL,
  `receptor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tituloCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpoCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `emisor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomocircular`
--

INSERT INTO `atomocircular` (`idCircular`, `receptor`, `tituloCircular`, `cuerpoCircular`, `emisor`, `fechaCircular`, `horaCircular`) VALUES
(1, 'Padres de familia', 'Mensualidad', 'se les recuerda que el dia de maÃ±ana es dia 10 y que es ultimo dia de pago :)', 'Docente', '18/12/2018', '01:14:55'),
(2, 'alumnos 1ero primaria', 'uniformes', 'se les informa a los alumnos que no tienen que venir el dÃ­a de maÃ±ana de uniforme de fÃ­sica no habrÃ¡ fÃ­sica', 'Docente', '18/12/2018', '01:20:34'),
(3, 'alumnos 1ero primaria', 'uniformes', 'se les informa a los alumnos que no tienen que venir el dÃ­a de maÃ±ana de uniforme de fÃ­sica no habrÃ¡ fÃ­sica', 'Docente', '18/12/2018', '01:22:32'),
(4, '', '', '', 'Docente', '18/12/2018', '01:22:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomodrive`
--

CREATE TABLE `atomodrive` (
  `idArchivo` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `nombreArchivo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `peso` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomodrive`
--

INSERT INTO `atomodrive` (`idArchivo`, `idUsuario`, `nombreArchivo`, `direccion`, `fecha`, `hora`, `peso`) VALUES
(48, 1, 'GUÃA PG1 2018.pdf', 'atomDrive/documentos/1/GUÃA PG1 2018.pdf', '12/12/2018', '12:00:30', '1.09 MB'),
(49, 1, 'GUÃA PG1 2018.pdf', 'atomDrive/documentos/1/GUÃA PG1 2018.pdf', '12/12/2018', '11:49:19', '1.09 MB'),
(51, 4, 'comandos git.txt', 'atomDrive/documentos/4/comandos git.txt', '13/12/2018', '02:56:22', '1.36 KB'),
(52, 4, 'plantila usuarios1.pdf', 'atomDrive/documentos/4/plantila usuarios1.pdf', '13/12/2018', '02:56:44', '1.80 MB'),
(53, 17, 'usuarios 5to primaria.csv', 'atomDrive/documentos/17/usuarios 5to primaria.csv', '08/03/2019', '09:13:14', '3.57 KB'),
(54, 17, 'IMG-20190317-WA0000.jpg', 'atomDrive/documentos/17/IMG-20190317-WA0000.jpg', '17/03/2019', '12:57:03', '49.77 KB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomodrivecompartir`
--

CREATE TABLE `atomodrivecompartir` (
  `idCompartir` int(11) NOT NULL,
  `idArchivo` int(11) NOT NULL,
  `idUsuarioPropietario` int(11) NOT NULL,
  `idUsuarioCompartir` int(11) NOT NULL,
  `fechaCompartir` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaCompartir` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomodrivecompartir`
--

INSERT INTO `atomodrivecompartir` (`idCompartir`, `idArchivo`, `idUsuarioPropietario`, `idUsuarioCompartir`, `fechaCompartir`, `horaCompartir`) VALUES
(11, 48, 1, 3, '12/12/2018', '12:01:43'),
(12, 49, 1, 3, '12/12/2018', '11:49:29'),
(13, 51, 4, 1, '13/12/2018', '02:58:53'),
(14, 53, 17, 1, '08/03/2019', '09:16:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomolectorvelocidad`
--

CREATE TABLE `atomolectorvelocidad` (
  `idRegistroVelocidad` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `noLectura` int(11) NOT NULL,
  `intento` int(11) NOT NULL,
  `tiempoSeg` int(11) NOT NULL,
  `velocidadLectora` int(11) NOT NULL,
  `fluidez` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomolectorvelocidad`
--

INSERT INTO `atomolectorvelocidad` (`idRegistroVelocidad`, `idUsuario`, `noLectura`, `intento`, `tiempoSeg`, `velocidadLectora`, `fluidez`) VALUES
(1, 17, 1, 1, 37, 100, 'los clubes de la lectura de primaria de los que se muestran en la lectura y en base a lo que el alumno va interpretando de manera correcta prueba de fluidez fluidez'),
(2, 17, 1, 2, 31, 0, 'lectura nÃºmero uno de cada nÃºmero uno empezando a la fluidez lectora dentro del campo de recepciÃ³n de la UNAM se estÃ¡ almacenando todos lo que se estÃ¡ diciendo y dependerÃ¡ de la fluidez del palomo'),
(7, 17, 1, 3, 22, 0, 'cuando desayunas ni comes explicaba CÃ³mo se hace una ficha El Conejo Bermejo nunca lo escuchado empezado a mirar para todas partes y se pone hablar con ese conejito que tenÃ­a la sabes lo que pasaba que me duerme con el otro compaÃ±ero se enteraron de lo que hacÃ­a y luego la ficha la Teniente repetir una y una y una y otra vez'),
(8, 17, 1, 4, 30, 0, 'cuando la seÃ±orita DoÃ±a con eso explicaba cÃ³mo se hace una ficha El Conejo Bermejo nunca le escuchaba empezaba a mirar para todas partes y se pone a hablar con otro conejito que tenÃ­a nada y sabes lo que pasaba que ni verme con el otro compaÃ±ero se entendÃ­a de cÃ³mo se hacÃ­a y luego la fecha la Teniente repetir para hacerla bien mientras otros conejos ya podÃ­an ponerse a jugar eso tambiÃ©n le pasaba la seÃ±o cuando contaba un cuento'),
(9, 17, 1, 5, 29, 162, 'cuando la seÃ±ora DoÃ±a conejo explicaba CÃ³mo se hace una ficha El Conejo Bermejo nunca le escuchaba empezaba a mirar para todas partes y se pone a hablar con otro conejito que tenÃ­a la sabes lo que pasaba que ni verme con el otro compaÃ±ero se enteraban de cÃ³mo se hacÃ­a y luego la ficha de tener que repetir para hacerla bien mientras nosotros conejos ya podÃ­an ponerse a jugar eso tambiÃ©n le pasaba con brazo Me contaba un cuento'),
(10, 17, 1, 6, 39, 240, 'va grabando todo lo que vas diciendo y lo ha notado para poder guardarlo y luego comparar con la lectura que ya estÃ¡ diseÃ±ado estÃ¡ capturando en tiempo real lo que estoy diciendo lo que logra lo que logra modificar porque lo dijiste mal lo modifica Pero si ya de verdad tÃº no la tienes bien no lo modifica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compentencia`
--

CREATE TABLE `compentencia` (
  `idcompentencia` int(11) NOT NULL,
  `competencia` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `area_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compentencia`
--

INSERT INTO `compentencia` (`idcompentencia`, `competencia`, `area_fk`) VALUES
(1, 'Escucha a su interlocutor o interlocutora demostrando respeto y comprensión del mensaje por medio de gestos y movimientos.', 1),
(2, 'Expresa oralmente sus opiniones, sentimientos, emociones y experiencias de su contexto familiar y escolar', 1),
(3, 'Utiliza el lenguaje no verbal como auxiliar de la comunicación.', 1),
(4, 'Utiliza la lectura para recrearse y asimilar información.', 1),
(5, 'Se expresa por escrito utilizando los trazos de las letras y los signos de puntuación.', 1),
(6, 'Utiliza nociones de la estructura de las palabras al expresar sus ideas.', 1),
(7, 'Utiliza vocabulario propio de su lengua materna abundante y pertinente en su interacción con las y los demás.', 1),
(8, 'Expresa por escrito sus sentimientos, emociones pensamientos y experiencias.', 1),
(9, 'Utiliza el lenguaje oral y escrito como instrumento para afianzar su aprendizaje.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `idContenido` int(11) NOT NULL,
  `contenido` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `unidad` int(11) DEFAULT NULL,
  `indicadorLogro_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`idContenido`, `contenido`, `unidad`, `indicadorLogro_fk`) VALUES
(1, 'Demostración de respeto hacia la persona que habla: posición del cuerpo, gestos (miradas, movimientos de la cara, señales con las manos, con los hombros, entre otros.), silencio en el momento en que se usa la palabra.', 1, 1),
(2, 'Práctica de normas de cortesía en conversaciones, diálogos y discusiones (esperar turno para hablar, hablar con el tono de voz apropiado, utilizar el vocabulario preciso, evitar el uso de sobrenombres, clasificadores personales, entre otros).', 1, 1),
(3, 'Seguimiento de instrucciones orales de hasta tres eventos.', 1, 2),
(4, 'Comparación de las características de los personajes que protagonizan los cuentos en las narraciones que escuchan.', 1, 2),
(5, 'Identificación de símilitudes y diferencias entre los sonidos en el lenguaje que escucha.', 1, 3),
(6, 'Percepción auditiva de las silabas que integran las palabras clave en los mensajes que escucha.', 1, 3),
(7, 'Reconocimiento de los fonemas como las unidades sonoras que conforman las palabras que escucha.', 1, 3),
(8, 'Percepción auditiva del fonema inicial y del fonema final en las palabras que escucha.', 1, 3),
(9, 'Reconocimiento de la diferencia que representa la sustitución de una letra en palabras determinadas en cuanto a sonido y significación (luna - lana - lona; puma - fuma - bruma; casa - caza - caña - cana).', 1, 3),
(10, 'Organización de la información necesaria dentro y fuera del aula.', 1, 4),
(11, 'Descripción de experiencias utilizando oraciones y pronunciando claramente.', 1, 5),
(12, 'Reproducción de juegos verbales: rimas, trabalenguas, retahilas.', 1, 5),
(13, 'Comunicación de estados de ánimo por medio de gestos.', 1, 6),
(14, 'Descripción de las características de objetos y de personas por medio de gestos.', 1, 6),
(15, 'Manifestación del conocimiento de su esquema corporal por medio de gestos.', 1, 6),
(16, 'Asociación de los movimientos corporales con las palabras que indican la dirección de su desplazamiento en el espacio: arriba, abajo, adelante, atrás, izquierda, derecha, entre otras.', 1, 6),
(17, 'Utilización de gestos y movimientos corporales para indicar la posición de objetos en el espacio y la relación que existe ellos: encima, debajo, adelante atrás, lejos, cerca, izquierda, derecha, al frente, detrás de, entre otros.', 1, 6),
(18, 'Utilización de palabras cuya pronunciación imita el sonido de aquello que describe: “pum”, “clic”, “crash”, entre otras.', 1, 7),
(19, 'Utilización de palabras que imitan el sonido producido por animales: “miau”, “guau”, “pío, pío”, “cuac, cuac”, entre otras.', 1, 7),
(20, 'Identificación de signos, símbolos, íconos y señales del entorno inmediato.', 1, 8),
(21, 'Asociación entre objetos del entorno y la o las palabras que los nombran.', 1, 9),
(22, 'Establecimiento de la relación símbolo escrito (grafema) y sonido (fonema)', 1, 9),
(23, 'Asociación del fonema con la letra respectiva (por lo menos las vocales y 6 consonantes).', 1, 9),
(24, 'Asociación del fonemas con las letras del alfabeto (por lo menos las vocales y 12 consonantes).', 1, 9),
(25, 'Asociación de fonemas con las letras del alfabeto (por lo menos las vocales y 20 consonantes).', 1, 9),
(26, 'Distinción entre fantasía y realidad.', 1, 12),
(27, 'Lectura con diferentes propósitos: como recreación (rimas, retahilas, poemas y cuentos', 1, 12),
(28, 'Lectura con diferentes propósitos: con diferentes intenciones: compras, inventarios, almacenamiento.', 1, 12),
(29, 'Localización de información específica en diversos medios impresos: libros, revistas, periódicos, entre otros.', 1, 12),
(30, 'Aplicación de los principios de la caligrafía: posición del cuerpo, empuñadura del lápiz, posición del papel, trazo de letras, entre otros.', 1, 13),
(31, 'Observación de la direccionalidad de las letras al escribir (rasgos que ocupan el espacio principal, rasgos que se extienden hacia arriba y hacia abajo).', 1, 13),
(32, 'Observación de la linealidad al escribir (dirección izquierda - derecha).', 1, 13),
(33, 'Observación de los espacios entre las letras y las palabras, márgenes.', 1, 13),
(34, 'Diferenciación entre letras mayúsculas y minúsculas.', 1, 14),
(35, 'Utilización de mayúscula inicial en las oraciones que escribe.', 1, 14),
(36, 'Identificación de las palabras que integran una oración.', 1, 15),
(37, 'Identificación oral de las sílabas que conforman palabras específicas.', 1, 15),
(38, 'Reconocimiento de sílabas directas, indirectas y cerradas en palabras conocidas.', 1, 15),
(39, 'Indicación del número de sílabas que conforman una palabra.', 1, 16),
(40, 'Utilización de claves de contexto para identificar palabras nuevas.', 1, 17),
(41, 'Utilización del vocabulario apropiado para describir características físicas (adjetivos), estados de ánimo, emociones, sensaciones y sentimientos.', 1, 17),
(42, 'Descripción de estados de ánimo utilizando las palabras apropiadas y la entonación precisa.', 1, 19),
(43, 'Introducción de palabras nuevas en los textos que escribe.', 1, 19),
(44, 'Elaboración de dibujos para expresar ideas con respecto a personas, objetos, animales y plantas', 1, 20),
(45, 'Descripción de características de los personajes incluidos en sus dibujos.', 1, 20),
(46, 'Representación de ideas o contenido de un cuento por medio de dibujos en secuencia.', 1, 21),
(47, 'Selección de las palabras apropiadas según los dibujos elaborados alrededor de un tema.', 1, 21),
(48, 'Redacción individual de narraciones cortas, anéctotas y chistes acerca de eventos de la vida cotidiana.', 1, 21),
(49, 'Expresión de ideas, sentimientos y emociones formando párrafos según las reglas del idioma.', 1, 22),
(50, 'Utilización de la información obtenida de diferentes medios en la formulación de preguntas y mostrar sus puntos de vista.', 1, 22),
(51, 'Demostración de respeto hacia la persona que habla: posición del cuerpo, gestos (miradas, movimientos de la cara, señales con las manos, con los hombros, entre otros.), silencio en el momento en que se usa la palabra.', 1, 1),
(52, 'Práctica de normas de cortesía en conversaciones, diálogos y discusiones (esperar turno para hablar, hablar con el tono de voz apropiado, utilizar el vocabulario preciso, evitar el uso de sobrenombres, clasificadores personales, entre otros).', 1, 1),
(53, 'Seguimiento de instrucciones orales de hasta tres eventos.', 1, 2),
(54, 'Comparación de las características de los personajes que protagonizan los cuentos en las narraciones que escuchan.', 1, 2),
(55, 'Identificación de similitudes y diferencias entre los sonidos en el lenguaje que escucha.', 1, 3),
(56, 'Percepción auditiva de las sílabas que integran las palabras clave en los mensajes que escucha.', 1, 3),
(57, 'Reconocimiento de los fonemas como las unidades sonoras que conforman las palabras que escucha.', 1, 3),
(58, 'Percepción auditiva del fonema inicial y del fonema final en las palabras que escucha.', 1, 3),
(59, 'Reconocimiento de la diferencia que representa la sustitución de una letra en palabras determinadas en cuanto a sonido y significación (luna - lana - lona; puma - fuma - bruma; casa - caza - caña - cana).', 1, 3),
(60, 'Organización de la información necesaria dentro y fuera del aula.', 1, 4),
(61, 'Descripción de experiencias utilizando oraciones y pronunciando claramente.', 1, 5),
(62, 'Reproducción de juegos verbales: rimas, trabalenguas, retahilas.', 1, 5),
(63, 'Comunicación de estados de ánimo por medio de gestos.', 1, 6),
(64, 'Descripción de las características de objetos y de personas por medio de gestos.', 1, 6),
(65, 'Manifestación del conocimiento de su esquema corporal por medio de gestos.', 1, 6),
(66, 'Asociación de los movimientos corporales con las palabras que indican la dirección de su desplazamiento en el espacio: arriba, abajo, adelante, atrás, izquierda, derecha, entre otras.', 1, 6),
(67, 'Utilización de gestos y movimientos corporales para indicar la posición de objetos en el espacio y la relación que existe ellos: encima, debajo, adelante atrás, lejos, cerca, izquierda, derecha, al frente, detrás de, entre otros.', 1, 6),
(68, 'Utilización de palabras cuya pronunciación imita el sonido de aquello que describe: “pum”, “clic”, “crash”, entre otras.', 1, 7),
(69, 'Utilización de palabras que imitan el sonido producido por animales: “miau”, “guau”, “pío, pío”, “cuac, cuac”, entre otras.', 1, 7),
(70, 'Identificación de signos, símbolos, íconos y señales del entorno inmediato.', 1, 8),
(71, 'Asociación entre objetos del entorno y la o las palabras que los nombran.', 1, 9),
(72, 'Establecimiento de la relación símbolo escrito (grafema) y sonido (fonema)', 1, 9),
(73, 'Asociación del fonema con la letra respectiva (por lo menos las vocales y 6 consonantes).', 1, 9),
(74, 'Asociación del fonemas con las letras del alfabeto (por lo menos las vocales y 12 consonantes).', 1, 9),
(75, 'Asociación de fonemas con las letras del alfabeto (por lo menos las vocales y 20 consonantes).', 1, 9),
(76, 'Distinción entre fantasía y realidad.', 1, 12),
(77, 'Lectura con diferentes propósitos: como recreación (rimas, retahilas, poemas y cuentos', 1, 12),
(78, 'Lectura con diferentes propósitos: con diferentes intenciones: compras, inventarios, almacenamiento.', 1, 12),
(79, 'Localización de información específica en diversos medios impresos: libros, revistas, periódicos, entre otros.', 1, 12),
(80, 'Aplicación de los principios de la caligrafía: posición del cuerpo, empuñadura del lápiz, posición del papel, trazo de letras, entre otros.', 1, 13),
(81, 'Observación de la direccionalidad de las letras al escribir (rasgos que ocupan el espacio principal, rasgos que se extienden hacia arriba y hacia abajo).', 1, 13),
(82, 'Observación de la linealidad al escribir (dirección izquierda - derecha).', 1, 13),
(83, 'Observación de los espacios entre las letras y las palabras, márgenes.', 1, 13),
(84, 'Diferenciación entre letras mayúsculas y minúsculas.', 1, 14),
(85, 'Utilización de mayúscula inicial en las oraciones que escribe.', 1, 14),
(86, 'Identificación de las palabras que integran una oración.', 1, 15),
(87, 'Identificación oral de las sílabas que conforman palabras específicas.', 1, 15),
(88, 'Reconocimiento de sílabas directas, indirectas y cerradas en palabras conocidas.', 1, 15),
(89, 'Indicación del número de sílabas que conforman una palabra.', 1, 16),
(90, 'Utilización de claves de contexto para identificar palabras nuevas.', 1, 17),
(91, 'Utilización del vocabulario apropiado para describir características físicas (adjetivos), estados de ánimo, emociones, sensaciones y sentimientos.', 1, 17),
(92, 'Descripción de estados de ánimo utilizando las palabras apropiadas y la entonación precisa.', 1, 19),
(93, 'Introducción de palabras nuevas en los textos que escribe.', 1, 19),
(94, 'Elaboración de dibujos para expresar ideas con respecto a personas, objetos, animales y plantas', 1, 20),
(95, 'Descripción de características de los personajes incluidos en sus dibujos.', 1, 20),
(96, 'Representación de ideas o contenido de un cuento por medio de dibujos en secuencia.', 1, 21),
(97, 'Selección de las palabras apropiadas según los dibujos elaborados alrededor de un tema.', 1, 21),
(98, 'Redacción individual de narraciones cortas, anéctotas y chistes acerca de eventos de la vida cotidiana.', 1, 21),
(99, 'Expresión de ideas, sentimientos y emociones formando párrafos según las reglas del idioma.', 1, 22),
(100, 'Utilización de la información obtenida de diferentes medios en la formulación de preguntas y mostrar sus puntos de vista.', 1, 22),
(101, 'Demostración de respeto hacia la persona que habla: posición del cuerpo, gestos (miradas, movimientos de la cara, señales con las manos, con los hombros, entre otros.), silencio en el momento en que se usa la palabra.', 2, 1),
(102, 'Práctica de normas de cortesía en conversaciones, diálogos y discusiones (esperar turno para hablar, hablar con el tono de voz apropiado, utilizar el vocabulario preciso, evitar el uso de sobrenombres, clasificadores personales, entre otros).', 2, 1),
(103, 'Demostración de respeto hacia gestos y prácticas comunicativas comunes en otros idiomas y culturas del país.', 2, 1),
(104, 'Seguimiento de instrucciones orales de hasta tres eventos.', 2, 2),
(105, 'Interpretación de rimas, cuentos, poemas, canciones, entre otros por medio de gestos y movimientos corporales.', 2, 2),
(106, 'Comparación de las características de los personajes que protagonizan los cuentos en las narraciones que escuchan.', 2, 2),
(107, 'Identificación de similitudes y diferencias entre los sonidos en el lenguaje que escucha.', 2, 3),
(108, 'Percepción auditiva de las sílabas que integran las palabras clave en los mensajes que escucha.', 2, 3),
(109, 'Reconocimiento de los fonemas como las unidades sonoras que conforman las palabras que escucha.', 2, 3),
(110, 'Identificación de palabras que riman.', 2, 3),
(111, 'Percepción auditiva del fonema inicial y del fonema final en las palabras que escucha.', 2, 3),
(112, 'Organización de la información necesaria dentro y fuera del aula.', 2, 4),
(113, 'Descripción de experiencias utilizando oraciones y pronunciando claramente.', 2, 5),
(114, 'Reproducción oral de lo escuchado recitándolo o parafraseándolo.', 2, 5),
(115, 'Comunicación de estados de ánimo por medio de gestos.', 2, 6),
(116, 'Manifestación del conocimiento de su esquema corporal por medio de gestos.', 2, 6),
(117, 'Asociación de los movimientos corporales con las palabras que indican la dirección de su desplazamiento en el espacio: arriba, abajo, adelante, atrás, izquierda, derecha, entre otras.', 2, 6),
(118, 'Utilización de palabras cuya pronunciación imita el sonido de aquello que describe: “pum”, “clic”, “crash”, entre otras.', 2, 7),
(119, 'Utilización de palabras que imitan el sonido producido por animales: “miau”, “guau”, “pío, pío”, “cuac, cuac”, entre otras.', 2, 7),
(120, 'Identificación de signos, símbolos, íconos y señales del entorno inmediato.', 2, 8),
(121, 'Diferenciación entre ilustraciones, señales y texto escrito.', 2, 8),
(122, 'Sucesión cronológica o temporal de eventos en una historia: ordenamiento de gráficas o ilustraciones.', 2, 8),
(123, 'Asociación entre objetos del entorno y la o las palabras que los nombran.', 2, 9),
(124, 'Establecimiento de la relación símbolo escrito (grafema) y sonido (fonema)', 2, 9),
(125, 'Asociación del fonemas con las letras del alfabeto (por lo menos las vocales y 12 consonantes).', 2, 9),
(126, 'Asociación de fonemas con las letras del alfabeto (por lo menos las vocales y 20 consonantes).', 2, 9),
(127, 'Lectura de palabras, oraciones e historias.: con dominio de las vocales y por lo menos 6 consonantes.', 2, 9),
(128, 'Emisión de comentarios de gusto o disgusto sobre los textos que lee.', 2, 11),
(129, 'Elaboración de conclusiones tomando en cuenta los acontecimientos principales en la historia.', 2, 11),
(130, 'Lectura con diferentes propósitos: Como recreación (rimas, retahilas, poemas y cuentos),', 2, 12),
(131, 'Lectura con diferentes propósitos: para determinar la ubicación en el tiempo: reloj y calendarios - gregoriano y cholq-ij-.', 2, 12),
(132, 'Lectura con diferentes propósitos: con diferentes intenciones: compras, inventarios, almacenamiento.', 2, 12),
(133, 'Localización de información específica en diversos medios impresos: libros, revistas, periódicos, entre otros.', 2, 12),
(134, 'Aplicación de los principios de la caligrafía: posición del cuerpo, empuñadura del lápiz, posición del papel, trazo de letras, entre otros.', 2, 13),
(135, 'Observación de la direccionalidad de las letras al escribir (rasgos que ocupan el espacio principal, rasgos que se extienden hacia arriba y hacia abajo).', 2, 13),
(136, 'Observación de la linealidad al escribir (dirección izquierda - derecha).', 2, 13),
(137, 'Observación de los espacios entre las letras y las palabras, márgenes.	', 2, 13),
(138, 'Diferenciación entre letras mayúsculas y minúsculas.', 2, 14),
(139, 'Utilización de mayúscula inicial en las oraciones que escribe.', 2, 14),
(140, 'Identificación de las palabras que integran una oración.', 2, 15),
(141, 'Identificación oral de las sílabas que conforman palabras específicas.', 2, 15),
(142, 'Reconocimiento de sílabas directas, indirectas y cerradas en palabras conocidas.', 2, 15),
(143, 'Diferenciación entre sílabas directas y cerradas.', 2, 16),
(144, 'Indicación del número de sílabas que conforman una palabra.', 2, 16),
(145, 'Formación del plural de las palabras en español agregando “s” o “es”; en K ́iche ́”ab” o “ib”; en Q ́eqchi ́”eb”; entre otros.', 2, 16),
(146, 'Utilización de claves de contexto para identificar palabras nuevas.', 2, 17),
(147, 'Utilización pertinente de palabras que se forman a partir de palabras conocidas.', 2, 17),
(148, 'Utilización del vocabulario apropiado para describir características físicas (adjetivos), estados de ánimo, emociones, sensaciones y sentimientos.', 2, 17),
(149, 'Descripción de estados de ánimo utilizando las palabras apropiadas y la entonación precisa.', 2, 19),
(150, 'Incorporación, al vocabulario básico, de palabras que escucha en su interacción con otras personas y que son apropiadas a la situación.', 2, 19),
(151, 'Introducción de palabras nuevas en los textos que escribe.', 2, 19),
(152, 'Descripción de características de los personajes incluidos en sus dibujos.', 2, 20),
(153, 'Representación de ideas o contenido de un cuento por medio de dibujos en secuencia.', 2, 21),
(154, 'Selección de las palabras apropiadas según los dibujos elaborados alrededor de un tema.', 2, 21),
(155, 'Redacción individual de narraciones cortas, anéctotas y chistes acerca de eventos de la vida cotidiana.', 2, 21),
(156, 'Organización de ideas y respeto a las normas del idioma al elaborar narraciones cortas (dominio de, por lo menos, 20 consonantes y las vocales)', 2, 21),
(157, 'Formulación de párrafos sencillos que reflejen concordancia entre artículos, sustantivos y adjetivos (sin mencionar la terminología).', 2, 21),
(158, 'Expresión de ideas, sentimientos y emociones formando párrafos según las reglas del idioma.', 2, 22),
(159, 'Demostración de respeto hacia la persona que habla: posición del cuerpo, gestos (miradas, movimientos de la cara, señales con las manos, con los hombros, entre otros.), silencio en el momento en que se usa la palabra', 3, 1),
(159, 'Utilización de la información obtenida de diferentes medios en la formulación de preguntas y mostrar sus puntos de vista.', 2, 22),
(160, 'Práctica de normas de cortesía en conversaciones, diálogos y discusiones (esperar turno para hablar, hablar con el tono de voz apropiado, utilizar el vocabulario preciso, evitar el uso de sobrenombres, clasificadores personales, entre otros).', 3, 1),
(161, 'Demostración de respeto hacia gestos y prácticas comunicativas comunes en otros idiomas y culturas del país.', 3, 1),
(162, 'Seguimiento de instrucciones orales de hasta tres eventos.', 3, 2),
(163, 'Interpretación de rimas, cuentos, poemas, canciones, entre otros por medio de gestos y movimientos corporales.', 3, 2),
(164, 'Comparación de las características de los personajes que protagonizan los cuentos en las narraciones que escuchan.', 3, 2),
(165, 'Identificación de similitudes y diferencias entre los sonidos en el lenguaje que escucha.', 3, 3),
(166, 'Percepción auditiva de las sílabas que integran las palabras clave en los mensajes que escucha.', 3, 3),
(167, 'Reconocimiento de los fonemas como las unidades sonoras que conforman las palabras que escucha.', 3, 3),
(168, 'Identificación de palabras que riman.', 3, 3),
(169, 'Percepción auditiva del fonema inicial y del fonema final en las palabras que escucha.', 3, 3),
(170, 'Organización de la información necesaria dentro y fuera del aula.', 3, 4),
(171, 'Estructuración mental de la información solicitada antes de verbalizar su respuesta.', 3, 4),
(172, 'Formulación de preguntas para solicitar información y de respuestas a preguntas que le plantean. (Entrevista)', 3, 4),
(173, 'Utilización de argumentos pertinentes para fundamentar una idea ante diferentes opiniones.', 3, 4),
(174, 'Narración de experiencias propias o de otros y otras.', 3, 5),
(175, 'Narración de mensajes orales escuchados, resumiendo o aclarando la información.', 3, 5),
(176, 'Descripción de experiencias utilizando oraciones y pronunciando claramente.', 3, 5),
(177, 'Reproducción de juegos verbales: rimas, trabalenguas, retahilas', 3, 5),
(178, 'Reproducción oral de lo escuchado recitándolo o parafraseándolo.', 3, 5),
(179, 'Comunicación de estados de ánimo por medio de gestos.', 3, 6),
(180, 'Asociación de los movimientos corporales con las palabras que indican la dirección de su desplazamiento en el espacio: arriba, abajo, adelante, atrás, izquierda, derecha, entre otras.', 3, 6),
(181, 'Representación de cuentos, juegos e historietas por medio del lenguaje corporal, de la danza y del teatro.', 3, 6),
(182, 'Utilización de palabras que imitan el sonido producido por animales: “miau”, “guau”, “pío, pío”, “cuac, cuac”, entre otras.', 3, 7),
(183, 'Identificación de signos, símbolos, íconos y señales del entorno inmediato.', 3, 8),
(184, 'Diferenciación entre ilustraciones, señales y texto escrito.', 3, 8),
(185, 'Asociación de ilustraciones con textos cortos que las describen.', 3, 8),
(186, 'Identificación de las partes de un libro: portada, título, subtítulos, entre otros.', 3, 8),
(187, 'Sucesión cronológica o temporal de eventos en una historia: ordenamiento de gráficas o ilustraciones.', 3, 8),
(188, 'Predicción sobre el tema de una historia a partir de signos, símbolos o ilustraciones.', 3, 8),
(189, 'Asociación de fonemas con las letras del alfabeto (por lo menos las vocales y 20 consonantes).', 3, 9),
(190, 'Lectura de palabras, oraciones e historias.: con dominio de las vocales y por lo menos 12 consonantes.', 3, 9),
(191, 'Lectura de las palabras que nombran números de uno a diez en español y de uno a veinte en idiomas mayas.', 3, 9),
(192, 'Seguimiento de instrucciones escritas, con no más de tres acciones.', 3, 9),
(193, 'Identificación del problema y de las posibles soluciones en los textos que lee.', 3, 11),
(194, 'Emisión de comentarios de gusto o disgusto sobre los textos que lee.', 3, 11),
(195, 'Elaboración de conclusiones tomando en cuenta los acontecimientos principales en la historia.', 3, 11),
(196, 'Lectura de diversos tipos de texto.', 3, 12),
(197, 'Distinción entre un cuento y una noticia.', 3, 12),
(198, 'Lectura con diferentes propósitos: con diferentes intenciones: compras, inventarios, almacenamiento.', 3, 12),
(199, 'Localización de información específica en diversos medios impresos: libros, revistas, periódicos, entre otros.', 3, 12),
(200, 'Aplicación de los principios de la caligrafía: posición del cuerpo, empuñadura del lápiz, posición del papel, trazo de letras, entre otros.', 3, 13),
(201, 'Utilización de los elementos convencionales para escribir: lugar de las letras y palabras sobre el renglón.', 3, 13),
(202, 'Utilización de mayúscula inicial en las oraciones que escribe.', 3, 14),
(203, 'Uso del punto al final de las oraciones que escribe.', 3, 14),
(204, 'Formulación de oraciones que reflejen concordancia de género y de número según la lengua materna.', 3, 14),
(205, 'Formulación de párrafos que reflejen orden lógico de las ideas: inicio, desarrollo y desenlace.', 3, 14),
(206, 'Separación oral de palabras en sílabas.', 3, 15),
(207, 'Reconocimiento de sílabas directas, indirectas y cerradas en palabras conocidas.', 3, 15),
(208, 'Diferenciación entre sílabas directas y cerradas.', 3, 15),
(209, 'Formación de palabras nuevas tomando como referencia palabras conocidas', 3, 16),
(210, 'Formación de palabras nuevas uniendo sílabas de palabras conocidas.', 3, 16),
(211, 'Formación del plural de las palabras en español agregando “s” o “es”; en K ́iche ́”ab” o “ib”; en Q ́eqchi ́”eb”; entre otros.', 3, 16),
(212, 'Utilización pertinente de palabras que se forman a partir de palabras conocidas.', 3, 17),
(213, 'Identificación de palabras con significado igual o parecido (sinónimos).', 3, 17),
(214, 'Interpretación del significado de palabras desconocidas asociándolas con el vocabulario que posee.', 3, 18),
(215, 'Uso del contexto para identificar el significado de palabras nuevas.', 3, 18),
(216, 'Utilización de vocabulario y expresiones propias de su lengua materna.', 3, 18),
(217, 'Incorporación, al vocabulario básico, de palabras que escucha en su interacción con otras personas y que son apropiadas a la situación.', 3, 19),
(218, 'Introducción de palabras nuevas en los textos que escribe.', 3, 19),
(219, 'Utilización del vocabulario adecuado según el tipo de texto que escribe.', 3, 19),
(220, 'Elaboración de imágenes para ilustrar textos que redacta.', 3, 19),
(221, 'Redacción individual de narraciones cortas, anéctotas y chistes acerca de eventos de la vida cotidiana.', 3, 19),
(222, 'Organización de ideas y respeto a las normas del idioma al elaborar narraciones cortas (dominio de, por lo menos, 20 consonantes y las vocales).', 3, 19),
(223, 'Formulación de párrafos sencillos que reflejen concordancia entre artículos, sustantivos y adjetivos (sin mencionar la terminología).', 3, 19),
(224, 'Expresión de ideas, sentimientos y emociones formando párrafos según las reglas del idioma.', 3, 22),
(225, 'Utilización de la información obtenida de diferentes medios en la formulación de preguntas y mostrar sus puntos de vista.', 3, 22),
(226, 'Revisión de textos que produce para corregirlos y asegurar que puedan ser comprendidos por otras personas.', 3, 22),
(227, 'Utilización de la biblioteca del aula en la documentación de sus trabajos.', 3, 23),
(228, 'Demostración de respeto hacia la persona que habla: posición del cuerpo, gestos (miradas, movimientos de la cara, señales con las manos, con los hombros, entre otros.), silencio en el momento en que se usa la palabra.', 4, 1),
(229, 'Práctica de normas de cortesía en conversaciones, diálogos y discusiones (esperar turno para hablar, hablar con el tono de voz apropiado, utilizar el vocabulario preciso, evitar el uso de sobrenombres, clasificadores personales, entre otros).', 4, 1),
(230, 'Demostración de respeto hacia gestos y prácticas comunicativas comunes en otros idiomas y culturas del país.', 4, 1),
(231, 'Seguimiento de instrucciones orales de hasta tres eventos.', 4, 2),
(232, 'Expresión de opiniones sobre el texto que se lee o escucha (Comprensión crítica).', 4, 2),
(233, 'Identificación de similitudes y diferencias entre los sonidos en el lenguaje que escucha.', 4, 3),
(234, 'Percepción auditiva de las sílabas que integran las palabras clave en los mensajes que escucha.', 4, 3),
(235, 'Estructuración mental de la información solicitada antes de verbalizar su respuesta.', 4, 4),
(236, 'Formulación de preguntas para solicitar información y de respuestas a preguntas que le plantean. (Entrevista)', 4, 4),
(237, 'Emisión de opiniones personales al evaluar mensajes escuchados', 4, 4),
(238, 'Iniciación y desarrollo de conversaciones dentro y fuera del aula.', 4, 4),
(239, 'Utilización de argumentos pertinentes para fundamentar una idea ante diferentes opiniones.', 4, 4),
(240, 'Narración de experiencias propias o de otros y otras.', 4, 5),
(241, 'Narración de cuentos, leyendas, poemas y otros tipos de textos escuchados.', 4, 5),
(242, 'Narración de mensajes orales escuchados, resumiendo o aclarando la información.', 4, 5),
(243, 'Descripción de experiencias utilizando oraciones y pronunciando claramente.', 4, 5),
(244, 'Reproducción de juegos verbales: rimas, trabalenguas, retahilas.', 4, 5),
(245, 'Reproducción oral de lo escuchado recitándolo o parafraseándolo.', 4, 5),
(246, 'Comunicación de estados de ánimo por medio de gestos.', 4, 6),
(247, 'Asociación de los movimientos corporales con las palabras que indican la dirección de su desplazamiento en el espacio: arriba, abajo, adelante, atrás, izquierda, derecha, entre otras.', 4, 6),
(248, 'Representación de cuentos, juegos e historietas por medio del lenguaje corporal, de la danza y del teatro.', 4, 6),
(249, 'Utilización de palabras que imitan el sonido producido por animales: “miau”, “guau”, “pío, pío”, “cuac, cuac”, entre otras', 4, 7),
(250, 'Utilización de palabras que imitan el sonido producido por instrumentos musicales: “chin”, “plin”, “pom, pom, pom”, entre otros.', 4, 7),
(251, 'Identificación de signos, símbolos, íconos y señales del entorno inmediato.', 4, 8),
(252, 'Asociación de ilustraciones con textos cortos que las describen.', 4, 8),
(253, 'Identificación de las partes de un libro: portada, título, subtítulos, entre otros.', 4, 8),
(254, 'Sucesión cronológica o temporal de eventos en una historia: ordenamiento de gráficas o ilustraciones.', 4, 8),
(255, 'Predicción sobre el tema de una historia a partir de signos, símbolos o ilustraciones.', 4, 8),
(256, 'Asociación de fonemas con las letras del alfabeto (por lo menos las vocales y 20 consonantes).', 4, 9),
(257, 'Lectura de palabras, oraciones e historias: con dominio de las vocales y por lo menos 12 consonantes.', 4, 9),
(258, 'Lectura de las palabras que nombran números de uno a diez en español y de uno a veinte en idiomas mayas.', 4, 9),
(259, 'Formulación de preguntas y elaboración de respuestas a nivel literal sobre la lectura.', 4, 9),
(260, 'Seguimiento de instrucciones escritas, con no más de tres acciones.', 4, 9),
(261, 'Identificación del problema y de las posibles soluciones en los textos que lee.', 4, 11),
(262, 'Emisión de comentarios de gusto o disgusto sobre los textos que lee.', 4, 11),
(263, 'Elaboración de conclusiones tomando en cuenta los acontecimientos principales en la historia.', 4, 11),
(264, 'Lectura de diversos tipos de texto.', 4, 12),
(265, 'Distinción entre un cuento y una noticia.', 4, 12),
(266, 'Diferenciación entre la estructura de los cuentos y las cartas.', 4, 12),
(267, 'Lectura con diferentes propósitos: con diferentes intenciones: compras, inventarios, almacenamiento.', 4, 12),
(268, 'Localización de información específica en diversos medios impresos: libros, revistas, periódicos, entre otros.', 4, 12),
(269, 'Aplicación de los principios de la caligrafía: posición del cuerpo, empuñadura del lápiz, posición del papel, trazo de letras, entre otros.', 4, 13),
(270, 'Utilización de los elementos convencionales para escribir: lugar de las letras y palabras sobre el renglón.', 4, 13),
(271, 'Utilización de mayúscula inicial en las oraciones que escribe.', 4, 14),
(272, 'Uso del punto al final de las oraciones que escribe.', 4, 14),
(273, 'Formulación de oraciones que reflejen concordancia de género y de número según la lengua materna.', 4, 14),
(274, 'Formulación de párrafos que reflejen orden lógico de las ideas: inicio, desarrollo y desenlace.', 4, 14),
(275, 'Separación oral de palabras en sílabas.', 4, 15),
(276, 'Reconocimiento de sílabas directas, indirectas y cerradas en palabras conocidas.', 4, 15),
(277, 'Formación de palabras nuevas tomando como referencia palabras conocidas', 4, 16),
(278, 'Formación de palabras nuevas uniendo sílabas de palabras conocidas.', 4, 16),
(279, 'Formación de familias de palabras agregando a la raíz el afijo que forma el diminutivo y el aumentativo de palabras conocidas (sufijo en español; prefijos en idiomas mayas).', 4, 16),
(280, 'Utilización pertinente de palabras que se forman a partir de palabras conocidas.', 4, 17),
(281, 'Análisis oral (deletreo) de palabras cuyo significado desconoce.', 4, 17),
(282, 'Identificación de palabras que nombran (sustantivos: comunes y propios).', 4, 17),
(283, 'Identificación de palabras con significado opuesto (antónimos).', 4, 17),
(284, 'Interpretación del significado de palabras desconocidas asociándolas con el vocabulario que posee.', 4, 18),
(285, 'Interpretación del significado de palabras desconocidas asociándolas con el vocabulario que posee.', 4, 18),
(286, 'Interpretación del significado de palabras desconocidas asociándolas con el vocabulario que posee.', 4, 18),
(287, 'Incorporación, al vocabulario básico, de palabras que escucha en su interacción con otras personas y que son apropiadas a la situación.', 4, 19),
(288, 'Introducción de palabras nuevas en los textos que escribe.', 4, 19),
(289, 'Redacción individual de narraciones cortas, anéctotas y chistes acerca de eventos de la vida cotidiana.', 4, 21),
(290, 'Organización de ideas y respeto a las normas del idioma al elaborar narraciones cortas (dominio de, por lo menos, 20 consonantes y las vocales)', 4, 21),
(291, 'Formulación de párrafos sencillos que reflejen concordancia entre artículos, sustantivos y adjetivos (sin mencionar la terminología).', 4, 21),
(292, 'Expresión de ideas, sentimientos y emociones formando párrafos según las reglas del idioma.', 4, 22),
(293, 'Utilización de la información obtenida de diferentes medios en la formulación de preguntas y mostrar sus puntos de vista.', 4, 22),
(294, 'Revisión de textos que produce para corregirlos y asegurar que puedan ser comprendidos por otras personas.', 4, 22),
(295, 'Utilización de la biblioteca del aula en la documentación de sus trabajos.', 4, 23),
(296, 'Selección de los recursos existentes y de la información pertinente para estructurar el periódico mural.', 4, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nombreCurso` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nivel` int(255) NOT NULL,
  `grado` int(255) NOT NULL,
  `seccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `idDocente` int(255) NOT NULL,
  `portada` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `notaZona` int(255) NOT NULL,
  `notaExamen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadorlogro`
--

CREATE TABLE `indicadorlogro` (
  `idIndicadorLogro` int(11) NOT NULL,
  `indicadorLogro` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `competencia_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `indicadorlogro`
--

INSERT INTO `indicadorlogro` (`idIndicadorLogro`, `indicadorLogro`, `competencia_fk`) VALUES
(1, 'Demuestra respeto hacia las prácticas comunicativas de otras personas y culturas.', 1),
(2, 'Demuestra comprensión de lo que escucha.', 1),
(3, 'Identifica los sonidos del habla y percibe sus semejanzas y diferencias en los mensajes que escucha. (Conciencia fonológica).', 1),
(4, 'Utiliza diferentes estrategias para expresarse.', 2),
(5, 'Narra o describe oralmente, situaciones reales o ficticias.', 2),
(6, 'Utiliza gestos y movimientos corporales como apoyo en su expresión oral.', 3),
(7, 'Utiliza sonidos onomatopéyicos para reforzar sus mensajes.', 3),
(8, 'Interpreta el significado de imágenes, signos, símbolos y señales del entorno y los relaciona con textos escritos.', 4),
(9, 'Lee textos de diferente contenido demostrando comprensión de los mismos a un nivel literal.', 4),
(10, 'Lee textos de diferente.', 4),
(11, 'Emite opinión con respecto al contenido de los textos que lee y analiza.', 4),
(12, 'Lee con un propósito definido: recrearse u obtener información.', 4),
(13, 'Aplica los principios de la caligrafía al expresarse por escrito.', 5),
(14, 'Utiliza principios de gramática al expresarse por escrito.', 5),
(15, 'Identifica las sílabas que conforman las palabras y percibe sus semejanzas y diferencias. (Conciencia silábica).', 6),
(16, 'Forma nuevas palabras con base en la estructura del idioma.', 6),
(17, 'Demuestra comprensión del vocabulario que escucha.', 7),
(18, 'Manifiesta interés por enriquecer su vocabulario con palabras y expresiones propias de su lengua materna.', 7),
(19, 'Utiliza el vocabulario adquirido en diferentes situaciones al interactuar con otras personas.', 7),
(20, 'Expresa por escrito su percepción de las características de personas, objetos, animales y plantas.', 8),
(21, 'Narra experiencias personales o elementos de lecturas realizadas.', 8),
(22, 'Utiliza elementos del lenguaje oral y escrito en la reafirmación de su aprendizaje.', 9),
(23, 'Utiliza elementos del lenguaje oral y escrito en el manejo de la información que proporcionan los medios de comunicación.', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leccion`
--

CREATE TABLE `leccion` (
  `idLeccion` int(255) NOT NULL,
  `nombreLeccion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `idCurso` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `leccion`
--

INSERT INTO `leccion` (`idLeccion`, `nombreLeccion`, `idCurso`) VALUES
(9, 'IntroducciÃ³n a la computaciÃ³n', 'compu1'),
(10, 'ComputaciÃ³n uso del Mouse', 'compu1'),
(11, 'introducciÃ³n a las ciencias naturales', 'ciencias'),
(12, 'Cuerpo Humano', 'ciencias'),
(13, 'La cÃ©lula', 'ciencias'),
(14, 'Las molÃ©culas', 'ciencias'),
(15, 'IntroducciÃ³n a los algoritmos', 'Analis'),
(16, 'IntroducciÃ³n al desarrollo web', 'desa1'),
(17, 'software', 'Analis'),
(18, 'Introduccion al Lenguaje', 'leng1'),
(19, 'ProgramaciÃ³n Orientada a Objetos (POO)', 'pro1'),
(20, 'AnÃ¡lisis de Procesos ', 'Analis'),
(21, 'Leccion 1', 'produ1'),
(22, 'Leccion 1', 'mat10'),
(23, 'Bimestre 1', 'mat10'),
(24, 'Semana 1', 'prog11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idPregunta` int(255) NOT NULL,
  `pregunta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta` int(255) NOT NULL,
  `opcion1` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `opcion2` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `opcion3` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `opcion4` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `opcion5` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `punteo` float NOT NULL,
  `idPrueba` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idPregunta`, `pregunta`, `respuesta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `opcion5`, `punteo`, `idPrueba`) VALUES
(20, 'Â¿QuÃ© es el amor?', 1, 'ExpresiÃ³n humana que demuestra afecto hacia otro.', 'no lo se', '', '', '', 20, 18),
(21, 'Â¿QuÃ© es la ciencia?', 1, 'es toda aquello que se dedica a la bÃºsqueda del porque de las cosas', 'no lo se', '', '', '', 1, 19),
(22, 'Â¿QuÃ© es el lenguaje?', 1, 'asdasdads', 'asdasd', 'asdasd', '', '', 10, 20),
(23, 'Â¿que es?', 1, 'no lo se', 'yo tampoco', '', '', '', 20, 21),
(24, 'Â¿De quÃ© se alimentan los koalas?', 1, 'Los koalas son animales herbÃ­voros que tienen una dieta poco variada. Se alimentan de hojas de eucalipto.', 'no lo se', 'popo', '', '', 10, 22),
(25, 'Â¿QuÃ© diferencia al hierro del acero?', 1, 'Principalmente, el hierro es un elemento mientras que el acero es una aleaciÃ³n o combinaciÃ³n de hierro con carbono. aunque tambiÃ©n puede contener otros metales en pequeÃ±a proporciÃ³n, como nÃ­quel, manganeso o cromo.', 'Praga', 'Budapest', '', '', 10, 22),
(26, 'Â¿QuiÃ©n inventÃ³ el telescopio?', 1, 'La invenciÃ³n del telescopio se atribuye al holandÃ©s Hans Lippershey, aunque investigaciones recientes seÃ±alan que fue Juan Roget.', 'El cuarto ventrÃ­culo', 'Deriva de la vesÃ­cula terciaria', '', '', 10, 22),
(27, 'asdasdasd', 1, 'asdasd', 'asdasd', 'asd', '', '', 1, 23),
(28, 'Â¿que es la computadora?', 1, 'Aparato inteligente', 'no se ', 'nose nada', '', '', 10, 24),
(29, 'asd', 2, 'adasd', 'ASD', 'asdasd', 'asd', '', 15, 25),
(30, 'asdasdasdasd', 1, 'asdasd', 'asdasdad', 'asdasdads', '', '', 1, 28),
(31, 'asdasda', 1, 'adsasd', 'asdasdad', 'asdasdads', 'asd', '', 20, 29),
(32, 'popo', 1, 'chis', 'caca', 'miercoles', '', '', 5, 30),
(33, 'orina', 1, 'bish', 'miados', 'araÃ±a', '', '', 5, 30),
(34, 'popo', 1, 'caca', 'estiercol', 'miercoles', '', '', 4, 32),
(35, 'caca', 1, 'caca', 'aaa', 'bbbb', '', '', 1, 33),
(36, 'Pregunta 1', 2, 'asdasdasd', 'asdasd', 'asdasd', '', '', 5, 34),
(37, 'Pregunta 2', 2, 'asdasda', 'asdasd', 'asdasd', '', '', 5, 34),
(38, 'Â¿porque eres gay?', 1, 'lol', 'lol1', 'lol2', '', '', 5, 35),
(39, 'Â¿para que usas sueter?', 2, 'porque si', 'no lo se ', 'ya que', '', '', 5, 35),
(40, 'asdasd', 1, 'asd', 'asd', 'asd', '', '', 1.5, 38),
(41, 'asdasdasd', 2, 'asd', 'asd', 'ad', '', '', 1.5, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `grado` int(11) DEFAULT NULL,
  `seccion` varchar(20) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `tipoUsuario` int(11) DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `fotoPerfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tipo usuario\n1= alumno\n2=maestro\n3=coordinador';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `grado`, `seccion`, `usuario`, `password`, `tipoUsuario`, `correo`, `fotoPerfil`) VALUES
(1, 'jose manuel', 'lopez gaviria', 1, 'a', 'josem', '1232', 1, 'jose@gmail.com', 'imgPerfil/1/nino-perfil.png'),
(3, 'Martina', 'LÃ³pez', 2, 'b', 'martin', 'martin', 1, 'martin@gmail.com', 'imgPerfil/3/nino-perfil.png'),
(4, 'Marlon', 'Lopez', 0, NULL, 'marlon', 'marlon', 2, 'profe@gmail.com', ''),
(5, 'Meme', 'Morales', 3, 'a', 'meme', 'meme', 1, 'meme@edutic.net', ''),
(6, 'Pepe', 'Rejillos', 4, 'a', 'pepe', 'pepe', 1, 'pepe@eduticonline.net', ''),
(7, 'Jose Manuel', 'Roca Lopez', 5, 'a', 'jose', 'jose', 1, 'jose@manuel.edutic.net', ''),
(8, 'Marco Martin', 'Lemoni Mal', 6, 'a', 'marco', 'marco', 1, 'marco@gmail.com', ''),
(9, 'Estuardo ', 'Alvarado', 7, 'a', 'estuar', 'estuar', 1, NULL, ''),
(10, 'Antonio Roberto', 'Cadenas Gabiria', 8, 'a', 'antonio', 'antonio', 1, 'antonio@edutic.net', ''),
(11, 'Hercules Odonis', 'Zues Alarcon', 9, 'b', 'hercules', 'hercules', 1, 'hercules@edutic.net', ''),
(12, 'Jason Rony', 'Melendez Garcia', 10, 'a', 'jason', 'jason', 1, 'jason@edutic.net', ''),
(13, 'Jhon Fernando', 'Dondiego Gaviria', 11, 'a', 'jon', 'jon', 1, 'jhon@edutic.net', ''),
(14, 'Lubia ', 'Velazques', 0, NULL, 'lubia', 'lubia', 3, 'lubiav@gmail.com', ''),
(16, 'Pablo', 'Alboran', 0, NULL, 'pablo', 'pablo', 4, 'pablo@gmail.com', ''),
(17, 'estuardo', 'alvarado', NULL, NULL, 'estuardo', 'estuardo', 2, 'estuard.gonza@hotmail.es', 'imgPerfil/17/profile.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadprueba`
--
ALTER TABLE `actividadprueba`
  ADD PRIMARY KEY (`idPrueba`);

--
-- Indices de la tabla `actividadtare`
--
ALTER TABLE `actividadtare`
  ADD PRIMARY KEY (`idTarea`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `atomobullying`
--
ALTER TABLE `atomobullying`
  ADD PRIMARY KEY (`idBullyng`);

--
-- Indices de la tabla `atomocircular`
--
ALTER TABLE `atomocircular`
  ADD PRIMARY KEY (`idCircular`);

--
-- Indices de la tabla `atomodrive`
--
ALTER TABLE `atomodrive`
  ADD PRIMARY KEY (`idArchivo`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `atomodrivecompartir`
--
ALTER TABLE `atomodrivecompartir`
  ADD PRIMARY KEY (`idCompartir`),
  ADD KEY `idArchivo` (`idArchivo`,`idUsuarioPropietario`,`idUsuarioCompartir`),
  ADD KEY `atomodrivecompartir_ibfk_1` (`idUsuarioPropietario`),
  ADD KEY `idUsuarioCompartir` (`idUsuarioCompartir`);

--
-- Indices de la tabla `atomolectorvelocidad`
--
ALTER TABLE `atomolectorvelocidad`
  ADD PRIMARY KEY (`idRegistroVelocidad`);

--
-- Indices de la tabla `compentencia`
--
ALTER TABLE `compentencia`
  ADD PRIMARY KEY (`idcompentencia`,`area_fk`),
  ADD KEY `fk_compentencia_area1_idx` (`area_fk`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`idContenido`,`indicadorLogro_fk`),
  ADD KEY `fk_contenido_indicadorLogro_idx` (`indicadorLogro_fk`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `indicadorlogro`
--
ALTER TABLE `indicadorlogro`
  ADD PRIMARY KEY (`idIndicadorLogro`,`competencia_fk`),
  ADD KEY `fk_indicadorLogro_compentencia1_idx` (`competencia_fk`);

--
-- Indices de la tabla `leccion`
--
ALTER TABLE `leccion`
  ADD PRIMARY KEY (`idLeccion`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividadprueba`
--
ALTER TABLE `actividadprueba`
  MODIFY `idPrueba` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `actividadtare`
--
ALTER TABLE `actividadtare`
  MODIFY `idTarea` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `atomobullying`
--
ALTER TABLE `atomobullying`
  MODIFY `idBullyng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `atomocircular`
--
ALTER TABLE `atomocircular`
  MODIFY `idCircular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `atomodrive`
--
ALTER TABLE `atomodrive`
  MODIFY `idArchivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `atomodrivecompartir`
--
ALTER TABLE `atomodrivecompartir`
  MODIFY `idCompartir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `atomolectorvelocidad`
--
ALTER TABLE `atomolectorvelocidad`
  MODIFY `idRegistroVelocidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `compentencia`
--
ALTER TABLE `compentencia`
  MODIFY `idcompentencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `idContenido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT de la tabla `indicadorlogro`
--
ALTER TABLE `indicadorlogro`
  MODIFY `idIndicadorLogro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `leccion`
--
ALTER TABLE `leccion`
  MODIFY `idLeccion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idPregunta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atomodrive`
--
ALTER TABLE `atomodrive`
  ADD CONSTRAINT `atomodrive_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `atomodrivecompartir`
--
ALTER TABLE `atomodrivecompartir`
  ADD CONSTRAINT `atomodrivecompartir_ibfk_1` FOREIGN KEY (`idUsuarioPropietario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `atomodrivecompartir_ibfk_2` FOREIGN KEY (`idArchivo`) REFERENCES `atomodrive` (`idArchivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compentencia`
--
ALTER TABLE `compentencia`
  ADD CONSTRAINT `fk_compentencia_area1` FOREIGN KEY (`area_fk`) REFERENCES `area` (`idArea`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD CONSTRAINT `fk_contenido_indicadorLogro` FOREIGN KEY (`indicadorLogro_fk`) REFERENCES `indicadorlogro` (`idIndicadorLogro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `indicadorlogro`
--
ALTER TABLE `indicadorlogro`
  ADD CONSTRAINT `fk_indicadorLogro_compentencia1` FOREIGN KEY (`competencia_fk`) REFERENCES `compentencia` (`idcompentencia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
