-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2019 a las 07:50:41
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `aprendizajepreescolar`
--

CREATE TABLE `aprendizajepreescolar` (
  `idAprendizaje` int(11) NOT NULL,
  `objetoAprendizaje` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `rutaImagen` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `audios` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `rutaRecursos` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidadFicheros` int(11) NOT NULL,
  `grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `aprendizajepreescolar`
--

INSERT INTO `aprendizajepreescolar` (`idAprendizaje`, `objetoAprendizaje`, `descripcion`, `rutaImagen`, `audios`, `rutaRecursos`, `cantidadFicheros`, `grado`) VALUES
(1, 'a', 'vocal', '../1in/vocales/a/cards/', '../1in/vocales/a/audios/', '', 10, 13),
(2, 'e', 'vocal', '../1in/vocales/e/cards/', '', '', 10, 13),
(3, 'i', 'vocal', '../1in/vocales/i/cards/', '', '', 10, 13),
(4, 'o', 'vocal', '../1in/vocales/o/cards/', '', '', 10, 13),
(5, 'u', 'vocal', '../1in/vocales/u/cards/', '', '', 10, 13);

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
(1, 'Agresión Verbal', 'Martin González', '1ero primaria b', 'José Manuel', '2do primaria sección a', 'le pego muy fuerte', '13/12/2018', '09:45:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atomocircular`
--

CREATE TABLE `atomocircular` (
  `idCircular` int(11) NOT NULL,
  `receptor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tituloCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpoCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaCircular` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `atomocircular`
--

INSERT INTO `atomocircular` (`idCircular`, `receptor`, `tituloCircular`, `cuerpoCircular`, `fechaCircular`, `horaCircular`) VALUES
(1, '3', 'Mensualidad', 'se les recuerda que el dia de maÃ±ana es dia 10 y que es ultimo dia de pago :)', '18/12/2018', '01:14:55'),
(2, '1', 'uniformes', 'se les informa a los alumnos que no tienen que venir el dÃ­a de maÃ±ana de uniforme de fÃ­sica no habrÃ¡ fÃ­sica', '18/12/2018', '01:20:34'),
(3, '1', 'uniformes', 'se les informa a los alumnos que no tienen que venir el dÃ­a de maÃ±ana de uniforme de fÃ­sica no habrÃ¡ fÃ­sica', '18/12/2018', '01:22:32'),
(5, '1', 'Mensualidad', 'Recordatorio hoy es el ultimo dia para poder realizar el pago de la mensualidad', '12/05/2019', '11:08:55'),
(6, '4', 'DIa de la madre', 'El día de mañana todos cordialmente invitados a la celebración de del día de las madres', '12/05/2019', '11:20:18');

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
-- Estructura de tabla para la tabla `atomolector`
--

CREATE TABLE `atomolector` (
  `idLectura` int(11) NOT NULL,
  `nombreLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `edadLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rutaPasta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rutaLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `grado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipoLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `cantidadFicheros` int(11) NOT NULL,
  `audio` longtext COLLATE utf8_spanish_ci NOT NULL,
  `semana` int(11) DEFAULT NULL,
  `noLecturaDiaria` int(11) DEFAULT NULL,
  `gamificacion` longtext COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `atomolector`
--

INSERT INTO `atomolector` (`idLectura`, `nombreLectura`, `descripcion`, `edadLectura`, `rutaPasta`, `rutaLectura`, `grado`, `tipoLectura`, `cantidadFicheros`, `audio`, `semana`, `noLecturaDiaria`, `gamificacion`) VALUES
(1, 'El cascabel del gato', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect1', '1', 'Continuo', 7, '', NULL, 0, ''),
(2, 'El conejo Perico', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect2', '1', 'Continuo', 6, '', NULL, 0, ''),
(3, 'La ballena feliz', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect3', '1', 'Continuo', 4, '', NULL, 0, ''),
(4, 'El león y el delfín', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect4', '1', 'Continuo', 4, '', NULL, 0, ''),
(5, 'El león y el elefante', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect5', '1', 'Continuo', 5, '', NULL, 0, ''),
(6, 'La tortuga y el águila', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect6', '1', 'Continuo', 5, '', NULL, 0, ''),
(7, 'Las dos culebras', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect7', '1', 'Continuo', 7, '', NULL, 0, ''),
(8, 'Los beneficios de los abrazos', 'Infografía Emocional', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect8', '1', 'Discontinua', 1, '', NULL, 0, ''),
(9, 'El universo', 'Infografía Científica', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect9', '1', 'Discontinua', 2, '', NULL, 0, ''),
(10, 'Navega y aprende con seguridad', 'Infografía Tecnológica', '5,6,7 años ', 'atomLector/pasta/primaria', 'atomLector/1p/lect10', '1', 'Discuntinua', 1, '', NULL, 0, ''),
(11, 'Ratón de ciudad y ratón de campo', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect1', '2', 'Continuo', 6, '', NULL, 0, ''),
(12, 'Laura cambia de ciudad', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect2', '2', 'Continuo', 6, '', NULL, 0, ''),
(13, 'Los dos amigos', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect3', '2', 'Continuo', 5, '', NULL, 0, ''),
(14, 'El lobo y el perro', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect4', '2', 'Continuo', 5, '', NULL, 0, ''),
(15, 'La golondrina y los pájaros', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect5', '2', 'Continuo', 5, '', NULL, 0, ''),
(16, 'Pedro y el lobo', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect6', '2', 'Continuo', 5, '', NULL, 0, ''),
(17, 'La mochila', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect7', '2', 'Continuo', 7, '', NULL, 0, ''),
(18, '10 Libros clásicos para niños', 'Infografía ', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect8', '2', 'Doscontinua', 2, '', NULL, 0, ''),
(19, 'Terapeuta ocupacional', 'Infografía Emocional', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect9', '2', 'Doscontinua', 1, '', NULL, 0, ''),
(20, 'El síndrome de rett', 'Infografía Cientifica', '6,7,8 años', 'atomLector/pasta/primaria', 'atomLector/2p/lect10', '2', 'Doscontinua', 1, '', NULL, 0, ''),
(21, 'La desobediente tortuguita Ruby', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect1', '3', 'Continua', 6, '', NULL, 0, ''),
(22, 'El oro y las ratas', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect2', '3', 'Continua', 5, '', NULL, 0, ''),
(23, 'La tortuga Uga', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect3', '3', 'Continua', 5, '', NULL, 0, ''),
(24, 'Caperucita Roja', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect4', '3', 'Continua', 6, '', NULL, 0, ''),
(25, 'El flautista de Hamelin', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect5', '3', 'Continua', 7, '', NULL, 0, ''),
(26, 'El gato con botas', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect6', '3', 'Continua', 6, '', NULL, 0, ''),
(27, 'La abuela', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect7', '3', 'Continua', 7, '', NULL, 0, ''),
(28, 'Día mundial del sueño', 'Infografía ', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect8', '3', 'Doscontinua', 1, '', NULL, 0, ''),
(29, 'Árboles Urbanos', 'Infografía ', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect9', '3', 'Doscontinua', 1, '', NULL, 0, ''),
(30, 'El juguete', 'Infografía ', '7,9 años', 'atomLector/pasta/primaria', 'atomLector/3p/lect10', '3', 'Doscontinua', 1, '', NULL, 0, ''),
(31, 'Merlín el mago', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect1', '4', 'Continua', 6, '', NULL, 0, ''),
(32, 'La vieja del bosque', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect2', '4', 'Continua', 9, '', NULL, 0, ''),
(33, 'El príncipe', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect3', '4', 'Continua', 9, '', NULL, 0, ''),
(34, 'Hansel y Gretel', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect4', '4', 'Continua', 9, '', NULL, 0, ''),
(35, 'Juan sin miedo', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect5', '4', 'Continua', 8, '', NULL, 0, ''),
(36, 'Peter Pan', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect6', '4', 'Continua', 8, '', NULL, 0, ''),
(37, 'Chácharas de niño', 'Cuento Infantil', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect7', '4', 'Continua', 8, '', NULL, 0, ''),
(38, 'Metodología', 'Infografía ', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect8', '4', 'Doscontinua', 1, '', NULL, 0, ''),
(39, 'Incidencia de pobreza', 'Infografía ', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect9', '4', 'Doscontinua', 1, '', NULL, 0, ''),
(40, 'Propiedades de la naranja', 'Infografía ', '9,10 años', 'atomLector/pasta/primaria', 'atomLector/4p/lect10', '4', 'Doscontinua', 1, '', NULL, 0, ''),
(41, 'Blanca Nieves', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect1', '5', 'Continua', 6, '', NULL, 0, ''),
(42, 'La casita de chocolate', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect2', '5', 'Continua', 7, '', NULL, 0, ''),
(43, 'El patito feo', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect3', '5', 'Continua', 7, '', NULL, 0, ''),
(44, 'El dragón de las palabras', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect4', '5', 'Continua', 7, '', NULL, 0, ''),
(45, 'Yayuca y la estrella de navidad', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect5', '5', 'Continua', 9, '', NULL, 0, ''),
(46, 'Lupita la mariquita', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect6', '5', 'Continua', 5, '', NULL, 0, ''),
(47, 'Expediente hormiga', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect7', '5', 'Continua', 6, '', NULL, 0, ''),
(48, 'Descripción Nutritiva', 'Infografía ', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect8', '5', 'Doscontinua', 1, '', NULL, 0, ''),
(49, '¿Cómo inferir el título de un texto?', 'Infografía ', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect9', '5', 'Doscontinua', 1, '', NULL, 0, ''),
(50, '¿Quiénes se deben vacunar contra la gripe?', 'Infografía ', '10, 11 años', 'atomLector/pasta/primaria', 'atomLector/5p/lect10', '5', 'Doscontinua', 1, '', NULL, 0, ''),
(51, 'El caracol y el rosal', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect1', '6', 'Continua', 8, '', NULL, 0, ''),
(52, 'Sinbad el marino', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect2', '6', 'Continua', 7, '', NULL, 0, ''),
(53, 'El fénix', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect3', '6', 'Continua', 6, '', NULL, 0, ''),
(54, 'El príncipe malvado', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect4', '6', 'Continua', 9, '', NULL, 0, ''),
(55, 'A gritos con los mosquitos', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect5', '6', 'Continua', 6, '', NULL, 0, ''),
(56, 'Un super poder muy especial', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect6', '6', 'Continua', 7, '', NULL, 0, ''),
(57, 'Quebrantarías, El rompe Familia', 'Cuento Infantil', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect7', '6', 'Continua', 9, '', NULL, 0, ''),
(58, 'La seguridad de tus hijos en la red', 'Infografía ', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect8', '6', 'Doscontinua', 1, '', NULL, 0, ''),
(59, '10 Beneficios de las artes manuales en los niños', 'Infografía ', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect9', '6', 'Doscontinua', 2, '', NULL, 0, ''),
(60, '¿Cómo enseñar a ahorrar agua a los niños?', 'Infografía ', '11,12 años', 'atomLector/pasta/primaria', 'atomLector/6p/lect10', '6', 'Doscontinua', 1, '', NULL, 0, ''),
(61, 'Gazapito quiere comer torta', 'Lectura Cuento Fantasía', '12,13 años', 'atomLector/pasta/basicos', 'atomLector/c1s/lect1', '7', 'Continua', 11, '', NULL, 0, ''),
(62, 'Platón el banquete', 'Lectura no literario', '12,13 años', 'atomLector/pasta/basicos', 'atomLector/c1s/lect2', '7', 'Continua', 11, '', NULL, 0, ''),
(63, 'Orgullo y prejucio (Jane Austen)', 'Novela', '12,13 años', 'atomLector/pasta/basicos', 'atomLector/c1s/lect3', '7', 'Continua', 11, '', NULL, 0, ''),
(64, 'Secretos del rey Maón', 'Lectura Cuento Fantasía', '13,14 años', 'atomLector/pasta/basicos', 'atomLector/c2s/lect1', '8', 'Continua', 11, '', NULL, 0, ''),
(65, 'Ars Armandi Ovidio', 'Lectura no literario', '13,14 años', 'atomLector/pasta/basicos', 'atomLector/c2s/lect2', '8', 'Continua', 12, '', NULL, 0, ''),
(66, 'El señor de las moscas', 'Novela', '13,14 años', 'atomLector/pasta/basicos', 'atomLector/c2s/lect3', '8', 'Continua', 12, '', NULL, 0, ''),
(67, 'El loro y la cacatúa', 'Lectura Cuento Fantasía', '14,15 años', 'atomLector/pasta/basicos', 'atomLector/c3s/lect1', '9', 'Continua', 14, '', NULL, 0, ''),
(70, 'La sabia decisión del rey', 'Lectura Cuento Fantasía', '15,16 años', 'atomLector/pasta/diver', 'atomLector/c4d/lect1', '10', 'Continua', 16, '', NULL, 0, ''),
(71, 'Marco Polo el libro de las maravillas', 'Lectura no literario', '15,16 años', 'atomLector/pasta/diver', 'atomLector/c4d/lect2', '10', 'Continua', 17, '', NULL, 0, ''),
(72, 'Bajo una misma estrella', 'Novela', '15,16 años', 'atomLector/pasta/diveratomLector/pasta/diver', 'atomLector/c4d/lect3', '10', 'Continua', 16, '', NULL, 0, ''),
(73, 'La raíz del sueño ', 'Lectura Cuento Fantasía', '16,17 años', 'atomLector/pasta/diver', 'atomLector/c5d/lect1', '11', 'Continua', 17, '', NULL, 0, ''),
(74, 'El origen de las especies', 'Lectura no literario', '16,17 años', 'atomLector/pasta/diver', 'atomLector/c5d/lect2', '11', 'Continua', 17, '', NULL, 0, ''),
(75, 'Cartas a un poeta', 'Novela', '16,17 años', 'atomLector/pasta/diver', 'atomLector/c5d/lect3', '11', 'Continua', 16, '', NULL, 0, ''),
(76, 'Una mañana cualquiera', 'Lectura Cuento Fantasia', '17,18 años', 'atomLector/pasta/diver', 'atomLector/c6d/lect1', '12', 'Continua', 17, '', NULL, 0, ''),
(77, 'Tesis Agronomía', 'Lectura no literario', '17,18 años', 'atomLector/pasta/diver', 'atomLector/c6d/lect2', '12', 'Continua', 17, '', NULL, 0, ''),
(78, 'Matar a un sueño', 'Novela', '18,19 años', 'atomLector/pasta/diver', 'atomLector/c6d/lect3', '12', 'Continua', 16, '', NULL, 0, ''),
(79, 'Micaela y hada de la obediencia', 'Cuento infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect1', '13', 'Continua', 16, '../1in/lect1/audio/lect1.mp3', NULL, 0, ''),
(80, 'Los dos amigos', 'Cuento infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect2', '13', 'Continua', 16, '../1in/lect2/audio/lect2.mp3', NULL, 0, ''),
(81, 'Pedro y el Lobo', 'Cuento infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect3', '13', 'Continua', 16, '../1in/lect3/audio/lect3.mp3', NULL, 0, ''),
(82, 'La Princesa y el Guisante', 'Cuento Infantil', '4,5 años ', 'atomLector/pasta/lecturasDiarias/inicial', 'atomLector/1in/lecturasDiarias/lect1', '13', 'Continua', 4, 'Había una vez un príncipe que quería casarse con una princesa. pero con una  verdadera princesa de sangre real. Recorrio el mundo buscando una pero no lo consiguio. porque a pesar de que  habían muchas princesas casaderas. no halló a ninguna que le pareciera auténtica,Desolado. regresó a su reino. Una noche de tormenta el principe y su familia oyeron de pronto que aiguien . llamaba.-Toc, toc. toc.Temerosos ante el extraño que podía estar a la intemperie en una noche de tanta lluvia. abrieron la puerta del castillo. Frente a ellos. vieron una muchacha muerta de frio y empapada de la cabeza a los pies.-Soy una princesa contestó con voz dulce y quejumbrosa. Me he perdido en la oscuridad y no tengo o donde ir está noche. La Joven que decía ser princesa fue bien recibida en el  palacio donde le proporcionaron ropa secas y una suculenta cena. Pero la reina no se fiaba de que fuera una auténtica  princesa y se dijo: Solo hay una forma de averiguarlo, Colocaré un guisante debajo del colchón de la cama donde va a dormir está noche. Si no se da cuenta es que no es una sencible  y delicada princesa de verdad. A la mañana siguiente  la Familia real preguntó a la Joven: ¿Qué tal has dormido?. Pues para serles sincera he dormido muy mal contestó. algo terriblemente duro y molesto no me dejó dormir. he amanecido con el cuerpo dolorido. Alborozado. la reina exclamó: ¡Ciertamente eres una princesa autentica... Sólo una princesa de verdad podría tener la delicadeza suficiente como para sentir un minúsculo guisante debajo del colchón. Y así fue cómo el príncipe encontró una maravillosa princesa con la que casarse y ser feliz. La princesa y el guisante.', 1, 1, '<iframe width="800" height="800" frameborder="0" src="https://es.educaplay.com/es/recursoseducativos/4667282/html5/la_princesa_y_el_guisante.htm"></iframe>'),
(83, 'Tristán Quería ser Pirata', 'Cuento Infantil', '5,6,7 años', 'atomLector/pasta/lecturasDiarias/primaria', 'atomLector/1p/lecturasDiarias/lect1', '1', 'Continua', 4, '', 1, 1, ''),
(84, 'Bambú Japones', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/lecturasDiarias/primaria', 'atomLector/3p/lecturasDiarias/lect1', '3', 'Continua', 4, '', 1, 1, ''),
(85, 'El Problema', 'Cuento Infantil', '7,9 años', 'atomLector/pasta/lecturasDiarias/primaria', 'atomLector/3p/lecturasDiarias/lect2', '3', 'Continua', 4, '', 2, 1, ''),
(86, 'El color de la arena', 'Lectura Cuento Fantasía', '12,13 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c1s/lecturasDiarias/lect1', '7', 'Continua', 13, '', 1, 1, ''),
(87, 'El amor de Jack y Cassandra', 'Novela Extracto', '15,16 años', 'atomLector/pasta/lecturasDiarias/diver', 'atomLector/c4d/lecturasDiarias/lect1', '10', 'Continua', 14, '', 1, 1, ''),
(88, 'Don Árbolon', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect4', '13', 'Continua', 16, '', NULL, 0, ''),
(89, 'La vaca soñadora', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect5', '13', 'Continua', 16, '', NULL, 0, ''),
(90, 'Orejas y Rabito', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect6', '13', 'Continua', 16, '', NULL, 0, ''),
(91, 'Pinocho', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect7', '13', 'Continua', 16, '', NULL, 0, ''),
(92, 'Itzelina y los rayos del sol', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect8', '13', 'Continua', 16, '', NULL, 0, ''),
(93, 'Uga la tortuga', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect9', '13', 'Continua', 16, '', NULL, 0, ''),
(94, 'El monstruo en el armario', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/1in/lect10', '13', 'Continua', 16, '', NULL, 0, ''),
(95, 'El pajarito perezoso', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect1', '14', 'Continua', 16, '', NULL, 0, ''),
(96, 'Las estrellas y sus nuevos amigos', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect2', '14', 'Continua', 16, '', NULL, 0, ''),
(97, 'Gracias Bisabuela', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect3', '14', 'Continua', 16, '', NULL, 0, ''),
(98, 'Daniel y las palabras mágicas', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect4', '14', 'Continua', 16, '', NULL, 0, ''),
(99, 'Don quijote de la mancha', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect5', '14', 'Continua', 16, '', NULL, 0, ''),
(100, 'El elefante Bernardo', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect6', '14', 'Continua', 16, '', NULL, 0, ''),
(101, 'La curiosidad de los niños', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect7', '14', 'Continua', 16, '', NULL, 0, ''),
(102, 'Mago de oz', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect8', '14', 'Continua', 16, '', NULL, 0, ''),
(103, 'Me han quitado mi juguete', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect9', '14', 'Continua', 16, '', NULL, 0, ''),
(104, 'Me siento bien estoy contenta', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/2in/lect10', '14', 'Continua', 16, '', NULL, 0, ''),
(105, '¡Es mío! mi juguete', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect1', '15', 'Continua', 16, '', NULL, 0, ''),
(106, 'Me siento triste y quiero mi juguete', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect2', '15', 'Continua', 16, '', NULL, 0, ''),
(107, 'Algo me hizo estar enfadado', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect3', '15', 'Continua', 16, '', NULL, 0, ''),
(108, 'Ricitos de oro y los tres ositos', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect4', '15', 'Continua', 16, '', NULL, 0, ''),
(109, 'Patito Feo', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect5', '15', 'Continua', 16, '', NULL, 0, ''),
(110, 'El gato con botas', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect6', '15', 'Continua', 16, '', NULL, 0, ''),
(111, 'Carrera de zapatillas', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect7', '15', 'Continua', 16, '', NULL, 0, ''),
(112, 'El tigre sin color', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect8', '15', 'Continua', 16, '', NULL, 0, ''),
(113, 'Goldi una princesa diferente', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect9', '15', 'Continua', 16, '', NULL, 0, ''),
(114, 'Los tres cerditos', 'Cuento Infantil narrado', '4,5 años ', 'atomLector/pasta/inicial', 'atomLector/3in/lect10', '15', 'Continua', 16, '', NULL, 0, ''),
(115, 'Energía Solar', 'Texto Científico', '14,15 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c3s/lecturasDiarias/lect1', '9', 'No Literario', 12, '', 1, 1, '<iframe src="https://es.educaplay.com/es/recursoseducativos/4560351/html5/energia_solar.htm" width="800" height="800"></iframe>'),
(116, 'Fotoquímica', 'Texto Científico', '14,15 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c3s/lecturasDiarias/lect2', '9', 'No Literario', 8, '', 1, 2, '<iframe src="https://es.educaplay.com/es/recursoseducativos/4560456/html5/fotoquimica.htm" width="800" height="800"></iframe>'),
(117, 'Biografía de John Lennon', 'Biografía Personajes', '14,15 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c3s/lecturasDiarias/lect3', '9', 'No Literario', 10, '', 1, 3, '<iframe src="https://es.educaplay.com/es/recursoseducativos/4560503/html5/jhon_lennon_biografia.htm" width="800" height="800"></iframe>'),
(118, 'El Medico', 'Novela', '14,15 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c3s/lecturasDiarias/lect4', '9', 'Genero Literrio continuo', 11, '', 1, 4, '<iframe src="https://es.educaplay.com/es/recursoseducativos/4574329/html5/el_medico.htm" width="800" height="800"></iframe>'),
(119, 'Declaración de la independencia E.E.U. U', 'Texto Histórico', '14,15 años', 'atomLector/pasta/lecturasDiarias/basicos', 'atomLector/c3s/lecturasDiarias/lect5', '9', 'Genero no literario continuo', 12, '', 1, 5, '<iframe src="https://es.educaplay.com/es/recursoseducativos/4574497/html5/declaracion_de_independencia.htm" width="800" height="800"></iframe>');

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
(10, 17, 1, 6, 39, 240, 'va grabando todo lo que vas diciendo y lo ha notado para poder guardarlo y luego comparar con la lectura que ya estÃ¡ diseÃ±ado estÃ¡ capturando en tiempo real lo que estoy diciendo lo que logra lo que logra modificar porque lo dijiste mal lo modifica Pero si ya de verdad tÃº no la tienes bien no lo modifica'),
(32, 17, 2, 1, 29, 146, 'El ser uno - heladería un teatro sin cobrar la entrada sino también anunció a todos te recompensará generosamente que se le ocurriera el mejor acto de entre entretenimiento varios artistas compartieron por el premio entre ellos se encontraba un bufón muy famoso en el pueblo por sus bromas el bufón dijo que él tenía un acto entretenimiento que está más se había puesto en escena el bufón y el campesino'),
(33, 17, 1, 2, 37, 124, ' entonces'),
(34, 17, 1, 7, 18, 256, 'empezamos a capturar lo que él está haciendo palabra el chiste es que lea todo eso'),
(35, 17, 2, 2, 41, 103, 'innoble no sólo abrió Entonces si cobrarle al caso de pérdida del sotobosques recompensa generosamente que si le podía mejorar tu entretenimiento varios artistas competirán por el premio entre ellos se encontraba mucho muy famoso en el pueblo que pronto de lo que me dijo que él tenía todo entendimiento que jamás había puesto en escena el movimiento que se'),
(36, 17, 2, 3, 32, 133, 'tu noble no se me abrió teatro sin cobrar la entrada sino también anunció a todos que compensaría generosamente A quién se le ocurriera el mejor acto de entretenimiento varios artistas compartieron por el premio entre ellos se encontraba un bufón muy famoso y el pueblo por sus bromas el bufón dijo que él tenía un acto entrenamiento que jamás se había puesto en escena'),
(37, 17, 2, 4, 33, 129, 'un hombre no sólo había un teatro sin cobrar la entrada sino también anunció a todos que se compensaría generosamente A quién se le ocurriera el mejor acto entretenimiento varios artistas compitieron por el premio entre ellos se encontraba un bufón muy famoso en el pueblo por sus bromas el bufón dijo que él tenía un acto de entretenimiento que jamás se había puesto en escena'),
(38, 1, 1, 1, 34, 135, 'un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosos que colgaban en lo alto de una Parra las horas se paró de puntillas y estiró sus brazos intentando alcanzar las uvas Pero estas se encontraban muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance'),
(39, 1, 1, 2, 33, 140, 'es un día muy caluroso en la zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de la Parra las zorras se paró de puntillas y estiró sus brazos intentando alcanzar las cubas pero ésta se encontraba muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso junto con todas sus fuerzas una y otra vez pero no subas seguía muy lejos de su alcance'),
(40, 1, 2, 1, 29, 146, 'un noble no sólo había un teatro sin cobrar la entrada sino también anunció a todos que se compensaría generosamente A quién se le ocurriera el mejorar tu entrenamiento varios artistas compitieron por el premio entre ellos se encontraba un grupo muy famoso del pueblo por sus bromas el bufón dijo que él tenía un acto de entretenimiento que jamás se había puesto más en el buzón el campesino'),
(41, 17, 1, 8, 34, 135, 'en un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una Parra La zorra separó en dos puntillas y estiró sus brazos intentando alcanzar las uvas pero ésta se encontraban muy lejos de su alcance sin querer darte por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance La zorra y las uvas'),
(42, 17, 1, 9, 2, 2310, ''),
(43, 1, 1, 3, 28, 165, ' varios o bien bien no le'),
(44, 19, 1, 1, 32, 144, 'en un día muy caluroso en la zorra sedienta se tapó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una para las zorras se paró de puntillas y estiró sus brazos intentando alcanzarlo azul pero ésta se encontraba muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero lo suba seguía muy lejos de su alcance La zorra y las uvas'),
(45, 17, 1, 10, 33, 140, 'muy bueno en un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una para las zorras se paró de puntillas y estiró sus brazos intentando alcanzar las uvas pero ésta se encontraban muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance La zorra y las uvas'),
(46, 17, 62, 1, 28, 655, ' transitan Eternamente Yo no sé pero al final cuando cuando cuando uno le hace normalmente no se pone nervioso cuando uno se pone nervioso'),
(47, 17, 3, 1, 27, 153, 'era un jardín excepcional y las y los frutales se sentía muy felices no sólo eran arbolesanos robustos y bellos sino que además producían las mejores frutas que nadie podía imaginar sólo uno de esos árboles se sentía muy desdichado porque aunque sus ramas eran grandes y muy fuertes no había ningún tipo de fruto el pobre siempre se quejaba de su mala suerte el árbol que no sabía quién era'),
(48, 17, 3, 2, 31, 133, 'el tiempo real pues era guardándolo que voy dictando no se sobrescribe simplemente como lo está guardando en tiempo real está grabando cada palabra para luego mostrarnos un texto completo de lo que está grabado luego de esto pues me enviara a la base de datos con para asistente que tanto de lo que leí fue certero y nos da un gráfico les muestro'),
(49, 17, 1, 11, 32, 144, 'en un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una para la zorra separó de puntillas y estiró sus brazos intentando alcanzar las uvas pero ésta se encontraba muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance La zorra y las uvas'),
(50, 17, 61, 1, 30, 516, 'y empieza a grabar ese año las lluvias habían sido particularmente intensa en toda la región una gran corriente del río se llevó la choza de un campesino pero cuando cesaron habían dejado la tierra valiosa una valiosa joya entonces mientras vamos grabando se va guardando todo lo que nos ocupamos y al finalizar comparar lo que yo estoy hablando y lo va a comprar'),
(51, 17, 1, 12, 22, 210, 'un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una parte mientras yo voy hablando se va guardando el tiempo real lo que yo estoy diciendo lo va corrigiendo y al final obtengo un texto'),
(52, 17, 4, 1, 32, 135, 'la pequeña María no tuvo entonces más remedio que contar los pliegues en la nuez y efectivamente El duende no se había equivocado mil y una rosas exactas tenía que ya no es de oro con lágrimas en los ojos María el entregó al duendecillo quién al verla tan afligido hablando su corazón y le dijo Quédate noble muchacho porque no hay nada tan hermoso Cómo ayudar a los demás la nuez de oro'),
(53, 17, 5, 1, 33, 140, 'tanto fue el deseo de la gotita de agua que un día le pidió al sol que le ayudara Astro Rey ayúdame a llevarme hasta el cielo para conocer mejor el mundo y así lo hizo el sol calentara gótica con sus rayos hasta que poco a poco se fue convirtiendo con vapor de agua cuando se quedó dormido como un gas la gótica de agua se elevó al cielo lentamente Cómo se hizo la lluvia'),
(54, 17, 6, 1, 31, 125, 'Cómo haré ahora para trabajar y poder dar de comer a mis hijos exclamaba angustiado y preocupado leñador entonces ante los ojos del pobre hombre apareció desde el fondo del río una ninfa hermosa y centelleante no te lamentes de nombre traeré de vuelta tu hacha en este instante le dijo la criatura mágica leñador y se sumergió rápidamente en las aguas del Río'),
(55, 17, 8, 1, 28, 143, 'Así que el día del Silencio fue el gran descubrimiento de regalo y de que había que dar a todos la oportunidad de demostrarlo covalente y para que otros aprendieran la misma elección desde aquel día cada vez que alguien visitaba el pueblo la recibida con gran alegría poniéndole un gran gorro con el que no podía oír nada el día del silencio'),
(56, 17, 9, 1, 29, 130, 'gota tras gota de lluvia te moja la lluvia se ríe a veces se enojan y ayúdame canta y me entretiene y no te atrases gotas se va como viene la rana que canta donde cantan Los Grillos Qué lindos los cantos del Bosque y los ríos es una gran fiesta que gran sinfonía pero aunque me mojé Qué bonito día la lluvia'),
(57, 17, 63, 1, 44, 417, 'en un reino encantado de los hombres nunca pueden llegar a pesar donde los hombres transmitan citan Eternamente sin darse cuenta en un reino mágico donde las cosas no tangibles se vuelven concretas Había una vez un estanque maravilloso era una laguna de agua cristalina y pura donde nadaban peces de todos los colores existentes donde todas las tonalidades del color es se encontraban dentro uno y su compañero siguiente y luego de esto envió la información para ver si se guarda completamente solo quiero guardarlo en este momento'),
(58, 17, 11, 1, 27, 153, 'incendio que se desató una terrible tormenta el tronco cayó al lago y en ese momento la ranita subieron ver con Claridad Qué horas son en tronco tallado que ningún daño podía ser se rieron mucho de los temores por los que habían pasado y comenzaron a jugar con él y usarlo de trampolín para su zambullidas en el agua la ranita y el tronco tallado'),
(59, 17, 11, 2, 23, 180, 'concepto bien que se desató una terrible tormenta el tronco cayó al agua y en ese momento la receta es pudieron ver con Claridad que era sólo un tronco tallado que ningún daño podía hacer se rieron mucho de los temores por los que habían pasado y comenzaron a jugar con él y usarlo de trampolín para su zambullidas en el a las ranitas y el tronco tallado'),
(60, 17, 12, 1, 23, 185, 'una vez en el asiento elegido el hipopótamo habría un periódico amarillento y le extendía al máximo posible con el fin de tapar la cara y agobiar a su compañero de asiento además y por si fuera poco le daba por toser y bostezar con la boca abierta y a un buen volumen con el único fin de molestar y fastidiar a todo el mundo en egoísta'),
(61, 17, 12, 2, 21, 202, 'una vez en el asiento elegido el hipopótamo habría un periódico amarillento y lo extendió al máximo posible con el fin de tapar la cara Navegar a su compañero de asiento además y por si fuera poco le daba por toser y bostezar con la boca abierta y a un buen volumen popo popo'),
(64, 17, 15, 1, 38, 118, 'ilustrísima majestad dijo el hada gobernadora de aquel bosque encantado podéis Ver Nuestro bosque encantado es un lugar perfecto donde reina la belleza y la armonía veo que así parece dijo el hada reina veamos a ver si es verdad yo conjuro este lugar para que en el reino en los colores más hermosos y los decís es verdad o para que desaparezca el color si realmente hay algo feo aquí el hada fea'),
(65, 17, 1, 13, 19, 243, 'en un día muy caluroso se encontraba una pequeña zorra el objetivo de estar grabando es que ustedes pueden ver en tiempo real como la plataforma va obteniendo los datos que yo estoy diciendo los convierte en texto y los mandó al finalizar la evaluación Yo le doy clic en finalizar');

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
-- Estructura de tabla para la tabla `contuspalabras`
--

CREATE TABLE `contuspalabras` (
  `idregistroActividad` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `grabacion` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contuspalabras`
--

INSERT INTO `contuspalabras` (`idregistroActividad`, `idUsuario`, `idLectura`, `fecha`, `hora`, `grabacion`) VALUES
(7, 1, 1, '07/05/2019', '08:14:46', 'estoy grabando en este momento este dato para que pueda ser calificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `idCuestionario` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `punteoCuestionario` int(11) NOT NULL,
  `cantidadPreguntas` int(11) NOT NULL,
  `nombreCuestionario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fundamento` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`idCuestionario`, `idLectura`, `punteoCuestionario`, `cantidadPreguntas`, `nombreCuestionario`, `fundamento`) VALUES
(1, 1, 100, 10, 'Escala Medición Pisa - El cascabel del gato – Test Comprensión ', 'pisa'),
(2, 79, 100, 5, 'Micaela y el hada de la obediencia  – Prueba Comprensión ', 'cnb'),
(3, 1, 100, 10, 'Estándar Medición CNB - El cascabel del gato - Test Comprensión ', 'cnb'),
(4, 21, 100, 12, 'Estándar Medición CNB - La Desobediente tortuguita Ruby', 'cnb'),
(5, 11, 100, 10, 'Ratón de ciudad y ratón de campo  – Test Comprensión –Estándar CNB', 'cnb'),
(6, 11, 100, 10, 'El ratón de campo y el ratón de ciudad – Test Comprensión- Estándar Pisa', 'pisa'),
(7, 31, 100, 15, 'Merlín El Mago – Test Comprensión –Estándar CNB', 'cnb'),
(8, 41, 100, 16, 'Blancanieves – Test Comprensión –Estándares CNB', 'cnb'),
(9, 51, 100, 17, 'EL Caracol y el Rosal– Test Comprensión –Estándares CNB', 'cnb');

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
-- Estructura de tabla para la tabla `emnivel1completopaso1`
--

CREATE TABLE `emnivel1completopaso1` (
  `idCuento` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTexto` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentoCompleto` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel1recursospaso0`
--

CREATE TABLE `emnivel1recursospaso0` (
  `idRecurso` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `cuento` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emnivel1recursospaso0`
--

INSERT INTO `emnivel1recursospaso0` (`idRecurso`, `idLectura`, `cuento`) VALUES
(1, 83, 'Había un zapatero que, a consecuencia de muchas desgracias, llegó a ser tan pobre que no le quedaba material más que para un solo par de zapatos. Lo cortó por la noche para hacerlo a la mañana siguiente: después, como era hombre de buena conciencia, se acostó tranquilamente, rezó y se durmió. Al levantarse al otro día fue a ponerse a trabajar ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel2completopaso1`
--

CREATE TABLE `emnivel2completopaso1` (
  `idCuento` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTexto` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `cuento` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel2recursospaso0`
--

CREATE TABLE `emnivel2recursospaso0` (
  `idRecurso` int(11) NOT NULL,
  `idTexto` int(11) NOT NULL,
  `direccionImg` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emnivel2recursospaso0`
--

INSERT INTO `emnivel2recursospaso0` (`idRecurso`, `idTexto`, `direccionImg`) VALUES
(1, 86, '../../img/recursosLm/1s/1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel4paso0`
--

CREATE TABLE `emnivel4paso0` (
  `idTexto` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tema` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tituloTexto` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivoTexto` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `cantidadParrafos` int(11) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emnivel4paso0`
--

INSERT INTO `emnivel4paso0` (`idTexto`, `idLectura`, `idUsuario`, `tema`, `tituloTexto`, `objetivoTexto`, `cantidadParrafos`, `fecha`, `hora`) VALUES
(1, 115, 17, 'Cientifico', 'Energia Solar', 'Dar a concer como la energia solar puede ser utilizada ', 3, '09/06/2019', '03:56:10'),
(2, 116, 17, 'Cientifico', 'Avance Tecnologico', 'Informar y Actualizar', 3, '24/06/2019', '09:19:50'),
(3, 117, 17, 'Noticia Informativa', 'Como escribir Textos informativos', 'Informar y Enseñar', 3, '25/06/2019', '08:03:05'),
(4, 118, 17, 'Terror', 'La Llorona', 'Entretener al lector ', 3, '25/06/2019', '08:38:13'),
(5, 119, 17, 'Informatica', 'La nube ', 'Informar y Entretener', 3, '25/06/2019', '08:44:34'),
(6, 87, 17, 'Economia', 'La publicidad', 'Informar', 3, '02/07/2019', '05:03:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel4paso1`
--

CREATE TABLE `emnivel4paso1` (
  `idParrafo` int(11) NOT NULL,
  `idTexto` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `parrafo` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emnivel4paso1`
--

INSERT INTO `emnivel4paso1` (`idParrafo`, `idTexto`, `idLectura`, `idUsuario`, `parrafo`, `fecha`, `hora`) VALUES
(1, 1, 115, 17, 'Este es un parrafo de ejemplo dejamos la idea principal, con este parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos .', '12/06/2019', '02:01:54'),
(2, 1, 115, 17, 'Parrafo lorem sump Parrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sump Parrafo lorem sump.', '12/06/2019', '05:26:32'),
(3, 116, 116, 17, 'En el sector digital, Adobe trabaja con inteligencia artificial para identificar imágenes manipuladas, como el uso de secuencias RGB o un filtro de ruido que es capaz de analizar el rastro dejado por el usuario en una imagen. Este último avance tecnológico sigue en desarrollo y podrá aumentar la confianza y autenticidad en los medios digitales.', '24/06/2019', '09:34:17'),
(4, 116, 116, 17, 'En el sector financiero, la inteligencia artificial podrá detectar a tiempo comportamientos anormales en manipulación de información dentro de los bancos y lograr prevenir ataques cibernéticos.', '24/06/2019', '09:35:55'),
(6, 116, 116, 17, 'Y en el hogar este avance tecnológico será revolucionario. La empresa LG desarrolló robots como el CLOi que funciona por comando de voz para ayudar en los quehaceres del hogar, ya sea, hacer las compras o trasladar objetos, incluso puede jugar al Scrabble con un oponente gracias a un sistema de visión inteligente.', '24/06/2019', '09:43:25'),
(7, 117, 117, 17, 'Los textos informativos son los que se utilizan para dar a conocer una noticia o acontecimiento de importancia para las personas a las que va dirigido.', '25/06/2019', '08:03:34'),
(8, 117, 117, 17, 'Una de las principales características de los textos informativos es que el emisor se limita a narrar los hechos sin expresar sus emociones o sentimientos, ya que el texto debe de ser veraz y objetivo.', '25/06/2019', '08:03:45'),
(9, 117, 117, 17, 'Cuando se elaboran es necesario ser muy cuidadoso con la redacción  la cual debe de ser realizada utilizando un lenguaje formal, sin utilizar palabras rebuscadas, pero tampoco apalabras familiares o vagas. La precisión es un aspecto muy importante en los textos informativos ya que no se debe de dar lugar a interpretaciones.', '25/06/2019', '08:03:57'),
(10, 118, 118, 17, 'La presencia de seres fantasmales que lloran en los ríos por motivos diversos es una característica recurrente de la mitología aborigen de los pueblos prehispánicos. Es así como pueden encontrarse rasgos de estos espectros en varias de las culturas precolombinas, que eventualmente, con la llegada de los conquistadores españoles, fueron asumiendo rasgos comunes debido a la expansión del dominio hispánico sobre el continente. La leyenda es una historia que posee referentes míticos en el universo prehispánico, pero que instaura su drama y su cortejo imaginario y angustiante en el orden colonial.', '25/06/2019', '08:39:26'),
(11, 118, 118, 17, 'En México, varios investigadores estiman que la Llorona, como personaje de la mitología y de las leyendas mexicanas, tiene su origen en algunos seres o deidades prehispánicas como Auicanime, entre los purépechas; Xonaxi Queculla, entre los zapotecos; la Cihuacóatl, entre los nahuas; y la Xtabay, entre los mayas lacandones. Siempre se la identifica con el inframundo, el hambre, la muerte, el pecado y la lujuria.', '25/06/2019', '08:39:42'),
(12, 118, 118, 17, 'En el caso de Xtabay (o Xtabal), esta diosa lacandona se identifica como un espíritu malo con la forma de una hermosa mujer cuya espalda tiene forma de árbol hueco.', '25/06/2019', '08:39:57'),
(13, 119, 119, 17, 'La computación en la nube son servidores desde Internet encargados de atender las peticiones en cualquier momento. Se puede tener acceso a su información o servicio, mediante una conexión a internet desde cualquier dispositivo móvil o fijo ubicado en cualquier lugar. Sirven a sus usuarios desde varios proveedores de alojamiento repartidos frecuentemente por todo el mundo. Esta medida reduce los costos, garantiza un mejor tiempo de actividad y que los sitios web sean invulnerables a los delincuentes informáticos, a los gobiernos locales y a sus redadas policiales pertenecientes.', '25/06/2019', '08:45:06'),
(14, 119, 119, 17, 'Cloud computing es un nuevo modelo de prestación de servicios de negocio y tecnología, que permite incluso al usuario acceder a un catálogo de servicios estandarizados y responder con ellos a las necesidades de su negocio, de forma flexible y adaptativa, en caso de demandas no previsibles o de picos de trabajo, pagando únicamente por el consumo efectuado, o incluso gratuitamente en caso de proveedores que se financian mediante publicidad o de organizaciones sin ánimo de lucro.', '25/06/2019', '08:45:15'),
(15, 119, 119, 17, 'El cambio que ofrece la computación desde la nube es que permite aumentar el número de servicios basados en la red. Esto genera beneficios tanto para los proveedores, que pueden ofrecer, de forma más rápida y eficiente, un mayor número de servicios, como para los usuarios que tienen la posibilidad de acceder a ellos, disfrutando de la ‘transparencia’ e inmediatez del sistema y de un modelo de pago por consumo. Así mismo, el consumidor ahorra los costes salariales o los costes en inversión económica (locales, material especializado, etc.).', '25/06/2019', '08:45:23'),
(16, 87, 87, 17, 'Difusión o divulgación de información, ideas u opiniones de carácter político, religioso, comercial, etc., con la intención de que alguien actúe de una determinada manera, piense según unas ideas o adquiera un determinado producto.', '02/07/2019', '05:03:32'),
(17, 87, 87, 17, 'A través de la investigación, el análisis y estudio de numerosas disciplinas, tales como la psicología, la neuroanatomía, la sociología, la antropología, la estadística, y la economía, que son halladas en el estudio de mercado, se podrá, desde el punto de vista del vendedor, desarrollar un mensaje adecuado para una porción del público de un medio. Esta porción de personas, que se encuentra detalladamente delimitada, se conoce como público objetivo o target.', '02/07/2019', '05:03:52'),
(18, 87, 87, 17, 'La publicidad se diferencia de otras dos actividades también dirigidas a influir en la opinión de la gente: las relaciones públicas y la propaganda.', '02/07/2019', '05:04:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emnivel4paso2`
--

CREATE TABLE `emnivel4paso2` (
  `idParrafo_mod` int(11) NOT NULL,
  `idTexto_mod` int(11) NOT NULL,
  `idLectura_mod` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idParrafo` int(11) NOT NULL,
  `parrafo_mod` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emnivel4paso2`
--

INSERT INTO `emnivel4paso2` (`idParrafo_mod`, `idTexto_mod`, `idLectura_mod`, `idUsuario`, `idParrafo`, `parrafo_mod`, `fecha`, `hora`) VALUES
(1, 1, 115, 17, 1, 'Este es un parrafo de ejemplo dejamos la idea principal, con este parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo -- modificamos parrafo', '14/06/2019', '01:03:35'),
(2, 1, 115, 17, 2, 'Parrafo lorem sump Parrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo --se cambio a partir de aqui ya no me gusto lo que escribi anteriormente', '18/06/2019', '07:04:41'),
(3, 1, 115, 17, 2, '--------------Parrafo modificado ------------- sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sump Parrafo lorem sump.', '19/06/2019', '06:46:31'),
(4, 117, 117, 17, 8, 'Una de las principales características de los textos informativos es que el emisor se limita a narrar los hechos sin expresar sus emociones o sentimientos, ya que el texto debe de ser veraz y objetivo. --Agregue esto', '25/06/2019', '08:04:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `textcolor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `start` datetime NOT NULL,
  `final` datetime NOT NULL,
  `visible` int(11) NOT NULL COMMENT '1=todos,2=primaria, 3=basicos, 4=diversificado, 5=docentes, 6=padres de familia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `title`, `descripcion`, `color`, `textcolor`, `start`, `final`, `visible`) VALUES
(8, 'asdasd', 'asdasd', '#525fb6', '#ffffff', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(9, 'dasdas', 'asdasd', '#525fb6', '#ffffff', '2019-08-17 00:00:00', '0000-00-00 00:00:00', 3),
(10, 'evento nuevo', 'asdasd', '#e67e22', '#ffffff', '2019-08-15 00:00:00', '0000-00-00 00:00:00', 4),
(13, 'asdasd', 'asdasdasdasdasdasdasdasdasdasd', '#25d9e2', '#ffffff', '2019-08-22 07:00:00', '0000-00-00 00:00:00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glosario`
--

CREATE TABLE `glosario` (
  `idglosario` int(11) NOT NULL,
  `glosarioNombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idLectura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `glosario`
--

INSERT INTO `glosario` (`idglosario`, `glosarioNombre`, `idLectura`) VALUES
(1, 'El cascabel del Gato', 1),
(2, 'Micaela y el hada de la obediencia', 79),
(3, 'El raton de campo y raton de ciudad', 11);

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
-- Estructura de tabla para la tabla `itemopcionmultiple`
--

CREATE TABLE `itemopcionmultiple` (
  `idItem` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_spanish_ci,
  `respuestaCorrecta` int(11) DEFAULT NULL,
  `respuesta1` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuesta2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuesta3` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuesta4` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `matrizComparativa` longtext COLLATE utf8_spanish_ci,
  `procesoComprension` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `capacidad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivoItem` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idCuestionario` int(11) DEFAULT NULL,
  `punteoItem` int(11) DEFAULT NULL,
  `nivelItem` longtext COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `itemopcionmultiple`
--

INSERT INTO `itemopcionmultiple` (`idItem`, `pregunta`, `respuestaCorrecta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `matrizComparativa`, `procesoComprension`, `capacidad`, `objetivoItem`, `nivel`, `idCuestionario`, `punteoItem`, `nivelItem`) VALUES
(1, '¿De qué trata la lectura? ', 3, 'A. De unos ratones que tenían mucha hambre.', 'B. De un gato cazador de ratones.', 'C. De unos ratones que querían ponerle un cascabel al gato.', 'D. De un buena persona que tenía un gato.', NULL, 'Integración e interpretación de texto ', 'Integrar interpretar, conseguir una comprensión global.', 'Identificar la idea principal del texto.', '1a', 1, 353, '1a'),
(2, '¿Según la lectura porque era importante para los ratones colocarle el cascabel al gato? ', 1, 'A. Para escuchar cuando el gato este cerca y que no los atrape.', 'B. Los ratones lo hacían por diversión.', 'C. Para jugarle una broma al gato', 'D. No era importante los ratones tenían mucha comida.', NULL, 'Obtención y recuperación de información. ', 'Localizar y extraer: extraer información del cuento.', 'Encontrar información en el texto', '1b', 1, 285, '1b'),
(3, '¿Qué hubiese pasado si los ratones en vez de un cascabel le colocan una sonaja? ', 1, 'A. Los ratones seguirían teniendo miedo.', 'B. Los ratones dejarían de tener miedo.', 'C. Los ratones hubieran tenido éxito.', 'D. El cuento terminaría con final feliz.', NULL, 'Reflexión y evaluación', ' Reflexionar sobre la forma de un texto y evaluarla.', 'Identificar un detalle  en base a un cambio el final del cuento.', '1a', 1, 399, '1a'),
(4, '¿Según la lectura es mejor trabajar en grupo? ', 1, 'A. Si, Trabajar en grupo como los ratoncitos es mejor.', 'B. No me gusta trabajar en grupo', 'C. Tengo miedo que se rían de mis ideas', 'D. No, es mejor.', NULL, 'Integración e interpretación de texto ', 'Integrar e interpretar: elaborar una interpretación.', 'Establecer relaciones en un texto breve para llegar a una conclusión.', '2', 1, 438, '2'),
(5, '“Sin embargo, un nuevo problema surgió ¿Quién le pondría el cascabel al gato” ¿Cómo podrían los ratones  colocarle el cascabel al gato sin que nadie salga herido? ', 1, 'A. Trabajando en equipo para resolver el problema.', 'B. Enviar solo a un ratón y que se sacrifique.', 'C. Quien tuvo la idea que lo haga.', 'D. No sé cómo resolver esto.', NULL, 'Integración e interpretación de texto ', 'Elaborar una interpretación.', 'Relacionar un detalle de un cuento con su idea principal.', '3', 1, 548, '3'),
(6, '¿Cuál era el fin de la idea del ratón joven, para que propuso la idea?', 2, 'A. Para asustar a todos los ratones y que murieran de hambre.', 'B. Ayudar a obtener provisiones y que los ratones no murieran de hambre.', 'C. No había ningún problema.', 'D. Dar a conocer su idea para ser reconocido entre todos los ratones.', NULL, 'Integración e interpretación de texto ', 'Conseguir una comprensión global.', 'Identificar la finalidad de una parte de un texto narrativo.', '4', 1, 661, '4'),
(7, '¿Cuál de las oraciones es correcta?', 2, 'A. Los gatos con cascabeles no son buenos cazadores.', 'B. Los ratones son inteligentes pero  miedosos.', 'C. El dueño del gato nunca se encontraba en casa y por habían muchos ratones', 'D. Ninguna es correcta', NULL, 'Reflexión y evaluación', 'Identificar la hipótesis de una parte del texto', 'Identificar la finalidad de una parte de un texto narrativo.', '5', 1, 699, '5'),
(8, '¿Qué se encontraban haciendo los ratoncitos antes de que el gato llegara a la casa?', 1, 'A. Los ratones comían y bebían sin ningún problema.', 'B. Cantaban y festejaban muy alegremente', 'C. Los ratones estaban tristes porque no tenían compañía.', 'D. Ninguna es correcta', NULL, 'Reflexión y evaluar - Localizar y extraer: ', 'Extraer información, reflexionar y evaluar informacion del texto.', 'Encontrar una referencia a una actividad que se desarrolla con anterioridad a los sucesos del cuento', '6', 1, 730, '8'),
(9, '¿Por qué es fácil opinar y difícil actuar ante una situación?', 1, 'A. Porque opinar no causa daño o no hay riesgo de perder.', 'B. La idea que el ratón joven dio no era buena.', 'C. Los ratones tienen mucho miedo.', 'D. Ninguna es correcta', NULL, 'Integración e interpretación de texto ', 'Identificar una interpretación', 'Inferir el significado de una frase en una obra de teatro utilizando referencias contextuales.', '2', 1, 474, '2'),
(10, '“Todos aplaudieron y felicitaron al joven ratón“ “ante la falta de voluntarios ya que todos ponían excusas para apoyar” ¿Qué relación tienen los textos?', 2, 'A. Los dos textos hablan sobre la idea que tuvo el ratón joven.', 'B. Los dos textos se contradicen porque aunque lo felicitaron y aplaudieron no lo apoyaron.', 'C. Los textos son iguales', 'D. Ninguna es correcta', NULL, 'Integración e interpretación de texto ', 'conseguir una interpretación global.', 'Identificar la relación existente entre dos textos argumentativos breves (contraste).', '3', 1, 573, '3'),
(41, '¿Cómo se llamaba la niña del cuento? ', 1, 'A.  Micaela', 'B.  Brillo dorado', 'C. No escuche.', 'D. Obediencia.', NULL, 'Obtención y recuperación de información. ', 'Identifica detalles dentro de la historia', 'Identificar algún personaje', '', 2, 20, ''),
(42, '¿Es bueno hacerle caso a papi y a mami? ', 1, 'A. Si', 'B. No', 'C. No lo se', 'D. Ninguna es correcta.', NULL, 'Reflexión y evaluación', ' Reflexionar sobre la forma de un texto y evaluarla.', 'Encontrar información en el texto', '', 2, 20, ''),
(43, '¿Qué es lo que hacia el conejo brillo dorado? ', 1, 'A. Anotaba a los niños que llegaban al país de los cuentos.', 'B. Saltaba muy contento', 'C. Solo saludaba a los niños.', 'D. Ninguna es correcta.', NULL, 'Obtención y recuperación de información. ', 'Acceso y recuperación de la información', 'Localiza un fragmento sencillo y explicito de la lectura', '', 2, 20, ''),
(44, '¿Cuál era el número favorito de brillo dorado? ', 1, 'A. Tres.', 'B. Uno', 'C. Dos', 'D. Cinco', NULL, 'Obtención y recuperación de información. ', 'Acceso y recuperación de la información', 'Localiza un fragmento sencillo y explicito de la lectura ', '', 2, 20, ''),
(45, '¿Ser obediente te ayuda a escuchar y aceptar las opiniones de los demás? ', 1, 'A. Si', 'B. No', 'C. No lo sé', 'D. Ninguna es correcta', NULL, 'Reflexión y evaluación', ' Reflexionar sobre la forma de un texto y evaluarla.', 'Reflexionar sobre la idea principal de la lectura', '', 2, 20, ''),
(46, 'Identifique en las siguientes opciones la palabra que No signifique Esfuerzo ', 1, 'A.  Desanimo', 'B. Afán', 'C. impulso', 'D. ninguna es correcta.', NULL, 'Interpretativa', 'Reconoce el significado de las palabras en el texto', 'Comprensión literal, vocabulario. ', '', 3, 10, ''),
(47, '¿Qué es lo que hace el gato cuando ve un ratón? ', 1, 'A. Perseguirlos hasta atraparlos. ', 'B. No hace nada, solo los ve pasar desde su cojín.', 'C. El no persigue ratones.', 'D. Todas son correctas.', NULL, 'Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Detalle. ', '', 3, 10, ''),
(48, 'En el siguiente texto, porque palabra cambiarias la palabra Minino:', 2, 'A.	Ratón', 'A.	Ratón', 'C.	Ratones', 'C.	Ratones', NULL, 'Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Vocabulario. ', '', 3, 10, ''),
(49, '1)	Los ratones tenían hambre y estaban desesperados. 2) Los Ratones convocaron una asamblea. 3)	El ratón joven dio su brillante idea.  ¿Según lo que leíste, el orden es el correcto? ', 1, 'A.	Si', 'B.	No', 'C.	Crep que no leí nada de esto.', 'D.	No lo se', NULL, 'Interpretativa', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', 'Comprensión literal, secuencia. ', '', 3, 10, ''),
(50, '¿Cuál es la idea Principal del texto?', 2, 'A.	Colocarle el cascabel al gato para que puedan comer.', 'B.	Es importante tener ideas pero es mucho más importante ponerlas en práctica.', 'C.	Que los ratones fueran unidos.', 'D.	Todas son correctas.', NULL, 'Argumentativa', 'Identifica el punto de vista del texto.', 'Comprensión inferencial, idea principal. ', '', 3, 10, ''),
(51, '¿Cuál es el propósito del autor?', 1, 'A.	Entretener', 'B.	Criticar', 'C.	Cuestionar', 'D.	Informar', NULL, 'Argumentativa', 'Reconoce la intencionalidad de un texto y de un autor', 'Comprensión Inferencial, propósito del autor. ', '', 3, 10, ''),
(52, '¿Qué hubiera pasado si los ratones le ponen el cascabel al gato?', 2, 'A.	Escucharían cada vez que el gato se acerca.', 'B.	Lograrían abastecer de comida y ningún ratón moriría.', 'C.	No hubiera pasado nada porque el gato es muy buen cazador.', 'D.	Ninguna es correcta', NULL, 'Argumentativa', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', 'Comprensión Inferencial, predicción. ', '', 3, 10, ''),
(53, '¿Cuál de las siguientes opciones es una opinión?', 3, 'A.	De pronto un ratón joven tuvo una idea que agrado a todos.', 'B.	Todos aplaudieron y felicitaron al ratón por la idea que tubo.', 'C.	El gato es un buen cazador.', 'D.	Ninguna es correcta', NULL, 'Argumentativa', 'Establece relaciones entre los textos presentados y otros tipos de texto', 'Comprensión Inferencial, opinión. ', '', 3, 10, ''),
(54, '¿Cuál es el punto de vista del autor?', 1, 'A.	Conativa: provoca en mi alguna reacción.', 'B.	Expresiva: Expresa sentimientos, deseos.', 'C.	Poética: quiere atraer la atención con la expresión lingüística.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Opina sobre el contenido y la forma del texto', 'Comprensión critica-intertextual, punto de vista.', '', 3, 10, ''),
(55, '¿Qué generalización puede realizarse en base al texto?', 3, 'A.	Todos los gatos son buenos cazadores.', 'B.	Todos los gatos tienen dueños dadivosos.', 'C.	Los gatos aprenden a cazar en base a la necesidad, ellos cazan por instinto.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Evalúa la información obtenida', 'Comprensión critica-intertextual, generalización. ', '', 3, 10, ''),
(56, 'Identifique en las siguientes opciones la palabra que sea el antonino de “Desobediencia” ', 2, 'A. Desanimo', 'B.	Obediente', 'C.	Enojo', 'D. Ninguna es correcta.', NULL, 'Interpretativa', 'Reconoce el significado de las palabras en el texto', 'Comprensión literal, vocabulario. ', NULL, 4, 9, NULL),
(57, '¿Cuántos hermanos tiene la tortuguita Ruby?', 2, 'A.	3 hermanos.', 'B.	2 hermanos.', 'C.	1 hermano.', 'D.	Todas son correctas.', NULL, 'Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Detalle. ', NULL, 4, 9, NULL),
(58, 'En el siguiente texto, porque palabras cambiarias la palabra Herida:', 1, 'A.	Golpe', 'B. Accidente.', 'C.	somatón', 'D.	Muslo', NULL, 'Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Vocabulario. ', NULL, 4, 9, NULL),
(59, '1)	Después llego el perro y escucho que la señora maría buscaba afanada a la tortuguita. <br> 2) Cuando oscureció la tortuguita Ruby salió y el perro se despidió de ella en la puerta.<br> 3)	Cuando llego al lugar de donde venia la música se encontró que allí vivía un perro que se llamaba Franklin. <br> ¿Según lo que leíste, el orden es el correcto? ', 2, 'A.	Si', 'B.	No', 'C.	Creo que no leí nada de esto.', 'D.	No lo se', NULL, 'Interpretativa', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', 'Comprensión literal, secuencia. ', NULL, 4, 9, NULL),
(60, '¿Cuál es la idea Principal del texto?', 3, 'A. Que debemos cuidar a nuestros hermanitos.', 'B. Comer muslo de pollo cada vez que se pueda.', 'C. Obedecer a papá y a mamá siempre.', 'D. Todas son correctas.', NULL, 'Argumentativa', 'Identifica el punto de vista del texto.', 'Comprensión inferencial, idea principal. ', NULL, 4, 8, NULL),
(61, '¿Cuál es el propósito del autor?', 1, 'A.	Persuadir', 'B.	Criticar', 'C.	Cuestionar', 'D.	Informar', NULL, 'Argumentativa', 'Reconoce la intencionalidad de un texto y de un autor', 'Comprensión Inferencial, propósito del autor. ', NULL, 4, 8, NULL),
(62, '¿Qué hubiera pasado si la tortuguita Ruby hubiera obedecido a mamá?', 0, NULL, NULL, NULL, NULL, 'no le hubiera pasado nada no estaría en peligro el señor José no se hubiera querido comer a la tortuguita la mama tortuga no estaría buscándola la tortuguita estaría bien la tortuguita no se hubiera perdido no se la hubieran llevado en un saco hubiera sido responsable', 'Argumentativa', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', 'Comprensión Inferencial, predicción. ', NULL, 4, 8, NULL),
(63, '¿Cuál de las siguientes opciones es una opinión?', 3, 'A.	Ruby le contesto que sí, cuidaría de sus hermanitos.', 'B.	Cuando oscureció la tortuguita Ruby salió y el perro se despidió de ella en la puerta.', 'C.	Las tortugas son muy lentas.', 'D.	Ninguna es correcta', NULL, 'Argumentativa', 'Establece relaciones entre los textos presentados y otros tipos de texto', 'Comprensión Inferencial, opinión. ', NULL, 4, 8, NULL),
(64, '¿Cuál es el punto de vista del autor?', 2, 'A.	Conativa: provoca en mi alguna reacción.', 'B. Expresiva: Expresa sentimientos, deseos.', 'C.	Poética: quiere atraer la atención con la expresión lingüística.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Selecciona la opción sobre el contenido y la forma del texto', 'Comprensión critica-intertextual, punto de vista.', NULL, 4, 8, NULL),
(65, '¿Qué generalización puede realizarse en base al texto?', 2, '¿Qué generalización puede realizarse en base al texto?', 'B.	Todas las tortugas tienen hermanos.', 'C.	Todas tortugas son verdes', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Evalúa la información obtenida', 'Comprensión critica-intertextual, generalización. ', NULL, 4, 8, NULL),
(66, 'Luego de leer la lectura ¿Qué puedes concluir de la lectura?', 0, NULL, NULL, NULL, NULL, 'Que la tortuguita, tortuga era desobediente, no hizo caso, no obedeció a la mama tortuga, estuvo en peligro, que tenia que ser obediente, que debemos ser obedientes a nuestros padres, hacer caso, si obedecemos no estaremos en peligro, debemos ser obedientes', 'Propositiva', 'Evalúa la información obtenida y propone', 'Comprensión critica-intertextual, generalización. ', NULL, 4, 8, NULL),
(67, '¿Cómo puedes resumir la lectura? Con tus propias palabras', 0, NULL, NULL, NULL, NULL, 'es bueno obedecer a mama y a papa, es buenos hacer caso, la tortuga es desobediente por eso le fue mal, ser desobediente trae problemas, ser desobediente es malo', 'Propositiva', 'Resumen global del texto leído.', 'Comprensión critica-intertextual, resumir. ', NULL, 4, 8, NULL),
(68, 'Identifique en las siguientes opciones la palabra contrario a cómodo.', 2, 'A.  Desanimo', 'B. Confortable', 'C. impulso', 'D. ninguna es correcta.', NULL, 'Interpretativa', 'Reconoce el significado de las palabras en el texto', 'Comprensión literal, vocabulario. ', NULL, 5, 10, NULL),
(69, '¿Con que ratón empieza la historia?', 2, 'A. El ratón de ciudad.', 'B. El ratón de campo.', 'C. No empieza por ninguna', 'D. Todas son correctas.', '', ' Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Detalle. ', NULL, 5, 10, NULL),
(70, 'En el siguiente texto, porque palabras cambiarias la palabra habituó:<br><br> “Y además no se ___________ a la vida de campo”.', 1, 'A. Acostumbro', 'B. incomodo', 'C. Enamoro', 'D. Ninguna es correcta.', '', 'Interpretativa', 'Maneja la información literal de los textos leídos', 'Comprensión literal, Vocabulario. ', NULL, 5, 10, NULL),
(71, '1.	un día, su primo ratón que vivía en la ciudad, vino a visitarle.<br><br> 2.	Acabo invitando a su primo a viajar con el a la ciudad para comprobar que alli se vive mejor. <br><br>  3.	Había ruidos de coches, humo, mucho polvo, y un ir y venir intenso de las personas. <br><br> ¿Según lo que leíste, el orden es el correcto? ', 1, 'A. Si', 'B. No', 'C. Creo que no leí nada de esto.', 'D. No lo se', NULL, 'Interpretativa', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', 'Comprensión literal, secuencia. ', NULL, 5, 10, NULL),
(72, '¿Cuál es la idea Principal del texto?', 2, 'A. Que es el mejor el campo que la tranquilidad que se respira es mejor que el ruido y desorden de la ciudad. ', 'B. Cada quien es libre de vivir y tener costumbres y deseos diferentes, todos tenemos que respetar.', 'C. Que la ciudad es mejor que el campo, porque hay más oportunidades.', 'D. Todas son correctas.', '', ' Argumentativa', 'Identifica el punto de vista del texto.', 'Comprensión inferencial, idea principal. ', NULL, 5, 10, NULL),
(73, '¿Cuál es el propósito del autor?', 1, 'A. Dar a entender dos perspectivas.', 'B. Criticar', 'C. Cuestionar', 'D. Informar', '', 'Argumentativa', 'Reconoce la intencionalidad de un texto y de un autor', 'Comprensión Inferencial, propósito del autor. ', NULL, 5, 10, NULL),
(74, '¿Qué hubiera pasado si el ratón de campo decide no ir a la ciudad?', 2, 'A. El rato de campo se hubiera peleado con su primo.', 'B. No hubiera aprendido una lección importante para su vida, valorar su hogar.', 'C. El ratón de campo se hubiera quedado feliz y el ratón de ciudad feliz.', 'D. Ninguna es correcta', NULL, 'Argumentativa', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', 'Comprensión Inferencial, predicción. ', NULL, 5, 10, NULL),
(75, '¿Cuál de las siguientes opciones es una opinión?', 3, 'A. Los ratones huyeron por un agujerillo.', 'B.	Los ratones de campo y los de ciudad no son amigos.', 'C.	Estoy arrepentido primo no me acostumbro.', 'D.	Ninguna es correcta', '', 'Argumentativa', 'Establece relaciones entre los textos presentados y otros tipos de texto', 'Comprensión Inferencial, opinión. ', '', 5, 10, NULL),
(76, '¿Cuál es el punto de vista del autor?', 2, 'A.	Conativa: provoca en mi alguna reacción.', 'B.	Expresiva: Expresa sentimientos, deseos.', 'C.	Poética: quiere atraer la atención con la expresión lingüística.', 'D.	Ninguna es correcta', '', 'Propositiva', 'Opina sobre el contenido y la forma del texto', 'Comprensión critica-intertextual, punto de vista.', NULL, 5, 10, NULL),
(77, '¿Qué generalización puede realizarse en base al texto?', 3, 'A.	Todos los ratones son primos.', 'B.	Todos los ratones de ciudad son felices.', 'C.	Todos los seres vivos se adaptan en el lugar de nacimiento.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Evalúa la información obtenida', 'Comprensión critica-intertextual, generalización. ', NULL, 5, 10, NULL),
(78, '¿De qué trata la lectura? ', 3, 'A.	 De unos ratones que tenían mucha hambre.', 'B.	  De un gato cazador de ratones.', 'C.	De un ratón de campo que tenía un primo ratón de ciudad y de la forma de vivir.', 'D. De un buena persona que tenía un gato.', NULL, 'Obtención y recuperación de información. ', 'integrar interpretar, conseguir una comprensión global.', 'identificar la idea principal del texto.', '1a', 6, 353, '1a'),
(79, '¿Según la lectura porque no le gusto la sopa de hierbas al ratón de ciudad?', 3, 'A.	Porque era muy melindroso.', 'B.	Para hacer enojar al ratón de campo.', 'C.	Porque él estaba acostumbrado a comer comida fina.', 'D.	 No era importante los ratones tenían mucha comida.', NULL, 'Obtención y recuperación de información. ', 'Localizar y extraer: extraer información.', 'Encontrar información en el texto', '1b', 6, 285, '1b'),
(80, '¿Qué hubiera pasado si el ratón de campo se queda viviendo en la ciudad? ', 1, 'A.	Hubiera vivido poco tiempo porque no estaba acostumbrado a la ciudad.', 'B.	 El ratón de ciudad se hubiera sentido culpable por quitarle la paz al ratón de campo.', 'C.	Los dos ratones hubieran vivido felices por siempre.', 'D.	Ninguna es correcta', NULL, 'Reflexionar y evaluar', 'Reflexionar sobre la forma de un texto y evaluarla', 'identificar  en base a un cambio el final del cuento.', '1a', 6, 399, '1a'),
(81, '¿Según la lectura cada quien puede ser diferente? ', 1, 'A.	Si, porque les pueden gustar cosas diferentes.', 'B.	No, todos se tienen que adaptar a lo que digan los demás.', 'C.	Estoy inseguro, creo que es mejor no tener visitas.', 'D.	No lo se.', NULL, 'Integrar e interpretar', 'Elaborar una interpretación.', 'Establecer relaciones en un texto breve para llegar a una conclusión.', '2', 6, 438, '2'),
(82, '“Acabo invitando a su primo a viajar con él a la ciudad para comprobar que allí se vive mejor”  <br><br>¿Era necesario que el ratón de campo viajara para comprobar si era cierto? ', 1, 'A.	Si, porque es mejor verlo con los propios ojos.', 'B.	No, era necesario porque el ratón de campo tenía su propia forma de pensar.', 'C.	Creo que el ratón de campo no hubiera recibido a su primo.', 'D.	No sé cómo resolver esto.', NULL, 'Integrar e interpretar', 'Elaborar una interpretación.', 'Relacionar un detalle de un cuento con su idea principal.', '3', 6, 548, '3'),
(83, '¿Qué crees que es lo que la lectura quiere darte a entender?', 2, 'A.	Que no siempre lo que nos cuentan es cierto.', 'B.	Que todos tenemos diferentes gustos.', 'C.	Que es mejor vivir en la ciudad.', 'D.	Que es mejor vivir en el campo.', NULL, 'Integrar e interpretar', 'Conseguir una comprensión global.', 'Identificar la finalidad de una parte de un texto narrativo.', '4', 6, 561, '4'),
(84, '¿Cuál de las oraciones es correcta?', 3, 'A.	Los ratones de campo siempre comen fino.', 'B.	Los ratones viven en cualquier si hay alimento para sobrevivir.', 'C.	La ciudad y el campo son lugares para habitar.', 'D.	Ninguna es correcta', NULL, 'Reflexión y evaluación', 'Identificar la hipótesis de una parte del texto.', 'Identificar la finalidad de una parte de un texto narrativo.', '5', 6, 699, '5'),
(85, '¿Con que objeto la mujer del cuento quería pegarle a los ratones?', 1, 'A.	Escoba', 'B.	Espada', 'C.	Ratonera', 'D.	Ninguna es correcta', NULL, 'Reflexión Localizar y extraer', 'Extraer información.', 'Encontrar una referencia a una actividad que se desarrolla con anterioridad a los sucesos del cuento.', '6', 6, 730, '6'),
(86, '¿Por qué el ratón de campo decidido regresar al campo?', 3, 'A.	Porque el ratón de ciudad había crecido en la ciudad y había aprendido a defenderse.', 'B.	Porque el ratón de campo había nacido en el campo.', 'C.	Porque el lugar de nacimiento y crecimiento hace que te acostumbres y vivas cómodamente.', 'D.	Ninguna es correcta', NULL, 'Integrar e interpretar', 'Elaborar una interpretación', 'Inferir el significado de una frase en una obra de teatro utilizando referencias contextuales.', '2', 6, 474, '2'),
(87, '“Erase una vez un ratón que vivía en una humilde madriguera, no le hacía falta nada. “<br><br> “El ratón de ciudad decía que la vida en el campo era muy aburrida y que la ciudad era mejor.” <br><br> ¿Qué relación tienen los textos?', 1, 'A.	Los dos textos hablan sobre un lugar donde vivir cómodamente.', 'B.	Los dos textos hablan de comodidad y vivir feliz.', 'C.	Los textos son iguales', 'D.	Ninguna es correcta', NULL, 'Integrar e interpretar', 'Conseguir una interpretación global', 'Identificar la relación existente entre dos textos argumentativos breves (contraste).', '3', 6, 573, '3'),
(88, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Descubrir” ', 2, 'A.	 Desanimo', 'B.	Encontrar', 'C.	Enojo', 'D. ninguna es correcta.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 7, 6, NULL),
(89, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Explicar”', 1, 'A.	 Aclarar', 'B.	Desconocer ', 'C.	Felicidad ', 'D.	 ninguna es correcta', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 7, 6, NULL),
(90, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Descendencia”', 3, 'A.	Atardecer', 'B.	Apretujar', 'C.	Ascendencia', 'D.	 ninguna es correcta.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 7, 6, NULL),
(91, '¿Cómo se llama el papa del Arturo? ', 3, 'A.	Merlín', 'B.	Kay', 'C.	Uther', 'D.	Todas son correctas.', NULL, 'Interpretativa', 'Comprensión literal, Detalle. ', 'Maneja la información literal de los textos leídos', NULL, 7, 6, NULL),
(92, 'En el siguiente texto, porque palabras cambiarias la palabra que esta subrayada: <br> <br> “Cuando ya se aproximaba la hora Arturo se dio cuenta que había olvidado la espada de Kay ”.', 1, 'A.	Descuidado', 'B.	Recuerdo.', 'C.	Impresiono', 'D.	Emprendimiento.', NULL, 'Interpretativa', 'Comprensión literal, Vocabulario. ', 'Maneja la información literal de los textos leídos', NULL, 7, 6, NULL),
(93, '¿Cuál es la idea Principal del texto?', 2, 'A.	Ser rey depende de sacar una espada de un yunque.', 'B.	Solo tienes que creer en ti y en tus habilidades.', 'C.	Todos los reyes necesitan ayuda para gobernar.', 'D.	Todas son correctas.', NULL, 'Argumentativa', 'Comprensión inferencial, idea principal. ', 'Identifica el punto de vista del texto.', NULL, 7, 7, NULL),
(94, '¿Cuál es el propósito del autor?', 1, 'A.	Convencer o Persuadir', 'B.	Criticar', 'C.	Cuestionar', 'D.	Informar', NULL, 'Argumentativa', 'Comprensión Inferencial, propósito del autor. ', 'Reconoce la intencionalidad de un texto y de un autor', NULL, 7, 7, NULL),
(95, '¿Qué hubiera pasado si Arturo no hubiera podido sacar la espada del yunque?  <br><br>"Utiliza el micrófono y graba tu respuesta” ', NULL, NULL, NULL, NULL, NULL, 'no se hubiera convertido en rey, nadie hubiera sabido que él era rey de Inglaterra, se hubiera kay con Arturo, merlín el mago no hubiera sido consejero', 'Argumentativa', 'Comprensión Inferencial, predicción. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', NULL, 7, 7, NULL),
(96, '¿Cuál de las siguientes opciones es una opinión?', 3, 'A.	El rey de Inglaterra había muerto.', 'B.	Merlín era el mejor mago de la historia.', 'C.	Ya puedes seguir reinando sin necesidad de mis consejos. ', 'D.	Ninguna es correcta', NULL, 'Argumentativa', 'Comprensión Inferencial, opinión. ', 'Establece relaciones entre los textos presentados y otros tipos de texto', NULL, 7, 7, NULL),
(97, '¿Qué emoción humana podemos observar en kan cuando Arturo saco la espada de la roca?', 3, 'A.	Nostalgia', 'B.	Amor', 'C.	Alegría', 'D.	Identidad', NULL, 'Argumentativa', 'Comprensión Inferencial, Inferencia de sentimientos. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta las emociones de los personajes.', NULL, 7, 7, NULL),
(98, '¿Cuál es el punto de vista del autor?', 4, 'A.	Medico', 'B.	Científico', 'C.	Familiar', 'D.	Social', NULL, 'Propositiva', 'Comprensión critica-intertextual, punto de vista.', 'propone el punto de vista del autor desde su criterio.', NULL, 7, 7, NULL),
(99, '¿Qué generalización puede realizarse en base al texto?', 3, 'A.	Todos los niños pueden ser rey si sacan una espada de una roca', 'B.	Todos los nobles pueden ser reyes', 'C.	Todos los reyes necesitan por lo menos un consejero.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Comprensión critica-intertextual, generalización. ', 'Evalúa la información obtenida', NULL, 7, 7, NULL),
(100, 'Luego de leer la lectura ¿Qué puedes concluir de la lectura?', NULL, NULL, NULL, NULL, NULL, 'que Merlín era el mejor mago de todos los tiempos, fue consejero de Arturo, y ayudo a Arturo hasta convertirse en el mejor rey de todos los tiempos', 'Propositiva', 'Comprensión critica-intertextual, conclusión', 'Evalúa la información obtenida', NULL, 7, 7, NULL),
(101, 'Con tus palabras haz un pequeño resumen de la historia', NULL, NULL, NULL, NULL, NULL, 'Hace mucho tiempo en Inglaterra habían muchos reinos que luchaban entre sí, y nacido Arturo el hijo de Uther le entregaron al niño a  Merlín el mago, el educo, había una espada llamada Excalibur la cual estaba en una roca, Arturo tenía que llevar una espada a Kay se le olvido, todos habían intentado sacar a Excalibur y no lo podían hacer, Arturo saco la espada y todos se dieron cuenta que el debía ser el rey de Inglaterra. ', 'Propositiva', 'Comprensión critica-intertextual, generalización. ', 'Evalúa la información obtenida', NULL, 7, 7, NULL),
(102, 'Con tus palabras  coméntanos que seria lo que cambiarias de la historia.', NULL, NULL, NULL, NULL, NULL, 'lo que cambiaría es que no hubieran muerto el padre de Arturo para que no hubiera pasado todo lo que le paso, y que merlín hubiera ayudado al padre a ser mejor rey, también lo que hubiera cambiado es que merlín no se hubiera ido de su lado nunca', 'Propositiva', 'Comprensión critica-intertextual, opinión. ', 'Evalúa la información obtenida', NULL, 7, 7, NULL),
(103, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Vanidosa” ', 2, 'A.	Desanimo', 'B.	Engreída', 'C.	Enojo', 'D.	 ninguna es correcta.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 8, 6, NULL),
(104, 'Identifique en las siguientes opciones la palabra que sea el antónimo de “lastima” ', 1, 'A.	Alegría', 'B.	Caridad', 'C.	Mortificar', 'D.	 ninguna es correcta', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', '', 8, 6, NULL),
(105, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Admirar” ', 3, 'A.	Emanar', 'B.	Alumbrar', 'C.	Asombrar', 'D.	 ninguna es correcta.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 8, 6, NULL),
(106, '¿A quién le preguntaba la madrasta de Blancanieves si era hermosa? <br><br> Identifica y elije: ', 3, 'A.	A sus súbditos.', 'B.	El Leñador.', 'C.	El Espejo', 'D.	Todas son correctas.', NULL, 'Interpretativa', 'Comprensión literal, Detalle. ', 'Maneja la información literal de los textos leídos', NULL, 8, 6, NULL),
(107, ' En el siguiente texto, porque palabras cambiarias la palabra que esta subrayada: <br> <br> “Furiosa y <u>vengativa</u> como era, la cruel madrastra se disfrazó de inocente viejecita y partió hacia la casita del bosque”.', 1, 'A.	Rencorosa', 'B.	Fascinada', 'C.	Impresionada.', 'D.	Emprendimiento.', NULL, 'Interpretativa', 'Comprensión literal, Vocabulario. ', 'Maneja la información literal de los textos leídos', NULL, 8, 6, NULL),
(108, '1)	Tú eres, oh reina, la más hermosa de todas las mujeres. <br>2)	Marlín proclamo que Arturo era hijo del rey Uther. <br>3)	Al volver, ya noche, los enanitos a la casa, encontraron a Blancanieves tendida en el suelo, pálida y quieta, creyeron que había muerto. <br><br>¿Según lo que leíste, el orden es el correcto? ', 1, 'A.	Si', 'B.	No', 'C.	Crep que no leí nada de esto.', 'D.	No lo se', NULL, 'Interpretativa', 'Comprensión literal, secuencia. ', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', NULL, 8, 6, NULL),
(109, 'En el siguiente texto, ¿cuál es el antónimo de la palabra subrayada? <br> <br> “Al volver, ya de noche, los enanitos a la casa, encontraron a Blancanieves estaba tendida en el suelo, pálida y quieta, creyeron que había muerto y le <u>construyerón</u> una urna de cristal para que todos los animalitos del bosque puedan despedirse de ella”.', 2, 'A.	Rencorosa', 'B.	Destruir', 'C.	Impresionada', 'D.	Emprendimiento', NULL, 'Interpretativa', 'Comprensión literal, Vocabulario. ', 'Maneja la información literal de los textos leídos', NULL, 8, 6, NULL),
(110, '¿Cuál es la idea Principal del texto?', 1, 'A.	Todos somos talentosos debemos de admirar los talentos de otros.', 'B.	No debemos hacer daño a los demás.', 'C.	Todas las madrastras son malas.', 'D.	Todas son correctas.', NULL, 'Argumentativa', 'Comprensión inferencial, idea principal. ', 'Identifica el punto de vista del texto.', NULL, 8, 6, NULL),
(111, '¿Cuál es el propósito del autor?', 4, 'A.	Convencer o Persuadir', 'B.	Criticar', 'C.	Cuestionar', 'D.	Informar y Entretener', NULL, 'Argumentativa', 'Comprensión Inferencial, propósito del autor. ', 'Reconoce la intencionalidad de un texto y de un autor', NULL, 8, 6, NULL),
(112, '¿Qué hubiera pasado si la madrasta hubiera amado a Blancanieves?<br><br>Utiliza el micrófono y graba tu respuesta', NULL, NULL, NULL, NULL, NULL, 'Blancanieves había amado a su madrastra no hubiera pasado nada malo, no hubieran mandado a matar a Blancanieves, Blancanieves no hubiera conocido a los enanitos', 'Argumentativa', 'Comprensión Inferencial, predicción. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', NULL, 8, 6, NULL),
(113, '¿Cuál de las siguientes opciones es un hecho?', 2, 'A.	Tú eres, oh reina la mas hermosa de todas las mujeres dijo el espejo.', 'B.	Blancanieves al verse sola sintió miedo y lloro.', 'C.	¿Quién es la más bella pregunto la madrastra?', 'D.	Ninguna es correcta', NULL, 'Argumentativa', 'Comprensión Inferencial, opinión. ', 'Establece relaciones entre los textos presentados y otros tipos de texto', NULL, 8, 6, NULL),
(114, '¿Qué emoción humana podemos observar en la madrastra cuando el espejo le dijo que no era la más hermosa del reino?', 3, 'A.	Nostalgia', 'B.	Amor', 'C.	Ira', 'D.	Identidad', NULL, 'Argumentativa', 'Comprensión Inferencial, Inferencia de sentimientos. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta las emociones de los personajes.', NULL, 8, 6, NULL),
(115, '¿Cuál es el punto de vista del autor?', 3, 'A.	Medico', 'B.	Científico', 'C.	Familiar', 'D.	Social', NULL, 'Propositiva', 'Comprensión critica-intertextual, punto de vista.', 'Propone el punto de vista del autor desde su criterio.', NULL, 8, 7, NULL),
(116, '¿Qué generalización puede realizarse en base al texto?', 1, 'A.	Todos debemos de tolerar y saber convivir con los demás.', 'B.	Todas las madrastras son malas', 'C.	Todos los espejos hablan.', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Comprensión critica-intertextual, generalización. ', 'Evalúa la información obtenida', NULL, 8, 7, NULL),
(117, 'Luego de leer la lectura ¿Qué puedes concluir de la lectura?', NULL, NULL, NULL, NULL, NULL, 'que la vanidad, o que el ser bonito no nos da derecho a hacerles daño a otras personas, que cada quien es bonito y debemos de respetar, no debemos hacerle daño a alguien en ningún momento', 'Propositiva', 'Comprensión critica-intertextual, conclusión. ', 'Evalúa la información obtenida', NULL, 8, 7, NULL),
(118, '¿Con tus palabras haz un pequeño resumen de la historia?', NULL, NULL, NULL, NULL, NULL, 'Erase una vez en un castillo vivía una hermosa princesa, la madrastra malvada le preguntaba todos los días a su espejo quien era la más bonita del castillo siempre el espejo le decía que la madrastra era la más hermosa, hasta que un día el espejo le dijo que Blancanieves era la más bonita la madrastra envió al leñador a matarla el leñador no pudo, la madrastra se disfrazó, transformo en anciana, Blancanieves conoció a los siete enanitos, convivio con ellos la madrastra la enveneno, construyeron una urna de cristal el príncipe vio a Blancanieves la beso y todos vivieron felices para siempre ', 'Propositiva', 'Comprensión critica-intertextual, generalización. ', 'Evalúa la información y crea resúmenes', NULL, 8, 7, NULL),
(119, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Seto” ', 4, 'A.	Abrevadero', 'B.	Planta', 'C.	Fuente', 'D.	 Cerca.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 9, 6, NULL),
(120, 'Identifique en las siguientes opciones la palabra que sea el antónimo de “Dar” ', 3, 'A.	Donar', 'B.	Aplicar', 'C.	Quitar', 'D.	 ninguna es correcta', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 9, 6, NULL),
(121, 'Identifique en las siguientes opciones la palabra que sea el sinónimo de “Afanar” ', 1, 'A.	Esforzar', 'B.	Esperar', 'C.	Terminar', 'D. ninguna es correcta.', NULL, 'Interpretativa', 'Comprensión literal, vocabulario. ', 'Reconoce el significado de las palabras en el texto', NULL, 9, 6, NULL),
(122, 'Identifica dentro de las opciones ¿Cuál fue la primera frase que dijo el caracol en la lectura? ', 3, 'A.	Me tomo mi tiempo -Dijo el caracol', 'B.	Nada ha cambiado -dijo- No se advierte el mas insignificante progreso.', 'C.	-Paciencia -decía el caracol.', 'D.	Todas son correctas.', NULL, 'Interpretativa', 'Comprensión literal, Detalle. ', 'Maneja la información literal de los textos leídos', NULL, 9, 6, NULL),
(123, 'En el siguiente texto, porque palabras cambiarias la palabra que esta subrayada utiliza un sinónimo : <br> <br> “¡Me recojo en mi interior, y en el voy a quedarme! El mundo no me <u>interesa</u>.”', 2, 'A.	Descuidado', 'B.	Gusta.', 'C.	Impresiono.', 'D.	Emprendimiento.', NULL, 'Interpretativa', 'Comprensión literal, Vocabulario. ', 'Maneja la información literal de los textos leídos', NULL, 9, 6, NULL),
(124, '1)	Aquello me hizo bien fue una verdadera bendición. Tales son mis recuerdos mi vida. <br> 2)	Pero en el jardín brotaron los rosales y los nuevos caracoles se arrastraban con su casa y escupían al mundo. <br> 3)	De la tierra, allá abajo, me subía la fuerza que descendida sobre mí lo desde lo alto. <br><br> ¿Según lo que leíste, el orden es el correcto? ', 2, 'A.	Si', 'B.	No', 'C.	Creo que no leí nada de esto.', 'D.	No lo se', NULL, 'Interpretativa', 'Comprensión literal, secuencia. ', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', NULL, 9, 6, NULL),
(125, '¿Qué es lo que el rosal realizaba tan afanosa? ', 1, 'A.	Echaba Capullos', 'B.	Haciéndole preguntas al caracol', 'C.	Trabajando', 'D.	No lo se', NULL, 'Interpretativa', 'Comprensión literal, Detalle. ', 'Identifica y organiza eventos de un texto en forma lógica y secuencial', NULL, 9, 6, NULL),
(126, '¿Cuál es la idea Principal del texto?', 2, 'A.	Los caracoles tenían mucha paciencia. ', 'B.	Tenemos que ver siempre el lado positivo a la vida', 'C.	Todos los caracoles viven en sus casas.', 'D.	Todas son correctas.', NULL, 'Argumentativa', 'Comprensión inferencial, idea principal. ', 'Identifica el punto de vista del texto.', NULL, 9, 6, NULL),
(127, '¿Cuál es el propósito del autor?', 4, 'A.	Convencer o Persuadir', 'B.	Criticar', 'C.	Cuestionar', 'D.	Informar y enseñar', NULL, 'Argumentativa', 'Comprensión Inferencial, propósito del autor. ', 'Reconoce la intencionalidad de un texto y de un autor', NULL, 9, 6, NULL),
(128, '¿Qué hubiera pasado si el caracol hubiera apreciado la belleza de su alrededor? <br> Utiliza el micrófono y graba tu respuesta', NULL, NULL, NULL, NULL, NULL, 'su vida no hubiera sido tan mala, no se hubiera quejado de todo, hubiera disfrutado el mundo', 'Argumentativa', 'Comprensión Inferencial, predicción. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta la intencionalidad y la organización de las ideas', NULL, 9, 6, NULL),
(129, '¿Cuál de las siguientes opciones es una opinión?', 1, 'A.	Ustedes siempre están de prisa.', 'B.	De los rosales brotan capullos.', 'C.	Los Caracoles ven todo desde una mala perspectiva.', 'D.	Ninguna es correcta', '', 'Argumentativa', 'Comprensión Inferencial, opinión. ', 'Establece relaciones entre los textos presentados y otros tipos de texto', NULL, 9, 6, NULL),
(130, '¿Qué emoción humana podemos observar en el caracol al ver al mundo?', 3, 'A.	Nostalgia', 'B.	Amor', 'C.	Apatía', 'D.	Identidad', NULL, 'Argumentativa', 'Comprensión Inferencial, Inferencia de sentimientos. ', 'Establece Interpreta diversos tipos de textos escritos teniendo en cuenta las emociones de los personajes.', NULL, 9, 6, NULL),
(131, '¿Cuál es el punto de vista del autor?', 4, 'A.	Medico', 'B.	Científico', 'C.	Familiar', 'D.	Social', NULL, 'Propositiva', 'Comprensión critica-intertextual, punto de vista.', 'propone el punto de vista del autor desde su criterio.', NULL, 9, 6, NULL),
(132, '¿Qué generalización puede realizarse en base al texto?', 2, 'A.	Todos los caracoles son apáticos.', 'B.	A todas las flores le brotan capullos, y son frescas.', 'C.	Todos los rosales se inclinan a la derecha', 'D.	Ninguna es correcta', NULL, 'Propositiva', 'Comprensión critica-intertextual, generalización. ', 'Evalúa la información obtenida', NULL, 9, 6, NULL),
(133, 'Luego de leer la lectura ¿Qué puedes concluir de la lectura?', NULL, NULL, NULL, NULL, NULL, 'que la vida es hermosa y depende como lo veas, que la apatía es algo que no debemos tolerar, no debemos ser como el caracol debemos ser como las flores.]', 'Propositiva', 'Comprensión critica-intertextual, conclusión. ', 'Evalúa la información obtenida', NULL, 9, 6, NULL),
(134, '¿Con tus palabras haz un pequeño resumen de la historia?', NULL, NULL, NULL, NULL, NULL, 'la lectura trata sobre un caracol que no le gustaba nada sobre la vida, y las flores disfrutaban todo lo de la vida, el caracol lo hacia todo sin ánimo de nada, mientras las flores se empeñaban en todo para que todo les saliera bien. Nos debe interesar el mundo es en donde vivimos  ', 'Propositiva', 'Comprensión critica-intertextual, resumen. ', 'Evalúa la información obtenida', NULL, 9, 6, NULL),
(135, '¿Qué opinas sobre el contenido y la forma del texto?', NULL, NULL, NULL, NULL, NULL, 'El alumno tendrá que proponer su opinión de no mayor a 50 caracteres para que sea tomado como buena.', 'Propositiva', 'Comprensión critica-intertextual, ', 'opina sobre el contenido y la forma del texto.', NULL, 9, 6, NULL);

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
-- Estructura de tabla para la tabla `micofre`
--

CREATE TABLE `micofre` (
  `idRegistroPalabra` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `palabra` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `definicion` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `micofre`
--

INSERT INTO `micofre` (`idRegistroPalabra`, `idLectura`, `idUsuario`, `palabra`, `definicion`, `fecha`, `hora`) VALUES
(1, 115, 17, 'Innovación', 'Innovación es un cambio que introduce novedades', '05/06/2019', '06:48:09'),
(2, 115, 17, 'Paradigma', 'Conjunto de unidades que pueden sustituir a otra en un mismo contexto porque cumplen la misma función.', '05/06/2019', '06:49:24'),
(3, 115, 17, 'Procrastinar', 'Significa posponer o aplazar tareas, deberes y responsabilidades por otras actividades que nos resultan más gratificantes pero que son irrelevantes.', '05/06/2019', '08:10:29'),
(4, 115, 17, 'Colesterol', 'El colesterol es una sustancia cerosa y parecida a la grasa que se encuentra en todas las células de su cuerpo. ', '05/06/2019', '08:56:22'),
(5, 116, 17, 'Transformación ', 'Acción de transformar o transformarse.', '25/06/2019', '12:50:11'),
(6, 116, 17, 'Energía', 'Capacidad que tiene la materia de producir trabajo en forma de movimiento, luz, calor, etc.', '25/06/2019', '12:50:29'),
(7, 116, 17, 'Capacidad', 'Propiedad de poder contener cierta cantidad de alguna cosa hasta un límite determinado.', '25/06/2019', '12:51:29'),
(8, 116, 17, 'Cuántico', 'Del cuanto (cantidad de energía) o relacionado con él.', '25/06/2019', '12:52:07'),
(9, 116, 17, 'Física Cuántica', 'La física cuántica es la rama de la ciencia que estudia las características, comportamientos e interacciones de partículas a nivel atómico y subatómico.', '25/06/2019', '12:53:00'),
(10, 83, 17, 'Coloquial', 'En el uso de la lengua española, se conoce como español coloquial al registro informal que se utiliza en la vida cotidiana.1​ El español coloquial varía mucho en función de los dialectos geográficos del español. ', '29/06/2019', '02:30:17'),
(11, 83, 17, 'Español', 'El español o castellano es una lengua romance procedente del latín hablado. Pertenece al grupo ibérico y es originaria de Castilla, reino medieval de la península ibérica.', '29/06/2019', '02:30:58'),
(12, 83, 17, 'Impresionante', 'Que causa una impresión muy intensa de admiración, sorpresa o miedo.', '29/06/2019', '02:31:46'),
(13, 83, 17, 'Encontrar', 'Localizar una cosa o persona que se busca, o reunirse con ella.', '29/06/2019', '02:32:31'),
(14, 83, 17, 'Peinado', 'El peinado o estilo del cabello es la forma de cortarse o arreglarse el cabello. Los seres humanos de muchas culturas cortan su cabello, en vez de dejarlo crecer naturalmente. Los estilos del pelo se usan frecuentemente como seña de identidad cultural, social o étnica y pueden reflejar el estatus social y la individualidad.', '29/06/2019', '02:33:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_parrafo`
--

CREATE TABLE `mod_parrafo` (
  `idParrafo_mod` int(11) NOT NULL,
  `idTexto` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idParrafo` int(11) NOT NULL,
  `parrafo_mod` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `contador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabrasglosario`
--

CREATE TABLE `palabrasglosario` (
  `idPalabras` int(11) NOT NULL,
  `concepto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `definicion` longtext COLLATE utf8_spanish_ci,
  `idGlosario` int(11) DEFAULT NULL,
  `imagenDir` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ponderacionPalabra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `palabrasglosario`
--

INSERT INTO `palabrasglosario` (`idPalabras`, `concepto`, `definicion`, `idGlosario`, `imagenDir`, `ponderacionPalabra`) VALUES
(2, 'Minino', 'Sinónimo de gato, es lo mismo decir gato o minino.', 1, '', 10),
(3, 'Atosigar', 'Inquietar o causar agobio con exigencias o preocupaciones', 1, '', 10),
(4, 'Perturbar', 'Quitar la paz o tranquilidad a alguien.', 1, '', 10),
(5, 'Madriguera', 'Cuevecilla donde habitan ciertos animales', 1, '', 10),
(6, 'Provisiones', 'Conjunto de alimentos y otros artículos que se almacenan y reservan para cubrir necesidades.', 1, '', 10),
(8, 'Asamblea', 'Reunión de personas para algún.', 1, '', 10),
(9, 'Suministros', 'Mercancías o productos de primera necesidad que se suministran.', 1, '', 10),
(12, 'Vitorearon', 'Aplaudir, aclamar con vítores.', 1, '', 10),
(13, 'Asediaba', 'Cercar un lugar para impedir que salgan los que están en él o que reciban socorro de fuera.', 1, '', 10),
(14, 'Libreta', 'Conjunto de hojas de papel que sirve para anotar cosas.', 2, '../1in/glosario/lect1', 10),
(15, 'País', 'Conjunto de personas que viven en un mismo territorio.', 2, '../1in/glosario/lect1', 10),
(16, 'Dorado', 'Que es amarillo como el oro o tiene el brillo del oro.', 2, '../1in/glosario/lect1', 10),
(17, 'Lejano', 'Es decir que algo está muy retirado.', 2, '../1in/glosario/lect1', 10),
(18, 'Hada', 'Ser fantástico con figura de mujer bella y con poderes mágicos.', 2, '../1in/glosario/lect1', 10),
(19, 'Obediencia', 'Significa hacer caso a lo que diga papa, mama, maestras y personas grandes.', 2, '../1in/glosario/lect1', 10),
(20, 'Trayecto', 'Espacio que se recorre o que se ha de recorrer para ir de un lugar a otro.', 2, '../1in/glosario/lect1', 10),
(21, 'Secreto', 'Significa algo que es oculto, algo que solo tú sabes', 2, '../1in/glosario/lect1', 10),
(22, 'Recuerdo', 'Es algo que tu memorizaste algo que ya paso, pero no se te olvida.', 2, '../1in/glosario/lect1', 10),
(23, 'Ventaja', 'significa ir delante o que tú vas ganando.', 2, '../1in/glosario/lect1', 10),
(24, 'Silvestre', 'Que crece en el campo o la selva de manera natural, sin intervención humana.', 3, '', 10),
(25, 'Habituó', 'Acostumbrar o hacer que alguien se acostumbre a algo.', 3, '', 10),
(26, 'Emocionante', 'Sentimiento muy intenso de alegría o tristeza producido por un hecho, una idea, un recuerdo, etc. ', 3, '', 10),
(27, 'Comprobar', 'Pasar a tener la certeza de la veracidad de una suposición, un dato o un resultado obtenido anteriormente mediante demostración o pruebas que los acreditan como ciertos. ', 3, '', 10),
(28, 'Cediendo', 'es un verbo que puede significar dar, traspasar o transferir algo a alguien', 3, '', 10),
(29, 'Insistir', 'Repetir una o varias veces algo que se dice o se hace, para conseguir algo que se desea. ', 3, '', 10),
(30, 'Ajetreo', 'Actividad o movimiento intensos. ', 3, '', 10),
(31, 'Madriguera', 'Cueva o cavidad pequeña, estrecha y generalmente profunda que excavan el conejo, el topo, el tejón y otros animales salvajes de pequeño tamaño para refugiarse habitualmente y para tener sus crías.', 3, '', 10),
(32, 'Husmear', 'Indagar con disimulo en la vida de una persona. ', 3, '', 10),
(33, 'Perspectiva', 'Manera de representar uno o varios objetos en una superficie plana, que da idea de la posición, volumen y situación que ocupan en el espacio con respecto al ojo del observador.', 3, '', 10);

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
-- Estructura de tabla para la tabla `preguntaspersonajes`
--

CREATE TABLE `preguntaspersonajes` (
  `idItem` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_spanish_ci NOT NULL,
  `respuestaCorrecta` int(11) NOT NULL,
  `respuesta1` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta2` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta3` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `punteoItem` int(11) NOT NULL,
  `idquizpersonaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preguntaspersonajes`
--

INSERT INTO `preguntaspersonajes` (`idItem`, `pregunta`, `respuestaCorrecta`, `respuesta1`, `respuesta2`, `respuesta3`, `punteoItem`, `idquizpersonaje`) VALUES
(1, '¿Quién era el protagonista de la historia?', 1, 'A.	El gato.', 'B.	Los dueños', 'C.	El cascabel', 20, 1),
(2, '¿Los dueños del gato eran personajes fugaces?', 2, 'A. Falso', 'B.	Verdadero', 'C. Ninguna es correcta', 20, 1),
(3, '¿La asamblea de ratones eran personajes principales colectivos?', 2, 'A. Falso', 'B. Verdadero', 'C. Ninguna es correcta', 20, 1),
(4, '¿Quién era el enemigo en la historia?', 2, 'A. El gato', 'B. Los ratones', 'C. Los dueños', 20, 1),
(5, '¿Quién era el enemigo secundario individual?', 1, 'A. El joven ratón', 'B. Los ratones', 'C. Los dueños', 20, 1),
(6, '¿Quién era el protagonista de la historia?', 1, 'A.	Micaela', 'B.	Brillo el ratón dorado.', 'C.	El hada de la obediencia.', 20, 2),
(7, '¿Quién era el personaje secundario de la historia?', 3, 'A.	Micaela', 'B.	Brillo el ratón dorado.', 'C.	El hada de la obediencia.', 20, 2),
(8, '¿EL raton brillo dorado que tipo de personaje es?', 3, 'A.	Primario', 'B.	Secundario', 'C.	Terciario', 20, 2),
(9, '¿Los padres de micaela eran personajes fugaces?', 1, 'A.	Si ', 'B.	No ', 'C.	Ninguna es correcta', 20, 2),
(10, '¿Es bueno obedecer a papá y a mamá?', 1, 'A.	Si ', 'B.	No ', 'C.	Ninguna es correcta', 20, 2),
(11, '¿Quién era el protagonista de la historia?', 1, 'A.	El ratón de campo.', 'B.	El ratón de ciudad', 'C.	El gato', 20, 3),
(12, '¿El gato era un personaje fugaz?', 2, 'A.	No es cierto.', 'B.	Si es cierto', 'C. Ninguna es correcta', 20, 3),
(13, '¿La mujer que aparece era una persona secundario individual?', 2, 'A.	No es cierto.', 'B.	Si es cierto', 'C. No lo se', 20, 3),
(14, '¿Quién era el enemigo de la historia?', 2, 'A.	El campo.', 'B.	La ciudad.', 'C.	El gato.', 20, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publictexto`
--

CREATE TABLE `publictexto` (
  `idPublicacion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `autor` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tematica` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `texto` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `publictexto`
--

INSERT INTO `publictexto` (`idPublicacion`, `idUsuario`, `idLectura`, `autor`, `tematica`, `titulo`, `texto`, `fecha`, `hora`) VALUES
(2, 17, 116, 'ENRIQUE LÓPEZ', 'Cientifico', 'Avance Tecnológico', 'Y en el hogar este avance tecnológico será revolucionario. La empresa LG desarrolló robots como el CLOi que funciona por comando de voz para ayudar en los quehaceres del hogar, ya sea, hacer las compras o trasladar objetos, incluso puede jugar al Scrabble con un oponente gracias a un sistema de visión inteligente.                                                                                                                                                                                                                                                                                                                     <br>', '24/06/2019', '09:43:59'),
(7, 17, 119, 'ENRIQUE LÓPEZ', 'Informatica', 'La nube ', 'La computación en la nube son servidores desde Internet encargados de atender las peticiones en cualquier momento. Se puede tener acceso a su información o servicio, mediante una conexión a internet desde cualquier dispositivo móvil o fijo ubicado en cualquier lugar. Sirven a sus usuarios desde varios proveedores de alojamiento repartidos frecuentemente por todo el mundo. Esta medida reduce los costos, garantiza un mejor tiempo de actividad y que los sitios web sean invulnerables a los delincuentes informáticos, a los gobiernos locales y a sus redadas policiales pertenecientes.                                                                                                                                                                                                                                                                                                                     <br><br>Cloud computing es un nuevo modelo de prestación de servicios de negocio y tecnología, que permite incluso al usuario acceder a un catálogo de servicios estandarizados y responder con ellos a las necesidades de su negocio, de forma flexible y adaptativa, en caso de demandas no previsibles o de picos de trabajo, pagando únicamente por el consumo efectuado, o incluso gratuitamente en caso de proveedores que se financian mediante publicidad o de organizaciones sin ánimo de lucro.                                                                                                                                                                                                                                                                                                                     <br><br>El cambio que ofrece la computación desde la nube es que permite aumentar el número de servicios basados en la red. Esto genera beneficios tanto para los proveedores, que pueden ofrecer, de forma más rápida y eficiente, un mayor número de servicios, como para los usuarios que tienen la posibilidad de acceder a ellos, disfrutando de la ‘transparencia’ e inmediatez del sistema y de un modelo de pago por consumo. Así mismo, el consumidor ahorra los costes salariales o los costes en inversión económica (locales, material especializado, etc.).                                                                                                                                                                                                                                                                                                                     <br>', '25/06/2019', '09:18:48'),
(8, 17, 115, 'ENRIQUE LÓPEZ', 'Cientifico', 'Energía Solar', 'Este es un parrafo de ejemplo dejamos la idea principal, con este parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos parrafo damos .                                                                                                                                                                                                                                                                                                                     <br><br>Parrafo lorem sump Parrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sump Parrafo lorem sump.                                                                                                                                                                                                                                                                                                                     <br><br>--------------Parrafo modificado ------------- sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sumpParrafo lorem sump Parrafo lorem sump.                                                                                                                                                                                                                                                                                                                       <br>', '25/06/2019', '09:30:22'),
(9, 17, 117, 'ENRIQUE LÓPEZ', 'Noticia Informativa', '¿Como escribir Textos informativos?', 'Los textos informativos son los que se utilizan para dar a conocer una noticia o acontecimiento de importancia para las personas a las que va dirigido.                                                                                                                                                                                                                                                                                                                     <br><br>Una de las principales características de los textos informativos es que el emisor se limita a narrar los hechos sin expresar sus emociones o sentimientos, ya que el texto debe de ser veraz y objetivo.                                                                                                                                                                                                                                                                                                                     <br><br>Una de las principales características de los textos informativos es que el emisor se limita a narrar los hechos sin expresar sus emociones o sentimientos, ya que el texto debe de ser veraz y objetivo. --Agregue esto                                                                                                                                                                                                                                                                                                                       <br>', '25/06/2019', '09:31:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quizpersonajes`
--

CREATE TABLE `quizpersonajes` (
  `idQuiz` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `punteoQuiz` int(11) NOT NULL,
  `cantidadPreguntas` int(11) NOT NULL,
  `nombreQuiz` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `quizpersonajes`
--

INSERT INTO `quizpersonajes` (`idQuiz`, `idLectura`, `punteoQuiz`, `cantidadPreguntas`, `nombreQuiz`) VALUES
(1, 1, 100, 5, 'El cascabel del Gato - Personajes'),
(2, 79, 100, 5, 'Micaela y el hada de la obediencia - Personajes'),
(3, 11, 100, 5, 'El ratón de campo y el ratón de ciudad - Personajes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroglosario`
--

CREATE TABLE `registroglosario` (
  `idRegistroPalabra` int(11) NOT NULL,
  `recordPalabra` longtext COLLATE utf8_spanish_ci NOT NULL,
  `idGlosario` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idPalabra` int(11) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registroglosario`
--

INSERT INTO `registroglosario` (`idRegistroPalabra`, `recordPalabra`, `idGlosario`, `idUsuario`, `idPalabra`, `fecha`, `hora`) VALUES
(10, 'urbe ciudad especialmente la que tiene un gran número de habitantes', 1, 1, 1, '30/03/2019', '07:08:23'),
(11, 'mínimo sinónimo de gato es lo mismo decir gato minino', 1, 1, 2, '30/03/2019', '07:08:54'),
(18, 'atosigar inquietaron causar agobio con exigencias o preocupaciones', 1, 1, 3, '22/04/2019', '01:10:54'),
(19, 'perturbar quitar la paz o tranquilidad al que', 1, 1, 4, '22/04/2019', '04:44:46'),
(20, 'madriguera jueves y ya donde habitan ciertos animales', 1, 1, 5, '23/04/2019', '12:00:05'),
(22, 'Urbi ciudad especialmente la que tiene un gran número de habitantes', 1, 19, 1, '08/05/2019', '06:59:47'),
(24, 'minino sinónimo de gato es lo mismo decir gato o minino', 1, 17, 2, '16/05/2019', '08:05:14'),
(25, ' o causar hago', 1, 17, 3, '21/05/2019', '12:02:06'),
(26, 'Silvestre que crece en el campo o la selva de manera natural sin intervención humana', 3, 17, 24, '03/07/2019', '09:00:03'),
(27, ' cosas', 2, 17, 14, '17/07/2019', '07:55:34'),
(28, 'quitar la paz y tranquilidad a alguien perturba', 1, 17, 4, '16/08/2019', '07:11:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebacomprension`
--

CREATE TABLE `registropruebacomprension` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rPregunta1` int(11) DEFAULT NULL,
  `rPregunta2` int(11) DEFAULT NULL,
  `rPregunta3` int(11) DEFAULT NULL,
  `rPregunta4` int(11) DEFAULT NULL,
  `rPregunta5` int(11) DEFAULT NULL,
  `rPregunta6` int(11) DEFAULT NULL,
  `rPregunta7` int(11) DEFAULT NULL,
  `rPregunta8` int(11) DEFAULT NULL,
  `rPregunta9` int(11) DEFAULT NULL,
  `rPregunta10` int(11) DEFAULT NULL,
  `totalObtenido` int(11) DEFAULT NULL,
  `nivelObtenido` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `intento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension`
--

INSERT INTO `registropruebacomprension` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `rPregunta10`, `totalObtenido`, `nivelObtenido`, `intento`) VALUES
(20, 1, 17, '00:43', '07/04/2019', '05:45:10', 3, 1, 3, 1, 2, 1, 2, 2, 2, 2, 0, '1C', 1),
(21, 1, 17, '00:19', '07/04/2019', '06:38:28', 2, 1, 1, 1, 2, 2, 3, 2, 1, 3, 50, '', 0),
(46, 79, 17, '00:11', '02/07/2019', '09:19:28', 1, 1, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, 60, NULL, 1),
(47, 79, 17, '00:31', '02/07/2019', '09:21:38', 1, 2, 0, 2, 2, NULL, NULL, NULL, NULL, NULL, 20, NULL, 2),
(48, 79, 17, '00:7', '02/07/2019', '09:37:12', 2, 1, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, 40, NULL, 3),
(49, 11, 17, '00:41', '03/07/2019', '06:57:13', 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 60, NULL, 4),
(50, 11, 17, '00:41', '03/07/2019', '08:39:34', 2, 1, 2, 2, 1, 0, 2, 1, 1, 2, 0, '1C', 1),
(51, 11, 17, '00:27', '21/07/2019', '11:05:52', 1, 2, 2, 2, 2, 2, 2, 2, 3, 2, 30, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebacomprension3p`
--

CREATE TABLE `registropruebacomprension3p` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `rPregunta1` int(11) NOT NULL,
  `rPregunta2` int(11) NOT NULL,
  `rPregunta3` int(11) NOT NULL,
  `rPregunta4` int(11) NOT NULL,
  `rPregunta5` int(11) NOT NULL,
  `rPregunta6` int(11) NOT NULL,
  `rPregunta7` int(11) NOT NULL,
  `rPregunta8` int(11) NOT NULL,
  `rPregunta9` int(11) NOT NULL,
  `input1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `totalObtenido` int(11) NOT NULL,
  `intento` longtext COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension3p`
--

INSERT INTO `registropruebacomprension3p` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `input1`, `input2`, `input3`, `totalObtenido`, `intento`) VALUES
(17, 21, '17', '00:57', '05/07/2019', '07:30:36', 2, 1, 2, 3, 1, 2, 2, 1, 2, 'hubiera cuidado sus hermanitas y no le hubiera pasado ningún accidente', 'Pues que Rubí era una tortuguita desobediente que se hubiera obedecido a mamá no le hubiera pasado ningún accidente', 'película trata sobre Rubí y era una tortuguita era desobediente mamá le dijo que tenía que cumplir y no contesta', 0, '1'),
(18, 21, '17', '2:30', '05/07/2019', '07:39:36', 2, 1, 2, 3, 1, 2, 2, 1, 2, 'le hubiera pasado nada y voy a cuidar a sus hermanitos', 'lectura habla sobre Ruby desobediente no le hizo caso a Fátima', 'en resumen podemos decir que robe era una tortuguita desobediente por ello le iba a suceder varios accidentes y describa sus hermanitos', 0, '2'),
(19, 21, '17', '3:56', '07/07/2019', '06:22:20', 1, 2, 1, 1, 2, 1, 2, 5, 2, 'pasado nada y no se lo hubieran intentado comer Don José', 'qué debemos obedecer a papi mi mami para que no nos pasan cosas malas', 'obedecer a papá y a mamá no seas el mejor niño y debemos de hacerlo todos los días', 0, '3'),
(20, 21, '17', '2:46', '07/07/2019', '06:28:51', 1, 2, 1, 1, 2, 1, 2, 8, 2, 'no le hubiera pasado nada y no se lo hubiera intentado comer Don José', 'qué debemos obedecer a Fátima me lo que nos diga para que no nos pase nada debemos de cuidar siempre nuestros hermanitos', 'tratados con una tortuguita llamada Ruby desobediente pero le hacía caso a Fátima y nosotros debemos obedecer a papá y a mamá', 54, '4'),
(21, 21, '17', '1:13', '07/07/2019', '08:59:44', 2, 1, 2, 2, 1, 2, 2, 1, 2, 'no le hubiera pasado nada y no le hubiera puesto malo', 'debemos obedecer a papi Llámame siempre', 'qué tenemos que hacer a papá y a mamá y que no debemos desobedecer Y qué debemos cuidar nuestros hermanos', 38, '5'),
(22, 21, '17', '1:26', '14/07/2019', '09:08:40', 2, 1, 2, 1, 1, 2, 2, 1, 2, 'no le hubiera pasado nada porque yo decido a papá y a mamá', 'qué debemos obedecer a papá y mamá me importa lo que pase y a cuidar a nuestros hermanitos', 'colores inglés lectura diciendo que obedecer a papá y a mamá es lo mejor', 26, '6'),
(23, 21, '17', '00:55', '21/07/2019', '09:06:18', 2, 1, 2, 1, 1, 2, 2, 2, 1, 'no le hubiera pasado nada y hubiera cuidado a sus hermanitos', 'qué debemos obedecer a papá y a mamá y todo lo que nos digan y no debemos descuidar a nuestros hermanitos', 'de una tortuguita que era desobediente que expuso a sus hermanitos al peligro por poco se la come don José', 29, '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebacomprension4p`
--

CREATE TABLE `registropruebacomprension4p` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `rPregunta1` int(11) NOT NULL,
  `rPregunta2` int(11) NOT NULL,
  `rPregunta3` int(11) NOT NULL,
  `rPregunta4` int(11) NOT NULL,
  `rPregunta5` int(11) NOT NULL,
  `rPregunta6` int(11) NOT NULL,
  `rPregunta7` int(11) NOT NULL,
  `rPregunta8` int(11) NOT NULL,
  `rPregunta9` int(11) NOT NULL,
  `rPregunta10` int(11) NOT NULL,
  `rPregunta11` int(11) NOT NULL,
  `input1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input4` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `totalObtenido` int(11) NOT NULL,
  `intento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension4p`
--

INSERT INTO `registropruebacomprension4p` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `rPregunta10`, `rPregunta11`, `input1`, `input2`, `input3`, `input4`, `totalObtenido`, `intento`) VALUES
(1, 31, 17, '2:5', '28/07/2019', '08:39:14', 2, 1, 2, 0, 3, 2, 1, 2, 3, 3, 2, 'nos hubiera podido convertir un rey y nadie lo hubiera querido', 'que me dijera el mejor mago del mundo y te aprecio Arturo hasta que él fue un rey', 'la historia trata sobre Merlín El Mago el mejor mago de la historia que apoyó a Arturo hasta que se convirtió en Rey luego lo dejo para que gobernara sobre Inglaterra', 'que no hubiera muerto el papá de Arturo y que me den nunca los hubiera abandonado y es hubiera dejado solo', 55, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebacomprension5p`
--

CREATE TABLE `registropruebacomprension5p` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `rPregunta1` int(11) NOT NULL,
  `rPregunta2` int(11) NOT NULL,
  `rPregunta3` int(11) NOT NULL,
  `rPregunta4` int(11) NOT NULL,
  `rPregunta5` int(11) NOT NULL,
  `rPregunta6` int(11) NOT NULL,
  `rPregunta7` int(11) NOT NULL,
  `rPregunta8` int(11) NOT NULL,
  `rPregunta9` int(11) NOT NULL,
  `rPregunta10` int(11) NOT NULL,
  `rPregunta11` int(11) NOT NULL,
  `rPregunta12` int(11) NOT NULL,
  `rPregunta13` int(11) NOT NULL,
  `input1` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input2` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `input3` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `totalObtenido` int(11) NOT NULL,
  `intento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension5p`
--

INSERT INTO `registropruebacomprension5p` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `rPregunta10`, `rPregunta11`, `rPregunta12`, `rPregunta13`, `input1`, `input2`, `input3`, `totalObtenido`, `intento`) VALUES
(1, 41, 17, '3:52', '29/07/2019', '12:05:27', 2, 2, 3, 3, 1, 2, 2, 2, 2, 1, 3, 3, 1, 'Llamar Carla no hubiera conocido Blancanieves y los enanitos y hubiera bebido feliz en el castillo', 'qué no debemos ser vanidosos que debemos de respetar a las personas todo Tal cual son y qué debemos tolerar', 'gracias a Dios en un castillo muy hermoso vivía Blancanieves y su madrastra la madrastra no quería Blancanieves y la mandó matar con el leñador Blancanieves huyó al Bosque encontró los enanitos los conoció la madrastra se vistió de viejito como una manzana la durmió y Blancanieves descanso la metieron en una urna y luego lo conoce el príncipe la besó y fueron felices para siempre', 63, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebacomprension6p`
--

CREATE TABLE `registropruebacomprension6p` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rPregunta1` int(11) NOT NULL,
  `rPregunta2` int(11) NOT NULL,
  `rPregunta3` int(11) NOT NULL,
  `rPregunta4` int(11) NOT NULL,
  `rPregunta5` int(11) NOT NULL,
  `rPregunta6` int(11) NOT NULL,
  `rPregunta7` int(11) NOT NULL,
  `rPregunta8` int(11) NOT NULL,
  `rPregunta9` int(11) NOT NULL,
  `rPregunta10` int(11) NOT NULL,
  `rPregunta11` int(11) NOT NULL,
  `rPregunta12` int(11) NOT NULL,
  `rPregunta13` int(11) NOT NULL,
  `input1` longtext COLLATE utf8_spanish_ci NOT NULL,
  `input2` longtext COLLATE utf8_spanish_ci NOT NULL,
  `input3` longtext COLLATE utf8_spanish_ci NOT NULL,
  `input4` longtext COLLATE utf8_spanish_ci NOT NULL,
  `totalObtenido` int(11) NOT NULL,
  `intento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension6p`
--

INSERT INTO `registropruebacomprension6p` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `rPregunta10`, `rPregunta11`, `rPregunta12`, `rPregunta13`, `input1`, `input2`, `input3`, `input4`, `totalObtenido`, `intento`) VALUES
(1, 51, 17, '1:48', '23/08/2019', '12:00:33', 2, 3, 1, 0, 1, 2, 1, 2, 2, 2, 2, 2, 1, 'hubiera valorado sus amigos hubiera disfrutado la vida y hubiera estado mejor', 'concluido que debemos apreciar la vida hacer lo contrario que el caracol hizo valorar a nuestros amigos y disfrutar cada instante como si fuera el último', 'la historia trata sobre un caracol que no disfrutaba de Navidad que den menospreciaba sus amigos y que se encerraba siempre en su cascarón', 'el contenido muy apropiado contiene valores la forma del texto pues Qué es para un público general y Qué es muy muy bueno', 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropruebapersonajes`
--

CREATE TABLE `registropruebapersonajes` (
  `idRegistro` int(11) NOT NULL,
  `idLectura` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaRegistro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rPregunta1` int(11) NOT NULL,
  `rPregunta2` int(11) NOT NULL,
  `rPregunta3` int(11) NOT NULL,
  `rPregunta4` int(11) NOT NULL,
  `rPregunta5` int(11) NOT NULL,
  `totalResultado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registropruebapersonajes`
--

INSERT INTO `registropruebapersonajes` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `totalResultado`) VALUES
(5, 1, 17, '00:20', '16/04/2019', '05:20:53', 1, 2, 1, 2, 1, 80),
(6, 79, 17, '00:23', '16/04/2019', '05:22:57', 1, 2, 3, 1, 1, 80),
(7, 1, 1, '00:8', '07/05/2019', '08:15:26', 2, 2, 1, 2, 1, 60);

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
(17, 'Enrique ', 'Perez', NULL, NULL, 'estuardo', 'estuardo', 2, 'estuard.gonza@hotmail.es', 'imgPerfil/17/profile.png'),
(18, 'Estuardo', 'Alvarado', NULL, NULL, 'admin', 'admin', 7, 'estuard.alva@gmail.com', ''),
(19, 'Nicolas', 'Alvarado', NULL, NULL, 'admin', 'admin', 2, 'nicolas@gmail.com', ''),
(20, 'Emerson David', 'Lopez Lorela', 9, 'a', 'emerson', 'emerson', 1, 'emerson@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `velocidadlectora`
--

CREATE TABLE `velocidadlectora` (
  `idLectura` int(11) NOT NULL,
  `nombreLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `edadLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rutaLectura` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `grado` int(11) NOT NULL,
  `intentos` int(11) NOT NULL,
  `cantidadPalabras` int(11) NOT NULL,
  `lectura` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `velocidadlectora`
--

INSERT INTO `velocidadlectora` (`idLectura`, `nombreLectura`, `genero`, `descripcion`, `edadLectura`, `rutaLectura`, `grado`, `intentos`, `cantidadPalabras`, `lectura`) VALUES
(1, 'La zorra y las uvas', 'Fábula', 'Fábula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 13, 77, 'En un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una parra la zorra se paró de puntillas y estiró sus brazos intentando alcanzar las uvas pero estas se encontraban muy lejos de su alcance sin querer darse por vencida la zorra tomo impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance'),
(2, 'El bufón y el campesino', 'Fábula', 'Fábula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 71, 'Un noble no solo abrió un teatro sin cobrar la entrada sino también anuncio a todos que recompensaría generosamente a quien se le ocurriera el mejor acto de entretenimiento varios artistas compitieron por el premio entre ellos se encontraba un bufón muy famoso en el pueblo por sus bromas el bufón dijo que él tenía un acto de entretenimiento que jamás se había puesto en escena el bufón y el campesino'),
(3, 'El árbol que no sabia quien era', 'Fábula', 'Fábula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 2, 69, 'Era un jardín excepcional y los frutales se sentían muy felices no sólo eran arboles sanos robustos y bellos sino que además producían las mejores frutas que nadie podía imaginar sólo uno de esos árboles sentía muy desdichado porque aunque sus ramas eran grandes y muy verdes no daban ningún tipo de fruto el pobre siempre se quejaba de su mala suerte el árbol que no sabía quién era'),
(4, 'La nuez de oro', 'Lectura', 'Lectura corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 72, 'La pequeña maría no tuvo entonces más remedio que contar los pliegues en la nuez y efectivamente el duende no se había equivocado mil y una arruga exactas tenia aquella nuez de oro con lagrimas en los ojos maría la entrego al duendecillo quien al verla tan afligida ablando su corazón y le dijo quédatela noble muchacha porque no hay nada tan hermoso como ayudar a los demás La nuez de oro'),
(5, 'Como se hizo la lluvia', 'Lectura', 'Lectura corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 77, 'Tanto fue el deseo de la gótica de agua que un día le pidió al sol que le ayudara astro rey ayúdame a elevarme hasta el cielo para conocer mejor el mundo y así lo hizo el sol calentó la gótica con sus rayos hasta que poco a poco se fue convirtiendo en un vapor de agua cuando se quedo como un gas la gótica de agua se elevo al cielo lentamente como se hizo la lluvia'),
(6, 'El leñador honrado', 'Lectura ', 'Lectura corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 65, 'Como hare ahora para trabajar y poder dar de comer a mis hijos exclamaba angustiado y preocupado el leñador entonces ante los ojos del pobre hambre apareció desde el fondo del rio una ninfa hermosa y centellante no te lamentes buen hombre traeré devuelta tu hacha en este instante le dijo la criatura mágica al leñador y se sumergió rápidamente en las aguas del rio'),
(7, 'El conejo bermejo', 'Lectura Emocional', 'Lectura emocional corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 85, 'Cuando la señorita doña coneja explicaba cómo se hacia una ficha el conejo Bermejo nunca la escuchaba empezaba a mirar a todas partes y se ponía a hablar con otro conejito que tenia al lado sabéis lo que pasaba que ni bermejo ni el otro compañero se enteraban de como se hacía y luego la ficha la tenían que repetir para hacerla bien mientras los otros conejos ya podían ponerse a jugar eso también le pasaba cuando la seño contaba un cuento El conejo Bermejo'),
(8, 'El día del silencio', 'Lectura emocional', 'Lectura emocional corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 67, 'Así que el día del silencio fue el del gran descubrimiento de Regal y de que había que dar a todos la oportunidad de demostrar lo que valían y para que otros aprendieran la misma lección desde aquel día cada vez que alguien visitaba el pueblo le recibían con gran alegría poniéndole un gran gorro con el que no se podía oír nada El día del Silencio'),
(9, 'La lluvia', 'Poesía', 'Poesía infantil corta.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 63, 'Gota tras gota la lluvia te moja la lluvia se ríe y a veces se enoja la lluvia me canta y me entretiene y gota tras gota se va como viene las ranas le cantan le cantan los grillos que lindos los cantos de bosques y ríos es una gran fiesta que gran sinfonía pero aunque me moje que bonito día La lluvia'),
(10, 'La oveja teresa', 'Poesía ', 'Poesía corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 70, 'Cuenta que un año la oveja teresa se asusto al oír algo y huyo del rebaño ocurrió que perico el pastor tenia visita aquel día de su nieto Matías fueron los dos a pastar y a las tres del mediodía el abuelo perico quiso que parasen a descansar y en el alto del camino perico conto un secreto a su nieto para que la siesta pudiese tomar la oveja teresa'),
(11, 'Las ranitas y el tronco tallado', 'Fábula', 'Fábula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 2, 69, 'Un cierto día, en que se desato una terrible tormenta el tronco cayo al lago y en ese momento las ranitas pudieron ver con claridad que era solo un tronco tallado que ningún daño podías hacerles.  Se rieron mucho de los temores por los que había pasado y comenzaron a jugar con él y usarlo de trampolín para sus zambullidas en el lago Las ranitas y el tronco tallado'),
(12, 'El Egoísta', 'Fábula', 'Fábula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 2, 71, 'Una vez en el asiento elegido, el hipopótamo abría un periodo abría un periódico amarillento y lo extendía al máximo posible con el fin de tapar la cara y agobiar a su compañero de asiento además y por si esto fuera poco le daba por toser y bostezar con la boca abierta y a un buen volumen con el único fin de molestar y fastidiar a todo el mundo –el egoísta.'),
(13, 'El tigrito que se mordia las uñas', 'Fábula', 'Fábula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 87, 'Llegó la primavera y como siempre el tigrito se fue al bosque para jugar con sus amiguitos esta vez le acompañaban dos de ellos corretearon largo rato de acá para allá de pronto uno de los amigos del tigrito vio que un pájaro se posaban en las ramas de un árbol sin pensarlo dos veces empezó a trepar veloz como el rayo naturalmente nuestro tigrito intento imitar a sus compañeros de juegos pero se encontró con que no tenia uñas. El tigrito que se mordía las uñas'),
(14, 'El patito feo', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 80, 'El pobre patito se sintió muy triste al oír esas palabras y escapo corriendo de allí ante el rechazo de todos a cabo en una ciénega donde conoció a dos gansos silvestres que a pesar de su fealdad quisieron ser sus amigos pero un día aparecieron allí unos cazadores y acabaron repentinamente con ellos  de hecho a punto estuvo el patito de correr la misma suerte de no ser porque los perro lo vieron y decidieron no morderle –Patito feo'),
(15, 'El hada fea', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 1, 75, 'Ilustrísima majestad dijo el hada gobernadora de aquel bosques encantado podéis ver que nuestro bosque encantado es un lugar perfecto donde reina la belleza y la armonía veo que así parece dijo el hada reina veamos a ver si es verdad yo conjuro este lugar para que en el reinen los colores más hermosos si lo que decís es verdad o para que desaparezca el color si realmente hay algo feo aquí –El hada fea'),
(16, 'Competición de las verduras', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 66, 'Tomatito y zanahorio eran la envidia de todas las demás verduras y hortalizas ninguna otra familia de verduras conseguía que los niños se entusiasmasen tanto a la hora de comérselas mirad ahí van tomatitos y zanahorio con sus carretillas repletas de tomates y zanahorias para repartir ojalá los niños me hicieran tanto caso a mí y a mis esparraguitos dijo don esparrago. –Competición de las verduras'),
(17, 'Yito el caballito de mar', 'Lectura Emocional', 'Lectura emocional corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 74, 'Lo demás caballitos de mar lo miraban sorprendidos porque nunca habían contestado asi a su señorita a la que quería mucho. Todos estaban un poco hartos de que se negaran a hacer cosas. Hasta con los caballitos protestaba y desobediencia. Cuando jugaban al pollito ingles u otro juego con normas siempre decía que no lo conocía e incumplía las reglas del juego por eso no quería jugar con el –Yito el caballito de mar.'),
(18, 'Me gusta como soy', 'Lectura Emocional', 'Lectura emocional corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 70, 'Allí se empezó a sentir raro todo los chicos lo miraban no solo los de su grado de todas las filas los grandes los chicos y Ezequiel no entendía porque quería que lo tragara la tierra de pronto un chico se acerco y le dijo. Oye porque tienes el pelo así. Ezequiel no contesto no sabía que decir se preguntaba así como lindo como la nieve. –Me gusta como soy'),
(19, 'Mariposa del aire', 'Poesía', 'Poesía infantil corta.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 50, 'Que hermosa eres mariposa del aire dorada y verde luz de candil mariposa del aire quédate ahí ahí ahí no te quieres para pararte no quiere mariposa del aire dorada y verde. Luz de candil mariposa del aire quédate ahí ahí ahí quédate ahí mariposa etas ahí – Mariposa del aire'),
(20, 'Canción de cuna del elefante', 'Poesía', 'Poesía infantil corta.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 61, 'El elefante lloraba porque no quería dormir duerme elefantito mío que la luna te va a oír papa elefante esta cerca se oye en el manglar su mugir. Duerme elefantito mío que la luna te va a oír. El elefante lloraba y alzaba su trompa al viento parecía que en la luna se limpiaba la nariz –Canción de cuna del elefante'),
(21, 'El leon y el mosquito', 'Fábula', 'Fábula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 119, 'No creas que tu título de rey me inquieta exclamaba el insecto volador desafiante al león, conocido como el rey de la selva. Tras aquellas palabras el mosquito ni corto ni perezoso, empezó a rodear al león volando de un lado a otro subiendo y bajando mientras hacía sonar su larga trompeta. El león rugía enfurecido ante el atrevimiento del mosquito y a pesar de sus intentos por zafarse el mosquito le picaba en el lomo en el hocico y hasta en la nariz hasta que el león se derrumbo en el suelo por el cansancio. Sentíase victorioso el mosquito y alzando de nuevo su trompeta retomo el camino por el que había venido. –El león y el mosquito'),
(22, 'La zorra y el cuervo ', 'Fábula', 'Fábula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Un día se encontraba un cuervo encaramado en la copa de un árbol, degustando un rico trozo de queso bajo el árbol que habitaba el cuervo merodeaba una zorra que había sido atraída por el olorcillo de queso. Buenos días cuervo que bello plumaje viste desde luego si su canto es igual a su plumaje será usted un autentico primor exclamo la zorra dirigiéndose al cuervo con cierto tono irónico. El cuervo que no lo advirtió y no estaba acostumbrado a que le  halagasen por ser pájaro de mal agüero, abrió rápidamente el pico para mostrar a la zorra su magnífico canto dejando caer el rico trozo de queso al suelo. - La zorra y el cuervo.'),
(23, 'La luna y las estrellas', 'Fábula', 'Fábula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Cansada de no ser vista, tres de las estrellas más alejadas de la constelación conocida como Alonso fueron a reprocharle a la luna. Estaba convencida que el satélite natural del bello planeta tierra era quien les impedía ser vistas y admiradas por los humanos así, se plantaron frente a ellas y le dijeron: Cuando decides estar en tu fase de llena absorbes nuestros colores y cuando te da por estar en la de nueva, impides que tu brillo llegue a nosotros. Por culpa de tu indecisión variabilidad y prepotencia no somos amadas por los humanos como otras hermanas y primas nuestras que alegran las noches tristes y solitarias de muchas personas. –La luna y las estrellas'),
(24, 'Simbad el marino', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Me llamo Simbad el marino, no creas que mi vida ha sido fácil. Para que lo comprendas te voy a contar mis aventuras. Aunque mi padre me dejo al morir una fortuna considerable, fue tanto lo que derroche que al fin me vi pobre y miserable. Entonces vendí lo poco que me quedaba y me embarque con unos mercaderes, navegamos durante semanas hasta llegar a una isla al bajar a la tierra el suelo tembló de repente y salimos todos proyectados en realidad la isla era una enorme ballena. Como no pude subir hasta el barco me deje arrastrar por las corrientes agarrado a una tabla hasta llegar a una playa plagada de palmeras. –Simbad el marino.'),
(25, 'La gaillinita colorada', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 93, 'Pues entonces dijo la gallinita colorada lo hare yo. Clo-clo, y ella sembró el granito de trigo. Muy pronto el trigo empezó a crecer asomando por encima de la tierra. Sobre el brillo el sol y cayo la lluvia y el trigo siguió creciendo y creciendo hasta que estuvo muy alto y maduro. Quien cortara este trigo pregunto la gallinita yo no, dijo el cerdo. Yo no dijo el gato, yo no dijo el perro, yo no dijo el pavo, pues entonces dijo la gallinita colorada, lo hare yo clo-clo. –La gallinita colorada.'),
(26, 'Dumbo', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 109, 'Que orejas más grandes, si parece que va a echar a volar, bueno basta de chismorreos, cada uno es como es, más vale que os dediquéis a vuestras cosas, a la fuera de aquí, ea mi niño. No hagas caso tesoro que eres el elefante más bonito que existe envidia eso el lo que tienen. El circo siguió su marcha por diversas ciudades y nuestro buen Dumbo que así se llamaba el elefantito, ayudaba según sus fuerzas en los quehaceres del mismo. Un día durante el desfile, Dumbo que iba el último agarrado a la cola de su mama, se piso las orejas y zas cayo dando volteretas. –Dumbo '),
(27, 'La osa Rosa', 'Lectura Emocional', 'Lectura emocional corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 107, 'Había una vez una osa que se llamaba rosa. Tenía los años de los niños y estaba en la clase de, la clase de los niños, la osa rosa iba contenta al colegio, porque tenía amigos en su clase y su señorita osa era muy buena y la quería mucho, pero a la osa rosa, no le gustaba mucho trabajar en la clase, si la señorita daba un dibujo para colorear, ella rápidamente decía. Me canso y aunque la señorita osa le decía, sigue un poquito más la osa rosa no lo terminaba, otro día la señorita dio una ficha del libro para hacer. –La osa rosa'),
(28, 'El dia del silencio', 'Lectura Emocional', 'Lectura emocional corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 139, 'Regal no podía por nada. Era un niño normal en todo pero había nacido sordo. Era muy famoso en el pueblo, y todos le trataban con mucho cariño. Pero a la hora de verdad no te tenían muy en cuenta para muchas cosas, los niños pensaban que podría hacerse daño, o que no reaccionaria rápido durante un juego sin oír la pelota y los adultos actuaban como si no fuera capaz de entenderles casi como si hablaran con un bebe. A regal no le gustaba mucho esto, pero mucho menos aun a su amigo Manuel, que un día decidió que aquello tenía que cambiar. Y como Manuel era el hijo del alcalde, convenció a su padre para que aquel año, en honor a regal, dedicaran un dia de las fiestas a quienes no pueden oír. El día del silencio.'),
(29, 'El lagarto está llorando', 'Poesía', 'Poesía infantil corta.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 78, 'El lagarto está llorando, la lagarta está llorando el lagarto y la lagarta con delantalitos blancos, han perdido sin querer su anillo de desposados ay su anillito de plomo, ay su anillito plomado un cielo grande y sin gente monta en su globo a los pájaros, el sol capitán redondo lleva un chaleco de raso, Miradlos que viejo son, que viejo son los lagartos ay como lloran y lloran ay, ay como está llorando. –El lagarto está llorando'),
(30, 'Hasta no poder más', 'Poesía', 'Poesía infantil corta.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 70, 'Felipe y Carola se querían, hasta no poder mas corrían, saltaban y jugaban a deletrear, hacían figuras de arcillas de arena de papel y tijera, alternaban pares y nones tras sus riñones escribían poemas de amor y leían cuentos de sal y mucho pimiento, la mama de Felipe decía que los niños no saben de amar pero Felipe y Carola se querían hasta no poder mas. –Hasta no poder más'),
(31, 'La ballena feliz', 'Fábula', 'Fábula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 117, 'Todos tenían la voluntad de ayudarla, pero cada vez que intentaban moverla la ballena se asustaba e impedía que pudiesen devolverla al agua y sus movimientos la hacían encallarse más y más en la arena. Al percatarse de esto, la persona consideraron que solía podrían devolverla al agua con la ayuda de helicópteros, los que prontamente acudieron para rescatar y devolver la ballena sally a su hábitat natural. De esta forma en pocos minutos la ballena estaba nuevamente en alta mar y volvió a ser la misma ballena feliz de siempre, salto más alto que nunca e hizo piruetas nunca antes vistas para agradecer y deleitar a todas las personas que la había ayudado. –La ballena feliz'),
(32, 'El gato y su sardina', 'Fábula', 'Fábula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 107, 'Había una vez un gato amante de las sardinas cuya torpeza le imposibilitaba obtener a gusto su preciado alimento, un día al no poder ingerir sardinas en casa decidió ir a la feria de la plaza, donde había varios vendedores que ofertaban el sabroso pescado, calculador el gato se agazapo tras un muro y espero a que un vendedor se descuidase para salar sobre una de las cestas y robar tantas sardinas como pudiera, llegado el momento el felino salto, pero su torpeza hizo que el hombre se percatase enseguida y lo azorase con un palo, permitiéndole coger solo una pequeña sardina. –El gato y su sardina'),
(33, 'Los dos conejos', 'Fábula', 'Fábula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 138, 'La primavera había llegado al campo, el sol brillaba sobre la montaña y derretía las últimas nieves, abajo, en la pradera, los animales recibían con gusto el colorcito propio del cambio de temporada. La brisa tibia y el cielo azul animaron a salir de sus madrigueras a muchos animales que llevaban semanas escondidos por fin el duro invierno había desaparecido, las vacas pacían tranquilas mordisqueando briznas de hierba y las ovejas, en grupo seguían al pastor al ritmo de sus propios balidos. Los pajaritos animaban la jornada con sus cantos y de vez en cuando algún caballo salvaje pasaba galopando por delante de todos, disfrutando de su libertad los más numerosos eran los conejos, cientos de ellos aprovechaban el magnifico día para ir en busca de frutos silvestres y de paso estirar sus entumecidas patas. –Los dos conejos'),
(34, 'La estrella y sus nuevos amigos', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 112, 'La señora zorra el señor búho, el abuelo pájaro carpintero, la señora comadreja y la señora ardilla se acercaron al momento para averiguar qué había pasado, La estrella al despertarse vio que muchos ojos la estaban observando, donde estoy, quienes sois vosotros, dijo extrañada la estrella, somos los amigos del bosque y estas en nuestras casa, contesto la señora comadreja, pero yo no puedo estar aquí debo colgar en el cielo junto a mi mama la luna y mis hermanas las estrellas explico. No te preocupes nosotros te ayudaremos a subir al cielo cantaron todos a la vez pero primero te curaremos añadió la señora zorra. –La estrella y sus nuevos amigos.'),
(35, 'Don quijote', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 128, 'Para don quijote, las hazañas increíbles de los caballeros andantes y gigantes fueron más verdaderas que su propio mundo, él creía que para su honor y el de su país debían ser un caballero andante sin una palabra don quijote de la manca monto su caballo fiel rocinante y salió a vengar todos los actos malos y a proteger a las damas, no obstante primero fue necesario  ser armando como un caballero andante verdadero. El excéntrico don quijote llego hasta una venta aunque él pensó que el ventero y los huéspedes eran señores y señoritas, el ventero acordó amarle como caballero andante y así en una ceremonia breve, fingió a armar don quijote quien salió de aquel lugar feliz de ser un verdadero caballero al fin. –Don quijote'),
(36, 'Santillin', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 116, 'Santillin es un osito muy inteligente, bueno y respetuoso, todos lo quieren mucho y sus amiguitos disfrutan jugando con él porque es muy divertido, le gusta dar largos paseos con su compañero el elefantito. Después de la merienda se reúnen y emprenden una larga caminata charlando y saludando a las mariposas que revolotean coquetas, desplegando sus coloridas alitas, siempre está atento a los juegos de los otros animalitos con mucha paciencia trata de enseñarles que pueden entretenerse sin dañar la plantas, sin pisotear el césped sin destruir lo hermoso que la naturaleza nos regala, un domingo llegaron vecinos nuevos santillin se apresuro a darles la bienvenida y enseguida invito a jugar al puercoespín más pequeño. –santillin '),
(37, 'El cerdito verde', 'Lectura Emocional', 'Lectura emocional corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 131, 'Se percataron que el animalito estaba sollozando y sin dudarlo se acercaron a el y le preguntaron que lo acongojaba, el cerdito con el tono de la esperanza les relato como lo habían exiliado de su hogar por ser diferente y por ello gano la solidaridad en sentimiento de los ciervos que casualmente nunca habían podido tener descendencia y vieron como esa extraña pero agradable  criatura despertaba sus instintos maternal y paternal, por ello propusieron al cerdito que viviese con ellos en el bosque, donde los tres podrían ser muy felices y vivir en familia esa de las que por distintos causas los tres habían sido privados, por supuesto el cerdito acepto gustoso y desde entonces habita en el bosque junto a los viejos y muy bellos ciervos. –El cerdito verde'),
(38, 'La gallinita roja', 'Lectura Emocional', 'Lectura emocional corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 132, 'Ya más desilusionada de sus amigos que en el anterior pedido la gallinita roja les contesto pues bien ya me las apañare yo solita, acto seguido fue sin más ayuda que la de sus paticas y alas e invirtió gran cantidad de horas segando y separando luego el grano de la paja, al día siguiente muy extenuada pero contenta por haber obtenido un gran resultado después de un duro trabajo cayó en la cuenta de que ya solo le restaba ir al molino y hacer el delicioso pan que había previsto, aunque estaba molesta por la falta de disposición de sus amigos para hacer algo de los que también podrían beneficiarse pues a todos encantaba el pan de trigo, decidió darles otra oportunidad y acudió a solicitar su ayuda. –La gallinita roja'),
(39, 'Los ratones', 'Poesía', 'Poesía infantil corta.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 71, 'Untáronse los ratones para librarse del gato y después del largo rato de disputas y opiniones dijeron que acertarían en ponerle un cascabel que andando el gato con el librarse mejor podrían, salió un ratón barbicano colilargo, hociquirromo y encrespando el grueso lomo, dijo al senado romano después de hablar culto un rato quien de todos ha de ser el que se atreva a poner ese cascabel al gato. –Los ratones'),
(40, 'Como se dibuja un dibujo', 'Poesía', 'Poesía infantil corta.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 99, 'Para dibujar un niño hay que hacerlo con cariño pintarle muchos flequillos que este comiendo un barquillo muchas pecas en la cara que se note que es un pillo continuemos el dibujo redonda cara de queso como es un niño de moda bebe jarabe con soda, lleva pantalón vaquero con un hermoso agujero camiseta americana y una gorrita de pana, las botas de futbolista porque chutando es artista, se ríe continuamente porque es muy inteligente debajo del brazo un cuento por eso esta tan contento para dibujar un niño hay que hacerlo con cariño. –Como se dibuja un dibujo'),
(41, 'La leyenda del queso', 'Fábula', 'Fábula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 150, 'Cuenta una antigua leyenda que un día hace cientos de años un pastor tuvo la necesidad de hacer un viaje a través del desierto a lomos de su viejo camello, tenía por delante varias horas de camino así que para no pasar hambre guardo algunos alimentos en un saco y para no pasar sed metió leche recién ordeñada de sus ovejas en un recipientes fabricado con tripa de animal, partió temprano justo antes del amanecer a esa hora todavía hacia fresco pero a media mañana el sol del desierto se volvió abrasador el pastor agobiado por el color pensó que si no bebía un poco se iba a desmayar cogió el recipiente que contenía la leche y cuando fue a tomarla se quedo de piedra debido a las altas temperaturas la leche se había cuajado es decir se había transformado en una pasta blanca muy espesa –La leyenda del queso.'),
(42, 'El lobo con piel de oveja', 'Fábula', 'Fábula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 125, 'Un lobo que estaba cansado de fracasar al intentar cazar las ovejas de un pastos un buen dia tuvo un plan se disfrazo cubriéndose con una piel de oveja y se mezclo con el rebaño para pasar desapercibido tan bueno era su disfraz que al final del día el pasto lo llevo junto con las demás ovejas al corral y allí lo encerró, el lobo estaba feliz finalmente iba a poder comerse a unas cuantas ovejas estaba a punto de llevar a cabo su plan cuando entro el pastor al corral tenía que procurar carne para su familia y venia a escoger una oveja para sacrificar escogió al lobo y los sacrifico al instante sin darse cuenta de nada –El lobo con piel de oveja.'),
(43, 'Las ranas pidiendo rey', 'Fábula', 'Fábula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 111, 'Las ranas vivían en el caos y la anarquía y estaban cansadas de esta situación así que mandaron una delegación para pedirle a Zeus el rey de los dioses que les enviara un rey Zeus atendió su petición les envió un grueso leño a su charca, las ranas e asustaron con el ruido que hizo el leño al caer y se escondieron entre ramas y piedras por fin al darse cuenta de que el leño no se movía fueron saliendo de sus escondites poco a poco dada la quietud que reinaba las ranas comenzaron a despreciar al nuevo rey brincando sobre él y siéntansele encima burlándose continuamente. –Las ranas pidiendo rey'),
(44, 'Mozart', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 115, 'Mozart fue un músico extraordinario que nació en un país europeo llamado Austria hace poco mas de 250 años, desde muy chiquitín demostró un don especial para la música con solo cuatro años ya era capaz de componer como si fuera un músico adulto y tocaba instrumentos tan complicados como el teclado o el violín un autentico niño prodigio, su padre que también era músico se esforzó por enseñarle todo lo que sabía poco tiempo después lo llevo de viaje por Europa para que tocara ante los reyes y gobernantes más importantes de la época todos se quedaron asombrados al comprobar la genialidad del pequeño Mozart y le dedicaron miles de aplausos y alabanzas. -Mozart'),
(45, 'Ricas cerezas', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 129, 'Las cerezas son los pequeños frutos de un árbol llamado cerezo, la mayoría de las cerezas son redonditas, lucen un color rojo intenso tienen la pulpa muy jugosa y esconden un pequeño hueso en su interior su sabor es más o menos dulce según la variedad, las cerezas se recogen en temporada de verano y suelen tomarse al natural con ellas se preparan deliciosas recetas, zumos mermeladas, licores cremas para rellenar tartas también sirven para elaborar una sopa fría que está muy de moda los últimos años el gazpacho de cereza una vez cogidas del árbol se pudren en pocos días una de las formas de disfrutar de las cerezas todo el año es conservándolas en un sirope hecho con agua y azúcar que se llama almíbar. –Ricas cerezas'),
(46, 'El elefante y el raton', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 136, 'Te voy a aplastar con mi enorme pata para que aprendas a no molestarme mientras duermo el ratoncito asustado le suplico llorando, por favor elefante no me pises si me perdonas la vida yo te deberé un favor el elefante soltó una carcajada y le respondió, te soltare solo porque me das lastima pero no para que me debas un favor que podría hacer un insignificante ratón por mi entonces el elefante soltó al ratón sucedió que semanas más tarde mientras el ratoncito jugaba con sus amigos se encontró con el elefante atrapado bajo la redes de un cazador estaba muy débil porque había luchado mucho para liberarse y ya no tenía fuerzas para nada mas el ratoncito se puso a roer las cuerdas y después de un rato logro liberarlo. –El elefante y el ratón'),
(47, 'La casa de la tortuga ', 'Lectura Emocional', 'Lectura emocional corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 105, 'Un trueno rugió en las colinas abriendo paso a los relámpagos primer cayeron gotas y luego se desato la lluvia oh donde estarán mi casa suspiro la tortuga, un trueno rugió en las colinas abriendo el paso a los relámpagos primero cayeron gotas y luego se desato la lluvia oh donde estará la casa de tortuga se preguntaron el caracol el gorrión la mariquita y el ratón, el viento soplo con todas sus fuerzas derribando del caparazón a todos ay chillo la tortuga entonces se escondió dentro de su caparazón este era cálido y acogedor oh esta es mi casa. –La casa de la tortuga'),
(48, 'La maceta vacía', 'Lectura Emocional', 'Lectura emocional corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 108, 'Me trajiste una maceta vacía todos comenzaron a reírse del niño de la maceta vacía Cheng bajo la cabeza y dijo con mucha vergüenza, lo siento su majestad intente cultivar la semilla pero no broto nada de ella el emperador se rasco la barbilla y sonrió luego les dijo a todos los presentes, Les presento a Cheng el nuevo emperador de china todas las semillas que les entregue fueron cocinadas para que no pudieran crecer, no sé como el resto de ustedes cultivaron flores pero ellas no crecieron de mis semillas, Cheng es el único que ha sido honesto y por esto merece ser emperador. –La maceta vacía  '),
(49, 'Balada del caracol negro', 'Poesía', 'Poesía infantil corta.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 136, 'Caracoles negros los niños sentados escuchan un cuento el rio traía coronas de viento y una gran serpiente desde un tronco viejo miraba las nubes redondas de cielo niño mío chico donde estas te siento en el corazón y no es verdad, lejos esperas que yo saque tu alma del silencio caracoles grandes caracoles negros partió temprano justo antes del amanecer a esa hora todavía hacia fresco pero a media mañana el sol del desierto se volvió abrasador, el pastor agobiado por el calor pensó que si no bebía un poco se iba a desmayar, cogió el recipiente que contenía la leche y cuando fue a tomarla se quedo de piedra debido a las altas temperaturas la leche se había cuajado es decir se había transformado en una pasta blanca muy espesa. –Balada del caracol negro'),
(50, 'Carnaval', 'Poesía', 'Poesía infantil corta.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 67, 'Carnestolendas se acercan carnestolendas me traigas con colores para el rostro y alegrías para el alma con maquillaje de plata y mascaras de porcelana blanca con caretas de tez tostada cabezudos y comparsas para ocultar con ellos los malestares del alma carnestolendas se acercan carnestolendas se traiga que viva la felicidad que vivan las mascaradas y que bailen los disfraces antes de que las cenizas salgan. -Carnaval'),
(51, 'El sol y las ranas ', 'Fábula', 'Fábula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 101, 'Piden clemencia solo para ustedes o para todos los seres vivientes del planeta pues para nosotros porque habríamos de preocuparnos por otras especies cada cual que cuide y pida por lo suyo, así les ira replico la voz que desde entonces se desentendió de los pedidos de las ranas por su egoísmo, ciertamente el sol no dejo de brillar pero desde entonces las ranas son animales con muy pocos amigos y todo por el egoísmo de aquellas de una pequeña laguna capaces solo de preocuparse por su bienestar y desentendidas de todos lo que les rodeaba. –El sol y las ranas '),
(52, 'El dueño del cisne', 'Fábula', 'Fábula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 107, 'Sin embargo cuando ya el bello animal se sentía viejo y a punto de partir para otra vida entono el más bello canto que oídos humanos hayan escuchado al escuchar en el más absoluto deleite el hombre comprensión su error y pensó que tonto fui cuando pedí a mi bello animal que cantara en aquel entonces si hubiera conocido lo que el canto anuncia la petición hubiese sido bien distinta de esta forma el hombre y todos lo que le conocían comprendieron que las cosas en la vida incluso las más bellas y anheladas no puede apurarse todos llega en el momento  oportuno –El dueño del cisne'),
(53, 'El venado, el manantial y el león', 'Fábula', 'Fábula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 138, 'Sin embargo la fuerza de este radica en el corazón y nunca se dio por vencido a pesar de la distancia razón por la que cuando se adentraron en lo matorrales del bosque se vio premiado, en ese escenario la cornamenta le hacía perder velocidad al ciervo pues se enredaba con cuanta rama y arbusto aparecía en el camino, de esa forma la distancia que separaba a ambos animales se fue haciendo cada vez más corta hasta que al final el ciervo quedo atrapado su cornamenta se había enredado con su lienzas ya a punto de morir bajo las garras del león el ciervo comprendió cuan equivocado había estado en el manantial, su principal atributo eran sus delgadas piernas y no la bella cornamenta que al final le costaría la vida. –El venado, el manantial y el león'),
(54, 'El anciano y el dinero', 'Lectura ', 'Lectura corta infantil.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 149, 'El anciano dio un sorbo al te todavía humeante y continuo si yo les dejara en herencia mi riqueza ya no se esforzarían ni tendrían ilusión por trabajar estoy convencido de que malgastarían en caprichos y no quiero es mi deseo es que consigan las cosas por si mismos y valoren lo mucho que cuesta ganar el dinero, no no quiero que se conviertan en unos vagos y destrocen sus vidas el amigo medito sobre esta explicación y entendió que el anciano había tomado una decisión muy sensata sabias palabras ahora o entiendo algún día tus hijos te lo agradecerán, el anciano le guiño un ojo y dio un último sorbo al te después de esa conversación su vida siguió siendo la misma, nada cambio continuo gastándose el dinero tal y como había asegurado aquella tarde sus hijos no heredaron ni una sola moneda. –El anciano y el dinero'),
(55, 'El mono y la lenteja', 'Lectura ', 'Lectura corta infantil.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 121, 'Por las prisas el atolondrado macaco se enredo las patas en una rama enroscada en espiral e inicio una caída que le pareció eterna intento agarrarse como pudo pero el tortazo fue inevitable no solo se dio una buen golpe sino que todas las lentejas que llevaba en el puño se desparramaron por la hierba y desaparecieron de su vista, miro a su alrededor pero el dueño del saco había retomado su camino y ya no estaba, sabéis lo que pensó el mono pues que no había merecido la pena arriesgarse por una lenteja se dio cuenta de que por culpa de esta torpeza ahora tenía más hambre y encima se había ganado un buen chichón. –El mono y la lenteja'),
(56, 'Las dos vasijas', 'Lectura ', 'Lectura corta infantil.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 119, 'La vasija le miro con incredulidad no entendía nada y solo sentía pena por su dueño y por ella misma si fíjate bien las flores solo están a tu lado del camino siempre he sabido que no eras perfecta y que el agua se escurría por tus grietas así que plante semillas por debajo de donde tu pasabas cada día para que las fueras regando durante el trayecto aunque no te hayas dado cuenta todo este tiempo ha hecho un trabajo maravilloso y has conseguido crear muchas belleza a tu alrededor, la vasija se sintió muy bien contemplando lo florido y lleno de color que estaba todo bajo sus pies y lo había conseguido ella solita. –Las dos vasijas'),
(57, 'El enano saltarín', 'Lectura Emocional', 'Lectura emocional corta infantil.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 120, 'Si puedes adivinar mi nombre desapareceré para siempre te daré una semana dijo el enano pero la joven ideo un plan y envió a varios mensajeros a buscar nombres diferentes por todos los confines del mundo de vuelta uno de ellos conto la anécdota de un enano al que había visto saltar frente a la puerta de una pequeña cabaña cantando: en la tarde amaso el pan, en la noche lo horneare, mañana con el hijo de la reina me quedare el pequeño igual que yo se llamara su nombre será Rumpelstiltskin cuando regreso el enano y pregunto su propio nombre a la reina esta le contesto te llamas Rumpelstiltskin y el enano saltarín desapareció para siempre. –El enano saltarín'),
(58, 'Las ranitas', 'Lectura Emocional', 'Lectura emocional corta infantil.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 140, 'Os veía agitar la manos y pensaba que nos estabais animando a seguir gracias a su sordera la rana no escucho las palabras de desaliento y lucho sin descanso por salvar su vida hasta que lo logro, la otra ranita que si se había rendido vio el triunfo de su amiga y volvió a recuperar la confianza en sí misma se puso, en pie se armo de coraje y también aspiro una gran bocanada de aire después con una potencia más propia de un puma se propulso dando un asalto espectacular que remato con un doble voltereta, sus cuatro amigas la vieron salir del pozo como un cohete y se quedaron pasmadas cuando cayó a sus pies la reanimaron igual que a su compañera y cuando se encontró bien se marcharon a sus casas croando y dando brincos como siempre. –Las ranitas '),
(59, 'El mago de la serpiente', 'Poesía', 'Poesía infantil corta.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 78, 'Se oye hablar de un misteriosos hombre delgado y con tocado muy bien arreglado que toca sentado frente a un cesto repleto de cientos de mantos espesos, dicen que oculta un secreto muy bien guardado tras su flauta travesera de color dorado comienza el soniquete como salido de oriente que hace vibrar poco a poco y salir del cesto a una enorme serpiente, yo digo que hace magia y mama que agila cuchillos. –El mago de la serpiente'),
(60, 'Gastón el muñeco de nieve', 'Poesía', 'Poesía infantil corta.', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 91, 'Un gran muñeco de nieve hacemos en el jardín nos ponemos gorro guantes y bufandas al salir papa viene a ayudarnos haciendo una enorme bola nosotros otra pequeña hacer un muñeco mola, la bola grande es el cuerpo la pequeña la cabeza mi papa trabaja mucho para que queden sujetas los ojos son dos botones y un viejo gorro de lana le ponemos con bufanda de color verde manzana, mi mama una zanahoria le pone como nariz para la boza una rama y ya parece sonreír. –Gastón el muñeco de nieve'),
(61, 'Todo Acto Genera Consecuencias', 'Lectura', 'Reflexion y aprendizaje', '12,13 años', 'atomLector/c1s/velocidad/', 7, 1, 258, 'Ese año las lluvias habían sido particularmente ilesas en toda la región una gran corriente de rio de llevo la choza de un campesino pero cuando cesaron habían dejado en la tierra una valioso joya el buen hombre vendió la alhaja y con la suma que le entregaron reconstruyo su choza el resto se lo regalo a un niño huérfano y desvalido del pueblo la riada habían arrasado también otro poblado y un campesino para salvar la vida tuvo que encaramarse a un tronco de árbol que flotaba sobre las turbulentas aguas otro hombre despavorido le pidió socorro pero el campesino se lo negó diciéndose a sí mismo si se sube este al tronco a lo mejor se vuelca y me ahogo los años pasaron y estallo la guerra en ese reino ambos campesinos fueron alistados el campesino bondadoso fue herido de gravedad y conducido al hospital el medico que atendió con gran cariño y eficacia era aquel muchachito huérfano al que había ayudado lo reconoció y puso toda su ciencia y amor al servicio del malherido logro salvarlo y se hicieron amigos de por vida el campesino egoísta tuvo por capitán de la tropa al hombre a quien no había auxiliado le envió a primera línea de combate y días después hallo la muerte en las trincheras las consecuencias siguen antes o después a los actos la generosidad engendra generosidad y el egoísmo egoísmo debemos cultivar los cuatro bálsamos de la mente amor compasión alegría por la dicha de los otros y ecuanimidad Todo acto genera consecuencias'),
(62, 'La Tristeza y la Furia', 'Lectura ', 'Reflexion y aprendizaje motivacional', '16,17 años ', 'atomLector/c4d/velocidad/', 10, 1, 306, 'En un reino encantado donde los hombres nunca pueden llegar o quizás donde los hombres transitan eternamente sin darse cuenta en un reino mágico donde las cosas no tangibles se vuelven concretas había una vez un estanque maravilloso era una laguna de agua cristalina y pura donde nadaban peces de todos los colores existentes y donde todas las tonalidades del verde se reflejaban permanentemente hasta ese estanque mágico y transparente se acercaron a bañarse haciéndose mutua compañía la tristeza y la furia las dos se quitaron sus vestimentas y desnudas las dos entraron al estanque la furia apurada como siempre está la furia urgida sin saber que se baña rápidamente y más rápidamente aun salió del agua pero la furia es ciega o por lo menos no distingue claramente la realidad así que desnuda y apurada se puso al salir la primera ropa que encontró y sucedió que esa ropa no era la suya sino la de la tristeza y así vestida de tristeza la furia se fue muy calma y muy serena dispuesta como siempre a quedarse en lugar donde está la tristeza termino su baño y sin ningún apuro o mejor dicho sin conciencia del paso del tiempo con pereza y lentamente salió del estanque en la orilla se encontró con que su ropa ya no estaba como todos sabemos si hay algo que a la tristeza no le gusta es quedar desnudo así que se puso la única ropa que había junto al estanque la ropa de la furia cuentan que desde entonces muchas veces uno se encuentra con furia ciega cruel terrible y enfadad pero si nos damos el tiempo de mirar bien encontramos que esta furia que vemos es solo un disfraz y que detrás del disfraz de la furia en realidad esta escondida la tristeza La tristeza y la furia'),
(63, 'La Tristeza y la Furia', 'Lectura ', 'Reflexion y aprendizaje motivacional', '14,15 años ', 'atomLector/c3s/velocidad/', 9, 1, 306, 'En un reino encantado donde los hombres nunca pueden llegar o quizás donde los hombres transitan eternamente sin darse cuenta en un reino mágico donde las cosas no tangibles se vuelven concretas había una vez un estanque maravilloso era una laguna de agua cristalina y pura donde nadaban peces de todos los colores existentes y donde todas las tonalidades del verde se reflejaban permanentemente hasta ese estanque mágico y transparente se acercaron a bañarse haciéndose mutua compañía la tristeza y la furia las dos se quitaron sus vestimentas y desnudas las dos entraron al estanque la furia apurada como siempre está la furia urgida sin saber que se baña rápidamente y más rápidamente aun salió del agua pero la furia es ciega o por lo menos no distingue claramente la realidad así que desnuda y apurada se puso al salir la primera ropa que encontró y sucedió que esa ropa no era la suya sino la de la tristeza y así vestida de tristeza la furia se fue muy calma y muy serena dispuesta como siempre a quedarse en lugar donde está la tristeza termino su baño y sin ningún apuro o mejor dicho sin conciencia del paso del tiempo con pereza y lentamente salió del estanque en la orilla se encontró con que su ropa ya no estaba como todos sabemos si hay algo que a la tristeza no le gusta es quedar desnudo así que se puso la única ropa que había junto al estanque la ropa de la furia cuentan que desde entonces muchas veces uno se encuentra con furia ciega cruel terrible y enfadad pero si nos damos el tiempo de mirar bien encontramos que esta furia que vemos es solo un disfraz y que detrás del disfraz de la furia en realidad esta escondida la tristeza La tristeza y la furia'),
(64, 'Una playa con sorpresa', 'Lectura ', 'Lectura Infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 60, 'No había nadie en aquella playa que no hubiera oído hablar de Pinzas locas, terror de pulgares, el cangrejo más temido de este lado del mar. Cada año algún turista despistado se llevaba un buen pellizco que le quitaba las ganas de volver. Tal era el miedo que provocaba en los bañistas, que a menudo se organizaban para intentar cazarlo.'),
(65, 'El árbol mágico', 'Lectura ', 'Cuento Infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 58, 'Hace mucho mucho tiempo, un niño paseaba por un prado en cuyo centro encontró un árbol con un cartel que decía: soy un árbol encantado, si dices las palabras mágicas, lo verás.  El niño trató de acertar el hechizo, y probó con abracadabra, brintisimo, tan-ta-ta-chán, y muchas otras, pero nada. Rendido, se tiró suplicante, diciendo: "¡¡por favor, arbolito!!".'),
(66, 'Un papa muy duro', 'Lectura Emocional', 'Cuento Infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 71, 'Ramón era el tipo duro del colegio porque su papá era un tipo duro. Si alguien se atrevía a desobedecerle, se llevaba una buena. Hasta que llegó Víctor. Nadie diría que Víctor o su padre tuvieran pinta de duros: eran delgaduchos y sin músculo. Pero eso dijo Víctor cuando Ramón fue a asustarle. - Hola niño nuevo. Que sepas que aquí quien manda soy yo, que soy el tipo más duro.'),
(67, 'El cohete de papel', 'Lectura ', 'Cuento Infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 62, 'Había una vez un niño cuya mayor ilusión era tener un cohete y dispararlo hacia la luna, pero tenía tan poco dinero que no podía comprar ninguno. Un día, junto a la acera descubrió la caja de uno de sus cohetes favoritos, pero al abrirla descubrió que sólo contenía un pequeño cohete de papel averiado, resultado de un error en la fábrica.'),
(68, 'El elefante fotógrafo', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 73, 'Había una vez un elefante que quería ser fotógrafo. Sus amigos se reían cada vez que le oían decir aquello: - Qué tontería - decían unos- ¡no hay cámaras de fotos para elefantes!'),
(69, 'Los últimos dinosaurios', 'Lectura', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 59, 'En el cráter de un antiguo volcán, situado en lo alto del único monte de una región perdida en las selvas tropicales, habitaba el último grupo de grandes dinosaurios feroces. Durante miles y miles de años, sobrevivieron a los cambios de la tierra y ahora, liderados por el gran Ferocitaurus, planeaban salir de su escondite para volver a dominarla'),
(70, 'Un estornudo muy sano', 'Lectura ', 'Cuento Infantil ', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 59, '- ¡A quién se le ocurre estornudar delante de un libro de magia! ¡Hala! ¡Todas las letras volando! - gruñó mamá troll.  - Ahora que estábamos a puntito de encontrar el hechizo para volvernos guapos… - se lamentó papá troll.  - ¿Qué tal han caído las letras? - preguntó Trolita - ¿Se puede leer el libro, han quedado desordenadas?'),
(71, 'Los juguetes ordenados', 'Lectura ', 'Cuento Infantil con valores', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 73, 'Érase una vez un niño que cambió de casa y al llegar a su nueva habitación vió que estaba llena de juguetes, cuentos, libros, lápices... todos perfectamente ordenados. Ese día jugó todo lo que quiso, pero se acostó sin haberlos recogido. Misteriosamente, a la mañana siguiente todos los juguetes aparecieron ordenados y en sus sitios correspondientes. Estaba seguro de que nadie había entrado en su habitación, aunque el niño no le dio importancia.'),
(72, 'La corta historia de los libros largos', 'Lectura', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 75, 'Los peques libros estaban tristes. Esta vez los grandes y famosos libros no solo se habían reído de ellos, los habían echado.  - Pero si casi no se os puede llamar libros. Apenas tenéis letras y sois todo dibujos - había dicho un libro de montones y montones de páginas de letra diminuta.  ');
INSERT INTO `velocidadlectora` (`idLectura`, `nombreLectura`, `genero`, `descripcion`, `edadLectura`, `rutaLectura`, `grado`, `intentos`, `cantidadPalabras`, `lectura`) VALUES
(73, 'Una minúscula gota de magia', 'Lectura', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 62, 'José y Marco eran dos jóvenes aprendices de mago que se prepararon durante años para cargar sus varitas en la misteriosa fuente de la magia. Cuando estuvieron listos, viajaron por el mar hasta la isla de los mil desiertos, atravesaron sus infinitas dunas de arena, escalaron la gran montaña de roca y por fin encontraron la fuente. Pero la fuente estaba seca.'),
(74, 'Un agujerito en la luna', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 55, 'Hubo una vez un troll malvado que tenía el sueño de ser el mayor artista del mundo, y planeó robar su talento a pintores, escultores, músicos y poetas. Pero como no encontró la forma, terminó por atrapar y encadenar en su cueva a un anciano mago, obligándolo a transformarle en el mejor de los artistas.'),
(75, 'Roberta la gaviota traviesa', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 64, 'Roberta era una gaviota que siempre iba a la misma playa porque le gustaba sobrevolar las zonas conocidas, sobre todo ahora que no tenía amigas. Cuando era una gaviota pequeña tenía muchos amigos y amigas, pero poco a poco se fue quedando sin ellos porque pensaba que ser travieso era divertido, pero poco a poco las bromas que hacía no gustaban a sus compañeros.'),
(76, 'Pol y la lluvia.', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 64, 'Pol era un sapo que vivía en una charca. El resto de la fauna de aquel lugar estaba compuesto por lombrices, caracoles, arañas, libélulas, chinches, mariposas, polillas, escarabajos, moscas, mosquitos, peces, ranas y renacuajos. Aunque unos más que otros, todos disfrutaban del agua. Pol por ejemplo pasaba la mayor parte del día chapoteando en la charca. Sobre todo, en verano para estar bien fresco.'),
(77, 'Bicho raro busca amigo', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 57, 'Había una vez un lugar donde vivían todo tipo de criaturas fantásticas. Había hadas, brujas, brujos, trolls, magos, magas, dragones, gnomos, enanitos, elfos y cualquier otro ser imaginable.  Un día apareció por allí un ser verde y peludo, con grandes orejas y diminutos pies, con dos antenas en las que, al parecer, tenía el sentido del olfato.'),
(78, 'Timba y lola se hacen amigas', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 68, 'Carolina y Alberto llevan poco tiempo en su casa nueva, una enorme casa de paredes rojas y verdes con un enorme jardín. Tenían tanto espacio al aire libre que los dos decidieron poder disfrutar de tener un nuevo miembro en la familia: una perrita llamada Lola. Lola era un perro negro que fueron a recoger a la perrera y que les escogió a ellos nada más entrar allí.'),
(79, 'Claudia y la mariposa', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 59, 'Claudia estaba jugando en el parque cuando, de repente, vio una mariposa posada en una flor. Claudia se acercó hacia ella. No quería asustarla. Cuando estaba cerca, la niña se acercó despacito para ver bien a la hermosa mariposa. -¡Qué bonita eres! -dijo la niña, muy bajito.'),
(80, 'Las tres ardillas', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 65, 'En un pequeño bosque vivían tres ardillas. Al principio las ardillas no se llevaban bien y se peleaban mucho. Había poca comida y todas querían llevársela a su madriguera para almacenarla para el invierno.  Pero, con el tiempo, las ardillas aprendieron a respetarse y a ayudarse, pues se dieron cuenta de que, mientras ellas peleaban, otros animales se llevaban la comida por la que discutían.'),
(81, 'El astronauta enamorado', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 74, 'Había una vez un astronauta que viajaba por el espacio en su pequeña nave espacial. Llevaba tanto tiempo surcando el universo que ya no recordaba el camino a casa. '),
(82, 'Don ratón y don gato', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 61, 'Don Ratón y Don Gato eran una pareja de amigos muy singular. Aunque normalmente los ratones y los gatos no se llevan bien, estos dos animalitos tenían una curiosa amistad.  '),
(83, 'El oso patoso', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 72, 'Había una vez un oso muy bueno y amable que vivía en una cueva apartada del bosque. A pesar de ser un animal encantador nadie le quería cerca porque era muy torpe y descuidado. Era, como suele decirse, un patoso. Por eso todo el mundo le conocía como el Oso Patoso.  '),
(84, 'La perrita melenitas', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 74, 'Melenitas era una perrita muy bonita y coqueta que tenía un hermoso pelaje. Melenitas tenía el pelo largo y suave, de varios colores castaños combinados con una gracia natural que a todos fascinaba. En la cabeza, la perrita Melenitas lucía un hermoso lazo rosa que resaltaba aún más su belleza. Todos los días, Melenitas paseaba por el barrio luciendo palmito para que todos admiraran lo guapa que era y lo bien que se movía.'),
(85, 'Monstruos al rescate', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 64, 'Nauseabundo y Hediondo eran los monstruos más temidos de todo el mundo monstruoso. Durante todo el año permanecían escondidos preparando sus maldades, que hacían realidad en la noche de Halloween. Los demás monstruos estaban enfadados con Nauseabundo y Hediondo, pues por su culpa los niños y los mayores les tenían más miedo del normal, y recibían más de un palo a cuenta de ellos.'),
(86, 'El espejo misterioso.', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 79, 'Andrés acababa de mudarse a una casa que tenía una gran piscina. Estaba súper contento y, como era verano, todos los días se daba un chapuzón. Pero había algo en la nueva casa que no le gustaba nada: la buhardilla. Todo estaba lleno de trastos y cada vez que pasaba por ahí, oía ruidos extraños. - Mamá, yo creo que en la buhardilla hay algo. Se oyen cosas.'),
(87, 'El mono pipo', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 57, 'Pipo era un mono que siempre danzaba muy alegre de un lado para otro. Siempre andaba como loco y, por eso, siempre se metía en líos.'),
(88, 'Los juguetes encantados', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 79, 'Había una vez una niña llama Eleonor que tenía una habitación llena de juguetes. En la ciudad, nadie tenía tantos juguetes como ella. Pero Eleonor jamás entraba en esa habitación. '),
(89, 'Álvaro y el miedo al mar', 'Lectura Emocional', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 60, 'Álvaro tenía un miedo aterrador a las olas del mar, pero era su secreto, porque no se atrevía a contárselo a nadie.  Cuando iba a la playa con sus padres y sus primos solía decir que no le apetecía bañarse en el mar porque prefería hacer castillos de arena. Sus primos le insistían y pero él nunca decía que sí.'),
(90, 'Román y el pececillo feliz', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 76, 'Román vivía con su familia en una casa muy cerca de la playa. Cada fin de semana se acercaba con sus primos y su tío, que era un gran experto de este deporte, a bucear. Le encantaba ir descubriendo los tesoros del fondo del mar.  En su habitación guardaba todo lo que iba encontrando. En la estantería, tenía una estrella de mar disecada, una caracola y una botella con conchas brillantes de almejas y demás moluscos.'),
(91, 'Robos en el parque', 'Lectura con valores', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 72, 'Había una vez un parque al que entraban a robar. Los ladrones se llevaban cualquier cosa. Lo mismo les daba robar flores que llevarse un banco o una papelera. Y si no se lo podía llevar, lo destrozaban.  Para evitarlo, el ayuntamiento decidió poner vigilancia en el parque. El jefe de policía repartió los turnos y ese mismo día siempre había un policía patrullando por el parque a cualquier hora del día.'),
(92, 'El misterio de los vestidos diminutos', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 63, 'El taller de Doña Martina era el taller de costura donde se cosían los vestidos más hermosos y originales de todo el mundo. Doña Martina solo cosía por encargo y, como su trabajo era tan bueno, la gente recorría grandes distancias para ver a Doña Martina. Incluso reinas y princesas hacían cola para que les tomara medidas y conseguir uno de sus vestidos.'),
(93, 'El bosque de po', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 58, 'El Bosque de Po era un paraje precioso, lleno de árboles y plantas. Un riachuelo de agua clara cruzaba todo bosque. Algunos claros lucían hermosas flores de colores que el sol bañaba con dulzura. Pero en el Bosque de Po no vivía nadie más que un terrible animal, tal vez un monstruo, al que se conocía como Po.'),
(94, 'Fran no puede comer cereales', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 61, 'Fran tiene que empezar a quedarse al comedor porque su papá ha empezado en un trabajo nuevo y ya no lo puede recoger en el cole a la misma hora que antes. Los abuelos se van de vacaciones, así que ya no le queda otra alternativa.  A Fran le da mucho miedo quedarse en el comedor del colegio, porque es celiaco.'),
(95, 'El enanito malhumorado', 'Lectura Emocional', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 73, 'En el Bosque Feliz todos estaban siempre alegres y contentos. Todos menos el enanito, el enanito malhumorado. Nadie sabía muy bien por qué él enanito estaba siempre de mal humor. Lo único que tenían claro es que si alguien podía aguar la fiesta era él.  Porque él enanito no se conformaba con estar siempre enfadado, no. Él enanito se pasaba el día buscando la manera de contagiar su mal humor a los demás'),
(96, 'Todos somo únicos.', 'Lectura Emocional', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 81, 'Cuenta una leyenda que un buen día los ángeles del cielo decidieron crear una isla que estuviera alejada en algún lugar de la Tierra donde vivieran un animal de cada especie y un ser humano de cada raza. Querían demostrar que todos podíamos convivir en paz y tranquilidad. '),
(97, 'El ladrón de rosas', 'Lectura ', 'Cuento Infantil', '5,6 años', 'atomLector/1p/velocidad/1p', 1, 0, 61, 'Matías se pasaba el día entero cuidando de Adela, su madre. Adela estaba enferma y necesitaba muchos cuidados. Matías había decidido cuidar de su madre, y con ella estaba todo el día. Solo se ausentaba media hora al día para hacer la compra. Durante ese rato Matilde, una vecina, amiga de su madre desde la infancia, se hacía cargo de Adela. '),
(98, 'El agua mágica del rey', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 99, 'Érase una vez en un antiguo reino, existió un rey que tenía tres hijos. Un buen día, el rey cayó bajo una terrible enfermedad, y con el paso del tiempo, perdió las ganas de comer, de reír y hasta de conversar. Preocupados por la salud de su padre, los tres príncipes buscaban cualquier remedio que ayudara a curarlo, pero todos sus intentos eran en vano. Cuando ya no sabían qué hacer, se les acercó entonces un extraño anciano y les dijo lo siguiente: “Vuestro padre sufre una grave enfermedad, una enfermedad que sólo se cura con un agua mágica”. '),
(99, 'El cerdito de color verde', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 87, 'Había una vez una bonita granja en la que convivía una gran familia de cerdos muy feliz. La causa de tal felicidad radicaba en que en la granja tenían todo cuanto necesitaban para vivir plenamente como cerdos.  Sin embargo, esa armonía se rompió un día por un suceso que nunca nadie pudo explicar. De una de las cerdas más bellas salió una camada de cerditos, todos muy bonitos, pero uno misteriosamente verde, igual de lindo, pero con ese color nada habitual para un ejemplar de la especie.'),
(100, 'El cuento de los amigos', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 88, 'Esta es la historia de dos amigos, Pedro y Ramón, que se querían como hermanos a pesar de no tener vínculo familiar alguno. Tenían una amistad tan grande, que para todos los moradores del pueblo eran como inseparables hermanos o gemelos sin mucho parecido físico, ya que uno era más alto y el otro más grueso, uno rubio y otro trigueño. Su vínculo surgió desde que eran niños. Vivían cerca uno del otro y desde pequeños se adaptaron a jugar juntos y desempeñar todas las tareas en conjunto.'),
(101, 'El perro cazador y su amo', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 93, 'Había una vez un perro cazador cuyo orgullo era servir a su amo. Cada día ambos dejaban temprano en la mañana la cabaña en la que habitaban y se adentraban en el bosque en busca de las mejores presas que les permitieran alimentarse y vivir un poco de la venta de carne. El perro era tan diestro en lo suyo, que por jornada ubicaba al menos tres o cuatro presas para su amo; una para comer ellos y otras tres para vender. Sin embargo, nadie ni ninguna suerte escapan al paso del tiempo.'),
(102, 'La gallina roja', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 82, 'Había una vez una curiosa gallinita roja que vivía junto a otros animales en una bella granja. Los propietarios de la granja la tenían siempre tan limpia y ordenada, y atendían tan bien a todos los animales por igual, que allí todo era armonía y felicidad. Cada día todos los animales desempeñaban orgullosos sus funciones y los dueños trabajaban con tal ahínco, que podríamos decir que era incluso una granja próspera, con buenas producciones de leche, queso, carne, pienso, heno y trigo.'),
(103, 'Los tres ogros', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 90, 'Había una vez, un niño laborioso y bueno de nombre Iker. Junto a su padre, el pequeño Iker despertaba cada mañana con los primeros rayos del Sol para regar las flores del jardín y escoger las rosas más hermosas y esbeltas. Cuando completaba una buena cantidad de rosas, las entregaba a su padre y quedaba despidiéndole mientras éste se marchaba a la ciudad para venderlas o cambiarlas por pan fresco. Cierto día, Iker despidió a su padre como de costumbre con la esperanza de verle regresar al caer la tarde.'),
(104, 'El pequeño colibrí', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 101, 'Había una vez un pequeño colibrí que había perdido a toda su familia mientras volaban lejos huyendo de los días fríos de invierno. Desconsolado y sin fuerzas, el colibrí decidió guarecerse en una cueva oscura de la montaña. Entre ramas y hojas secas, el pobre animalito recordaba las palabras de su madre antes de partir: “Debes permanecer cerca de nosotros y no alejarte, o de lo contrario te perderás”. Pero nuestro amigo era muy entretenido, y mientras volaba cerca de su familia le llamaban la atención todo tipo de maravillas, desde el verde de los árboles hasta el azul del cielo.'),
(105, 'El perrito Junior', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 89, 'Había una vez un cachorrito peludo y hermoso de nombre Junior. El perrito había nacido junto a sus hermanos bajo el cuidado de su madre, pero un buen día la suerte de Junior cambió. Un chico que pasaba cerca de la guarida descubrió al perrito y decidió llevarlo consigo a casa. Con el tiempo, el chico se aburrió del cachorrito y lo dejó abandonado en las calles donde creció junto a las ratas, los gatos y otros perros que dormían a la intemperie y nunca tenían nada que comer.'),
(106, 'La gata encantada', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 89, 'Cuentan que cuentan, de un lejano castillo donde vivía un príncipe joven y apuesto, con el que todas las muchachas jóvenes del reino querían casarse. Sin embargo, el príncipe no reparaba ni siquiera en la más bella, sino que pasaba todo su día en compañía de su mascota, una gata cariñosa y pequeña de nombre Zapaquilda. Cierto día, se encontraba el príncipe como de costumbre jugando con su gata a los pies de la chimenea, cuando de repente exclamó: “Me gustaría que fueras una mujer, Zapaquilda, para casarme contigo”.'),
(107, 'Aristóteles Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 93, 'Aristóteles nació en el año 384 a.C. en Estagira, una colonia de Grecia famosa por ser un puerto marítimo. Su padre, Nicómaco, era médico del rey de Macedonia. Que su padre tuviera relación con la realeza le influiría a él mucho tiempo después, siendo tutor de Alejandro Magno, el príncipe de Macedonia. Cuando era un niño su padre murió y se marchó a Atenas para completar su educación, donde entró en la academia de Platón y aprendió de él durante 20 años hasta que empezó a dar clases de retórica por su cuenta.'),
(108, 'Beethoven Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 94, 'Beethoven nació en una familia muy sencilla en 1770. Su madre casi siempre estaba enferma y su padre era director de una importante orquesta. Desde muy pequeño demostró que la música se le daba bien, así que su padre quiso que fuera un genio y le obligaba a practicar piano, clarinete y órgano a todas horas. Tanto tiempo estaba Beethoven tocando instrumentos musicales que apenas visitaba la escuela y cuando iba estaba muy cansado para atender, así que la mayoría de días su padre le obligaba a quedarse en casa practicando con el piano.'),
(109, 'Charles Perrault', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 106, 'Charles Perrault era hijo de un abogado muy importante del parlamento francés, nació el 12 de enero del año 1628. Su familia tenía mucho dinero, así que pudieron darle unos estudios muy buenos. Además de eso, un ministro llamado Colbert le ayudó a entrar en la Academia Francesa, donde descubrió que le gustaba mucho la literatura y las lenguas que ya no se hablaban. Consiguió entrar en un colegio de abogados muy importante para seguir con el trabajo de su padre, y con el apoyo que recibió consiguió llegar a hacer trabajos muy bien pagados y que hicieron que la gente le respetase y le admirase.'),
(110, 'Diego Velázquez Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 92, 'Este reconocido pintor nació en España en el año 1599, y se le conoce como uno de los mejores pintores españoles, maestro de la pintura universal. Su estilo de arte se denominaba barroco (un tipo de pintura que buscaba narrar una historia y que tenía toques muy realistas que algunos historiadores consideraban recargados).  Diego fue el mayor de ocho hermanos, todos nacidos y criados en Sevilla, la ciudad más rica y poblada de España en la época. Apenas cumplió los 10 años, Diego empezó a estudiar pintura con Francisco Herrera “El Viejo”.'),
(111, 'Albert Einstein Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 102, 'Albert Einstein nació el 14 de marzo del año 1879. Fue hijo de un empresario, cuando la empresa familiar quebró en 1894 se mudaron a Milán, en Italia. A los cinco años su padre le regaló una brújula, y eso despertó su interés por la ciencia, porque entendió que si la aguja siempre apuntaba al mismo sitio entonces estaba impulsada por una fuerza muy grande. Einstein no fue un gran estudiante y sus notas siempre fueron algo mediocres, su verdadero interés eran las ciencias y las matemáticas, y el año 1900 se graduó como maestro escolar de secundaria en matemáticas y física.'),
(112, 'Galileo Galilei Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 106, 'Nació el 15 de febrero del año 1564 en Italia. Fue el primer hijo de un compositor italiano llamado Vincenzo Galilei que tocaba el laúd y tuvo cinco hermanos más. Como su padre, también fue muy aficionado a tocar el laúd. A los diez años sus padres se mudaron y le dejaron con un vecino que era muy religioso, tanto, que convenció a Galileo para hacerse monje y meterse en un convento. Su padre, Vincenzo, le sacó del convento y le inscribió en la universidad para estudiar medicina, pero a los 21 años Galileo abandonó la universidad y la carrera de medicina porque no le interesaba.'),
(113, 'Isaac Newton Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 101, '¿Has escuchado hablar alguna vez de la ley de Newton? Pues dicho apellido pertenece al considerado como uno de los inventores y científicos más grandes del mundo, Isaac Newton. Newton fue un matemático, físico, inventor, alquimista y filósofo inglés, nacido en el año 1642, que además de sus increíbles aportes en el estudio de la gravitación, fue responsable de trabajos excepcionales en cuanto a la naturaleza de la luz o de los cálculos matemáticos. No pudo conocer a su padre, pues murió antes de que éste naciera y el nuevo esposo de su madre lo mandó a vivir con su abuela. '),
(114, 'Julio Verne Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 101, 'Julio Verne nació el 8 de febrero del año 1828 en Francia. Tenía cuatro hermanos y era hijo de unos navegantes de raíz escocesa. Su infancia fue tranquila hasta que a los once años intentó embarcarse en un barco con destino a la India. Su padre le encontró en el último momento, reprimiéndole y haciéndole prometer que jamás intentaría volver a marcharse ni viajar. Julio seguía pensando en la aventura y en explorar otros lugares, incluso aunque sus planes se cancelasen de esa manera y sufriendo el castigo de su padre de estar encerrado y solo alimentado de pan y agua.'),
(115, 'Julio Cesar Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 101, 'Julio César nació el 12 de julio del año 100 antes de Cristo, en Roma. Su padre era Cayo Julio César, un político romano, y su madre fue Aurelia Cota, una dama de la nobleza. Gracias al apoyo de su tío Cayo Mario recibió una educación excelente. Su juventud duró poco, ya que desde muy joven empezó a interesarse por la política y a acercarse a cargos importantes para ganarse el favor de la gente y ganarse una fama honrada. Empezó a subvencionar fiestas y obras públicas y a ocupar cargos muy influyentes como: cuestor, edil, gran pontífice, pretor y propretor.'),
(116, 'Leonardo da Vinci Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 92, 'Leonardo da Vinci nació el 15 de abril de 1452. Fue hijo de un notario y una campesina que nunca se casaron. Hasta los cinco años vivió en casa de su madre, pero después empezó a vivir con su padre y su madrastra y de vez en cuando con sus abuelos. Llegó a tener doce hermanastros y hermanastras que fueron mucho más jóvenes que él.  El año 1466 empieza a practicar diversas actividades en el taller de un escultor llamado Andrea del Verrocchio. Allí empieza a pintar, a esculpir y a diseñar.'),
(117, 'Nelson Mandela Biografía', 'Lectura ', 'Biografia', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 104, 'Nelson Mandela nació el 18 de julio del 1918 en Mvezo, una aldea de Sudáfrica. Tuvo catorce hermanos y vivió de manera sencilla en su aldea. A los cinco años pastoreaba ovejas y poco después se convirtió en el primero de su familia en ir al colegio. Su padre, Henry Mandela, murió cuando él tenía apenas nueve años, y su madre le dejó a cargo de su padrino, quien era el jefe supremo del territorio.  Al terminar sus estudios de secundaria en un colegio de misioneros de Sudáfrica, empezó a estudiar en el Colegio Universitario para conseguir un título en el Bachiller de Artes.'),
(118, 'El gato, el gallo y el zorro.', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 83, 'La historia nos dice que el zorro es un animal muy astuto. Pero lo cierto es que la vanidad puede convertir incluso al mismísimo zorro, en un animal necio y estúpido. ¿Qué no os lo creéis? Pues estad atentos a la siguiente historia…  Érase una vez un zorro al que le encantaba pasar el tiempo tocando la guitarra; tocando la guitarra y persiguiendo y cazando gallinas. Procuraba unir sus dos pasiones tocando hermosas canciones con su guitarra en la mismísima puerta del gallinero. '),
(119, 'La liebre y el violín', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 100, 'Hubo una vez una liebre que vivía en un bosque y que disfrutaba enormemente con todo aquello que la rodeaba. Aquella liebre sabía disfrutar de la vida, y cosas tan sencillas como mirar los elementos de la naturaleza o al resto de animales del bosque, la colmaba de felicidad. Aquella liebre encontró, en una ocasión, un viejo violín abandonado en una de tantas excursiones que realizaba para explorar cada uno de los rincones del bosque. No dudó en toquetear sus cuerdas como podía, en busca del atractivo de aquel instrumento, y en busca también de pasar un rato divertido más.'),
(120, 'Don cangrejo y cangrejin', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 88, 'Érase una vez dos cangrejos que vivían en la orillita del mar. Uno de los cangrejos era ya mayor, Don Cangrejo, y el peso de sus años solo podía compararse a la grandeza de su cuerpo. El otro en cambio, Cangrejín, era joven, debilucho y pequeño, pero también muy bello. A pesar de sus edades, los dos cangrejos gustaban de salir a pasear por la orilla del mar, sabedores de que muchos otros animalitos marinos se asomaban solo para poder contemplarlos. De manera que allí estaban las medusas.'),
(121, 'La lechera y el cántaro de leche', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 87, 'Juana la lechera caminaba muy contenta con su cántaro de leche sobre la cabeza. Imaginaba ya en qué forma gastaría todo el dinero que la venta del cántaro le iba a proporcionar: «Podré adquirir un cerdo, no me costará mucho cebarlo; con su venta ganaré dinero. Entonces me compraré una vaca, que tendrá un ternerillo; y más tarde seré dueña de un rebaño. Comenzó a dar saltos de alegría ante su idea, cuando de pronto tropezó, y el cántaro de leche cayó al suelo haciéndose mil pedazos. '),
(122, 'Las dos caras', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 103, 'Érase una vez un oso que vivía entre la espesura del bosque. Habitualmente, este oso demostraba una gran valentía en cada uno de sus actos, y dicha valentía sumada a su fuerte y gigantesco cuerpo, hacía que ningún otro animal se atreviera a enfrentarle. Se dice que medía de pie casi tres metros de largo y que su fuerza podía aplastar incluso a los hombres. Soy el oso más valiente y fuerte del mundo. ¿Acaso existirá alguien capaz de hacerme frente en algún lugar? – Vacilaba frecuentemente el oso, aplaudido por todos los animales del bosque que tendían a acobardarse con su mera presencia.'),
(123, 'El egoísta', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 111, 'Érase una vez un hipopótamo que tomaba el autobús muy, muy temprano, para acudir a su trabajo. Pero este hipopótamo, en lugar de guardar su sitio en la cola como hacían los demás, no dudaba en imponerse a todos a fuerza de empujones y manotazos hasta verse el primero de la fila. Con frecuencia este hipopótamo egoísta causaba peleas enturbiando el buen ambiente del vecindario. No contento con situarse por la fuerza el primero, una vez se encontraba en el autobús, el hipopótamo subía a lo bruto repartiendo sin vergüenza codazos y pescozones a sus pobres compañeros de viaje hasta que conseguía hacerse también con el asiento que mejor le pareciese. '),
(124, 'La riqueza y la pobreza', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 99, 'Existió, hará un largo tiempo, un humilde hombre que vivía en la más absoluta pobreza. Este hombre tenía un hijo muy egoísta, que cansado de no recibir de su pobre padre cuanto le pedía, decidió que era hora de marcharse a iniciar su propia vida, llena de más caprichos y lujos. Transcurridos unos cuantos años desde la partida de su hijo, el padre habría logrado salir adelante con muy buen pie, enriqueciéndose de tal forma gracias a sus negocios en el mundo del comercio, que se había trasladado de casa y de ciudad, rodeado de mil y una comodidades.'),
(125, 'El cuervo y la sed', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 88, 'Cuenta la tradición que el dios Apolo era un dios muy impaciente al que le gustaba ser servido con rapidez y eficacia. No perdonaba a aquellos que vagueaban o que dudaban un minuto su quehacer.  Un día de primavera, Apolo envió al cuervo que le hacía las funciones de sirviente en busca de agua con la que poder calmar la terrible sed que padecía aquel día por el calor repentino. – No tardes - Advirtió Apolo al cuervo.  Tras aquellas breves palabras el cuervo partió en busca de agua. '),
(126, 'El hada del viejo pino', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 97, 'Hubo una vez, en unas lejanas llanuras, un árbol antiquísimo al que todos admiraban y que encerraba montones de historias. De una de aquellas historias formaba parte un hada, que había vivido en su interior durante años. Pero aquella hada se convirtió un día en una mujer que mendigaba y pedía limosna al pie del mismo pino. Muy cerca, vivía también un campesino (al que la gente consideraba tan rico como egoísta), que tenía una criada. Aquella criada paseaba cada mañana junto al viejo pino y compartía con la mujer mendiga todo el alimento que llevaba consigo. '),
(127, 'EL martillo de Thor', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 87, 'Poblaron en una época el interior de la tierra, una serie de enanos famosos por sus excelentes trabajos artesanos. En una ocasión, aquellos enanos se preparaban para fabricar regalos que pretendían reglar a los dioses, cuando uno de los enanos, llamado Brok, se puso a fanfarronear ante todos aquellos regalos: – ¡Buah! Esos regalos no valen nada- Dijo muy ufano el enano- Mi hermano fabrica con oro y hierro cosas muchísimo mejores. – Pues si es así, que lo demuestre- Dijeron algunos enanos molestos ante lo que parecía soberbia.'),
(129, 'El zapatero feliz', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 93, 'Todavía perdura el recuerdo, en una ciudad de Europa, de un alegre zapatero. Era, probablemente, una de las personas más felices de la tierra a pesar de su gran humildad. Un día el zapatero fue visitado por uno de sus vecinos, un banquero muy rico, que, al observar la gran alegría del zapatero entre tanta miseria, no pudo dejar de preguntar: Señor zapatero, si no es molestia, ¿podría decirme cuánto gana usted con su humilde trabajo? Es tan poco dinero, señor, que hasta vergüenza me da decirlo, no se lo tome a mal. '),
(130, 'El narrador de historias', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 92, 'Érase una vez un rey que tenía, por asistente y amigo, a un hombre cuya facilidad para contar historias rebasaba casi lo imaginable. Cuando el rey se disponía a descansar, el hombre tenía el cometido de narrar al monarca varias leyendas y fábulas para facilitarle el sueño. Pero ocurrió que, en cierta ocasión, los problemas del monarca eran tan grandes y numerosos que le resultaba imposible conciliar el sueño con el número de historias acostumbradas. Quiso entonces el rey escuchar más historias, pero el hombre decidió contarle dos menos y muy cortas.'),
(131, 'El dinosaurio torpón', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 94, 'Existió una vez un dinosaurio, apodado Dino, que era tan grande como un castillo. A pesar de su tamaño Dino era un dinosaurio bueno y muy feliz, y amaba tanto a la naturaleza que era absolutamente incapaz de hacerle daño ni a un molesto mosquito. Se pasaba el día tan alegre que saltaba y danzaba por doquier animando a cuantos pasaban a su alrededor.  Sin embargo, un día ocurrió un accidente terrible. Dino, en uno de sus joviales paseos, pisó sin querer, con su gran pie, una preciosa flor que había junto al camino.'),
(132, 'El caballo y la cobra', 'Lectura ', 'Cuento Infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 98, 'Vivieron en una ocasión y en un mismo establo un caballo y una cabra. Al caballo siempre le sacaban a pastar y a pasear muy temprano por un camino precioso y lleno de hierba tan fresca y rica como jamás se había visto por la zona. Al contrario que al caballo, a la cabra la sacaban a pastar por un prado situado en un camino muy lejano y conformado por hierbas tristes y secas. El caballo, presuntuoso y altivo, en lugar de sentir lástima por su compañera la cabra, tendía a burlarse de ella y de su situación.'),
(133, 'El sol y la luna', 'Lectura ', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 121, 'Un niño y una niña vivían con su madre en una casita en un valle. Un día la madre fue a trabajar a un banquete que se daba en otra ciudad. Antes de irse, la madre les dijo a sus hijos: “Hoy tengo que ir a trabajar a una casa a veinte cuestas de aquí. Cuando oscurezca cierren bien la puerta y no le abran a nadie hasta que vuelva yo”. Los niños obedecieron y se despidieron de ella. Cuando su madre termino de trabajar ya era de noche. Coloco sobre su cabeza el paquete de pasteles de arroz que le habían regalado para sus hijos y partió, en la mañana siguiente muy feliz repartió los pastelillos con sus hermosos hijos.'),
(134, 'EL Príncipe Feliz', 'Lectura ', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 114, 'En la parte más alta de la ciudad, sobre una columnita, se alzaba la estatua del Príncipe Feliz. Estaba toda revestida de madreselva de oro fino. Tenía, a guisa de ojos, dos centelleantes zafiros y un gran rubí rojo ardía en el puño de su espada una noche voló una golondrina hacia la ciudad sin descanso hacia la ciudad. Entonces diviso la estatua sobre la columnita. -Voy a cobijarme allí -grito- El sitio es bonito. Hay mucho aire fresco. Y se dejó caer precisamente entre los pies del príncipe feliz, pero al ir a colocar su cabeza bajo el ala, he aquí que le cayó encima una pesada gota de agua. Y después otra.'),
(135, 'Natalia', 'Lectura ', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Natalia tenía 10 años, y desde que tenía seis pasaba los veranos en la granja de sus abuelos. A Natalia le gustaba mucho los animales y disfrutaba las vacaciones ayudando a sus abuelos a cuidarlos. Era una granja rodeada de campo para que las vacas y las ovejas pudieran comer y pasear durante el día. Las dos yeguas y el burrito de su abuelo se refugiaban del sol dentro del establo. Había un gallinero repleto de ruidosas gallinas, algunas se escondían a poner sus huevos en una caseta y otras paseaban y picoteaban, también vivían allí un gallo con cola de colores. Todos pasaron el verano feliz en la granja del abuelo es tan emocionante dijo Natalia.'),
(136, 'Deportes', 'Lectura ', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Practicar deporte es muy importante para el ser humano, sea cual sea su edad, consiste en dedicar una parte de nuestro tiempo a realizar una actividad física es decir a hacer ejercicio moviendo las partes de nuestro cuerpo. Cuando hacemos deporte nos divertimos y pasamos un buen rato. Hay deportes individuales como la natación y deportes en grupo como el futbol todos ellos tienen una serie de normas que tenemos que respetar y cumplir, son las reglas del juego. Cuando se practica un deporte para conseguir un trofeo o una medalla, hablamos de deportes de competición. En este caso, el deportista debe entrenar duro para alcanzar el objetivo, que es ganar, es muy sano hacer deporte. '),
(137, 'Aracnidos', 'Lectura ', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 130, 'Mucha gente piensa que las arañas son insectos, pero en realidad, se trata de dos familias muy distintas y que no tienen nada que ver una con la otra. Vamos a ver alguna de sus diferencias: Las arañas tienen ocho patas, su cuerpo se divide en dos partes: una cabeza unida al tórax, y el abdomen. Los arácnidos nunca tienen alas así que son incapaces de volar y tampoco tienen antenas. Poseen la curiosa capacidad de producir hilos de seda para fabricar telas que usan para atrapar insectos y alimentarse. Los insectos, en cambio tienen seis patas, su cuerpo no se divide en dos partes si no en tres, porque su cabeza está separada del tórax. La mayoría de los insectos poseen alas que les permite volar y todos tienen antenas. '),
(138, 'Leopardo', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 112, 'El leopardo es un precioso animal que pertenece a la familia de los grandes felinos. Su pelaje es de color amarillo salpicado con manchas negras. Cuando su pelo es totalmente oscuro, se le conoce con el nombre de pantera. Los leopardos son capaces de vivir en lugares muy diferentes, como en los bosques, en las montañas, en zonas casi desérticas, Se adaptan a casi todo. Son animales muy fuertes, agiles y flexibles pasan gran parte de su tiempo subidos en los árboles.  Allí no solo descansan, sino que desde las alturas vigilan a sus posibles presas y saltan sobre ellas en un abrir y cerrar de ojos en cuanto tienen la oportunidad.'),
(139, 'Mickey Mouse', 'Lectura', 'Lectura Biografía ', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 112, 'Mickey mouse es el personaje de dibujos animados más famoso de todos los tiempos, dice la leyenda que un día Walt Disney iba en el tren y durante el viaje comenzó a dibujarlo. También se dice que en un principio puso al ratón el nombre de Mortimer, pero que cuando se lo conto a su mujer a ella no le gustó nada y lo cambio por Mickey. La primera película que protagonizo Mickey Mouse se llama el Avión loco y se estrenó en 1928. Es una película en blanco y negro que no tiene voz ni sonido, es decir, es muda. Lo cierto es que no tuvo mucho éxito entre el público.  '),
(140, 'El huevo de la gallina.', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 113, 'El huevo de la gallina es uno de los alimentos más consumidos en todo el mundo. Este huevo no es el único comestible ya que también se pueden comer los huevos de otros animales como el de la codorniz, el avestruz o la pata. Cada uno tiene un tamaño, siento el de la codorniz el más pequeño y el del avestruz el mas grande, pudiendo pesar hasta 1,3kg. Como todos sabemos, las gallinas son ovíparas y ponen un huevo al día, independientemente de si han sido fecundadas o no, Si el gallo y la gallina se aparean, los huevos son fecundados. Es entonces cuando la gallina los incuba durante 21 días proporcionándoles calor.'),
(141, 'Las tijeras', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 118, 'En todas las casas de hoy en día podemos encontrar tijeras guardadas en algún cajón. Casi todos las hemos utilizado alguna vez ya que es uno de los inventos más sencillos, pero más prácticos del ser humano, las tijeras son un instrumento manual que sirve para cortar. Su mecanismo es muy básico y aunque parezcan todas iguales, esto no es exactamente así: su diseño varía según su utilidad. Nadie usa unas tijeras de podar árboles para cortarse el pelo ¿verdad? Por eso hoy en día el mercado nos ofrece una gran variedad de modelos; tijeras de oficina, tijeras con punta redondeada para uso de los niños, tijeras de cirujano, tijeras de jardinería, tijeras para zurdos y muchas más. '),
(142, '¿Qué es una Biografía?', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Una biografía es una narración que cuenta la vida de una persona, por lo general se suelen escribir biografías de personajes que han sido importantes a lo largo de la historia: escritores como Cervantes, pintores como Picasso, reinas como Isabel la Católica, músicos como Mozart, científicos como Einstein, etc. Los autores tienen que reunir muchos datos, investigar en profundidad y asegurase de que la información es real para no meter la pata. En una biografía es fundamental tratar de contar la verdad. El relato comienza casi siempre con el nacimiento del personaje en cuestión. A partir de ahí el escritor va explicando donde vivió como era su familia, a que se dedicó como y cuando falleció.'),
(143, 'El caballito de mar', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 114, 'El caballito de mar es uno de los animales más curiosos del planeta se llama así porque como ya te habrás dado cuenta su cabeza recuerda mucho a la de un caballo, para ser sinceros el caballito de mar no es un buen nadador, pero además tiene en su contra que, como es muy ligero, si no enrolla la cola en alguna planta acuática la corriente lo arrastra como si fuera una pluma ¡La naturaleza no se lo ha puesto fácil a este pobre animalito!.  Su aspecto también es de lo más extraño si te fijas bien veras que su cuerpo está cubierto por un esqueleto de huesos que se aprecia bajo la piel, pero en fin es un lindo animal.'),
(144, 'Curiosidades para el maíz', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 118, '¿sabes que el maíz es uno de los alimentos más antiguos de la humanidad? Los investigadores creen que México fue el primer lugar del mundo donde el ser humano probo el maíz ¿Te imaginas por qué? Pues porque hace unos años se encontraron en este país restos de mazorcas que llevaban miles de años enterradas. Por esa misma razón también piensan que desde México, con el paso del tiempo, el cultivo de maíz se extendió por el resto del continente.  Cuando Cristóbal Colon descubrió América en 1492 se encontró con que había muchos campos hermosos y fértiles donde los indígenas cultivaban alimentos hasta entonces desconocidos para Europa. Uno de los que más despertó su curiosidad fue el maíz.'),
(145, '¡Al rico aguacate!', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 122, 'El aguacate es un fruto con forma de pera que tienen tres partes bien diferenciadas: una corteza oscura y rugosa, una pulpa carnosa que puede ser verde o amarilla, y una enorme semilla interior muy suave al tacto. México fue el primer lugar donde un humano probo el aguacate porque allí se cultivó desde hace miles de años. Aunque hoy en día existen plantaciones de aguacates por todo el mundo, este gran país americano sigue siendo el que más cantidad produce cada año, Por lo general el aguacate se consume tal y como se recoge del árbol, es decir, en fresco. Esta considerado uno de los alimentos más beneficiosos y nutritivos que nos ofrece a naturaleza porque tiene un montón de vitaminas.'),
(146, 'Curiosidades sobre las frutas', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 114, 'Llamamos fruta a todos los frutos comestibles de árboles y plantas ya sean silvestres o cultivados por el hombre. Esto significa que el ser humano la obtiene directamente de la naturaleza. Existen muchas variedades de fruta y cada una de ellas tiene un color, un tamaño y un sabor peculiar que la hacen diferentes de las demás. La fruta se suele tomar en fresco, pero también se utiliza para preparar multitud de recetas deliciosas: zumos, mermeladas, tartas. Seguro que tus padres te animan a que comas más frutas y menos golosinas ¿verdad? Bien pues tiene una explicación razonable la fruta es indispensable para una buena alimentación porque tiene muchas propiedades beneficiosas para la salud.'),
(147, 'La misión del corazón', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 126, 'El corazón es el órgano más importante del cuerpo humano, para ser exactos se trata de un musculo del tamaño de un puño que este situado en el tórax, justo entre los dos pulmones. El latido que todos sentimos al poner la mano sobre el pecho es el movimiento que hace el corazón. Este movimiento consiste en que se contrae y relaja para bombear la sangre, y enviarla hasta el último rincón de nuestro organismo. Gracias al corazón la sangre está continuamente circulando por las venas y las arterias. Esto es muy importante porque ella es la encargada de repartir el oxígeno a todos los órganos y células. Si la sangre no circulara todas las células no serían oxigenadas por ende provocaría malestares en nuestro cuerpo.'),
(148, 'El encantador de serpientes', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 122, 'En el continente de Asia, sobre todo en la india, existe un tipo de artista conocido como el encantador de serpientes, al que podemos definir como un mago especializado en un espectáculo sencillo pero muy sorprendente. El encantador de serpientes no necesita un gran escenario para poder dejar a todo el mundo con la boca abierta. Simplemente se sienta con las piernas cruzadas en el suelo de una calle o plaza por donde pasa mucha gente, y frente a el coloca una pequeña cesta de mimbre. Por lo general en pocos minutos, un montón de personas muertas de la curiosidad le rodena formando un círculo. Entonces muy suavemente se lleva la flauta a la boca y comienza a tocar una dulce melodía.'),
(149, 'El mago Houdini', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Una de las experiencias más divertidas que puedes vivir a tu edad es asistir a un espectáculo de magia. Te aseguro que, desde el principio hasta el final, el mago será capaz de hacerte creer que en el mundo de la fantasía todo es posible, gracias a su gran habilidad y unos trucos increíbles. A lo mejor nos sabes que el mago más famoso de todos los tiempos vivió hace muchos años y se llamaba Harry Houdini. Este gran artista, nació en 1874, era de un país de Europa llamado Hungría, si bien a los cuatro años de edad se fue con su familia a estados unidos a buscar una vida mejor. Sus trucos fueron impresionantes.'),
(150, 'Los botones', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 115, 'Mucha de las prendas que usas tienen cosidas unas pequeñas piezas llamadas botones, seguro que los has visto de muchos colores, formas y materiales diferentes, como por ejemplo de plástico, resina, metal o madera. La variedad es enorme y existen botones para todos los gustos. Si te fijas bien veras que, aunque son objetos sencillos, cumplen una función muy importante: ajustar la ropa (pantalones, faldas, abrigos, chaquetas, camisas) a nuestro cuerpo. Los botones llevan mucho tiempo entre nosotros. Los más antiguos se conocen que tienen 4,000 años de antigüedad y aparecieron en unas excavaciones arqueológicas en un valle de la india. Es impresionante que un pequeño objeto sea tan indispensable para la ropa que vestimos.'),
(151, 'La diversión antigua', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 115, 'Todos los niños del mundo tienen una cosa en común: ¡adoran jugar!, hoy en día, gracias al avance de la tecnología, existen una gran variedad de juguetes y aparatos como tabletas, consolas o pequeños robots que a veces ni los adultos sabemos manejar. Como te puedes imaginas esto no siempre ha sido así, ¿Alguna vez te has parado a pensar con que se divertían los niños de la antigüedad? La verdad es que no se sabe con seguridad, pero probablemente se lo pasan genial haciendo cosas muy simples como tirar al aire o al rio pequeñas piedras y palitos que encontraban por el campo, no existían juguetes era la naturaleza y ellos se divertían también. '),
(152, 'Barco de vela', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 112, 'Una noche de enero, un barco de vela entro en el puerto de Amberes, una ciudad de Bélgica. De aquel barco desembarco un extraño hombre que tiritaba de frio y arrastraba un gran saco. Tras llamar a muchas puertas, solo una anciana le dijo cobijo, además de ropa, comida y cama en una habitación con una estufa. A la maña siguiente el hombre decidido regalarle el contenido de su bolsa. La anciana, extrañada por su contenido pregunto al hombre:  -Señor, ¿Qué son estas semillas marones?  El hombre le dijo: - Estas semillas, señora, son de cacao y con un poco de paciencia la enseñare a hacer con ellas chocolate, un dulce delicioso. '),
(153, 'El reloj', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 124, 'De aquel reloj, con forma de caseta para pájaros, cada dos por tres salía un pequeño cuco, un ruidoso animal que me recordaba a una paloma. Por supuesto, el animal era de mentira y el ruido que emitía era una grabación que se repetía cada vez que el reloj marcaba las horas en punto. Para ser sinceros, no me gustaba. Me recordaba los usurpadores que son los cucos reales, al poner sus huevos en nidos que no son suyos. Así, Otros pájaros cuidan y alimentan de su polluelo sin que ellos se den cuenta.  Algo parecido sucedía con mi tía, que dejaba a su hijo con frecuencia en mi casa. A mi a mi primo nos encanta el reloj y el ruido que causa. ');
INSERT INTO `velocidadlectora` (`idLectura`, `nombreLectura`, `genero`, `descripcion`, `edadLectura`, `rutaLectura`, `grado`, `intentos`, `cantidadPalabras`, `lectura`) VALUES
(154, 'El gran Mozart', 'Lectura', 'Lectura Informativa', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Mozart es, posiblemente, el musico más importante de la historia, nació en una ciudad de Austria llamada Salzburgo en el año 1756. Su infancia fue especial porque desde muy pequeño demostró un talento musical extraordinario. Con solo cuatro años ya sabía leer las notas musicales y componer piezas muy complicadas para un niño de su edad. A los seis años dominaba varios instrumentos, como el violín y el teclado, y era capaz de escuchas una obra musical una sola vez y tocarla al día siguiente de memoria.  La fama del pequeño Mozart se extendió rápidamente por toda la ciudad y alrededores. Su padre también musico lo ayudo para que su talento no se quedara solo en casa.'),
(155, 'El ratón de granero ', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 118, 'Érase una vez un ratón que vivía debajo de un granero. Las tablas que formaban el suelo del granero tenían un agujerito, por el que, uno tras otro, los granos de trigo caían poco a poco a la madriguera. De ese modo vivía el ratón espléndidamente, estando siempre bien alimentado. Pero, al cabo de algún tiempo, comenzó a mortificarlo la idea de que ninguno de sus amigos supiese lo bien que le iba. Entonces se puso a roer la madera del granero, para agrandar el agujero de tal modo que pudiesen caer más granos en su madriguera. Hecho esto, corrió en busca de los demás ratones de los alrededores y los invitó a una fiesta en su granero. '),
(156, 'El trompo', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Uno de los niños trajo un trompo y lo hizo bailar. El trompo bailando dio una vuelta y se quedó fijo, como si estuviera dormido. Nos tumbamos en el suelo para ver mejor lo quieto que estaba y acercábamos la oreja para oír su fino zumbido. Nos acercamos tanto que lo movimos, y el trompo, como un loco, saltó arañándonos a todos la cara. Nos fuimos a curar con desinfectante rojo. Algunos niños quedaron pintados como payasos. ¿Qué les ha pasado?, nos dijeron cuando salimos. ¡Nada de particular! que el trompo se ha vuelto loco. Nos encanta jugar con el trompo, ahora sabemos que no tenemos que acercarnos tanto, para jugar de manera segura y divertirnos.'),
(157, 'El zorro y la cigüeña', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 123, 'Un día, el zorro invitó a la cigüeña a comer un rico almuerzo. El zorrito tramposo sirvió la sopa en unos platos chatos, chatísimos, y de unos pocos lengüetazos terminó su comida. A la cigüeña se le hacía agua el pico, pero como el plato era chato, chatísimo, y su pico era largo, larguísimo, no consiguió tomar ni un traguito. - ¿No le ha gustado el almuerzo, señora cigüeña? -le preguntó el zorro relamiéndose. - Todo estuvo muy rico -dijo ella-. Ahora quiero invitarlo yo. Mañana lo espero a comer en mi casa. Al día siguiente, la cigüeña sirvió la comida en unos botellones altos, de cuello muy estrecho. Tan estrecho que el zorro no pudo meter dentro ni la puntita del hocico. '),
(158, 'Platero', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 114, 'Venía, a veces, flaco y enfermo, a la casa del huerto. El pobre andaba siempre huyendo, acostumbrado a los gritos y a las piedras. Los mismos perros le enseñaban los dientes. Y se iba otra vez, con el sol del mediodía, lento y triste, monte abajo. Aquella tarde, llegó detrás de Diana. Cuando yo salía, el guarda, que en un arranque de mal corazón había sacado la escopeta, disparó contra él. No tuve tiempo de evitarlo. El pobre, con el tiro en la barriga, se volvió rápidamente un momento, dio un aullido, y cayó muerto bajo un árbol.  Platero miraba el perro fijamente, levantando la cabeza. Diana, temblando, andaba escondiéndose de uno en otro. '),
(159, '¿Cómo crecer? ', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 127, 'Un rey fue hasta su jardín y descubrió que sus árboles, arbustos y flores se estaban muriendo. El Roble le dijo que se moría porque no podía ser tan alto como el Pino. Volviéndose al Pino, lo halló caído porque no podía dar uvas como la Vid. Y la Vid se moría porque no podía florecer como la Rosa. La Rosa lloraba porque no podía ser tan alta y sólida como el Roble. Entonces encontró una planta, una Fresa, floreciendo y más fresca que nunca. El rey preguntó: -¿Cómo es que creces saludable en medio de este jardín mustio y sombrío? - No lo sé. Quizás sea porque siempre supuse que cuando me plantaste, querías fresas. Si hubieras querido un Roble o una Rosa, los habrías plantado.'),
(160, 'El Mantícora.', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 119, 'La gente que vive en el desierto habla de un animal llamado mantícora. El mantícora es un animal que tiene tres filas de dientes que se entrelazan entre sí como los de un peine; la cara y las orejas son como las de un hombre; los ojos son azules, el cuerpo es parecido a un león y la cola termina en un aguijón, como la de los alacranes.  Es muy aficionado a cazar hombres. Corre con mucha rapidez, apoyándose en unas uñas muy retorcidas. Cuando sopla por sus narices se oye el ruido desde muy lejos.  Si es atacado, mueve con fuerza su cola y dispara unas púas, como flechas envenenadas, que son capaces de matar a un hombre.'),
(161, 'El país donde se perdían las palabras. ', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 118, 'Érase una vez un país remoto donde la gente perdía las palabras. Inesperadamente, los hombres y las mujeres de aquella tierra – jóvenes y viejos- habían empezado a perder las palabras. Una detrás de otra, como quien pierde los cabellos. Nadie sabía determinar las causas por las cuales aquella gente había empezado a ignorar los nombres de las cosas, y muchos no sabían de qué manera podían designar a los pájaros, a los árboles, a las montañas y al mar. Las palabras perdidas permanecían con frecuencia en el suelo, por las calles y las plazas.  No era difícil ver aquel suceso. De pronto, una palabra surgía de un bolsillo, colgaba de un sombrero, caía del interior de un capazo.'),
(162, 'El abuelo y el nieto', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 141, 'Había una vez un pobre muy viejo que no veía apenas, tenía el oído muy torpe y le temblaban las rodillas. Cuando estaba a la mesa, apenas podía sostener la cuchara y dejaba caer la sopa en al mantel. Su hijo y su esposa estaban muy disgustados con él, hasta que, por último, lo dejaron en un rincón del cuarto, donde le llevaban la comida en un plato viejo de barro. El anciano lloraba con frecuencia y miraba con tristeza hacia la mesa. Un día se cayó al suelo y se le cayó el plato que apenas podía sostener en sus temblorosas manos. Su nuera le llenó de improperios a los que no se atrevió a responder y bajó la cabeza suspirando. Entonces le compraron un plato de madera, en el que le dieron de comer de allí en adelante.'),
(163, 'Un animal raro', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 124, 'Del asno de tres patas se dice que vive en mitad del mar y que tres es el número de sus patas y seis el de sus ojos y nueve el de sus bocas y dos el de sus orejas y uno, su cuerno. El pelo es blanco. Dos de sus seis ojos están en el lugar en donde suelen estar los ojos, otros dos en la punta de la cabeza y otros dos en el cuello. Cuando mira algo con sus seis ojos lo rinde y lo destruye. De sus nueve bocas, tres están en la cabeza, tres en el cuello y tres en el lomo. En el casco de cada pata, puesto en el suelo, se pueden meter más de mil ovejas.'),
(164, 'El racimo de uvas', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 133, 'Al ciego le habían regalado un hermoso racimo de uvas y quiso compartirlo conmigo. Como pensaba que yo iba a engañarle y comer más de la cuenta, dijo: - Lázaro, tienes que prometer que cogerás sólo una uva cada vez. Yo haré lo mismo y así los dos comeremos la misma cantidad. Yo así lo prometí. Pero, al poco rato, vi que el astuto ciego comenzó a coger las uvas de dos en dos; y yo, para no ser menos, empecé a tomarlas de tres en tres. Cuando terminamos el racimo, dijo el ciego: - Lázaro, me has engañado. Has estado cogiendo las uvas de tres en tres. Como yo se lo negara, añadió: - ¿Sabes en qué lo he notado? En que yo las tomaba de dos en dos y tú callabas.'),
(165, 'La pequeña ardilla', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 119, 'En un bosque remoto, al pie de una montaña, vivía una pequeña ardilla. Allí había árboles de todas clases: pinos, abetos, cedros, sauces. Algunos eran muy altos, con muchas hojas y ramas; otros eran bajos y parecían desnudos. En el bosque, también vivían muchos animales: pájaros, liebres, ciervos. Había, además, muchas ardillas. A pesar de ello, la ardillita se sentía muy triste porque se pasaba el día sola. Como era muy pequeña y no sabía trepar a los árboles, no tenía ninguna amiga. Un día, estaba comiendo sola una bellota, cuando apareció otra ardilla un poco más grande. Como ésta tenía mucha hambre, la pequeña ardilla le ofreció compartir su comida. Desde ese momento, las dos ardillas fueron inseparables.'),
(166, 'Los castores', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 125, 'Los castores son animales roedores que viven en las orillas de los ríos. Para construir su madriguera, los castores levantan un dique en el río. El dique es una especie de muro que retiene el agua y provoca que se forme una charca. Allí, en el fondo de la charca, es donde los castores construyen su vivienda. Como la entrada de la madriguera se encuentra sumergida, en su interior están a salvo de sus enemigos. Los castores se alimentan de hojas de madera blanda de los árboles de la ribera del río. Durante el otoño recogen ramas y las almacenan bajo el agua, clavadas en el barro. En invierno, cuando la superficie de la charca se hiela, los pastores bucean hasta su despensa para comer.'),
(167, 'Los dos príncipes', 'Lectura', 'Cuento Infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 131, 'El palacio está de luto y en el trono llora el rey, y la reina está llorando donde no la pueden ver: en pañuelos de holán fino lloran la reina y el rey: los señores del palacio están llorando también. Los caballos llevan negro y el penacho y el arnés: los caballos no han comido, porque no quieren comer: el laurel del patio grande quedó sin hoja esta vez: todo el mundo fue al entierro con coronas de laurel: - ¡El hijo del rey se ha muerto! ¡Se le ha muerto el hijo al rey! En los álamos del monte tiene su casa el pastor: la pastora está diciendo “¿Por qué tiene luz el sol? Las ovejas, cabizbajas, vienen todas al portón: ¡Una caja larga y honda está forrando el pastor!'),
(168, 'Los Yin', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 175, 'Los Yinn son animales que viven en el aire. Su cuerpo es transparente y son capaces de tomar muchas formas. Al principio aparecen como nubes; luego, según su voluntad, toman la figura de un hombre, un lobo, de un león o de una culebra. Pueden atravesar un muro o volar por los aires o hacerse invisibles. A menudo llegan al cielo y sorprenden las conversaciones de los ángeles sobre lo que va a pasar; luego se lo cuentan a los magos y adivinos para que puedan adivinar el futuro. Ciertos sabios dicen que ellos construyeron las Pirámides de Egipto y el Templo de Jerusalén.  Desde las terrazas o los balcones les gusta tirar piedras a las gentes. También les gusta vivir en las ruinas, en las casas deshabitadas, los pozos, los ríos o los desiertos. Los egipcios afirman que cuando se enfadan lanzan tormentas de arena y piensan que las estrellas fugaces que podemos ver por las noches de verano en el cielo son dardos que lanzas los Yinn contra sus enemigos cuando se enfadan.'),
(169, 'Un rey divertido', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 140, 'Cuentan que hubo un rey en un Pueblo lejano que reunió a los mejores albañiles y sabios y les ordenó construir un laberinto tan difícil de salir que nadie se atreviera a entrar, y los que se atrevieran a entrar, se perdieran. Con el paso del tiempo, vino a su palacio un rey árabe. El rey del Pueblo lejano para burlarse hizo que el rey árabe se metiera en el laberinto. El rey se perdió. Comenzó a andar sin poder encontrar su salida hasta que llegó la noche. Entonces pidió socorro y dio con la puerta. Sus labios no se quejaron, pero le dijo al rey del Pueblo lejano que él, en su ciudad, tenía un laberinto mucho mejor. Luego volvió a su país junto a sus capitanes, pero antes atacó algunos castillos y tuvo la suerte de hacer preso al rey del Pueblo lejano.'),
(170, 'El asno disfrazado de león', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 142, 'Cierta vez, un asno se vistió con una piel de león que encontró en el camino. Los animales se asustaron al verlo y huyeron hacia la espesura de la selva. El miedo se apoderó de toda la región. El asno respetado, ahora muy temido, se paseaba orgulloso y en forma vanidosa por toda la selva. Cuando su amo lo echó de menos, pese al duro día de trabajo, salió a buscarlo por todas partes. Encontró una extraña figura. Sintió terror y huyó. Al poco rato, el amo recordó las grandes orejas que salían de la piel del león y se dio cuenta de la mentira. Regresó donde estaba el animal y le quitó el disfraz, haciéndole pasar mucha vergüenza ante los demás animales de la región. Partió el amo rumbo a su campo y el asno con la cabeza gacha lo siguió.'),
(171, 'Alquimistas', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 141, 'Los alquimistas eran personajes de la Antigüedad que se dedicaban a experimentar con sustancias. En sus laboratorios y talleres, mezclaban materiales tan corrientes como la sal, el azufre, el cobre o el vinagre con extraños mejunjes como cocciones de lagarto o pezuñas de cabra molidas. Durante siglos, buscaron un elixir que hiciera a las personas inmortales, o una sustancia para convertir los metales en oro. No lograron esos milagros, pero sí sustancias y mezclas que hoy utilizamos, como el amoníaco, el ácido sulfúrico… Se les acusaba de brujería y se les perseguía. Por eso, ocultaban sus apuntes y se comunicaban entre ellos mediante notas escritas con tinta invisible.  No era magia, sino zumo de limón aplicado con un pincel en un papel. Para leer el mensaje, se calentaba la hoja en un horno, el zumo se tostaba y aparecían las letras. '),
(172, 'Arturo y Clementina', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 142, 'Arturo y Clementina son dos tortugas jóvenes y enamoradas. Clementina tiene muchos proyectos para su futura vida en común: viajarán por todas partes e incluso cumplirá su sueño de visitar Venecia. Pero los planes de Arturo son muy diferentes. Arturo ha decidido que él pescará para los dos mientras Clementina descansa. Clementina se aburre e intenta iniciar una serie de actividades: aprender a tocar la flauta, pintar, … pero Arturo la desanima una y otra vez y para contentarla le compra regalos sin parar. Clementina carga cada regalo de Arturo sobre su concha.  Llega un momento en que son tantas las cosas que lleva a cuestas que apenas puede moverse. Clementina se siente cada vez más desgraciada hasta que un buen día decide salir de su caparazón y darse una vuelta. Al principio sus paseos son cortos, pues no quiere que Arturo sospeche.'),
(173, 'Carta de las palomas', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 146, 'SEÑOR DIRECTOR: La decisión del alcalde de acabar con todas las palomas de la ciudad me ha causado un gran disgusto. Soy un hombre ya mayor y jubilado. La ausencia de estos animales representaría una pérdida inestimable. Es uno de los pocos placeres que me quedan en la vida. La compañía de las palomas, a quienes les doy miguitas de pan o algún puñado de granos siempre que el tiempo y mi salud me permiten disfrutar del aire libre en cualquier banco del paseo. Comprendo que existen motivos de salud pública por los muchos excrementos que van soltando mientras vuelan.  No me atreveré a protestar de que las elimine: pero sí sugiero, con el debido respeto a las autoridades: ¿acaso no debería aplicarse primero exterminando las ratas que, en cantidad aterradora, pueblan nuestras alcantarillas, y cuya presencia me resisto a creer menos nociva para la población.'),
(174, 'Asamblea en la carpintería', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'Cuentan que en la carpintería hubo una vez una extraña asamblea. Fue una reunión de herramientas para arreglar sus diferencias. El martillo ejerció la presidencia, pero la asamblea le notificó que tenía que renunciar. ¿La causa? - Hacía demasiado ruido y, además, se pasaba el tiempo golpeando. El martillo aceptó su culpa, pero pidió que también fuera expulsado el tornillo. Dijo que había que darle muchas vueltas para que sirviera de algo. Ante el ataque, el tornillo aceptó también, pero pidió la expulsión de la lija. Hizo ver que era muy áspera en su trato y siempre tenía fricciones con los demás. Y la lija estuvo de acuerdo, a condición de que fuera expulsado el metro, que siempre se lo pasaba midiendo a los demás según su medida, como si fuera el único perfecto. En eso entró el carpintero, se puso el delantal e inició su trabajo. '),
(175, 'Las uvas y el ¡Ay!', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 145, 'Tenía un caballero un criado nuevo, un mozo llamado Pedro que parecía un poco tonto. Para burlarse de él, le dio dos monedas y le dijo: -Pedro, vete al mercado y cómprame una moneda de uvas y otra de ¡ay! El pobre mozo compró las uvas, pero cada vez que pedía una moneda de ¡ay! todos se reían y mofaban de él. Al darse cuenta de la burla de su amo, puso las uvas en el fondo de una bolsa y sobre las uvas un manojo de ortigas. Cuando regresó a su casa, le dijo su amo: -¿Lo traes todo? Contestó el mozo: -Sí, señor, está todo en la bolsa. El caballero extrañado metió rápidamente la mano dentro de la bolsa y al tocar las ortigas, exclamó: -¡Ay! A lo que dijo el mozo: -Debajo están las uvas, señor puede comerlas tranquilamente que están deliciosas.'),
(176, 'Los beduinos', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 142, 'Los beduinos son pastores nómadas, es decir, pastores que no viven en un sitio fijo, sino que van de un lugar a otro con sus rebaños de cabras, caballos, dromedarios… Los beduinos recorren desde hace muchísimo tiempo el desierto del Sahara que se extiende por el territorio de 11 países (Argelia, Túnez, Egipto…) A pesar de llevar una vida muy dura, los beduinos se caracterizan por su amabilidad y su hospitalidad. Según una antigua costumbre, los beduinos dan cobijo y alimento a cualquier persona que llegue a su casa, sin esperar nada a cambio. Además, nunca preguntan a sus invitados quiénes son o adónde van. Se limitan a ofrecerles amablemente un lugar donde descansar.  La casa de los beduinos es una especie de tienda hecha con pelo de cabra o de camello. Junto a las tiendas, suelen almacenar el agua que necesitan. '),
(177, 'Memed, El Flaco', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 145, 'Uno se cría, crece y madura según la tierra que lo acoge. Memed había crecido en una tierra estéril. Mil y una desgracias habían impedido que alcanzara su máximo desarrollo. Sus hombros eran estrechos y sus piernas parecían ramas secas. Tenía las mejillas hundidas y la tez quemada por el sol. Si se le miraba con atención su aspecto recordaba al de aquellos robles, pequeños y achaparrados. Como ellos, aferrado a la tierra, fuerte y anguloso. Sólo en un rincón, en un diminuto rincón, le quedaba cierta ternura. Sus labios eran rosados y se fruncían ligeramente como los de un niño. En sus comisuras parecía dibujarse siempre una sonrisa. En cierto modo, se ajustaba a su amargura, a su fuerza” Memed era de corazón noble pero las circunstancias hacían que él se mantuviera de mal humor, se contentaba cuando el silencio llegaba a sus oídos. '),
(178, 'Un nombre para cada día', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 159, '¿Has pensado alguna vez por qué el lunes se llama lunes, el martes, martes? ¿Sabes cuál es el origen del nombre de los días de la semana? Hace muchísimo tiempo, los ciudadanos del imperio romano dedicaron cada día de la semana a un astro. Por ejemplo, llamaron a un día el día de la Luna; a otro, el día de Marte… Pues bien, esos nombres pasaron al castellano para denominar a los cinco primeros días de la semana. Así, nuestro lunes es el antiguo día de la Luna; el martes, el día de Marte; el miércoles, el día de Mercurio; el jueves, el día de Júpiter; y el viernes; el día de Venus. En cambio, los dos últimos días de la semana no tienen relación con el nombre romano. Nuestro sábado proviene del Sabbat de los hebreos, que significa día de descanso; y el domingo viene del dominicum o día del Señor, que los primeros cristianos dedicaron a Dios. '),
(179, 'Piratas de broma parte 1', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 166, '- ¿Bajamos al pueblo? Me han dicho que en La Isla del Tesoro hay un loro alucinante. - ¡Vale! - Quedamos a las siete en la palmera que hay delante de mi casa. (…) Los niños se quedaron en la puerta un rato largo, mirando el ir y venir de los camareros. El interior de La Isla del Tesoro parecía la cubierta destartalada de un barco pirata. Paco El Majaron estaba en la barra: tenía una mano cubierta con un trozo de cuero terminado en un garfio; y con aquel gancho abría botellas de cerveza con una gran habilidad. Los camareros, con patas de palo o parches en un ojo, se tambaleaban por entre las mesas llevando bandejas y platos. Mientras tanto, el loro gritaba como un loco insultando a todo el mundo. - ¡Piojosos! ¡Inútiles! ¡Borrachos! Miguel y sus amigos se reían mucho porque uno de los camareros, que tenía un ojo tapado con un parche, se chocaba con las mesas y contra las paredes:'),
(180, 'Piratas de Bromas parte 2', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 155, '- ¡A ver si pones más cuidado, Niceto! ¡Ya has tirado tres platos de boquerones encima de los clientes! –decía El Majarón. - Jefe…, es que con el ojo tapado no calculo bien las distancias. - ¡Pues te acostumbras! ¡Y no se te ocurra quitarte el parche! - Es muy incómodo, jefe… -se lamentaba Niceto. - Más incómodo es el garfio que llevo yo en la mano y me aguanto. - Pero a usted, en el fondo, le gusta… - Déjate de bromitas, Niceto, o te pongo una pata de palo. El camarero juntó las manos suplicando: - No, jefe… ¡La pata de palo no! ¡Qué tengo muy mal equilibrio! - Pues no te hagas el rácano y vuelve al trabajo. Los niños se reían desde la puerta y soltaron una carcajada cuando el loro comenzó a insultarlos: - ¡Rácanos! ¡Inútiles! ¡Piojosos! - ¡Ja, ja, ja! –reía Marta-. Tenía razón Nico. Es un loro alucinante. '),
(181, 'El guitarrista en el tejado. Parte 1', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 151, 'Arnold era un gato que contemplaba desde su ventana, silenciosamente, el revolotear de los pájaros. La primavera había reunido a un buen número de ellos en el parque que había enfrente de su casa. Las aves se columpiaban en los cables de la luz. Se balanceaban en las débiles ramas de los árboles, preparando sus nidos. Y se acercaban volando a la ventana del gato. Arnold no miraba sólo para distraerse. Estaba ideando un plan. Comenzó a escalar por las tuberías exteriores del edificio. Llegó al tejado. Allí estaba más cerca de los pájaros. Se relamía pensando en el festín que iba a darse. Estudió palmo a palmo el tejado. Unos metros más a la derecha descubrió un nido. Ante la sorpresa, sus ojos se salían de sus órbitas y exclamó muy bajito: “¡me encantan los huevos de ave y mucho más los recién nacidos! ¡me voy a poner las botas!'),
(182, 'El guitarrista en el tejado. Parte 2', 'Lectura', 'Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 158, 'Detrás de él, oyó una voz que le dijo: “¡vaya! Si aquí está el guitarrista que canta melodiosamente a la luna”. Arnold preguntó asombrado: “¿hablas conmigo? Un gorrión muy gordo, que no paraba de picotear un trozo de pan duro, le contestó: “sí, desde luego. ¿Por qué no nos deleitas con tus canciones, en esta mañana tan soleada? ” El gato estaba muy sorprendido. No quiso rechazar la oportunidad de hacer una demostración con su guitarra, aún sabiendo que no dominaba el instrumento. Bajó como un relámpago por las tuberías. Entró en la casa de un salto, por la ventana, cogió su guitarra y volvió a subir al tejado a toda prisa. Al llegar, Arnold abrió los ojos como platos, exclamando: “¿Dónde está el nido? ¿y los pájaros? ¡han volado! ¡todo ha desaparecido! Miró a su alrededor y dijo: “¿dónde están los que se balancean en los cables de la luz? ¿por qué he sido tan tonto? ”'),
(183, 'El esclavo rey', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 168, 'El esclavo apareció de pronto, vestido de plumas y telas de colores, pintado de rojo y blanco, y, dando saltos entre los niños, cantaba: -Yo era un rey en mi tierra, yo era un rey grande y hacía lo que quería... Y danzaba, luego, una altiva danza, fuerte y airada. Después se quitaba el disfraz delante de todos, y se iba, con él en las manos, a su choza. Había sido un rey. Luego lo cogieron, lo cazaron, lo robaron y lo trajeron a Puerto Rico de esclavo. Todo el año se sentía esclavo, y, callado y solo, trabajaba como un pobre animal. Era dulce, bueno, amable y de noche se iba despacio a su choza, se echaba en la puerta y cantaba a las estrellas con palabras desconocidas. Pero un día al año, de pronto, desaparecía y se venía luego vestido de plumas y telas chillonas, y, dando saltos ante los niños, cantaba: -Yo era un rey... Y danzaba luego una altiva danza, fuerte y airada.'),
(184, 'Niño rico y niño pobre', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'Ernesto y Óscar vivían en dos casas próximas. La primera, hermosa, amplia, confortable; la segunda, poco más que una choza. El niño rico tenía un cuarto lleno de juguetes. El niño pobre era feliz cuando se acostaba después de haber tomado un plato de sopa. El muchacho afortunado, con su ropa cara y nueva, desdeñaba continuamente al vecino pobre por sus trajecillos gastados. Pasaron años y dejaron de verse, hasta que el azar los reunió de nuevo. Ernesto tenía aspecto derrotado. Oscar vestía impecables ropas y conducía un caro y lujoso coche. - ¿Eres Óscar, verdad? – preguntó Ernesto. - ¿Cómo es que has prosperado? ¿Es que has jugado con fortuna? No lo puedo creer. - No; me he formado bien y he trabajado firme… Ernesto se alejó con la cabeza baja. Todo su trabajo, si tal podía llamarse, había sido derrochar la fortuna heredada de sus padres.'),
(185, 'El Corsario Negro ', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'El orden y la disciplina que reinaban a bordo de los buques filibusteros era tal, que en cualquier hora del día o de la noche toda la gente se colocaba en su puesto con rapidez prodigiosa, desconocida incluso en los buques de guerra de las naciones marineras por excelencia. Aquellos depredadores del mar (…) se convertían en obedientes corderos. Esto no les impedía que durante el combate se convirtieran en fieros tigres. (…) Se hallaban corroídos por todos los vicios, pero no concedían valor alguno a la muerte y eran capaces de los más grandes heroísmos y de las mayores audacias. La disciplina era lo que hacía que el corsario negro pudiera ser el más valiente, y que cada aventura que emprendía la terminara como un héroe. Todos lo elogiaban y decían que era un super hombre que no le tenía miedo a nada ni a nadie.'),
(186, 'El mono ', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'Juan José Gisbert, alcalde de Penáguila, pueblo alicantino de cuatrocientos habitantes, ha padecido durante quince días el alboroto que un mono de cuatro años provocaba en la localidad. El mono, que se había escapado de un “safari” cercano, se entretuvo saltando por los tejados, tirando tejas a la calle y columpiándose en las antenas de la televisión. Sin embargo, el número que alcanzó mayor popularidad fue el protagonizado cuando irrumpió en la iglesia por una cristalera del campanario mientras se celebraba la misa. Ante el asombro de los asistentes, el mono se subió en las lámparas y recorrió el pasillo dando volteretas. Por fin, una vez abiertas las puertas de la iglesia, escapó tranquilamente a la calle. Los cuidadores del “safari” después de capturarlo, declararon que el mono ya habría regresado antes si los habitantes del pueblo no le hubieran dado plátanos y magdalenas durante su visita.'),
(187, 'Leyenda China', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 148, 'Cierto día, un sabio visitó el infierno. Allí, vio a mucha gente sentada en torno a una mesa ricamente servida. Estaba llena de alimentos, a cual más apetitoso y exquisito. Sin embargo, todos los comensales tenían cara de hambrientos y el gesto demacrado: Tenían que comer con palillos; pero no podían, porque eran unos palillos tan largos como un remo. Por eso, por más que estiraban su brazo, nunca conseguían llevarse nada a la boca. Impresionado, el sabio salió del infierno y subió al cielo. Con gran asombro, vio que también allí había una mesa llena de comensales y con iguales manjares. En este caso, sin embargo, nadie tenía la cara desencajada; todos los presentes lucían un semblante alegre; respiraban salud y bienestar por los cuatro costados. Y es que, allí, en el cielo, cada cual se preocupaba de alimentar con los largos palillos al que tenía enfrente.'),
(188, 'Las Tres rejas', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 150, 'Un joven discípulo de un filósofo sabio llega a casa de éste y le dice: -Escucha, maestro. Un amigo tuyo estuvo hablando de ti con malevolencia... -¡Espera! –lo interrumpe el filósofo- ¿Ya hiciste pasar por las tres rejas lo que vas a contarme? -¿Las tres rejas? -Sí. La primera es la verdad. ¿Estás seguro de que lo que quieres decirme es absolutamente cierto? -No. Lo oí comentar a unos vecinos. -Al menos lo habrás hecho pasar por la segunda reja, que es la bondad. Eso que deseas decirme ¿es bueno para alguien? -No, en realidad, no. Al contrario... -¡Ah, vaya! La última reja es la necesidad. ¿Es necesario hacerme saber eso que tanto te inquieta? -A decir verdad, no. -Entonces –dijo el sabio sonriendo- si no es verdadero, ni bueno, ni necesario, sepultémoslo en el olvido. La importancia del saber escuchar y seguir consejo te ayuda a ser mejor persona.'),
(189, 'Abenamar y el Rey Don Juan', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 141, 'Abenámar, Abenámar, moro de la morería, el día que tú naciste grandes señales había. Estaba la mar en calma, la luna estaba crecida; moro que en tal signo nace, no debe decir mentira.» Allí respondiera el moro, bien oiréis lo que decía: «No te la diré, señor, aunque me cueste la vida, porque soy hijo de un moro y una cristiana cautiva; siendo yo niño y muchacho mi madre me lo decía: que mentira no dijese, que era grande villanía: por tanto pregunta, rey, que la verdad te diría. «Yo te agradezco, Abenámar, aquesta tu cortesía. ¿Qué castillos son aquéllos? ¡Altos son y relucían!» «El Alhambra era, señor, y la otra la mezquita; los otros los Alijares, labrados a maravilla. El moro que los labraba cien doblas ganaba al día y el día que no los labra otras tantas se perdía. '),
(190, 'Un regalo muy original', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 156, 'Este año por mi santo la tía Merche me hizo un regalo de los que hacen caerte de espaldas, y es que a ella no hay quien la gane en ser original: me regaló un stop. Sí, sí, tal como lo leéis. Un stop de medidas reglamentarias, hexagonal, con el fondo rojo como si tuviese vergüenza… y con las cuatro letras internacionales, nuevas y relucientes. ¡Ah!, y con el poste. Encima con el poste. Me lo trajo muy bien envuelto en papel de seda blanco, con un lazo morado muy aparatoso. Y una etiqueta dorada que ponía “Felicidades” y donde se indicaba su procedencia: Jefatura Provincial de Tráfico. (…) Seguro que mi pobre tía tuvo que recurrir a todas sus influencias y acudir a varios Ministerios para conseguir un stop nuevo con poste y todo. Se nota que me tiene un gran afecto. Yo fingí estar más contento que unas pascuas y le prometí utilizarlo enseguida.'),
(191, 'Amigos', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'Una noche, uno de los amigos despertó sobresaltado. Saltó de la cama, se vistió apresuradamente y se dirigió a la casa del otro. Al llegar, golpeó ruidosamente y todos se despertaron. Uno de los criados le abrió la puerta, asustado, y él entró en la residencia. El dueño de la casa, que lo esperaba con una bolsa de dinero en una mano y su espada en la otra, le dijo: -Amigo mío: sé que no eres hombre de salir corriendo en plena noche sin ningún motivo. Si viniste a mi casa es porque algo grave te sucede. Si perdiste dinero en el juego, aquí tienes, tómalo...Y si tuviste un altercado y necesitas ayuda para enfrentar a los que te persiguen, juntos pelearemos. Ya sabes que puedes contar conmigo para todo. El visitante respondió: -Mucho agradezco tus generosos ofrecimientos, pero no estoy aquí por ninguno de esos motivos.'),
(192, 'Durmiendo sobre el hielo ', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 144, 'El niño se quedó muy triste pensando que no iba a poder hacer el viaje a Laponia; y además, le asustaba pasar la noche en un lugar tan frío. Dijo al ganso blanco: - Esto se pone cada vez peor; por lo pronto nos helaremos si dormimos sobre el hielo. Pero el ganso blanco estaba de buen humor, y contestó: - No hay peligro; date prisa ahora y reúne toda la hierba que puedas. Y cuando el niño reunió una gran brazada de hierba seca, el ganso blanco le agarró por la chaqueta y lo levantó, y voló con él sobre el hielo, donde los gansos salvajes estaban ya medio dormidos, con los picos escondidos debajo de las alas. - Extiende ahora la hierba sobre el hielo para que yo pueda posarme sin quedarme helado; ayúdame y yo te ayudaré – dijo el ganso blanco. '),
(193, 'El caballo de trolla', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 167, 'Hacía muchos años que los griegos, bajo el mando del rey Ulises, atacaban la ciudad de Troya sin poder conquistarla. Entonces, Ulises tuvo una gran idea: construir rápidamente un gigantesco caballo de madera para engañar a sus enemigos. Por la noche, se metieron en el caballo los más valientes guerreros griegos. Y los demás, a la mañana siguiente, subieron a sus naves como si se marcharan. Los troyanos se pusieron muy contentos al ver que sus enemigos se retiraban. Pronto salieron de su ciudad y fueron apoderándose de todo lo que habían dejado los griegos. Aquel enorme caballo les llamó mucho la atención, y pensaron meterlo también en su ciudad, como si fuera un botín que hubieran conquistado al enemigo. Durante toda la noche celebraron los troyanos lo que creían que era su victoria. Pero cuando estaban dormidos, Ulises y sus soldados salieron del caballo y, silenciosamente, abrieron las puertas de Troya para que entrasen los demás griegos, que habían vuelto aprovechando la oscuridad de la noche.'),
(194, 'El comprador de gratitud', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 140, 'Hace mucho tiempo, en un lejano reino de China, vivía un ministro llamado Mong. Un día se presentó en su palacio un joven muchacho que buscaba trabajo. -¿Qué sabes hacer? –le preguntó el ministro. -Nada, señor –respondió el joven-. Pero aprenderé lo que sea necesario. Soy honrado y os serviré con lealtad. A Mong le gustó la seguridad del joven y decidió contratarlo. Ordenó que le dieran una habitación, ropas adecuadas, suficiente comida y un pequeño sueldo. Tiempo después, llegaron a palacio noticias sobre la lejana aldea de Sue. Los vecinos llevaban años sin pagar sus impuestos y la deuda contraída sumaba una importante cantidad. Además, tres enviados del ministro habían tenido que huir porque los habitantes de la aldea amenazaban con matarlos. -¿Por qué no dejáis que vaya yo a la aldea? – le rogó el joven sirviente al ministro.'),
(195, 'El conde Olinos', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 161, 'Caminaba el Conde Olinos la mañana de san Juan a dar agua a su caballo a las orillas del mar. Mientras el caballo bebe él le canta este cantar, las aves que iban volando se paraban a escuchar. Bebe, mi caballo, bebe, Dios te me libre del mal, de los vientos de la Tierra y de las furias del mar De altas torres de palacio la reina le oyó cantar: Mira, hija, cómo canta la sirena de la mar. No es la sirenita, madre, que esa tiene otro cantar, que es la voz del Conde Olinos que por mis amores va. Si es la voz del Conde Olinos, yo le mandaré matar, que para casar contigo le falta sangre real. Guardias mandaba la reina al Conde Olinos buscar, que lo maten a lanzadas y echen su cuerpo a la mar. La infantina, con gran pena, no cesaba de llorar. Él murió a la media noche y ella a los gallos cantar.'),
(196, 'En la unión esta la fuerza', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 163, 'En tiempos lejanos, la Tortuga, el Gamo, el Ratón y la Corneja vivían juntos, unidos por una buena amistad. Cada mañana, mientras el Gamo, el Ratón y la Corneja iban en busca de alimentos, la Tortuga se llegaba hasta el cercano estanque, donde pescaba peces que servían de entremés en la comida. Al atardecer, amigablemente reunidos en su casita de ramas y hojas, comían y charlaban alegremente. Hasta que un mal día el Gamo, que estaba paseando por el bosque, regresó asustado y dijo a sus compañeros: − ¡Amigos, un cazador armado de arco y flechas se acerca! ¡Sálvese quien pueda! Cundió el pánico y el Ratón fue a ocultarse en su madriguera subterránea; el Gamo, entre unas plantas; mientras que la Corneja, con un rápido vuelo, fue a situarse en la copa de un árbol. Sólo la pobre Tortuga, incapacitada para moverse con rapidez, cayó en poder del cazador, que la ató bien con una cuerda y se la echó al hombro. '),
(197, 'La Ventana y el espejo', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 143, 'Un joven muy rico fue a ver a un rabino y le pidió un consejo que lo guiara en la vida. El rabino lo condujo a la ventana: - ¿Qué es lo que ves a través del cristal? - Veo hombres pasando y un ciego pidiendo limosnas en la calle. Entonces el rabino le mostró un gran espejo: - Y ahora, ¿qué ves? - Me veo a mi mismo. - ¡Y ya no ves a los otros! Fíjate que tanto la ventana como el espejo están hechos de la misma materia prima: el vidrio. Pero en el espejo, al tener éste una fina capa de plata cubriéndolo, sólo te ves a ti mismo. Debes compararte a estos dos tipos de vidrio. Cuando pobre, prestabas atención a los otros y tenías compasión por ellos. Cubierto de plata, rico, sólo consigues admirar tu propio reflejo.'),
(198, 'Las Brazas', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 151, 'Los pescadores acostumbran a medir las distancias en brazas. Para medir la profundidad del mar, tiraban una cuerda con una piedra en la punta. Luego iban recogiendo la cuerda y midiendo las veces que podían extender los brazos. Así un marinero decía que el fondo del mar estaba a cinco brazas porque había tenido que recoger la cuerda en cinco ocasiones. Era una forma de medir porque las brazas eran parecidas de un marinero a otro. Pero nunca iguales. Dependía de que el marinero fuese grande o pequeño para que la braza fuera mayor o menor. Existían también otras medidas. Cada pueblo tenía unas medidas diferentes y era difícil entenderse. Por ello se pensó en una medida común para todos: el metro. El metro es la unidad que utilizan casi todos los países. Así las medidas que se hacen en un país son iguales a las que se hacen en otro.'),
(199, 'Los sueños de la granjera', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 141, 'En un verde valle rodeado de montañas vivía una vez un granjero. Tenía una granja con tres vacas, muchas ovejas, un cerdo y un montón de gallinas. Sin embargo, cuidaba poco de los animales. Los pobres estaban sucios, descuidados y tristes. Un día llegó al valle una muchacha. Se llamaba Teresa y soñaba con tener una pequeña granja. Como le gustaban mucho los animales, se quedó a trabajar con el granjero. Todos los días limpiaba los establos, acariciaba a los animales, hablaba con ellos… Y al poco tiempo, las vacas empezaron a dar más leche, las ovejas se cubrieron de abundante lana, el cerdo engordó y las gallinas ponían más huevos. El granjero estaba contento y como recompensa, regaló a Teresa un cántaro de leche. La muchacha se puso el cántaro en la cabeza y echó a andar camino del mercado.'),
(200, 'Otoño', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 166, 'En otoño la mayoría de los árboles pierden sus hojas. Las hojas caen al suelo y forman una capa vegetal. Entre las hojas secas viven muchos animales: hormigas, escarabajos, lombrices, ratones, etc. Estos animales se alimentan de los restos vegetales que caen al suelo: hojas, frutos, cortezas y ramas. Junto a estos animalillos están los hongos y las bacterias que con la humedad del suelo descomponen los restos vegetales. Las hojas se transforman de este modo en sustancias útiles para las plantas. Estos abonos son absorbidos por las raíces y sirven para que el árbol siga creciendo. De esta forma las hojas van a servir para que puedan vivir en el bosque insectos y lombrices. En el bosque podemos encontrar pajarillos. Muchos pajarillos se alimentan de los frutos del árbol o de los insectos que viven de las plantas. De las hojas de los árboles o de la hierba que crece a su alrededor se alimentan otros animales como los conejos, las ardillas o las cabras. '),
(201, 'Pedro Obediente', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 147, 'Érase una vez un niño, llamado Pedro, que vivía con su abuelo en una casa blanca cerca de un enorme bosque. Junto a la casa, en un lago, un pato nadaba feliz. - Abuelo, - dijo Pedro - ¿puedo salir al bosque a jugar un rato? - No, Pedro. El bosque es peligroso. Hay lobos. Quédate en el jardín sin pasar la verja. Y el abuelo cerró de golpe la puerta de la casa. Pedro se entretuvo un rato jugando en el jardín, y luego se subió a la verja a comer una manzana. Desde allí vio cómo un enorme gato se deslizaba por el tronco de un árbol. Siguiendo con los ojos, vio un pajarito posado en una rama, limpiándose tranquilamente las plumas de las alas. Cuando ya el gato lo iba a alcanzar, Pedro lo avisó y el pájaro voló a una rama más alta. '),
(202, 'Tarzán de los monos', 'Lectura', '	Cuento Infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 162, 'Desde la más tierna infancia se había valido de las manos para saltar de una rama a otra, a la manera que lo hacía su gigantesca madre, y durante toda la niñez se pasó horas y horas todos los días desplazándose con sus hermanos a toda velocidad por las copas de los árboles. Podía cubrir de un salto un espacio de siete metros, en las alturas de la selva sin sentir el menor vértigo y agarrarse con absoluta precisión y perfecta suavidad a una rama que oscilase impulsada violentamente por los vientos precursores de un inminente huracán. Era capaz de descolgarse y cubrir siete metros de una rama a otra, en veloz descenso hasta el suelo, y coronar con la ligereza de una ardilla la cima más alta del más alto gigante arbóreo de la selva tropical, era el amo de la selva valiente y sobre todo de buen corazón ayudaba a sus amigos monos y los defendía de los malos animales.'),
(204, 'Un curioso paseo', 'Lectura', '	Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 171, 'Un hombre y su hijo iban de camino a casa; el hombre iba montado en un burro y su hijo le acompañaba a pie. Entonces llegó un caminante y dijo: − No está bien, padre, que vaya montado en el burro y su hijo a pie. Su cuerpo es más recio que el del muchacho. Entonces el padre se bajó del burro para que su hijo subiera. Al poco rato, llegó otro caminante y dijo: − No está bien, muchacho, que tú vayas sentado en el burro y tu padre a pie. Tú tienes las piernas más ágiles. Padre e hijo se subieron los dos en el burro y así recorrieron un trecho hasta que llegó un tercer caminante y dijo: − Eso sí que es tener poco juicio; ir montados los dos en un débil animal. ¡A palos habría que hacerles bajar! Así que se bajaron los dos. Y caminaron tras el burro. Y pasó otro caminante que dijo: − ¡Qué brutos! Llevar un burro y no montarse en él. '),
(205, 'La muerte de akelea', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 179, 'Akela era un perro sano y fuerte. Pero esto no es todo, ya que era un perro especial y muy conocido por una rarísima particularidad: era superinteligente. Un día, viendo que tanto Akela como su dueño habían desaparecido, los amigos de éste último decidieron ir a su casa para ver qué había pasado. Subieron todas las escaleras que llevaban al último piso donde vivían Akela y su amo. Con sorpresa, encontraron al dueño de Akela en un estado depresivo piadoso. "¿Qué te pasa?" -preguntaron los amigos preocupados- "es que... es que... ¡Akela se ha muerto!". El dueño empezó a llorar sin ni siquiera poder hablar. Por mucho que los amigos le preguntaran cómo había pasado, él no podía articular frase a causa de su desesperación. Sólo podía reiterar y hacer hincapié en la extraordinaria inteligencia de Akela, en el hecho que seguramente no encontraría otro perro así y en que era mucho más inteligente que muchos humanos y sólo le faltaba el habla.'),
(206, 'La araña busca hogar parte 1', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 171, 'El largo curso en la escuela de arañas había terminado. Por fin las jóvenes arañas estaban listas para salir en busca de su nuevo hogar. Mientras preparaban la expedición, los maestros repetían la norma básica una y otra vez: - Buscad una familia con ambiente de igualdad. Recordad, son familias más felices, y si os atrapan tendréis muchas más posibilidades de salir vivas. El grupo de arañas pronto encontró una primera casa. Ñaki, una de las mejores alumnas, confirmó enseguida de qué tipo se trataba: era una familia “papá al sofá, mamá a la cocina” de auténtico manual, la más peligrosa de todas. Como era de esperar, la mamá y las chicas hacían casi todas las cosas, y cuando se les ocurrió pedir ayuda, los chicos se negaron a hacer nada que fuera “cosas de chicas”. ¡Y para ellos todo era cosa de chicas! Ñaki lo tenía claro, esa era la prueba definitiva de la falta de igualdad y de cariño. Si la atrapaban en aquella casa, le esperaría lo peor.'),
(207, 'Las arañas buscan hogar parte 2', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 171, 'Siguiendo su viaje encontraron una familia distinta, donde chicos y chicas hacían todas las tareas. Las repartían con tanta exactitud, que no parecía haber mejor prueba de igualdad. “Hoy te toca a ti, mañana me toca a mí”, “Aquí, nadie es esclavo de nadie, yo hago lo mío, tú haces lo tuyo” decían. Ñaki no quiso precipitarse, y siguió observando a tan igualísima familia. Le preocupaba la falta de alegría que observaba, pues se suponía que una familia con tanta igualdad debía ser muy feliz. Pero como todos hacían de todo, todos dedicaban mucho tiempo a tareas que no les gustaban, y de ahí su falta de alegría Así que, aunque algunas arañas se quedaron allí, Ñaki decidió seguir buscando. Y acertó, porque aquella familia tan preocupada por repartir todo tan exactamente no pudo mantener un equilibrio tan perfecto durante mucho tiempo. Y así, olvidando por qué vivían juntos, terminaron repartiendo también la casa entre grandes disputas, y no se salvó ni una sola de las arañas que se habían quedado.'),
(208, 'Las arañas buscan hogar parte 3', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 171, 'No tardó Ñaki en encontrar otra familia con aspecto alegre y feliz. A primera vista, no parecían vivir mucho la igualdad. Cada uno hacía tareas muy distintas, e incluso las chicas hacían muchas de las cosas que había visto en aquella primera familia tan peligrosa. Pero la alegría que se notaba en el ambiente animó a la araña a seguir investigando. Entonces descubrió que en esa familia había una igualdad especial. Aunque cada uno hacía tareas distintas, parecía que habían elegido sus favoritas y habían repartido las que menos les gustaban según sus preferencias. Pero, sobre todo, lo que hacía única esa familia, era que daba igual si chicos o chicas pedían ayuda, cualquiera de ellos acudía siempre con una sonrisa. Y cuando finalmente, en lugar de “tareas de chicos o chicas”, o “tareas tuyas o mías”, escuchó “aquí las tareas son de todos”, se convenció de que aquella era la casa ideal para vivir la sintió tan acogedora que tan solo la vio se sintió como en la casa anterior.');
INSERT INTO `velocidadlectora` (`idLectura`, `nombreLectura`, `genero`, `descripcion`, `edadLectura`, `rutaLectura`, `grado`, `intentos`, `cantidadPalabras`, `lectura`) VALUES
(209, 'Yo estoy de paso', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 170, 'Se cuenta que el siglo pasado, un turista americano fue a la ciudad de El Cairo (Egipto) con la finalidad de visitar a un famoso sabio. El turista se sorprendió al ver que el sabio vivía en un cuartito muy simple y lleno de libros. Las únicas piezas de mobiliario eran una cama, una mesa y un banco. -¿Dónde están sus muebles? - preguntó el turista. Y el sabio también preguntó: -¿Y dónde están los suyos...? -¿Los míos? - se sorprendió el turista - ¡Pero si yo estoy aquí solamente de paso! - Yo también... - concluyó el sabio. La vida en la tierra es solamente temporal; sin embargo, algunos viven como si fueran a quedarse aquí eternamente y se olvidan de ser felices. El valor de las cosas no está en el tiempo que duran, sino en la intensidad con que suceden. Por eso existen momentos inolvidables, cosas inexplicables y personas incomparables esas experiencias son las que enriquecen el corazón y los recuerdos, he incrementa la experiencia y amistades.'),
(210, 'Clavos', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 169, 'Cuenta la Historia de un muchacho que tenía muy mal carácter. Su padre le dio una bolsa de clavos y le dijo que cada vez que perdiera la paciencia, debería clavar un clavo detrás de la puerta. El primer día, el muchacho clavó 37 clavos detrás de la puerta. Las semanas que siguieron, a medida que él aprendía a controlar su genio, clavaba cada vez menos clavos detrás de la puerta. Descubría que era más fácil controlar su genio que clavar clavos detrás de la puerta. Llegó el día en que pudo controlar su carácter durante todo el día. Después de informar a su padre, éste le sugirió que retirara un clavo cada día que lograba controlar su carácter. Los días pasaron y el joven pudo finalmente anunciar a su padre que no quedaban más clavos para retirar de la puerta. Su padre lo tomó de la mano y lo llevó hasta la puerta. Le dijo: "Has trabajado duro, hijo mío, pero mira todos esos hoyos en la puerta.'),
(211, 'El naufrago', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 173, 'El único sobreviviente de un naufragio fue arrastrado hasta una pequeña isla deshabitada. Todos los días, le pedía desesperadamente a Dios que lo rescataran, y solía mirar ansiosamente hacia el horizonte en busca de la ayuda que nunca llegaba. Exhausto, finalmente se las arregló para construirse una pequeña choza con ramas y hojas, para protegerse y guardar sus pocas posesiones. Pero un día, después de ir en busca de comida, volvió a su pequeña choza y la encontró en llamas, con una columna de humo que se elevaba hacia el cielo. Las cosas no podían estar peor; había perdido todo. Lleno de ira y dolor, miró hacia arriba y gritó: "¡¡Dios, ¿Cómo pudiste hacerme esto?!!". Al día siguiente, muy temprano lo despertó el sonido de un barco que se aproximaba a la isla. Habían venido a rescatarlo. "¿Cómo supieron que estaba aquí?", preguntó el fatigado náufrago a sus salvadores. "Vimos su señal de Humo pensamos por un momento que el barco era ilusión nuestra, pero gracias a Dios que no fue así", Respondieron.'),
(212, 'El perro que deseaba ser un humano', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 168, 'En la casa de un rico mercader de una ciudad, rodeado de comodidades y de toda clase de máquinas, vivía no hace mucho tiempo un perro al que se le había metido en la cabeza convertirse en un ser humano, y trabajaba con ahínco en esto. Al cabo de varios años, y después de persistentes esfuerzos sobre sí mismo, caminaba con facilidad a dos patas y a veces sentía que estaba ya a punto de ser un hombre, excepto por el hecho de que no mordía, movía la cola cuando encontraba a algún conocido, daba tres vueltas antes de acostarse, salivaba cuando oía las campanas de la Iglesia, y por las noches se subía a una barda a gemir viendo largamente a la luna, el perro es un gran soñador le gusta imaginar que en algún momento  de su corta vida sea un humano feliz, saltar cantar y tener dedos en las manos, para poder comer con las manos y utilizar cubiertos dormir en una cama bien cómoda.'),
(213, 'El perro y su reflejo', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 189, 'Una hormiga iba andando cuando, de pronto, se paró. - Tengo sed -dijo la hormiga en voz alta. - ¿Por qué no bebes un poco de agua del arroyo? - dijo la paloma-. El arroyo está cerca. Pero cuidado, no caigas en él. La hormiga fue al río y comenzó a beber. Un viento repentino la arrojó al agua. - ¡Socorro! -gritaba la hormiga-. ¡Me ahogo! La paloma se dio cuenta de que tenía que actuar rápidamente para salvarla. Rompió una ramita del árbol con el pico. Después, voló sobre el arroyo con la ramita y la dejó caer junto a la hormiga. La hormiga se subió a la ramita y, flotando sobre ella, llegó hasta la orilla. Poco después la hormiga vio a un cazador. Estaba preparando una trampa para cazar a la paloma. La paloma comenzó a volar hacia la trampa. La hormiga se dio cuenta de que tenía que actuar rápidamente para salvarla. Así, la hormiga abrió sus fuertes mandíbulas y mordió el desnudo tobillo del cazador. - ¡Ay! -gritó el cazador. La paloma oyó ese grito y salió volando. Toda buena acción tiene su recompensa.'),
(214, 'Las vasijas de agua', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 178, '"Un cargador de agua de la India tenía dos grandes vasijas que colgaba a los extremos de un palo y que llevaba encima de los hombros. Una de las vasijas tenía varias grietas, mientras que la otra era perfecta y conservaba toda el agua al final del largo camino a pie desde el arroyo hasta la casa de su patrón, pero cuando llegaba, la vasija rota solo tenía la mitad del agua. Durante dos años completos esto fue así diariamente. Desde luego la vasija perfecta estaba muy orgullosa de sus logros, pues se sabía perfecta para los fines para los que fue creada. Pero la pobre vasija agrietada estaba muy avergonzada de su propia imperfección y se sentía miserable porque solo podía hacer la mitad de todo lo que se suponía que era su obligación. Después de dos años, la tinaja quebrada le habló al aguador así, diciéndole: -Estoy avergonzada y me quiero disculpar contigo porque debido a mis grietas solo puedes entregar la mitad de mi carga y solo obtienes la mitad del valor que deberías recibir.'),
(215, 'Galletitas parte 1', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 173, 'A una estación de trenes llega una tarde una señora muy elegante. En la ventanilla le informan que el tren está retrasado y que tardará aproximadamente una hora en llegar a la estación. Un poco fastidiada, la señora va al puesto de diarios y compra una revista, luego pasa al kiosco y compra un paquete de galletitas y una lata de gaseosa. Preparada para la forzosa espera, se sienta en uno de los largos bancos del andén. Mientras hojea la revista, un joven se sienta a su lado y comienza a leer un diario. Imprevistamente la señora ve, por el rabillo del ojo, cómo el muchacho, sin decir una palabra, estira la mano, agarra el paquete de galletitas, lo abre y después de sacar una comienza a comérsela despreocupadamente. La mujer está indignada. No está dispuesta a ser grosera, pero tampoco a hacer de cuenta que nada ha pasado; así que, con un gesto ampuloso, toma el paquete y saca una galletita que exhibe frente al joven y se la come mirándolo fijamente.'),
(216, 'Galletitas parte 2', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 179, 'La señora gime un poco, toma una nueva galletita y, con ostensibles señales de fastidio, se la come sosteniendo otra vez la mirada en el muchacho. El diálogo de miradas y sonrisas continúa entre galleta y galleta. La señora cada vez más irritada, el muchacho cada vez más divertido. Finalmente, la señora se da cuenta de que en el paquete queda sólo la última galletita. “No podrá ser tan caradura”, piensa, y se queda como congelada mirando alternativamente al joven y a las galletitas. Con calma, el muchacho alarga la mano, toma la última galletita y, con mucha suavidad, la corta exactamente por la mitad. Con su sonrisa más amorosa le ofrece media a la señora. - Gracias - dice la mujer tomando con rudeza la media galletita. - De nada – contesta el joven sonriendo angelical mientras come su mitad. El tren llega. Furiosa, la señora se levanta con sus cosas y sube al tren. Al arrancar desde el vagón ve al muchacho todavía sentado en el banco del andén y piensa: “Insolente”. Siente la boca reseca de ira.'),
(217, 'El precio del humo parte 1', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 181, 'Un día, un campesino fue a la ciudad a vender sus productos. De regreso a casa entró en una posada a descansar un rato. Como era día de mercado, la posada se encontraba llena de gente. - ¿Qué quieres comer? - le preguntó el posadero. - Una hogaza de pan y un jarrillo de vino – respondió el campesino. Mientras el posadero se alejaba, el campesino fijó sus ojos en una pieza que estaba asándose en la chimenea y que desprendía un olor delicioso ¡Cuánto le gustaría tomar un poco de aquella carne! Pero… ¡A saber cuánto costaba! Al cabo de un rato, el posadero regresó con el pan y con el jarrillo de vino. El campesino empezó a comer sin poder apartar los ojos del asado… ¡olía tan bien! De pronto, tuvo una idea. Se levantó con el pan en la mano y se acercó al fuego. Colocó el pan sobre el humo que despedía el asado y esperó unos minutos. Cuando el pan se impregnó bien de aquel olor tan suculento, lo retiró del fuego y se dispuso a comer. '),
(218, 'El precio del humo parte 2', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 176, 'El campesino, sin salir de su asombro, intentaba defenderse: - El humo no vale nada, pensé que no te importaría… - ¿Cómo que el humo no vale nada? Todo lo que hay en esta posada es mío. Y quien lo quiera, debe pagar por ello. En ese momento, un noble que se encontraba comiendo en la posada con otros ilustres caballeros intervino en la discusión: - ¡Cálmate, posadero! ¿Cuánto pides por el humo? - Me conformo con cuatro monedas- respondió satisfecho el posadero. El pobre campesino exclamó preocupado: - ¡Cuatro monedas! Es todo lo que he ganado hoy. Entonces el noble se acercó al campesino y le dijo algo en voz baja. El campesino abrió su bolsa y le dio sus cuatro monedas al caballero. - Escucha, posadero- dijo el noble haciendo sonar en su mano las monedas- Ya estás pagado. - ¿Cómo que ya estoy pagado? ¡Dadme las monedas! “¡Clin, clin!”, sonaban las monedas en la mano del noble. -¿Las monedas?-preguntó el posadero-. -¿Acaso se comió la carne el campesino? Él sólo cogió el humo. '),
(219, 'El zorro astuto y el tigre', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 194, 'Un tigre hambriento consiguió atrapar un zorro y se dispuso a devorarlo. Disimulando su terror y sacando fuerzas de flaqueza, el zorro, en su intento por sobrevivir, dijo: —¡Un momento! ¡Detente! Te aseguro que yo soy el rey de los animales del bosque. Tal es el mandato del Dios Celestial que nadie puede desobedecer. A pesar de tu mucha fuerza, no podrás hacerme ningún daño, pues, si lo intentaras, serías severamente castigado por el Cielo. —¡Vaya! —exclamó sorprendido el tigre—. Jamás había oído cosa semejante. ¿Cómo puedes demostrarme que efectivamente eres el rey de los animales del bosque por decreto del Dios Celestial? —Nada es más fácil que eso —declaró el zorro, aparentando seguridad y arrogancia—. Ahora vamos a dar un paseo por el bosque. Tú sígueme a corta distancia y observa cómo todos los animales huyen de mí. Componiendo la figura y pisando con firmeza, el zorro comenzó a caminar airosamente, seguido a corta distancia por el tigre. El felino se quedó totalmente perplejo cuando comprobó que los animales salían corriendo al paso del zorro, sin percatarse de que era del feroz tigre y no del inofensivo zorro del que huían.'),
(220, 'Los hijos del labrador', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 179, 'Los dos hijos de un labrador vivían siempre discutiendo. Se peleaban por cualquier motivo, como quién iba a manejar el arado, quién sembraría, y así con todo. Cada vez que había una riña, ellos dejaban de hablarse. La concordia parecía algo imposible entre los dos. Eran testarudos, orgullosos y para su padre le suponía una dificultad mejorar estos sentimientos. Fue entonces que decidió darles una lección. Para poner un fin a esta situación, el labrador les llamó y les pidió que se fueran al bosque y les trajeran un manojo de leña. Los chicos obedecieron a su padre y una vez en el bosque empezaron a competir para ver quién recogía más leños. Y otra pelea se armó. Cuando cumplieron la tarea, se fueron hacia su padre que les dijo: - Ahora, junten todas las varas, las amarran muy fuerte con una cuerda y veamos quién es el más fuerte de los dos. Tendrán que romper todas las varas al mismo tiempo. Y así lo intentaron los dos chicos. Pero a pesar de todos sus esfuerzos, no lo consiguieron.'),
(221, 'La tetera', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 173, 'Había una vez una tetera muy presumida. Se pasaba todo el día diciendo a unos y a otros lo bonita que era. -¿Quién es más guapa que yo? ¿Alguien tiene una tapadera más bonita que la mía? La taza, el azucarero y los demás cacharros de la vajilla no le hacían mucho caso. Pensaban que era demasiado presumida. Pero a la tetera no le importaba. -Que digan lo que quieran. Tienen envidia porque soy la reina de la vajilla. Pasó el tiempo. La señora de la casa se fue haciendo viejecita. Un día, al coger la tetera, se le escapó de la mano. La tetera cayó al suelo. Quedó tumbada con la tapadera rota y el asa y el pitorrito hechos pedazos. La señora de la casa recogió la tetera rota y la apartó en un rincón. Luego se la regaló a una mendiga. En el mundo de los pobres la tetera empezó una nueva vida. La niña llenó de tierra la tetera. Plantó dentro una semilla y la regó todos los días.'),
(222, 'La oveja falsa', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 170, 'Era, pues, un tiempo de mucha hambre para los zorros… y había uno que no aguantaba. Tenía hambre, es cierto, y todos los rediles estaban muy altos y con muchos perros. Entonces el zorro dijo: -Aquí no es cosa de ser tonto: hay que ser vivo. Y se fue hacia el molino, y aprovechando que el molinero estaba distraído, se revolcó en la harina hasta quedar blanco. Y en la noche se fue hacia el redil: -Mee, mee –balaba como una oveja-. Salió la pastora, vio un bulto blanco en la noche y dijo: -Se ha quedado afuera una ovejita. Y abrió la puerta y metió al zorro. Los perros ladraban y el zorro se dijo: -Esperaré a que se duerman, lo mismo que las ovejas. Después buscaré al corderito más gordo y ¡guac!, de un mordisco lo mataré y luego me lo comeré. Madrugaré y, apenas abran la puerta, echaré a correr y a ver quién me alcanza. Y como dijo así lo hizo, pero no llegó a salir. '),
(223, 'Respetar el silencio', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 187, 'Cuatro monjes se retiraron a un remoto monasterio en la montaña a fin de dedicarse durante un tiempo a un ejercicio intensivo de meditación y búsqueda de las verdades supremas. Se instalaron en un ala del monasterio y pidieron no ser molestados durante siete días, pues iban a practicar muy rigurosamente y en total silencio. Se habían impuesto el voto de silencio durante ese periodo. Se reunieron la primera noche a meditar. Estaban en un santuario silente y con una acogedora atmósfera espiritual, a la luz de las lámparas de aceite. Los cuatro se sentaron en la postura de meditación. Les acompañaba un asistente que se haría cargo durante esos días de asuntos domésticos. Pasaron dos horas. De repente una de las lámparas amenazó con apagarse, y uno de los monjes dijo: —Asistente, estate atento y no dejes que la lámpara se apague. Entonces uno de los monjes le llamó la atención, diciéndole: —No se debe hablar en la sala de meditación, y además estamos en voto de silencio durante siete días. No lo olvides. Indignado porque dos de sus compañeros habían roto el voto de silencio.'),
(224, 'El sabor de perder', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 181, 'Nasrudin vio a un hombre sentado al borde de un camino, con aire de completa desolación. - ¿Qué te preocupa? –quiso saber. - Hermano mío, no existe nada interesante en mi vida. Tengo dinero suficiente como para no tener que trabajar y estaba viajando para ver si encontraba alguna cosa curiosa en el mundo. Sin embargo, todas las personas que encontré no tienen nada nuevo que decirme y sólo consiguen aumentar mi tedio. Al momento Nasrudin agarró la maleta del hombre y salió corriendo por el camino. Como conocía la región, consiguió distanciarse de él, tomando atajos por campos y colinas. Cuando se distanció bastante, colocó de nuevo la maleta en mitad de la ruta por donde el viajero tendría que pasar y se escondió detrás de una roca. Media hora después el hombre apareció, sintiéndose más deprimido que nunca por haberse cruzado con un ladrón. En cuanto vio la maleta corrió hacia ella y la abrió, anhelante. Al ver que el contenido estaba intacto, elevó sus ojos hacia el cielo con alegría y dio gracias al Señor por la vida.'),
(225, 'La lagartija y el ciervo', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 178, 'Dos lagartijas tomaban el sol encima de un alto muro. Una de ellas dormitaba, amodorrada por el calor. La otra estaba intentando atrapar con su larga lengua los mosquitos que danzaban cerca de ella, cuando vio a un ciervo que salía del bosque cercano. La lagartija se olvidó del banquete que los mosquitos le ofrecían y se puso a admirar al ciervo, pues le llamaba la atención su porte regio y su imponente cornamenta. Contemplando al hermoso animal, la lagartija se sintió descontenta de su suerte y comenzó a quejarse. -¡Qué destino tan terrible el de nosotras las lagartijas!- le dijo a su amiga-. Vivimos, es verdad; pero este vivir no es más que un vegetar. Nadie se fija en nosotras; a nadie llamamos la atención. ¿Por qué no habré nacido ciervo? Pero la lagartija interrumpió bruscamente su discurso al ver que una feroz jauría salía del bosque y atacaba al ciervo. Éste se lanzó a la fuga, pero uno de los perros consiguió saltar a su cuello; cayó al suelo el ciervo y los perros lo mataron. '),
(226, 'La escuela de los animales', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 185, 'Un día se reunieron los animales del bosque y decidieron poner en marcha una escuela. Había un conejo, un pájaro, una ardilla, un pez y una anguila, y formaron una Junta de Educación. El conejo manifestó que el correr debía ser una asignatura. El pájaro dejó muy claro que el volar debía ser otra asignatura. El pez insistía que la natación debía figurar en el Plan de Estudios, y la ardilla consiguió convencerles de la necesidad de que el trepar a los árboles se considerara también como una asignatura. Pusieron todas estas cosas juntas y confeccionaron un Plan de Estudios, el primer currículum de la historia de la vida animal, e insistieron en que TODOS los animales debían estudiar TODAS las asignaturas. Aunque el conejo consiguió la mejor nota en correr, trepar perpendicularmente a los árboles le resultó un verdadero problema; siempre se caía de espaldas. Muy pronto sufrió algún daño en la columna y ya no pudo correr más. Sucedió que, en vez de sacar la mejor nota corriendo, sacaba la nota menor y, naturalmente, siempre tenía un suspenso en trepar a los árboles. '),
(227, 'La serpiente del cascabel', 'Lectura', 'Lectura Informativa', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 189, 'La serpiente de cascabel es el animal más temido de los que habitan en el desierto. El "cascabel" se forma en la parte posterior de su cola por las mudas de piel que se van acumulando año tras año. Al agitar estos residuos produce un sonido parecido a un cascabel. El ruido que hace es un aviso ante la presencia de una visita inoportuna, un toque de atención para indicar el peligro si alguien se acerca. Todos los animales del desierto saben muy bien que el sonido de la serpiente de cascabel indica una muerte segura. Y como lo han aprendido, procuran huir para salvar su vida. La serpiente de cascabel caza al acecho. Cuando un animal está a su alcance, se lanza rápidamente sobre él y le muerde. La dentellada es mortal y el animal caerá muerto muy cerca por el veneno que le ha inyectado. La serpiente seguirá las huellas dejadas por su víctima mediante unos órganos que le sirven para oler el rastro de cualquier animal. Esto le permite seguir las huellas del animal al que le ha dejado su veneno y encontrarlo en plena oscuridad.'),
(228, 'El amor a los animales', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 176, 'Un rey tenía tres hijos, y los dos mayores salieron a correr mundo. Tanto tardaban en regresar, que el rey ordenó al pequeño, al que todos conocían por Bobalicón, que saliera en su búsqueda. Así que Bobalicón emprendió el camino y, después de mucho andar y andar, encontró a sus hermanos y les convenció de que volvieran a casa. Partieron los tres y llegaron junto a un hormiguero. Los dos mayores quisieron aplastarlo, pero el pequeño les dijo: - ¡Dejadlas en paz! No me gusta que molestéis a los animales. Siguieron andando y llegaron hasta un lago, en el que nadaban muchos patos. Los dos mayores querían cazar unos cuantos y asarlos, pero Bobalicón se lo impidió diciendo: - ¡Dejadlos en paz! No me gusta que matéis a los animales. Finalmente llegaron a una colmena repleta de miel. - Prendamos fuego a la colmena, ahoguemos a las abejas y así podremos coger su miel -dijeron los mayores -. Bobalicón les detuvo de nuevo y dijo: -¡Dejadlas en paz! No me gusta que queméis a los animales.'),
(229, 'Mariquilla la Pelá', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 188, 'A Mariquilla la Pelá, le dio la manía de no querer aprender a leer. Como era muy cabezota no escuchaba a los que le aconsejaban lo contrario. Hasta que un día... lee lo que le pasó. ¡A: Mariquilla la Pelá! ¡E: porque no sabía leer! ¡I: porque no sabía escribir! ¡O: porque no sabía el reloj! ¡U: borriquito como tú! Esta antipática coplilla era la que tenía que aguantar a todas horas Mariquilla en el pueblo. Todos los chicos se burlaban de ella, porque Mariquilla, que era muy salerosa, y se peinaba muy bien de rodetes, y se ponía unos vestidos muy bonitos, de flores, de frutas y de pájaros, tenía un defecto muy gordo: ¡No sabía leer! Sí, sí, de veras que no sabía. Y lo peor era que no quería aprender. A la escuela no iba ni atada, y los libros no los miraba ni por el forro. - A mí lo que me gusta es la radio, el cine y la televisión – le decía a su amigo Paquete -. ¿Y sabes por qué me gustan esas cosas? Pues porque todo se oye y se ve.'),
(230, 'Las ranitas en la nata', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 185, 'Había una vez dos ranas que cayeron en un recipiente de nata. Inmediatamente se dieron cuenta de que se hundían: era imposible nadar o flotar demasiado tiempo en esa masa espesa como arenas movedizas. Al principio, las dos ranas patalearon en la nata para llegar al borde del recipiente. Pero era inútil; solo conseguían chapotear en el mismo lugar y hundirse. Sentían que cada vez era más difícil salir a la superficie y respirar. Una de ellas dijo en voz alta: “No puedo más. Es imposible salir de aquí. En esta materia no se puede nadar. Ya que voy a morir no veo por qué prolongar este sufrimiento. No entiendo qué sentido tiene morir agotada por un esfuerzo estéril”. Dicho esto, dejó de patalear y se hundió con rapidez siendo literalmente tragada por el espeso líquido blanco. La otra rana, más persistente o quizá más tozuda, se dijo: “¡No hay manera! Nada se puede hacer por avanzar en esta cosa. Sin embargo, aunque se acerque la muerte, prefiero luchar hasta mi último aliento. No quiero morir ni un segundo antes de que llegue mi hora”.'),
(231, 'Las escaleras', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 170, 'Las escaleras se suben de frente, pues hacia atrás o de costado resultan muy incomodas. La posición natural consiste en mantenerte de pie, los brazos colgados sin esfuerzo, la cabeza levantada, aunque no tanto que los ojos dejen ver los escalones que están por encima del que pisas, y respirando lenta y regularmente. Para subir una escalera se comienza por levantar esa parte del cuerpo situada abajo a la derecha, cubierta casi siempre por unos zapatos, y que cabe exactamente en el escalón. Puesta en el peldaño dicha parte, que llamaremos pie, se recoge la otra parte de la izquierda (también llamada pie, pero que no debe confundirse con el pie que antes habíamos subido) y, llevándola a la altura del pie, se le hace seguir hasta colocarlo en el segundo escalón, con lo cual en éste descansará el pie. Los primeros escalones son siempre los más difíciles. La coincidencia de nombres entre el pie y el pie hace difícil la explicación. Cuídese especialmente de no levantar al mismo tiempo el pie y el pie.'),
(232, 'Lamberto', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 168, 'Lamberto tenía un hermano y una hermana mayores que él. Y, por supuesto, como todos los hermanos y hermanas mayores de sus amigos, eran insoportables. A veces se horrorizaba viendo a Lidia, y oyéndola. Estaba claro que todas las chicas eran tontas, pero de que su hermana se llevaba la palma no tenía la menor duda. ¡Y lo asombroso es que los chicos la encontraban guapa! Lamberto se estremecía. Lidia no hacía más que pensar en chicos, y en su atractivo personal. Se enamoraba apasionadamente cada dos por tres, y entonces era la representación de la duda. Se sentía gorda, con demasiada cadera, demasiado pecho, demasiados pies, demasiada nariz, demasiado... todo demasiado menos su cerebro, por supuesto, que para Lamberto no ofrecía mayor envergadura que el de un mosquito. Su mayor esperanza pasaba por el hecho de que con dieciocho años, Lidia ya no tardaría mucho en casarse. Pero... ¡si ya casi era una vieja! Eso acabaría con el problema. Fede, un año mayor que Lidia, era distinto.'),
(233, 'La tortuga y el antílope', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 176, '“Había una vez un antílope que siempre presumía de sus ágiles patas y de su velocidad. Un día, una tortuga le quiso dar una lección y le dijo: - Amigo mío, estás muy orgulloso porque corres como el viento. Pero yo te desafío a una carrera y te aseguro que venceré. El antílope, tras burlarse de la tortuga, aceptó el reto. El día de la carrera, la tortuga colocó a varias de sus hermanas repartidas por todo el trayecto que el antílope y ella iban a recorrer, y les dijo: - Cuando pase el antílope y pregunte: “Amiga, estás ahí”, cada una de vosotras responderá: “Sí, aquí estoy”. Después, la ingeniosa tortuga fue al lugar previsto para la salida y le dijo al antílope: - Amigo, como soy tan pequeñita, apenas podrás verme en la carretera, así que he pensado que de vez en cuando preguntes: “Amiga, ¿estás ahí?”, y yo te responderé: “Sí, aquí estoy”. El antílope aceptó la propuesta pensando que era innecesaria, pues a los primeros pasos dejaría a la tortuga muy atrás. '),
(234, 'La tierra de la jujua', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 178, 'Honzingera: Anda, anda, hermano Panarizo; no te quedes rezagado, que ahora es tiempo de tender nuestras redes. Panarizo: ¿Y cómo quieres que ande, hermano Honzigera, si no puedo con mis huesos? Tres leguas llevamos dándole a los pies. ¡Ay, yo no aguanto más! Tengo tanta hambre que un pollo me comería con plumas y todo. Honzingera: Pues aguarda y podrás engullirte una buena cena. A estas horas suele pasar por aquí un labrador, un tal Mendrugo, con una cazuela de comida para su mujer, que está en la cárcel. Este Mendrugo es bastante simple, y no nos será difícil, sin que él se dé cuenta, comernos lo que lleva en la cazuela. Le contaremos aquel cuento de Jauja, ya sabes; y como él estará embobado escuchándonos, nos embaularemos bonitamente algunos bocados, por lo menos. Espera... Parece que se oyen pasos. ¡Sí, es él! Levántate y estate preparado, que ahí llega nuestro hombre.  Mendrugo: ¡Diablos, esta mujer va a acabar conmigo! Le da por empinar el codo más de la cuenta, luego arma una trifulca y a la cárcel.'),
(235, 'El último mohicano.', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 173, '“Parecía un hombre acostumbrado a toda clase de penalidades y fatigas desde su primera juventud. Llevaba un sayo de cazador, de paño verde con vivos amarillos casi desteñidos, y tocaba su cabeza con un gorrillo de pieles, del que ya no quedaba sino el cuero (…) Llevaba un cuchillo en su cinturón de cuentas de madreperla (…) Sus mocasines o abarcas, de piel de gamo, los llevaba calzados al uso de los indios, y la única parte de su atavío que se podía ver bajo el sayo de caza eran unas altas polainas de piel de gamo, cerradas por lazos a los lados y atadas por encima de la rodilla con nervios de corzo. Un cuerno para la pólvora y una bolsa para las municiones completaban su atavío, amén de un largo rifle. Sus ojos eran pequeños, vivos, inquietos, de mirada aguda, y no cesaban de moverse y mirar en todas direcciones mientras hablaba, como si buscara piezas que cazar o su desconfianza le anunciase la proximidad de un enemigo que le acechase.'),
(236, 'El principito', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 178, 'Si me domésticas, mi vida se llenará de sol. Conoceré un ruido de pasos que será diferente de todos los otros. Los otros pasos me hacen esconder bajo la tierra. El tuyo me llamará fuera de la madriguera, como una música. Y además, ¡mira! ¿Ves, allá, los campos de trigo? Yo no como pan. Para mí el trigo es inútil. Los campos de trigo no me recuerdan nada. ¡Es bien triste! Pero tú tienes cabellos de color de oro. Cuando me hayas domesticado, ¡será maravilloso! El trigo dorado será un recuerdo de ti. Y amaré el ruido del viento en el trigo. El zorro cayó y miró largo tiempo al principito. - ¡Por favor…, domestícame! –dijo. - Bien lo quisiera -respondió el principito-, pero no tengo mucho tiempo. Tengo que encontrar amigos y conocer muchas cosas. - Sólo se conocen las cosas que se domestican – dijo el zorro-. Los hombres ya no tienen tiempo de conocer nada. Compran cosas hechas a los mercaderes de amigos. Pero como no existen mercaderes de amigos, los hombres ya no tienen amigos. '),
(237, 'Y colorín colorado', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 183, 'En la clase de Manuel se contó el siguiente cuento para explicar la diferencia entre ser egoísta y ser generoso. La maestra comenzó así: “Un día un peregrino visitó un pueblo de la China. Allí vio mucha gente sentada alrededor de una mesa con muchos alimentos. Sin embargo, todos los que estaban sentados tenían cara de hambre y el gesto demacrado: sólo podían comer con palillos; pero no podían, porque eran unos palillos tan largos como un remo. Por eso, por más que estiraban su brazo, nunca conseguían llevarse nada a la boca. Impresionado, el peregrino salió del pueblo y siguió su camino; cruzó un río, pasó una montaña y llegó a un valle precioso donde estaba el pueblo más bonito que nadie haya podido imaginar. Con gran asombro vio que también allí había una mesa llena de gente y con muchos manjares. Sin embargo, nadie tenía mala cara. Todos los presentes lucían un semblante alegre; respiraban salud y bienestar por los cuatro costados. Y es que allí cada uno se preocupaba de alimentar con los palillos largos al que tenía en enfrente.'),
(238, 'Alicia en el país de las maravillas', 'Lectura', 'Cuento Infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 188, 'El Gato sonrió al ver a Alicia. Parecía tener buen carácter, consideró Alicia; pero también tenía unas uñas muy largas y un gran número de dientes, de forma que pensó que convendría tratarlo con el debido respeto. − Minino de Cheshire- empezó algo tímidamente, pues no estaba del todo segura de que le fuera a gustar el cariñoso tratamiento; pero el Gato siguió sonriendo más y más-. “¡Vaya! parece que le va gustando” –pensó Alicia, y continuó: - “¿Me podrías indicar, por favor, hacia dónde tengo que ir desde aquí?” - Eso depende de adónde quieras llegar –contestó el Gato. - A mí no me importa demasiado adónde…- empezó a explicar Alicia. - En ese caso da igual hacia dónde vayas – interrumpió el Gato. -…siempre que llegue a alguna parte –terminó Alicia a modo de explicación. -¡Oh! Siempre llegarás a alguna parte –dijo el Gato- si caminas lo bastante. A Alicia le pareció que esto era innegable, de forma que intentó preguntarle algo más. - ¿Qué clase de gente vive por estos parajes? - Por ahí –contestó el Gato volviendo una pata hacia su derecha –vive un sombrerero; '),
(240, 'El gusano y la flor', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 213, 'Había una vez un gusano que se había enamorado de una flor. Era, por supuesto, un amor imposible, pero el insecto no quería seducirla ni hacerla su pareja. Él sólo soñaba con llegar hasta ella para darle un único beso. Cada día el gusano miraba a su amada. Cada noche soñaba que llegaba hasta ella y la besaba. Un día el gusanito decidió que no podía seguir soñando con la flor y no hacer nada por cumplir su sueño. Así que avisó a sus amigos de que treparía por el tallo para besarla. La mayoría intentó disuadirlo, pero el gusano se arrastró hasta la base del tallo y comenzó la escalada. Trepó toda la mañana y toda la tarde, pero cuando el sol se ocultó estaba exhausto. "Haré noche agarrado al tallo, y mañana seguiré subiendo". Sin embargo, mientras el gusano dormía, su cuerpo resbaló por el tallo y amaneció donde había empezado. Cada día el gusano trepaba y cada noche resbalaba hasta el suelo. Mientras descendía sin saberlo, seguía soñando con su beso deseado. Sus amigos le pidieron que renunciara a su sueño o que soñara con otra cosa, pero él sostuvo, con razón, que no podía cambiar lo que soñaba mientras dormía y que si renunciaba dejaría de ser quien era.'),
(241, 'Los días de Elé', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 202, 'Los días de Elé eran días sin escuela y de muchas obligaciones. Por las mañanas: el corralón de los cochinos, la pajarera, el patio, las botellas, algún que otro mandado; y a la hora del almuerzo: poner, servir y quitar la mesa a los dueños. Los mediodías: unas veces, por antojarse la dueña de tallullos y majaretes, traer un saco de mazorcas tiernas del maizal, pelarlas y rallárselas a Dengo en el rallador. Otras, si la hermana del dueño quería malarrabia, ir a sacar boniatos y venir con ellos húmedos de tierra, para lavarlos, pelarlos y picarlos en cuadritos. Y algunas, cuando había dulce en almíbar, ir del boniatal al yucal por vianda fresca para que Dengo hiciera buñuelos. Los mediodías eran también para el caballo del dueño: dos veces a la semana, baño con manguera y jabón especial comprado en Pinar del Río; a diario, rasqueta de cabeza a rabo y cepillo por todo el pelo, sin olvidar el envaselinado de la crin y la cola, que tenían que estar siempre brillosas y suaves. Además, si Dengo andaba de lavado o planchado, Elé la ayudaba por los mediodías en la limpieza de la casa. Y eso para él era un gusto. '),
(242, 'Enrique', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 207, 'Enrique emprendió la marcha por el camino. El trineo saltó detrás de los perros. Los lobos continuaban en su persecución de un modo abierto, trotando tranquilamente detrás y puestos en hilera a cada lado de la pista, con las rojas lenguas colgando y las costillas mostrándose a cada movimiento. Tan flacos estaban que no eran más que bolsas de piel estiradas sobre sus huesos; tan flacos que era maravilla que pudieran sostenerse en pie y no cayeran desplomados sobre la nieve. No se atrevió nuestro viajero a seguir andando hasta que oscureciera. Al mediodía, salió el sol. Era buena señal. Los días se alargaban. Pero apenas había desaparecido la luz solar, se apresuró a acampar. Quedaban aún muchas horas de claridad y las aprovechó cortando una enorme cantidad de leña. Con la noche llegaron los horrores. No solamente los hambrientos lobos se iban acercando cada vez más, sino que el sueño le rendía. Se acurrucó al lado de la lumbre, con las manitas sobre los hombros, el hacha entre las rodillas y a cada lado un perro que se apretujaba contra su cuerpo. Se despertó una vez y, a menos de cuatro metros de distancia, vio un enorme lobo gris, uno de los mayores de la manada.'),
(243, 'Colmillo blanco', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 191, 'Aquella noche los dos amigos acamparon temprano. Los perros del trineo daban señales de estar rendidos. Los hombres se acostaron pronto, después de que Bill cuidara de que los perros quedaran atados y a distancia uno de otro para que no pudieran roer las correas del vecino. Pero los lobos iban atreviéndose a acercarse, y más de una vez nuestros viajeros fueron despertados por ellos. Tan cerca los tenían, que los perros comenzaron a mostrarse locos de terror, y fue necesario ir renovando y aumentando de cuando el cuándo el fuego de la hoguera a fin de mantener a los lobos a una distancia segura. -Varias veces he oído contar a los marineros cómo los tiburones siguen a los barcos -dijo después de añadir leña a la hoguera-. Los lobos son los tiburones de la tierra. Saben lo que hacen mucho mejor que nosotros. Siguen nuestra pista porque saben que acabarán por apoderarse de nosotros. Seguro que nos cazan. -¡Basta! Cuando un hombre dice que lo van a devorar, ya está andado la mitad del camino. Y tú estás ya medio comido, sólo por hablar tanto que lo vas a ser. '),
(244, 'Tintín el niño avispa', 'Lectura', '	Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 215, 'Tintín volvía otra vez a casa sin merienda. Como casi siempre, uno de los chicos mayores se la había quitado, amenazándole con pegarle una buena zurra. De camino, Tintín paró en el parque y se sentó en un banco tratando de controlar su enfado y su rabia. Como era un chico sensible e inteligente, al poco rato lo había olvidado y estaba disfrutando de las plantas y las flores. Entonces, revoloteando por los rosales, vio una avispa y se asustó. Al quitarse de allí, un pensamiento pasó por su cabeza. ¿Cómo podía ser que alguien muchísimo más pequeño pudiera hacerle frente y asustarle? ¡Pero si eso era justo lo que él mismo necesitaba para poder enfrentarse a los niños mayores! Estuvo un ratito mirando los insectos, y cuando llegó a casa, ya tenía claro el truco de la avispa: el miedo. Nunca podría luchar con una persona, pero todos tenían tanto miedo a su picadura, que la dejaban en paz. Así que Tintín pasó la noche pensando cuál sería su "picadura", buscando las cosas que asustaban a aquellos grandullones. Al día siguiente, Tintín parecía otro. Ya no caminaba cabizbajo ni apartaba los ojos. Estaba confiado, dispuesto a enfrentarse a quien fuera, pensando en su nuevo trabajo de asustador, y llevaba su mochila cargada de "picaduras".  '),
(245, 'Aquella importante clase de lengua', 'Lectura', '	Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 216, 'Ocurrió en una enorme ciudad industrial, en el mejor colegio y en la clase de 6º B. Era septiembre y como siempre llegaban niños nuevos. Estando en la fila, me fijé en una preciosa niña morena, alta, delgada, de ojos negros y su larga y brillante melena recogida en dos trenzas. Todos nos acercamos a conocerla y me di cuenta de que no hablaba muy bien nuestro idioma; tampoco su ropa era exactamente como la nuestra. A la subida a clase nos enteramos de que había venido desde un país africano. ¡Una inmigrante en nuestro colegio! Rápidamente se corrió la voz; pasaban los días y a ninguno de nosotros parecía interesarle su compañía, incluso muchos padres advirtieron a sus hijos del posible peligro que les podía traer la nueva niña. Nada parecía cambiar; siempre se repetía la misma escena: sola a la salida, sola a la entrada, sola en los recreos y los maleducados graciosillos, que siempre hay en todos los colegios, riéndose continuamente de su ropa, de sus cosas, de no saber contestar bien al profesor en ocasiones. A algunos de nosotros nos preocupaba su situación y en el fondo de nuestro corazón deseábamos acercarnos a ella, pero el miedo a que no nos apoyaran y a que nosotras fuéramos igualmente rechazadas nos lo impedía.'),
(246, 'Crecer', 'Lectura', '	Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 196, 'Pasaron los días y fuimos creciendo. Al principio me gustó crecer: podía correr más, marcharme más lejos y volar más alto. Pero un día mi madre nos miró con ojos extraños: -Hijos, venid todos, que tengo que hablaros –nos dijo. ¿Qué habríamos hecho? ¿Iría a castigarnos? Pero no era eso: -Antes erais pequeños. No teníais tareas ni preocupaciones. Ahora habéis crecido. Cuando un pollo crece, tiene que aprender y estar preparado. -¿Para qué tenemos que estar preparados? -Para ser gallinas o para ser gallos. Los pollos pequeños son todos iguales: con colitas cortas y plumas suaves. Pero de mayores se vuelven distintos. Y unos son gallinas y otros son gallos. Pusimos caras de sorpresa. Nos parecía raro volvernos distintos al llegar a grandes. Sabíamos ya qué era ser gallina, pero no sabíamos qué era ser gallo. Hicimos preguntas para comprenderlo: -¿Cómo son los gallos? 227- CRECER “Mis Lecturas de 5º y 6º “ 72 -Los gallos son machos. Las gallinas, hembras. Los gallos son grandes, de cabeza alta y cresta empinada. Tienen cola larga, que primero sube y luego se baja. La cola de un gallo parece una fuente. También, en las patas, llevan espolones.'),
(247, 'La montaña donde se abandonan a los ancianos', 'Lectura', '	Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 209, 'En una aldea vivía un campesino que cumplió sesenta años. Puesto que tales eran las órdenes del señor del lugar, había llegado el momento de abandonarlo en la montaña. Así que su hijo se cargó al anciano sobre las espaldas y emprendió el camino hacia las montañas. Mientras caminaba y se acercaban más y más hacia el lugar señalado, el anciano, montado sobre la espalda de su hijo, iba quebrando ramitas de los árboles para señalar la ruta. -Padre, padre, ¿por qué haces eso? ¿Es para encontrar el camino de vuelta a casa? -preguntó el joven. -No, pero vamos a un lugar muy lejano y agreste, y sería fatal que tú no pudieras encontrar el camino de regreso, por eso dejo estas señales. Al hijo se le llenaron los ojos de lágrimas al oír esto y constatar cuán generoso era su padre, pero ¿qué podía hacer? Era imposible desobedecer las órdenes del señor. Finalmente, la pareja llegó al lugar señalado y una vez allí el hijo, con gran dolor de su corazón, dejó abandonado a su padre. -¿Qué has estado haciendo hasta ahora?- preguntó el anciano. -He intentado regresar por una ruta diferente, pero no encuentro el camino. Por favor, te ruego que me digas por dónde debo ir.'),
(248, 'La caldera de borrego', 'Lectura', '	Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 218, '“La caldereta de borrego es un manjar con muchas vitaminas y vibraciones. Como los hombres que se sentaron a la mesa eran cuatro, el ama de la cocina dispuso cinco libras. La carne de cordero merma mucho y, en todo caso, más vale tener que desear. A fuego lento, se fríen unos dientes de ajo en media libra de aceite. Cada hombre, ni harto ni hambriento, come bien una libra de carne, si se la dan y sus posibles – o los de sus amigos – se lo permiten. Cuando el ajo está frito, se aparta y se echa el cordero, que se deja en paz hasta que tira a rubio. Al llegar este instante, que por el aroma se anuncia, se le pone una libra larga de cebolla picada, un puñado de harina de trigo y un poco de agua, y se mueve todo para que no se pegue. La salsa se hace majando, con su jugo, el ajo frito que se citó, unos granos de pimienta y unas hojas de hierbabuena. Se le pone sal según criterio, y se traba, a pulso, hasta que espese un poco. La caldereta de borrego es un plato muy recomendable para coger fuerzas, al tiempo de regalar el gusto. Se baja bien con un poco de cazalla y un poco de conversación.'),
(249, 'La pobre rica', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 201, 'Entre muchos casos curiosos que se producen en las grandes ciudades, hoy debemos hablar de alguien que, viviendo en la mayor miseria, resultó a su muerte ser dueña de una enorme fortuna. Se trata de la anciana doña Virtudes Sala, de 67 años de edad, digna de compasión por su gran pobreza. Doña Virtudes no se trataba con nadie, y apenas si cruzaba el saludo con los demás vecinos de la casa donde ocupaba una habitación desde hacía treinta y tantos años. Por las mañanas solía salir temprano, vistiendo siempre ropas muy viejas, y se pasaba varias horas fuera de casa revolviendo los recipientes de la basura o recogiendo cartones. Pues bien: en el día de ayer, extrañados sus vecinos de no haberla visto aparecer durante varios días, dieron aviso a la policía. Como se temía, allí fue hallada la pobre anciana, que estaba muerta. Probablemente llevaba muerta dos o tres días. Una vez retirado el cadáver, la autoridad procedió a examinar con cuidado la habitación. En un armario se almacenaban trapos, sombreros, plumas, velos..., todo ello picado de polillas y con mal olor. En una esquina de la habitación el montón de periódicos y revistas viejas subía hasta el techo. '),
(250, 'La roca del camino', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 198, 'En medio de un camino, el rey, con gran esfuerzo, empuja una enorme roca. REY. (Hablando solo.) Necesito un ministro que sea generoso y emprendedor. Para encontrarlo, he colocado esta roca obstaculizando el paso. Quien la retire será el elegido. El rey se esconde tras unos arbustos. Entra un mercader. MERCADER. ¡Una roca! ¡Qué escándalo! (Con aires de importancia.) Si el rey supiese que yo tenía que pasar por aquí, habría mandado quitarla. En fin, la sortearé. El mercader sortea la piedra y se marcha. Entra una dama. DAMA. ¿Y esto? ¡Una roca me impide el paso! Tendré que sortearla y… ¡se me estropeará la ropa! (Con movimientos exagerados, se levanta la falda.) La dama sortea la roca y se aleja quejándose. Entra un anciano con un bastón. ANCIANO. ¡Qué piedra tan grande! (Con tono lastimero.) ¡Ya casi no tengo fuerzas para moverme! ¡No podré retirar la piedra para continuar mi camino! Entra una campesina. CAMPESINA. Buenos días señor. ¿Le ocurre algo? ANCIANO. Esta roca me cierra el paso y no puedo atravesar los matorrales. ¡Tendré que volver por donde he venido! ¡Con lo cansado que estoy…! CAMPESINA. Espere un momento. Intentaré quitarla para dejar el camino libre. '),
(251, 'La casa con Arboles', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 198, 'Un hombre enfermo decidió dejar su trabajo de obrero en una fábrica de la ciudad e irse a vivir al campo junto con su hija Carolina. Ambos recorrieron todos los pueblos cercanos hasta que, por fin, encontraron una casucha abandonada situada delante de un extenso prado invadido por hierbajos. -Viviremos aquí y convertiremos este prado en una hermosa huerta –dijo el hombre. Al cabo de un par de semanas, el hombre había arado buena parte del prado para hacer una huerta. Y entonces bajó al pueblo cercano para comprar simientes encerradas en sobres de plata. -¡Dinero tirado! – comentó el tendero mientras movía la cabeza de un lado a otro- Ésa no es tierra de hortalizas. El padre de Carolina no se dejó desanimar. Y cuando llegó a casa, extendió sobre la mesa todos aquellos sobres brillantes con imágenes de calabacines, tomates, judías guisantes… La chica quedó fascinada ante las semillas de aquellos vegetales que ella imaginaba procedentes de quién sabe qué lugares remotos. Carolina cogió algunas simientes y las guardó en una cajita. Luego, padre e hija sembraron juntos el prado. Pasaron varias semanas y, pese a los cuidados de Carolina y su padre, las semillas no germinaron. ');
INSERT INTO `velocidadlectora` (`idLectura`, `nombreLectura`, `genero`, `descripcion`, `edadLectura`, `rutaLectura`, `grado`, `intentos`, `cantidadPalabras`, `lectura`) VALUES
(252, '¿Llego el hombre a la luna?', 'Lectura', 'Lectura Informativa', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 207, 'La llegada del hombre a la luna está en cuestión. ¿Es verdad que Amstrong no llegó a la Luna sino que era todo un montaje de los Estados Unidos para ganar la carrera espacial? Pasarán siglos y todavía la gente se preguntará si el hombre llegó realmente a la luna. De hecho, no se sabe dónde ni cuándo surgió el primer rumor o acusación acerca de la veracidad de este hito de la carrera espacial, pero lo que sí es demostrable científicamente es que el hombre llegó a la luna y que las naves y equipo que utilizaron para dichas misiones siguen allí. Estos son algunos de los hechos que demuestran fehacientemente que el hombre pisó la luna: ¿MONTAJE DE EE.UU? ¿LOGRO CIENTÍFICO? LAS CLAVES: Una de las tareas que tuvieron que llevar a cabo los astronautas fue la colocación de unos espejos reflectores en la superficie lunar para determinar mediante un láser situado en la Tierra la distancia entre nuestro planeta y la luna. Cualquier científico que tome dichas medidas certificará que dichos espejos están en los lugares cercanos a los puntos de aterrizaje de las naves y de hecho tales medidas se llevan tomando desde entonces por parte de observatorios astronómicos de todo el mundo.'),
(253, 'La momia', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 222, 'MADRID.- La reina Momia lleva años descansando en el tercer sótano del Museo Egipcio de El Cairo. Los científicos han tenido que realizar pruebas de ADN y varios escáneres a la momia para determinar que los restos que llevan décadas guardados bajo llave son los de una de las figuras clave del antiguo Egipto, y no de su nodriza, como se pensaba hasta ahora. La clave estaba en una muela. "Durante todo un año, un equipo de científicos dirigido por el doctor Zahi Hawass, secretario general del Consejo Supremo de Antigüedades, ha trabajado duramente para identificar a la momia", señaló el ministro de Cultura egipcio, Farouq Hosni, en una rueda de prensa para presentar al mundo el hallazgo. Para identificar la momia, los arqueólogos se han valido de un molar encontrado en un vaso funerario que llevaba el nombre de la reina, y que se encontró en el templo de Deir el-Bahari. La muela encaja a la perfección con la dentadura de la momia, a la que le falta precisamente ese molar, según precisó Hawass en la rueda de prensa. El profesor de odontología Yehya Zakariya fue el encargado de comprobar la dentadura de todas las momias que podrían encajar con la descripción de la Momia hasta que dio con el hueco que acogía perfectamente el molar que tenía en sus manos. '),
(254, 'El verdadero valor del anillo parte 1', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 207, 'Un joven acudió a un sabio en busca de ayuda. - Vengo, maestro, porque me siento tan poca cosa que no tengo fuerzas para hacer nada. Me dicen que no sirvo, que no hago nada bien, que soy torpe y bastante tonto. ¿Cómo puedo mejorar, maestro? ¿Qué puedo hacer para que me valoren más? El maestro, sin mirarlo, le dijo: - ¡Cuánto lo siento, muchacho; no puedo ayudarte!. Debo resolver primero mis propios problemas. Quizás después... Si quisieras ayudarme tú a mí, yo podría resolver este tema con más rapidez y después tal vez te pueda ayudar. - E... encantado, maestro -titubeó el joven- , pero sintió que otra vez era desvalorizado y sus necesidades postergadas-. - Bien -asintió el maestro-. Se quitó un anillo que llevaba en el dedo pequeño de la mano izquierda, y dándoselo al muchacho, agregó: toma el caballo que está allí afuera y cabalga hasta el mercado. Debo vender este anillo para pagar una deuda. Es necesario que obtengas por él la mayor suma posible, pero no aceptes menos de una moneda de oro. Vete y regresa con esa moneda lo más rápido que puedas. El joven tomó el anillo y partió. Apenas llegó, empezó a ofrecer el anillo a los mercaderes.'),
(255, 'El verdadero valor del anillo parte 2', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 204, 'Éstos lo miraban con algún interés hasta que el joven decía lo que pretendía por el anillo. Cuando el joven mencionaba la moneda de oro, algunos reían, otros le daban la espalda, y sólo un viejito fue tan amable como para tomarse la molestia de explicarle que una moneda de oro era muy valiosa para entregarla a cambio de un anillo. En afán de ayudar, alguien le ofreció una moneda de plata y un cacharro de cobre, pero el joven tenía instrucciones de no aceptar menos de una moneda de oro, así que rechazó la oferta. Después de ofrecer su joya a toda persona que se cruzaba en el mercado - más de cien personas- y abatido por su fracaso, montó su caballo y regresó. ¡Cuánto hubiese deseado el joven tener él mismo esa moneda de oro! Podría habérsela entregado al maestro para liberarlo de su preocupación y recibir entonces su consejo y su ayuda. - Maestro, lo siento -dijo-, no es posible conseguir lo que me pediste. Quizás pudiera conseguir 2 ó 3 monedas de plata, pero no creo que yo pueda engañar a nadie respecto del verdadero valor del anillo. - ¡Qué importante lo que dijiste, joven amigo! -contestó sonriente el maestro-.'),
(256, 'El verdadero valor del anillo parte 3', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 204, 'Debemos saber primero el verdadero valor del anillo. Vuelve a montar y vete al joyero. ¿Quién mejor que él para saberlo? Dile que “Mis Lecturas de 5º y 6º “ 95 quisieras vender el anillo y pregúntale cuánto da por él. Pero no importa lo que ofrezca, no se lo vendas. Vuelve aquí con mi anillo. El joven volvió a cabalgar. El joyero examinó el anillo a la luz del candil, lo miró con su lupa, lo pesó y luego le dijo: - Dile al maestro, muchacho, que si lo quiere vender ya, no puedo darle más que 58 monedas de oro por su anillo. - ¿¿¿¿58 monedas???? -exclamó el joven-. - Sí, -replicó el joyero-. Yo sé que con tiempo podríamos obtener por él cerca de 70 monedas, pero no sé... Si la venta es urgente... El joven corrió emocionado a casa del maestro a contarle lo sucedido. - Siéntate -dijo el maestro después de escucharlo-. Tú eres como este anillo: una joya única y valiosa. Y como tal, sólo puede evaluarte verdaderamente un experto. ¿Qué haces por la vida pretendiendo que cualquiera descubra tu verdadero valor? Y diciendo esto, volvió a ponerse el anillo en el dedo pequeño de su mano izquierda.'),
(257, 'Accidentes de tráfico parte 1', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 217, 'En el año 2000, más de 1,2 millones de personas murieron como consecuencia de accidentes de tráfico, lo que hace de ésta la novena causa más importante de muerte en el mundo. Se prevé que en el año 2020 esta cifra prácticamente se haya duplicado. Además de las sorprendentes tasas de mortalidad, los traumatismos por accidentes de tráfico constituyen una de las principales causas de pérdida de salud y una verdadera sangría para el sistema de salud. Según datos disponibles, en algunos países una de cada 10 camas de hospital está ocupada por víctimas de accidentes de tráfico. Asimismo, aunque en los países industrializados el número de personas propietarias de automóviles es mayor que en los países en desarrollo, estudios realizados muestran que en el año 2000, el 90% del número total de muertes se produjo en sociedades con ingresos medios y bajos. La mayoría de las víctimas de esos accidentes son personas que nunca podrán permitirse la adquisición de un automóvil: peatones, ciclistas y usuarios del transporte público. A pesar de que los vehículos son ahora cuatro veces más seguros que en 1970 y se han reducido en un 50 % el número de muertes en la UE, de 15 Estados miembros desde esa fecha (periodo durante el cual el volumen de tráfico se ha triplicado).'),
(258, 'Accidentes de tráfico parte 2', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 202, 'Los accidentes de tráfico en carretera provocan más de 40.000 muertes en la Unión Europea y producen costes directos e indirectos estimados en 180.000 millones de euros. Según datos publicados por la Comisión Europea, el número de víctimas mortales en España como consecuencia de accidentes de tráfico fue de 5.394 en el año 2003, sólo superada por Alemania, Francia, Italia y Polonia. Los accidentes de tráfico se ceban principalmente entre la población joven, constituyendo un problema de salud pública de gran magnitud. De hecho, representan la principal causa de mortandad entre personas con edades comprendidas entre los 5 y los 29 años. La mitad de las víctimas en la carretera suelen ser jóvenes y adolescentes, grupos de población en los que confluyen factores de riesgo añadidos como la inexperiencia al volante o el consumo de alcohol y drogas durante los fines de semana. La gravedad de esta situación también se refleja en la importancia de las secuelas que los accidentes llegan a ocasionar. El 40 por ciento de las minusvalías que se producen en España están causadas por estos accidentes, que constituyen la primera causa de lesión medular como consecuencia de un traumatismo y también de incapacidad laboral entre la población joven. '),
(259, 'Las cien especies más amenazadas del planeta', 'Lectura', 'Lectura Informativa', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 215, 'El camaleón de Tarzán (''Calumma tarzan'') , el correlimos cuchareta (''Eurynorhynchus pygmeu'') y el perezoso pigmeo (''Bradypus pygmaeus'') ocupan los primeros puestos de una nueva lista de las especies más cercanas a la extinción publicada por la Zoological Society of London (ZSL) y la UICN, Unión Internacional para la Conservación de la Naturaleza. Se trata de especies tan valiosas como desconocidas para la mayoría de la población. El ranking, elaborado por más de 8.000 científicos que han identificado las cien especies más amenazadas entre los animales, plantas y hongos del planeta, ha sido presentado durante el Congreso Mundial de la Naturaleza, que se celebra hasta el domingo en la isla de Jeju, en Corea del Sur. Estas cien especies, de 48 países diferentes, desaparecerán completamente si no se hace nada para protegerlas. Tales especies pueden desaparecer al no ofrecer beneficios evidentes a los seres humanos. El valor de las especies Se destacó que en la actualidad, "las especies y los hábitats silvestres se valoran según los servicios que ofrecen a las personas", lo que dificulta su protección. ¿El informe titulado ‘Priceless or Worthless?''(¿Sin valor o de un valor incalculable?), plantea la disyuntiva entre si la humanidad debe luchar por la supervivencia de las citadas especies, o ha de permitir que sean condenadas a la extinción.'),
(260, 'Peligros del hábito de fumar', 'Lectura', 'Lectura Informativa', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 206, 'El fumar cigarrillos es la causa principal de muertes que se pueden evitar. Como promedio, la gente que fuma muere de 5 a 8 años antes que la que no fuma. Los que usan tabaco, y las personas que viven con los fumadores, presentan casi todos los casos de cáncer de pulmón. Su riesgo de desarrollar cáncer de la garganta, boca, esófago, páncreas, riñón, vejiga y del cuello del útero es varias veces mayor que entre las personas que no están regularmente expuestas al humo del tabaco. El fumar es la causa principal de enfisema, una enfermedad pulmonar debilitante que destruye lentamente la habilidad de una persona de respirar normalmente. El humo del tabaco es peligroso para los que no fuman. La exposición al humo, también llamada fumar pasivamente, aumenta los riesgos de los que no fuman de tener los mismos problemas que los fumadores. Una persona que no fuma, que permanezca en una habitación con varios fumadores durante una hora, inhala tantos agentes químicos malos como los que inhalaría si fumase en realidad 10 o más cigarrillos. Un estudio demostró que la tasa de cáncer de pulmón entre las mujeres no fumadoras dependía de la cantidad de cigarros, puros o pipas que fumaban sus esposos.'),
(261, 'El lugar más bonito del mundo parte 1', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 201, 'Juan es un niño muy pobre que vive con su abuela y con varios hermanos y primos más. Trabaja de limpiabotas para ayudar en casa y tiene grandes deseos de acudir al colegio, pero no se atreve a decírselo a su abuela. Después de un tiempo, empecé a preguntarme por qué mi abuela no me habría mandado a mí a la escuela. Y se me ocurrió pensar en que si me quisiera de verdad me habría mandado a la escuela en vez de tenerme limpiando zapatos. Después acabé por decirme que mi abuela era buena; que ella no tenía la culpa de tener más necesidad de dinero que yo de escuela; al final, decidí que no necesitaba la escuela para nada, que yo solo aprendería a leer. Preguntaba a mis clientes qué letras eran las que aparecían en los letreros de los carteles: COCA – COLA, BANCO DE GUATEMALA, OFICINAS DE TURISMO, … Cuando se me acabaron los carteles de los alrededores, alguien me dio un periódico y los clientes me ayudaron. Corté el periódico y siempre llevaba una página en el bolsillo de atrás de mi pantalón cuando iba a trabajar. Poco a poco empecé a ser capaz de leerlas casi todas.'),
(262, 'El lugar más bonito del mundo parte 2', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 222, 'Y finalmente decidí que no tenía más remedio que hacerlo, quiero decir, preguntarle a mi abuela lo de ir a la escuela. Le pedí a un amigo mío, Roberto, un huérfano que vive en la calle, que me guardase mi caja de limpiabotas, y me fui al mercado para hablar con la abuela. Se quedó muy sorprendida cuando me vio porque creía que a esa hora yo estaría trabajando. - ¿Qué pasa, Juan? –me preguntó. Y yo le dije: 240- EL LUGAR MÁS BONITO DEL MUNDO “Mis Lecturas de 5º y 6º “ 104 - Abuela, quiero ir a la escuela. - ¿A la escuela? –me dijo, tan asombrada como si yo le hubiera dicho que quería irme a Marte. –No puedes ir. - ¡Sí que puedo! –dije yo-. Todo lo que tienes que hacer es llevarme. Yo había pensado que si ella me decía que no, yo lo aceptaría, pero no lo hice. - Eres muy pequeño –me dijo-, sólo tienes cinco años. - Abuela, no tengo cinco años, ¡tengo siete! Éramos tantos los que vivíamos con ella, que había perdido la cuenta de los años que yo tenía. - ¿Qué tienes siete? ¿Y por qué no me lo habías dicho antes? Sois muchos y no puedo acordarme de la edad que tiene cada uno; debiste habérmelo recordado en su momento.'),
(263, 'El lugar más bonito del mundo parte 3', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 198, '¿Y cuánto tiempo hace que tienes siete años? Y me lo preguntó como si sospechase que yo le había jugado una mala pasada cumpliendo siete años. - Seis meses, le dije. - ¡Y has dejado pasar todo el tiempo sin decirme nada! - Era tan importante para mí que no podía hablarte de ello. - ¡Justamente porque es importante para ti es por lo que deberías haberme hablado de ello! –dijo la abuela-. Tienes que luchar por tus cosas, y no importa si pierdes. Lo que importa de veras es que no dejes nunca de batallar por conseguir lo que de verdad quieres. A la mañana siguiente, cuando me vestí, no me puse mi ropa de limpiabotas, sino mi ropa más limpia, y, antes de que empezase la escuela, la abuela y yo fuimos a ver a la maestra de primero, doña Irene. - Quiero entrar en la escuela –le dije. - ¿Cuántos años tienes? –me preguntó. - Siete y medio. - Pues sí, ya tienes la edad, pero no puedes empezar ahora. Entrarás en el próximo curso –dijo doña Irene. Me despidió con una sonrisa y se puso a mirar unos papeles que tenía sobre la mesa.'),
(264, 'El pequeño ruiseñor', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 215, '“El primer mes de vida del ruiseñor es el que determina su destino”. “Siempre había creído que ese canto incomparable del ruiseñor era instintivo y hereditario. Pero no lo es. Los ruiseñores destinados a vivir en compañía del hombre se cogen en primavera, cuando todavía son pichoncitos, de los nidos de sus alados progenitores silvestres. En cuanto se les enseña a no tener miedo y aceptar alimento, se alquilan los servicios de un “ruiseñor maestro” que les canta diariamente y se tiene al pichón escuchándole durante un mes. Es de esa manera como el ruiseñor maestro adiestra al pajarito silvestre. Es el método que se viene usando en Japón desde tiempo inmemorial. Se provee el mejor ambiente posible para el adiestramiento de los pajarillos. En suma, se trata de la “educación del talento” del ruiseñor. El pájaro adiestrador sirve de maestro al pichoncito. Este sigue recibiendo otros tipos de adiestramiento, pero lo fundamental y más importante es que tenga buen maestro durante el mes primero de su vida. Lo que va a decidir si va a ser buena o mala la calidad de su canto cuando llegue a la vida adulta es la voz y entonación del ruiseñor que se le ponga de maestro y no de que sea buen o mal cantor de nacimiento.'),
(265, 'Incendios Forestales', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 211, 'Todavía no hay un recuento definitivo de los daños que dejó tras de sí el incendio que arrasó parte de la provincia de Málaga el pasado fin de semana, y que hasta ayer por la mañana no se dio completamente por extinguido desde que se originó el pasado jueves. Pero los alcaldes de los seis municipios afectados y las administraciones no dudan de que las pérdidas serán millonarias dados los cuantiosos destrozos causados por las llamas en viviendas, vehículos, infraestructuras municipales, carreteras y redes de abastecimiento de agua y electricidad. Todas aquellas personas que hayan sufrido los estragos del fuego tendrán un plazo de un mes para solicitar las ayudas al Gobierno central y éstas se podrían complementar con el Fondo de Solidaridad Europea. El primer paso para evaluar los daños provocados por el devastador fuego, que ha arrasado unas 8.225 hectáreas de suelo forestal, urbano y agrícola, se dio ayer en la primera reunión que mantuvieron representantes de la Junta de Andalucía, el Gobierno, la Diputación y los alcaldes de estos municipios. Un total de 87 viviendas muy afectadas, sin contar las de Marbella, que aún no han sido contabilizadas, y más de una veintena de vehículos calcinados son los únicos datos ofrecidos hasta ahora sobre los estragos del fuego.'),
(266, 'Investigaciones en el ártico', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 196, 'El buque "Hespérides" inicia su primera campaña de investigación en el Ártico Uno de sus objetivos es evaluar el impacto del cambio climático en la cobertura de hielo El buque oceanográfico "Hespérides" partió desde el puerto de Vigo rumbo al Ártico, donde desarrollará su próxima campaña de investigación dentro de la celebración del Año Polar Internacional. Por primera vez, el "Hespérides" llevará a cabo trabajos en las heladas aguas árticas. El primer proyecto, dirigido por el biólogo Carlos Duarte, del Instituto Mediterráneo de Estudios Avanzados, evaluará el impacto del calentamiento global en la cobertura de hielo. La fusión de este hielo libera al océano los contaminantes depositados en él, aumenta la exposición del plancton a la luz y a la radiación ultravioleta y permite el intercambio de gases con la atmósfera, provocando importantes modificaciones en el entorno ecológico. El segundo de los proyectos, denominado SVAIS, estudiará los cambios climáticos y ambientales naturales que se han ido produciendo en los fondos marinos del suroeste de las islas Svalbard, en Noruega, desde hace aproximadamente tres millones de años hasta la desglaciación más reciente. Estas investigaciones estarán dirigidas por el geólogo marino Angelo Camerlenghi, de la Universidad de Barcelona'),
(267, 'Codicia', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 201, 'Cavando para montar un cerco que separara mi terreno del de mi vecino, encontré enterrado en mi jardín un viejo cofre lleno de monedas de oro. No me interesé por la riqueza; me interesé por lo extraño del hallazgo. Nunca he sido ambicioso y no me importan demasiado los bienes materiales, pero desenterré el cofre. Saqué las monedas y las lustré. Estaban tan sucias las pobres... Mientras las apilaba sobre mi mesa prolijamente, las fui contando... Constituían en sí mismas una verdadera fortuna. Sólo por pasar el tiempo, empecé a imaginar todas las cosas que se podrían comprar con ellas. Pensaba en lo loco que se pondría un codicioso que se topara con semejante tesoro. Por suerte, por suerte...no era mi caso... Hoy vino un señor a reclamar las monedas. Era mi vecino. Pretendía sostener el muy miserable que las monedas las había enterrado su abuelo, y que por lo tanto le pertenecían a él. Me dio tanto fastidio que lo maté... Si no lo hubiera visto tan desesperado por tenerlas, se las hubiera dado, porque si hay algo que a mi no me importa son las cosas que se compran con dinero; eso sí, no soporto a la gente codiciosa...'),
(268, 'La liebre y el león parte 1', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 199, 'Un león estaba en una tierra muy fértil, en la que abundaban las bestias salvajes, el agua y los pastos. Las bestias que estaban en esta tierra estaban muy asustadas por el miedo que tenían al león. Se reunieron todas las bestias y tomaron la resolución de ir adonde moraba el león y decirle: -Tú no puedes devorarnos conforme quieras; al menos has de pasar fatigas en la caza. Nosotros venimos a proponerte un medio de que tú comas sin esfuerzo y, a cambio de ello, nos dejes a las demás bestias en paz. Dijo el león: - ¿Y cuál es ese medio? Dijeron las bestias: -Haremos contigo un trato. Te daremos cada día un animalito para que te lo comas tranquilamente. Tú, a cambio, nos prometerás dejarnos en paz día y noche. Al león le gustó el trato y lo aceptó. Y aconteció que una vez una liebre, a la que llevaban inerme para que se la merendara el león, dijo a las otras bestias: -Si me quisierais escuchar, os diría algo que redundaría en provecho vuestro, que os libraría del miedo al león y a mí de la muerte. Y le contestaron: -¿Y qué quieres que hagamos? '),
(269, 'La liebre y el león parte 2', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 234, 'Y díjole la liebre: - ¡Oh, Señor! No nos recriminéis. Yo era la encargada de traeros otra liebre para que os sirviera de almuerzo, pero en el camino me he topado con otro león, el cual, al saber que tal liebre era para vos, se la comió. Yo le repliqué que hacía muy mal, porque la vianda sabrosa era para vos, que sois el rey de la selva, y que mi consejo era que desistiese, si no quería arriesgarse a despertar vuestra cólera. Mas él no me hizo caso y además os insultó cuanto quiso, y dijo que le importaba muy poco luchar con vos, a pesar de ser vos rey. Oído lo cual, el león, iracundo, dijo a la liebre: - Ven conmigo y llévame hasta ese león que dices. Y la liebre lo llevó hasta un pozo muy hondo, de agua muy clara y díjole: - Este es el lugar del que os hablé. Aupadme y os mostraré vuestro enemigo. Y cuando el león la aupó, contempló en el fondo del pozo su imagen y la de la liebre y creyó que era el otro león con la presa que le estaba destinada a él y, rabioso, se lanzó al pozo para luchar con su inexistente enemigo, y se ahogó. Y regresó la liebre adonde le esperaban las demás bestias y, contándoles lo sucedido, las libró de su constante miedo para siempre.'),
(270, 'El rey y la semilla', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 208, 'Hubo una vez un emperador que convocó a todos los solteros del reino, pues era tiempo de buscarle pareja a su hija. Todos los jóvenes asistieron y el rey les dijo: -"Os voy a dar una semilla diferente a cada uno de vosotros; al cabo de seis meses deberán traerme en una maceta la planta que haya crecido, y la planta más bella ganará la mano de mi hija, y por ende el reino". Así se hizo. Pero había un joven que plantó su semilla y no germinaba, mientras tanto, todos los demás jóvenes del reino no paraban de hablar y mostrar las hermosas plantas y flores que habían sembrado en sus macetas. Llegaron los seis meses y todos los jóvenes desfilaban hacia el castillo con hermosísimas y exóticas plantas. El joven estaba demasiado triste pues su semilla nunca germinó. Ni siquiera quería ir al palacio, pero su madre insistía en que debía ir, pues era un participante y debía estar allí. Con la cabeza baja y muy avergonzado, desfiló el último a palacio con su maceta vacía. Todos los jóvenes hablaban de sus plantas, y al ver a nuestro amigo soltaron en risa y burla. En ese momento el alboroto fue interrumpido por la presencia del rey. '),
(271, 'Juicio Injusto', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 225, 'Cuenta una antigua leyenda que en la Edad Media un hombre muy virtuoso fue injustamente acusado de haber asesinado a una mujer. En realidad, el verdadero autor era una persona muy influyente del reino, y por eso, desde el primer momento se procuró un “chivo expiatorio” para encubrir al culpable. El hombre fue llevado a juicio ya conociendo que tendría escasas o nulas esperanzas de escapar al terrible veredicto: ¡La horca! El juez, también comprado, cuidó no obstante, de dar todo el aspecto de un juicio justo, por ello dijo al acusado: -“Conociendo tu fama de hombre justo y devoto del Señor, vamos a dejar en manos de Él tu destino: Vamos a escribir en dos papeles separados las palabras ‘culpable’ e ‘inocente’. Tú escogerás y será la mano de Dios la que decida tu destino”. Por supuesto, el mal funcionario había preparado dos papeles con la misma leyenda: ‘CULPABLE’. Y la pobre víctima, aún sin conocer los detalles, se daba cuenta que el sistema propuesto era una trampa. No había escapatoria. El juez ordenó al hombre tomar uno de los papeles doblados. Este respiró profundamente, quedó en silencio unos cuantos segundos con los ojos cerrados, y cuando la sala comenzaba ya a impacientarse, abrió los ojos y con una extraña sonrisa, tomó uno de los papeles y llevándolo a su boca, lo engulló rápidamente.'),
(272, 'Se ofrece abuelo en adopción', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 201, 'Giorgio Angelozzi, un viudo de 80 años de edad, tuvo una original idea para salir de la soledad en la que se encuentra desde que murió su esposa hace 14 años. Angelozzi colocó un aviso en un periódico italiano donde ofrece pagar 500 euros por mes a una familia que lo adopte como abuelo. “Me han llamado de toda Italia”, dijo pleno de alegría, acompañado por los siete gatos con los que vive cerca de Roma. El aviso, publicado en el Corriere della Sera, dice: “Maestro de escuela retirado busca una familia que quiera adoptar un abuelo. Se pagará”. Angelozzi dedicó su vida profesional a enseñar latín y griego. “Muchas de las familias quieren que les enseñe Horacio a sus hijos o nietos”. Pero el abuelo recordó que su problema no es particular. “En Italia hay muchas personas de edad en esta situación”. La familia es tradicionalmente importante en ese país, pero las cambiantes estructuras a veces provocan la soledad de los integrantes de más edad, que son dejados de lado. Y ese fenómeno quedó en evidencia durante la ola de calor que azotó Europa hace un año. La mayoría de las 7.660 personas que murieron eran ancianos que vivían solos.'),
(273, 'Las tardes de enero', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 212, 'Va cayendo la noche: La bruma ha bajado a los montes el cielo; una lluvia menuda y monótona humedece los árboles secos. El rumor de sus gotas penetra hasta el fondo sagrado del pecho, donde el alma, dulcísima, esconde su perfume de amor y recuerdos. ¡Cómo cae la bruma en el alma! ¡Qué tristeza de vagos misterios en sus nieblas heladas esconden esas tardes sin sol ni luceros! En las tardes de rosas y brisas los dolores se olvidan, riendo, y las penas glaciales se ocultan tras los ojos radiantes de fuego. Cuando el frío desciende a la tierra, inundando las frentes de invierno, se reflejan las almas marchitas a través de los pálidos cuerpos. Y hay un algo de pena insondable en los ojos sin lumbre del cielo, y las largas miradas se pierden en la nada sin fe de los sueños. La nostalgia, tristísima, arroja en las almas su amargo silencio, Y los niños se duermen soñando con ladrones y lobos hambrientos. Los jardines se mueren de frío; en sus largos caminos desiertos no hay rosales cubiertos de rosas, no hay sonrisas, suspiros ni besos. ¡Cómo cae la bruma en el alma perfumada de amor y recuerdos! ¡Cuantas almas se van de la vida estas tardes sin sol ni luceros!'),
(274, 'Las alas son para volar', 'Lectura', 'Cuento Infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 201, 'Ese día, Jorge me esperaba con un cuento. Cuando se hizo mayor, su padre le dijo: “Hijo mío: no todos nacemos con alas. Si bien es cierto que no tienes obligación de volar, creo que sería una pena que te limitaras a caminar teniendo las alas que el buen Dios te ha dado”. - Pero yo no sé volar – contestó el hijo. - Es verdad… - dijo el padre. Y, caminando, lo llevó hasta el borde del abismo de la montaña. - ¿Ves, hijo? Este es el vacío. Cuando quieras volar vas a venir aquí, vas a tomar aire, vas a saltar al abismo y, extendiendo las alas, volarás. El hijo dudó. - ¿Y si me caigo? - Aunque te caigas, no morirás. Sólo te harás algunos rasguños que te harán más fuerte para el siguiente intento –contestó el padre. El hijo volvió al pueblo a ver a sus amigos, a sus compañeros, aquellos con los que había caminado toda su vida. Los más estrechos de mente le dijeron: “¿Estás loco? ¿Para qué? Tu padre está medio loco… ¿Para qué necesitas volar? ¿Por qué no te dejas de tonterías? ¿Quién necesita volar?”. El joven escuchó el consejo de quienes le querían.'),
(275, '', '', '', '', '', 0, 0, 0, ''),
(276, '', '', '', '', '', 0, 0, 0, ''),
(277, '', '', '', '', '', 0, 0, 0, ''),
(278, '', '', '', '', '', 0, 0, 0, ''),
(279, '', '', '', '', '', 0, 0, 0, ''),
(280, '', '', '', '', '', 0, 0, 0, ''),
(281, '', '', '', '', '', 0, 0, 0, '');

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
-- Indices de la tabla `aprendizajepreescolar`
--
ALTER TABLE `aprendizajepreescolar`
  ADD PRIMARY KEY (`idAprendizaje`);

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
-- Indices de la tabla `atomolector`
--
ALTER TABLE `atomolector`
  ADD PRIMARY KEY (`idLectura`);

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
-- Indices de la tabla `contuspalabras`
--
ALTER TABLE `contuspalabras`
  ADD PRIMARY KEY (`idregistroActividad`),
  ADD KEY `registro_Usuario` (`idUsuario`),
  ADD KEY `registro_lectura` (`idLectura`);

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`idCuestionario`),
  ADD KEY `cuestionarioatomolector_fk` (`idLectura`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `emnivel1completopaso1`
--
ALTER TABLE `emnivel1completopaso1`
  ADD PRIMARY KEY (`idCuento`);

--
-- Indices de la tabla `emnivel1recursospaso0`
--
ALTER TABLE `emnivel1recursospaso0`
  ADD PRIMARY KEY (`idRecurso`);

--
-- Indices de la tabla `emnivel2completopaso1`
--
ALTER TABLE `emnivel2completopaso1`
  ADD PRIMARY KEY (`idCuento`);

--
-- Indices de la tabla `emnivel2recursospaso0`
--
ALTER TABLE `emnivel2recursospaso0`
  ADD PRIMARY KEY (`idRecurso`);

--
-- Indices de la tabla `emnivel4paso0`
--
ALTER TABLE `emnivel4paso0`
  ADD PRIMARY KEY (`idTexto`);

--
-- Indices de la tabla `emnivel4paso1`
--
ALTER TABLE `emnivel4paso1`
  ADD PRIMARY KEY (`idParrafo`);

--
-- Indices de la tabla `emnivel4paso2`
--
ALTER TABLE `emnivel4paso2`
  ADD PRIMARY KEY (`idParrafo_mod`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `glosario`
--
ALTER TABLE `glosario`
  ADD PRIMARY KEY (`idglosario`),
  ADD KEY `glosario_lectura` (`idLectura`);

--
-- Indices de la tabla `indicadorlogro`
--
ALTER TABLE `indicadorlogro`
  ADD PRIMARY KEY (`idIndicadorLogro`,`competencia_fk`),
  ADD KEY `fk_indicadorLogro_compentencia1_idx` (`competencia_fk`);

--
-- Indices de la tabla `itemopcionmultiple`
--
ALTER TABLE `itemopcionmultiple`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `itemOpcionMultiplefk` (`idCuestionario`);

--
-- Indices de la tabla `leccion`
--
ALTER TABLE `leccion`
  ADD PRIMARY KEY (`idLeccion`);

--
-- Indices de la tabla `micofre`
--
ALTER TABLE `micofre`
  ADD PRIMARY KEY (`idRegistroPalabra`);

--
-- Indices de la tabla `mod_parrafo`
--
ALTER TABLE `mod_parrafo`
  ADD PRIMARY KEY (`idParrafo_mod`);

--
-- Indices de la tabla `palabrasglosario`
--
ALTER TABLE `palabrasglosario`
  ADD PRIMARY KEY (`idPalabras`),
  ADD KEY `palabras_glosario` (`idGlosario`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `preguntaspersonajes`
--
ALTER TABLE `preguntaspersonajes`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `idquizpersonaje` (`idquizpersonaje`);

--
-- Indices de la tabla `publictexto`
--
ALTER TABLE `publictexto`
  ADD PRIMARY KEY (`idPublicacion`);

--
-- Indices de la tabla `quizpersonajes`
--
ALTER TABLE `quizpersonajes`
  ADD PRIMARY KEY (`idQuiz`),
  ADD KEY `quiz_Lectura` (`idLectura`);

--
-- Indices de la tabla `registroglosario`
--
ALTER TABLE `registroglosario`
  ADD PRIMARY KEY (`idRegistroPalabra`),
  ADD KEY `registroGlosario_glosario` (`idGlosario`),
  ADD KEY `registroGlosario_usuario` (`idUsuario`);

--
-- Indices de la tabla `registropruebacomprension`
--
ALTER TABLE `registropruebacomprension`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `registropruebacomprension3p`
--
ALTER TABLE `registropruebacomprension3p`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `registropruebacomprension4p`
--
ALTER TABLE `registropruebacomprension4p`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `registropruebacomprension5p`
--
ALTER TABLE `registropruebacomprension5p`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `registropruebacomprension6p`
--
ALTER TABLE `registropruebacomprension6p`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `registropruebapersonajes`
--
ALTER TABLE `registropruebapersonajes`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `idLectura` (`idLectura`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `velocidadlectora`
--
ALTER TABLE `velocidadlectora`
  ADD PRIMARY KEY (`idLectura`);

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
-- AUTO_INCREMENT de la tabla `aprendizajepreescolar`
--
ALTER TABLE `aprendizajepreescolar`
  MODIFY `idAprendizaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `idCircular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT de la tabla `atomolector`
--
ALTER TABLE `atomolector`
  MODIFY `idLectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT de la tabla `atomolectorvelocidad`
--
ALTER TABLE `atomolectorvelocidad`
  MODIFY `idRegistroVelocidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
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
-- AUTO_INCREMENT de la tabla `contuspalabras`
--
ALTER TABLE `contuspalabras`
  MODIFY `idregistroActividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `idCuestionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `emnivel1completopaso1`
--
ALTER TABLE `emnivel1completopaso1`
  MODIFY `idCuento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `emnivel1recursospaso0`
--
ALTER TABLE `emnivel1recursospaso0`
  MODIFY `idRecurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `emnivel2completopaso1`
--
ALTER TABLE `emnivel2completopaso1`
  MODIFY `idCuento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `emnivel2recursospaso0`
--
ALTER TABLE `emnivel2recursospaso0`
  MODIFY `idRecurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `emnivel4paso0`
--
ALTER TABLE `emnivel4paso0`
  MODIFY `idTexto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `emnivel4paso1`
--
ALTER TABLE `emnivel4paso1`
  MODIFY `idParrafo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `emnivel4paso2`
--
ALTER TABLE `emnivel4paso2`
  MODIFY `idParrafo_mod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `glosario`
--
ALTER TABLE `glosario`
  MODIFY `idglosario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `indicadorlogro`
--
ALTER TABLE `indicadorlogro`
  MODIFY `idIndicadorLogro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `itemopcionmultiple`
--
ALTER TABLE `itemopcionmultiple`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT de la tabla `leccion`
--
ALTER TABLE `leccion`
  MODIFY `idLeccion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `micofre`
--
ALTER TABLE `micofre`
  MODIFY `idRegistroPalabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `mod_parrafo`
--
ALTER TABLE `mod_parrafo`
  MODIFY `idParrafo_mod` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `palabrasglosario`
--
ALTER TABLE `palabrasglosario`
  MODIFY `idPalabras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idPregunta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `preguntaspersonajes`
--
ALTER TABLE `preguntaspersonajes`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `publictexto`
--
ALTER TABLE `publictexto`
  MODIFY `idPublicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `quizpersonajes`
--
ALTER TABLE `quizpersonajes`
  MODIFY `idQuiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `registroglosario`
--
ALTER TABLE `registroglosario`
  MODIFY `idRegistroPalabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `registropruebacomprension`
--
ALTER TABLE `registropruebacomprension`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `registropruebacomprension3p`
--
ALTER TABLE `registropruebacomprension3p`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `registropruebacomprension4p`
--
ALTER TABLE `registropruebacomprension4p`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registropruebacomprension5p`
--
ALTER TABLE `registropruebacomprension5p`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registropruebacomprension6p`
--
ALTER TABLE `registropruebacomprension6p`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registropruebapersonajes`
--
ALTER TABLE `registropruebapersonajes`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `velocidadlectora`
--
ALTER TABLE `velocidadlectora`
  MODIFY `idLectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
