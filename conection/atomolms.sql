-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2019 a las 23:11:13
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
-- Base de datos: `atomolms`
--

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
  `tipoLectura` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `cantidadFicheros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `atomolector`
--

INSERT INTO `atomolector` (`idLectura`, `nombreLectura`, `descripcion`, `edadLectura`, `rutaPasta`, `rutaLectura`, `grado`, `tipoLectura`, `cantidadFicheros`) VALUES
(1, 'El cascabel del gato', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect1', '1', 'Continuo', 4),
(2, 'El conejo Perico', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect2', '1', 'Continuo', 4),
(3, 'La ballena feliz', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect3', '1', 'Continuo', 3),
(4, 'El león y el delfín', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect4', '1', 'Continuo', 3),
(5, 'El león y el elefante', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect5', '1', 'Continuo', 4),
(6, 'La tortuga y el águila', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect6', '1', 'Continuo', 3),
(7, 'Las dos culebras', 'Cuento corto infantil', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect7', '1', 'Continuo', 5),
(8, 'Los beneficios de los abrazos', 'Infografía Emocional', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect8', '1', 'Discontinua', 1),
(9, 'El universo', 'Infografía Científica', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect9', '1', 'Discontinua', 2),
(10, 'Navega y aprende con seguridad', 'Infografía Tecnológica', '5,6,7 años ', 'atomLector/pasta', 'atomLector/1p/lect10', '1', 'Discuntinua', 1),
(11, 'Ratón de ciudad y raton de campo', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect1', '2', 'Continuo', 4),
(12, 'Laura cambia de ciudad', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect2', '2', 'Continuo', 4),
(13, 'Los dos amigos', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect3', '2', 'Continuo', 3),
(14, 'El lobo y el perro', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect4', '2', 'Continuo', 3),
(15, 'La golondrina y los pajaros', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect5', '2', 'Continuo', 3),
(16, 'Pedro y el lobo', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect6', '2', 'Continuo', 4),
(17, 'La mochila', 'Cuento Infantil', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect7', '2', 'Continuo', 5),
(18, '10 Libros clásicos para niños', 'Infografía ', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect8', '2', 'Doscontinua', 2),
(19, 'Terapeuta ocupacional', 'Infografía Emocional', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect9', '2', 'Doscontinua', 1),
(20, 'El sindrome de rett', 'Infografía Cientifica', '6,7,8 años', 'atomLector/pasta', 'atomLector/2p/lect10', '2', 'Doscontinua', 1),
(21, 'La desobediente tortuguita Ruby', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect1', '3', 'Continua', 4),
(22, 'El oro y las ratas', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect2', '3', 'Continua', 4),
(23, 'La tortuga Uga', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect3', '3', 'Continua', 4),
(24, 'Caperucita Roja', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect4', '3', 'Continua', 4),
(25, 'El flautista de hamelin', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect5', '3', 'Continua', 5),
(26, 'El gato con botas', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect6', '3', 'Continua', 4),
(27, 'La abuela', 'Cuento Infantil', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect7', '3', 'Continua', 5),
(28, 'Dia mundial del suelo', 'Infografía ', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect8', '3', 'Doscontinua', 1),
(29, 'Árboles Urbanos', 'Infografía ', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect9', '3', 'Doscontinua', 1),
(30, 'El juguete en españa', 'Infografía ', '7,9 años', 'atomLector/pasta', 'atomLector/3p/lect10', '3', 'Doscontinua', 1),
(31, 'Merlin el mago', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect1', '4', 'Continua', 4),
(32, 'La vieja del bosque', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect2', '4', 'Continua', 6),
(33, 'El principe', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect3', '4', 'Continua', 6),
(34, 'Hansel y Gretel', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect4', '4', 'Continua', 6),
(35, 'Juan sin miedo', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect5', '4', 'Continua', 5),
(36, 'Peter Pan', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect6', '4', 'Continua', 5),
(37, 'Chacharas de niño', 'Cuento Infantil', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect7', '4', 'Continua', 5),
(38, 'Metodologia', 'Infografía ', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect8', '4', 'Doscontinua', 1),
(39, 'Incidencia de pobreza', 'Infografía ', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect9', '4', 'Doscontinua', 1),
(40, 'Propiedades de la naranja', 'Infografía ', '9,10 años', 'atomLector/pasta', 'atomLector/4p/lect10', '4', 'Doscontinua', 1),
(41, 'Blanca Nieves', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect1', '5', 'Continua', 4),
(42, 'La casita de chocolate', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect2', '5', 'Continua', 5),
(43, 'El patito feo', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect3', '5', 'Continua', 5),
(44, 'El dragon de las palabras', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect4', '5', 'Continua', 5),
(45, 'Yayuca y la estrella de navidad', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect5', '5', 'Continua', 6),
(46, 'Lupita la mariquita', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect6', '5', 'Continua', 4),
(47, 'Expediente hormiga', 'Cuento Infantil', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect7', '5', 'Continua', 4),
(48, 'Descripcion Nutritiva', 'Infografía ', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect8', '5', 'Doscontinua', 1),
(49, '¿Cómo inferir el titulo de un texto?', 'Infografía ', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect9', '5', 'Doscontinua', 1),
(50, '¿Quienes se deben vacunar contra la gripe?', 'Infografía ', '10, 11 años', 'atomLector/pasta', 'atomLector/5p/lect10', '5', 'Doscontinua', 1),
(51, 'El caracol y el rosal', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect1', '6', 'Continua', 5),
(52, 'Sinbad el marino', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect2', '6', 'Continua', 5),
(53, 'El fenix', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect3', '6', 'Continua', 4),
(54, 'El principe malvado', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect4', '6', 'Continua', 6),
(55, 'A gritos con los mosquitos', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect5', '6', 'Continua', 4),
(56, 'Un super poder muy especial', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect6', '6', 'Continua', 5),
(57, 'Quebrantarias, El rompe Familia', 'Cuento Infantil', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect7', '6', 'Continua', 6),
(58, 'La seguridad de tus hijos en la red', 'Infografía ', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect8', '6', 'Doscontinua', 1),
(59, '10 Beneficios de las artes manuales en los niños', 'Infografía ', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect9', '6', 'Doscontinua', 2),
(60, '¿Cómo enseñar a ahorrar agua a los niños?', 'Infografía ', '11,12 años', 'atomLector/pasta', 'atomLector/6p/lect10', '6', 'Doscontinua', 1),
(61, 'Gazapito quiere comer torta', 'Lectura Cuento Fantasia', '12,13 años', 'atomLector/pasta', 'atomLector/c1s/lect1', '7', 'Continua', 11),
(62, 'Platon el banquete', 'Lectura no literario', '12,13 años', 'atomLector/pasta', 'atomLector/c1s/lect2', '7', 'Continua', 11),
(63, 'Orgullo y Prejucio (Jane Austen)', 'Novela', '12,13 años', 'atomLector/pasta', 'atomLector/c1s/lect3', '7', 'Continua', 11),
(64, 'Secretos del rey maon', 'Lectura Cuento Fantasia', '13,14 años', 'atomLector/pasta', 'atomLector/c2s/lect1', '8', 'Continua', 11),
(65, 'Ars Armandi Ovidio', 'Lectura no literario', '13,14 años', 'atomLector/pasta', 'atomLector/c2s/lect2', '8', 'Continua', 12),
(66, 'El señor de las moscas', 'Novela', '13,14 años', 'atomLector/pasta', 'atomLector/c2s/lect3', '8', 'Continua', 12),
(67, 'El loro y la cacatua', 'Lectura Cuento Fantasia', '14,15 años', 'atomLector/pasta', 'atomLector/c3s/lect1', '9', 'Continua', 14),
(68, 'Declaracion de la independencia E.E.U.U', 'Lectura no literario', '14,15 años', 'atomLector/pasta', 'atomLector/c3s/lect2', '9', 'Continua', 12),
(69, 'El medico', 'Novela', '14,15 años', 'atomLector/pasta', 'atomLector/c3s/lect3', '9', 'Continua', 11),
(70, 'La sabia decición del rey', 'Lectura Cuento Fantasia', '15,16 años', 'atomLector/pasta', 'atomLector/c4d/lect1', '10', 'Continua', 16),
(71, 'Marco Polo el libro de las maravillas', 'Lectura no literario', '15,16 años', 'atomLector/pasta', 'atomLector/c4d/lect2', '10', 'Continua', 17),
(72, 'Bajo una misma estrella', 'Novela', '15,16 años', 'atomLector/pasta', 'atomLector/c4d/lect3', '10', 'Continua', 16),
(73, 'La raiz del sueño ', 'Lectura Cuento Fantasia', '16,17 años', 'atomLector/pasta', 'atomLector/c5d/lect1', '11', 'Continua', 17),
(74, 'El origen de las especies', 'Lectura no literario', '16,17 años', 'atomLector/pasta', 'atomLector/c5d/lect2', '11', 'Continua', 17),
(75, 'Cartas a un poeta', 'Novela', '16,17 años', 'atomLector/pasta', 'atomLector/c5d/lect3', '11', 'Continua', 16),
(76, 'Una mañana cualquiera', 'Lectura Cuento Fantasia', '17,18 años', 'atomLector/pasta', 'atomLector/c6d/lect1', '12', 'Continua', 17),
(77, 'Tesis Agronomia', 'Lectura no literario', '17,18 años', 'atomLector/pasta', 'atomLector/c6d/lect2', '12', 'Continua', 17),
(78, 'Matar a un sueño', 'Novela', '18,19 años', 'atomLector/pasta', 'atomLector/c6d/lect3', '12', 'Continua', 16);

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
  `fluidez` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `atomolectorvelocidad`
--

INSERT INTO `atomolectorvelocidad` (`idRegistroVelocidad`, `idUsuario`, `noLectura`, `intento`, `tiempoSeg`, `velocidadLectora`, `fluidez`) VALUES
(31, 17, 1, 1, 28, 165, 'en un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosos que colocaban en lo alto de una Parra en zorras se paró de puntillas y estiró sus brazos intentando alcanzar las uvas pero ésta se encontraban muy lejos de su alcance sin querer darse por vencida la zorra tomó impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguía muy lejos de su alcance'),
(32, 17, 2, 1, 29, 146, 'El ser uno - heladería un teatro sin cobrar la entrada sino también anunció a todos te recompensará generosamente que se le ocurriera el mejor acto de entre entretenimiento varios artistas compartieron por el premio entre ellos se encontraba un bufón muy famoso en el pueblo por sus bromas el bufón dijo que él tenía un acto entretenimiento que está más se había puesto en escena el bufón y el campesino'),
(33, 17, 1, 2, 37, 124, ' entonces');

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
  `idUsuario` int(11) NOT NULL,
  `noIntento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`idCuestionario`, `idLectura`, `punteoCuestionario`, `cantidadPreguntas`, `nombreCuestionario`, `idUsuario`, `noIntento`) VALUES
(1, 1, 100, 10, 'Escala Medición Pisa - El cascabel del gato – Test Comprensión ', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemopcionmultiple`
--

CREATE TABLE `itemopcionmultiple` (
  `idItem` int(11) NOT NULL,
  `pregunta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuestaCorrecta` int(11) NOT NULL,
  `respuesta1` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta2` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta3` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respuesta4` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `procesoComprension` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `capacidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `objetivoItem` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `idCuestionario` int(11) NOT NULL,
  `punteoItem` int(11) NOT NULL,
  `nivelItem` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `itemopcionmultiple`
--

INSERT INTO `itemopcionmultiple` (`idItem`, `pregunta`, `respuestaCorrecta`, `respuesta1`, `respuesta2`, `respuesta3`, `respuesta4`, `procesoComprension`, `capacidad`, `objetivoItem`, `nivel`, `idCuestionario`, `punteoItem`, `nivelItem`) VALUES
(1, '¿De qué trata la lectura? ', 3, 'A. De unos ratones que tenían mucha hambre.', 'B. De un gato cazador de ratones.', 'C. De unos ratones que querían ponerle un cascabel al gato.', 'D. De un buena persona que tenía un gato.', 'Integración e interpretación de texto ', 'Integrar interpretar, conseguir una comprensión global.', 'Identificar la idea principal del texto.', '1a', 1, 353, '1a'),
(2, '¿Según la lectura porque era importante para los ratones colocarle el cascabel al gato? ', 1, 'A. Para escuchar cuando el gato este cerca y que no los atrape.', 'B. Los ratones lo hacían por diversión.', 'C. Para jugarle una broma al gato', 'D. No era importante los ratones tenían mucha comida.', 'Obtención y recuperación de información. ', 'Localizar y extraer: extraer información del cuento.', 'Encontrar información en el texto', '1b', 1, 285, '1b'),
(3, '¿Qué hubiese pasado si los ratones en vez de un cascabel le colocan una sonaja? ', 1, 'A. Los ratones seguirían teniendo miedo.', 'B. Los ratones dejarían de tener miedo.', 'C. Los ratones hubieran tenido éxito.', 'D. El cuento terminaría con final feliz.', 'Reflexión y evaluación', ' Reflexionar sobre la forma de un texto y evaluarla.', 'Identificar un detalle  en base a un cambio el final del cuento.', '1a', 1, 399, '1a'),
(4, '¿Según la lectura es mejor trabajar en grupo? ', 1, 'A. Si, Trabajar en grupo como los ratoncitos es mejor.', 'B. No me gusta trabajar en grupo', 'C. Tengo miedo que se rían de mis ideas', 'D. No, es mejor.', 'Integración e interpretación de texto ', 'Integrar e interpretar: elaborar una interpretación.', 'Establecer relaciones en un texto breve para llegar a una conclusión.', '2', 1, 438, '2'),
(5, '“Sin embargo, un nuevo problema surgió ¿Quién le pondría el cascabel al gato” ¿Cómo podrían los ratones  colocarle el cascabel al gato sin que nadie salga herido? ', 1, 'A. Trabajando en equipo para resolver el problema.', 'B. Enviar solo a un ratón y que se sacrifique.', 'C. Quien tuvo la idea que lo haga.', 'D. No sé cómo resolver esto.', 'Integración e interpretación de texto ', 'Elaborar una interpretación.', 'Relacionar un detalle de un cuento con su idea principal.', '3', 1, 548, '3'),
(6, '¿Cuál era el fin de la idea del ratón joven, para que propuso la idea?', 2, 'A. Para asustar a todos los ratones y que murieran de hambre.', 'B. Ayudar a obtener provisiones y que los ratones no murieran de hambre.', 'C. No había ningún problema.', 'D. Dar a conocer su idea para ser reconocido entre todos los ratones.', 'Integración e interpretación de texto ', 'Conseguir una comprensión global.', 'Identificar la finalidad de una parte de un texto narrativo.', '4', 1, 661, '4'),
(7, '¿Cuál de las oraciones es correcta?', 2, 'A. Los gatos con cascabeles no son buenos cazadores.', 'B. Los ratones son inteligentes pero  miedosos.', 'C. El dueño del gato nunca se encontraba en casa y por habían muchos ratones', 'D. Ninguna es correcta', 'Reflexión y evaluación', 'Identificar la hipótesis de una parte del texto', 'Identificar la finalidad de una parte de un texto narrativo.', '5', 1, 699, '5'),
(8, '¿Qué se encontraban haciendo los ratoncitos antes de que el gato llegara a la casa?', 1, 'A. Los ratones comían y bebían sin ningún problema.', 'B. Cantaban y festejaban muy alegremente', 'C. Los ratones estaban tristes porque no tenían compañía.', 'D. Ninguna es correcta', 'Reflexión y evaluar - Localizar y extraer: ', 'Extraer información, reflexionar y evaluar informacion del texto.', 'Encontrar una referencia a una actividad que se desarrolla con anterioridad a los sucesos del cuento', '6', 1, 730, '8'),
(9, '¿Por qué es fácil opinar y difícil actuar ante una situación?', 1, 'A. Porque opinar no causa daño o no hay riesgo de perder.', 'B. La idea que el ratón joven dio no era buena.', 'C. Los ratones tienen mucho miedo.', 'D. Ninguna es correcta', 'Integración e interpretación de texto ', 'Identificar una interpretación', 'Inferir el significado de una frase en una obra de teatro utilizando referencias contextuales.', '2', 1, 474, '2'),
(10, '“Todos aplaudieron y felicitaron al joven ratón“ “ante la falta de voluntarios ya que todos ponían excusas para apoyar” ¿Qué relación tienen los textos?', 2, 'A. Los dos textos hablan sobre la idea que tuvo el ratón joven.', 'B. Los dos textos se contradicen porque aunque lo felicitaron y aplaudieron no lo apoyaron.', 'C. Los textos son iguales', 'D. Ninguna es correcta', 'Integración e interpretación de texto ', 'conseguir una interpretación global.', ': Identificar la relación existente entre dos textos argumentativos breves (contraste).', '3', 1, 573, '3');

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
  `totalObtenido` int(11) NOT NULL,
  `nivelObtenido` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registropruebacomprension`
--

INSERT INTO `registropruebacomprension` (`idRegistro`, `idLectura`, `idUsuario`, `tiempo`, `fechaRegistro`, `horaRegistro`, `rPregunta1`, `rPregunta2`, `rPregunta3`, `rPregunta4`, `rPregunta5`, `rPregunta6`, `rPregunta7`, `rPregunta8`, `rPregunta9`, `rPregunta10`, `totalObtenido`, `nivelObtenido`) VALUES
(16, 1, 17, '00:27', '16/03/2019', '04:34:53', 3, 2, 3, 2, 1, 2, 4, 4, 4, 2, 0, '1C'),
(17, 1, 17, '00:37', '18/03/2019', '11:53:25', 3, 1, 1, 1, 1, 2, 1, 1, 1, 2, 3762, '6');

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
(1, 'La zorra y las uvas', 'Fabula', 'Fabula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 2, 77, 'En un día muy caluroso una zorra sedienta se topó con un racimo de uvas grandes y jugosas que colgaban en lo alto de una parra la zorra se paró de puntillas y estiró sus brazos intentando alcanzar las uvas pero estas se encontraban muy lejos de su alcance sin querer darse por vencida la zorra tomo impulso y salto con todas sus fuerzas una y otra vez pero las uvas seguían muy lejos de su alcance'),
(2, 'El bufón y el campesino', 'Fabula', 'Fabula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 1, 71, 'Un noble no solo abrió un teatro sin cobrar la entrada sino también anuncio a todos que recompensaría generosamente a quien se le ocurriera el mejor acto de entretenimiento varios artistas compitieron por el premio entre ellos se encontraba un bufón muy famoso en el pueblo por sus bromas el bufón dijo que él tenía un acto de entretenimiento que jamás se había puesto en escena el bufón y el campesino'),
(3, 'El árbol que no sabia quien era', 'Fabula', 'Fabula corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 69, 'Era un jardín excepcional y los frutales se sentían muy felices no sólo eran arboles sanos robustos y bellos sino que además producían las mejores frutas que nadie podía imaginar sólo uno de esos árboles sentía muy desdichado porque aunque sus ramas eran grandes y muy verdes no daban ningún tipo de fruto el pobre siempre se quejaba de su mala suerte el árbol que no sabía quién era'),
(4, 'La nuez de oro', 'Lectura', 'Lectura corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 72, 'La pequeña maría no tuvo entonces más remedio que contar los pliegues en la nuez y efectivamente el duende no se había equivocado mil y una arruga exactas tenia aquella nuez de oro con lagrimas en los ojos maría la entrego al duendecillo quien al verla tan afligida ablando su corazón y le dijo quédatela noble muchacha porque no hay nada tan hermoso como ayudar a los demás La nuez de oro'),
(5, 'Como se hizo la lluvia', 'Lectura', 'Lectura corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 77, 'Tanto fue el deseo de la gótica de agua que un día le pidió al sol que le ayudara astro rey ayúdame a elevarme hasta el cielo para conocer mejor el mundo y así lo hizo el sol calentó la gótica con sus rayos hasta que poco a poco se fue convirtiendo en un vapor de agua cuando se quedo como un gas la gótica de agua se elevo al cielo lentamente como se hizo la lluvia'),
(6, 'El leñador honrado', 'Lectura ', 'Lectura corta infantil', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 65, 'Como hare ahora para trabajar y poder dar de comer a mis hijos exclamaba angustiado y preocupado el leñador entonces ante los ojos del pobre hambre apareció desde el fondo del rio una ninfa hermosa y centellante no te lamentes buen hombre traeré devuelta tu hacha en este instante le dijo la criatura mágica al leñador y se sumergió rápidamente en las aguas del rio'),
(7, 'El conejo bermejo', 'Lectura Emocional', 'Lectura emocional corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 85, 'Cuando la señorita doña coneja explicaba cómo se hacia una ficha el conejo Bermejo nunca la escuchaba empezaba a mirar a todas partes y se ponía a hablar con otro conejito que tenia al lado sabéis lo que pasaba que ni bermejo ni el otro compañero se enteraban de como se hacía y luego la ficha la tenían que repetir para hacerla bien mientras los otros conejos ya podían ponerse a jugar eso también le pasaba cuando la seño contaba un cuento El conejo Bermejo'),
(8, 'El día del silencio', 'Lectura emocional', 'Lectura emocional corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 67, 'Así que el día del silencio fue el del gran descubrimiento de Regal y de que había que dar a todos la oportunidad de demostrar lo que valían y para que otros aprendieran la misma lección desde aquel día cada vez que alguien visitaba el pueblo le recibían con gran alegría poniéndole un gran gorro con el que no se podía oír nada El día del Silencio'),
(9, 'La lluvia', 'Poesía', 'Poesía infantil corta.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 63, 'Gota tras gota la lluvia te moja la lluvia se ríe y a veces se enoja la lluvia me canta y me entretiene y gota tras gota se va como viene las ranas le cantan le cantan los grillos que lindos los cantos de bosques y ríos es una gran fiesta que gran sinfonía pero aunque me moje que bonito día La lluvia'),
(10, 'La oveja teresa', 'Poesía ', 'Poesía corta infantil.', '5,6, años ', 'atomLector/1p/velocidad/1p', 1, 0, 70, 'Cuenta que un año la oveja teresa se asusto al oír algo y huyo del rebaño ocurrió que perico el pastor tenia visita aquel día de su nieto Matías fueron los dos a pastar y a las tres del mediodía el abuelo perico quiso que parasen a descansar y en el alto del camino perico conto un secreto a su nieto para que la siesta pudiese tomar la oveja teresa'),
(11, 'Las ranitas y el tronco tallado', 'Fabula', 'Fabula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 69, 'Un cierto día, en que se desato una terrible tormenta el tronco cayo al lago y en ese momento las ranitas pudieron ver con claridad que era solo un tronco tallado que ningún daño podías hacerles.  Se rieron mucho de los temores por los que había pasado y comenzaron a jugar con él y usarlo de trampolín para sus zambullidas en el lago Las ranitas y el tronco tallado'),
(12, 'El Egoísta', 'Fabula', 'Fabula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 71, 'Una vez en el asiento elegido, el hipopótamo abría un periodo abría un periódico amarillento y lo extendía al máximo posible con el fin de tapar la cara y agobiar a su compañero de asiento además y por si esto fuera poco le daba por toser y bostezar con la boca abierta y a un buen volumen con el único fin de molestar y fastidiar a todo el mundo –el egoísta.'),
(13, 'El tigrito que se mordia las uñas', 'Fabula', 'Fabula corta infantil', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 87, 'Llegó la primavera y como siempre el tigrito se fue al bosque para jugar con sus amiguitos esta vez le acompañaban dos de ellos corretearon largo rato de acá para allá de pronto uno de los amigos del tigrito vio que un pájaro se posaban en las ramas de un árbol sin pensarlo dos veces empezó a trepar veloz como el rayo naturalmente nuestro tigrito intento imitar a sus compañeros de juegos pero se encontró con que no tenia uñas. El tigrito que se mordía las uñas'),
(14, 'El patito feo', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 80, 'El pobre patito se sintió muy triste al oír esas palabras y escapo corriendo de allí ante el rechazo de todos a cabo en una ciénega donde conoció a dos gansos silvestres que a pesar de su fealdad quisieron ser sus amigos pero un día aparecieron allí unos cazadores y acabaron repentinamente con ellos  de hecho a punto estuvo el patito de correr la misma suerte de no ser porque los perro lo vieron y decidieron no morderle –Patito feo'),
(15, 'El hada fea', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 75, 'Ilustrísima majestad dijo el hada gobernadora de aquel bosques encantado podéis ver que nuestro bosque encantado es un lugar perfecto donde reina la belleza y la armonía veo que así parece dijo el hada reina veamos a ver si es verdad yo conjuro este lugar para que en el reinen los colores más hermosos si lo que decís es verdad o para que desaparezca el color si realmente hay algo feo aquí –El hada fea'),
(16, 'Competición de las verduras', 'Lectura ', 'Lectura corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 66, 'Tomatito y zanahorio eran la envidia de todas las demás verduras y hortalizas ninguna otra familia de verduras conseguía que los niños se entusiasmasen tanto a la hora de comérselas mirad ahí van tomatitos y zanahorio con sus carretillas repletas de tomates y zanahorias para repartir ojalá los niños me hicieran tanto caso a mí y a mis esparraguitos dijo don esparrago. –Competición de las verduras'),
(17, 'Yito el caballito de mar', 'Lectura Emocional', 'Lectura emocional corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 74, 'Lo demás caballitos de mar lo miraban sorprendidos porque nunca habían contestado asi a su señorita a la que quería mucho. Todos estaban un poco hartos de que se negaran a hacer cosas. Hasta con los caballitos protestaba y desobediencia. Cuando jugaban al pollito ingles u otro juego con normas siempre decía que no lo conocía e incumplía las reglas del juego por eso no quería jugar con el –Yito el caballito de mar.'),
(18, 'Me gusta como soy', 'Lectura Emocional', 'Lectura emocional corta infantil.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 70, 'Allí se empezó a sentir raro todo los chicos lo miraban no solo los de su grado de todas las filas los grandes los chicos y Ezequiel no entendía porque quería que lo tragara la tierra de pronto un chico se acerco y le dijo. Oye porque tienes el pelo así. Ezequiel no contesto no sabía que decir se preguntaba así como lindo como la nieve. –Me gusta como soy'),
(19, 'Mariposa del aire', 'Poesía', 'Poesía infantil corta.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 50, 'Que hermosa eres mariposa del aire dorada y verde luz de candil mariposa del aire quédate ahí ahí ahí no te quieres para pararte no quiere mariposa del aire dorada y verde. Luz de candil mariposa del aire quédate ahí ahí ahí quédate ahí mariposa etas ahí – Mariposa del aire'),
(20, 'Canción de cuna del elefante', 'Poesía', 'Poesía infantil corta.', '6,7 años', 'atomLector/2p/velocidad/2p', 2, 0, 61, 'El elefante lloraba porque no quería dormir duerme elefantito mío que la luna te va a oír papa elefante esta cerca se oye en el manglar su mugir. Duerme elefantito mío que la luna te va a oír. El elefante lloraba y alzaba su trompa al viento parecía que en la luna se limpiaba la nariz –Canción de cuna del elefante'),
(21, 'El leon y el mosquito', 'Fabula', 'Fabula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 119, 'No creas que tu título de rey me inquieta exclamaba el insecto volador desafiante al león, conocido como el rey de la selva. Tras aquellas palabras el mosquito ni corto ni perezoso, empezó a rodear al león volando de un lado a otro subiendo y bajando mientras hacía sonar su larga trompeta. El león rugía enfurecido ante el atrevimiento del mosquito y a pesar de sus intentos por zafarse el mosquito le picaba en el lomo en el hocico y hasta en la nariz hasta que el león se derrumbo en el suelo por el cansancio. Sentíase victorioso el mosquito y alzando de nuevo su trompeta retomo el camino por el que había venido. –El león y el mosquito'),
(22, 'La zorra y el cuervo ', 'Fabula', 'Fabula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Un día se encontraba un cuervo encaramado en la copa de un árbol, degustando un rico trozo de queso bajo el árbol que habitaba el cuervo merodeaba una zorra que había sido atraída por el olorcillo de queso. Buenos días cuervo que bello plumaje viste desde luego si su canto es igual a su plumaje será usted un autentico primor exclamo la zorra dirigiéndose al cuervo con cierto tono irónico. El cuervo que no lo advirtió y no estaba acostumbrado a que le  halagasen por ser pájaro de mal agüero, abrió rápidamente el pico para mostrar a la zorra su magnífico canto dejando caer el rico trozo de queso al suelo. - La zorra y el cuervo.'),
(23, 'La luna y las estrellas', 'Fabula ', 'Fabula corta infantil', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 116, 'Cansada de no ser vista, tres de las estrellas más alejadas de la constelación conocida como Alonso fueron a reprocharle a la luna. Estaba convencida que el satélite natural del bello planeta tierra era quien les impedía ser vistas y admiradas por los humanos así, se plantaron frente a ellas y le dijeron: Cuando decides estar en tu fase de llena absorbes nuestros colores y cuando te da por estar en la de nueva, impides que tu brillo llegue a nosotros. Por culpa de tu indecisión variabilidad y prepotencia no somos amadas por los humanos como otras hermanas y primas nuestras que alegran las noches tristes y solitarias de muchas personas. –La luna y las estrellas'),
(24, 'Simbad el marino', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 117, 'Me llamo Simbad el marino, no creas que mi vida ha sido fácil. Para que lo comprendas te voy a contar mis aventuras. Aunque mi padre me dejo al morir una fortuna considerable, fue tanto lo que derroche que al fin me vi pobre y miserable. Entonces vendí lo poco que me quedaba y me embarque con unos mercaderes, navegamos durante semanas hasta llegar a una isla al bajar a la tierra el suelo tembló de repente y salimos todos proyectados en realidad la isla era una enorme ballena. Como no pude subir hasta el barco me deje arrastrar por las corrientes agarrado a una tabla hasta llegar a una playa plagada de palmeras. –Simbad el marino.'),
(25, 'La gaillinita colorada', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 93, 'Pues entonces dijo la gallinita colorada lo hare yo. Clo-clo, y ella sembró el granito de trigo. Muy pronto el trigo empezó a crecer asomando por encima de la tierra. Sobre el brillo el sol y cayo la lluvia y el trigo siguió creciendo y creciendo hasta que estuvo muy alto y maduro. Quien cortara este trigo pregunto la gallinita yo no, dijo el cerdo. Yo no dijo el gato, yo no dijo el perro, yo no dijo el pavo, pues entonces dijo la gallinita colorada, lo hare yo clo-clo. –La gallinita colorada.'),
(26, 'Dumbo', 'Lectura ', 'Lectura corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 109, 'Que orejas más grandes, si parece que va a echar a volar, bueno basta de chismorreos, cada uno es como es, más vale que os dediquéis a vuestras cosas, a la fuera de aquí, ea mi niño. No hagas caso tesoro que eres el elefante más bonito que existe envidia eso el lo que tienen. El circo siguió su marcha por diversas ciudades y nuestro buen Dumbo que así se llamaba el elefantito, ayudaba según sus fuerzas en los quehaceres del mismo. Un día durante el desfile, Dumbo que iba el último agarrado a la cola de su mama, se piso las orejas y zas cayo dando volteretas. –Dumbo '),
(27, 'La osa Rosa', 'Lectura Emocional', 'Lectura emocional corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 107, 'Había una vez una osa que se llamaba rosa. Tenía los años de los niños y estaba en la clase de, la clase de los niños, la osa rosa iba contenta al colegio, porque tenía amigos en su clase y su señorita osa era muy buena y la quería mucho, pero a la osa rosa, no le gustaba mucho trabajar en la clase, si la señorita daba un dibujo para colorear, ella rápidamente decía. Me canso y aunque la señorita osa le decía, sigue un poquito más la osa rosa no lo terminaba, otro día la señorita dio una ficha del libro para hacer. –La osa rosa'),
(28, 'El dia del silencio', 'Lectura Emocional', 'Lectura emocional corta infantil.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 139, 'Regal no podía por nada. Era un niño normal en todo pero había nacido sordo. Era muy famoso en el pueblo, y todos le trataban con mucho cariño. Pero a la hora de verdad no te tenían muy en cuenta para muchas cosas, los niños pensaban que podría hacerse daño, o que no reaccionaria rápido durante un juego sin oír la pelota y los adultos actuaban como si no fuera capaz de entenderles casi como si hablaran con un bebe. A regal no le gustaba mucho esto, pero mucho menos aun a su amigo Manuel, que un día decidió que aquello tenía que cambiar. Y como Manuel era el hijo del alcalde, convenció a su padre para que aquel año, en honor a regal, dedicaran un dia de las fiestas a quienes no pueden oír. El día del silencio.'),
(29, 'El lagarto está llorando', 'Poesía', 'Poesía infantil corta.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 78, 'El lagarto está llorando, la lagarta está llorando el lagarto y la lagarta con delantalitos blancos, han perdido sin querer su anillo de desposados ay su anillito de plomo, ay su anillito plomado un cielo grande y sin gente monta en su globo a los pájaros, el sol capitán redondo lleva un chaleco de raso, Miradlos que viejo son, que viejo son los lagartos ay como lloran y lloran ay, ay como está llorando. –El lagarto está llorando'),
(30, 'Hasta no poder más', 'Poesía', 'Poesía infantil corta.', '7,8 años', 'atomLector/3p/velocidad/3p', 3, 0, 70, 'Felipe y Carola se querían, hasta no poder mas corrían, saltaban y jugaban a deletrear, hacían figuras de arcillas de arena de papel y tijera, alternaban pares y nones tras sus riñones escribían poemas de amor y leían cuentos de sal y mucho pimiento, la mama de Felipe decía que los niños no saben de amar pero Felipe y Carola se querían hasta no poder mas. –Hasta no poder más'),
(31, 'La ballena feliz', 'Fabula', 'Fabula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 117, 'Todos tenían la voluntad de ayudarla, pero cada vez que intentaban moverla la ballena se asustaba e impedía que pudiesen devolverla al agua y sus movimientos la hacían encallarse más y más en la arena. Al percatarse de esto, la persona consideraron que solía podrían devolverla al agua con la ayuda de helicópteros, los que prontamente acudieron para rescatar y devolver la ballena sally a su hábitat natural. De esta forma en pocos minutos la ballena estaba nuevamente en alta mar y volvió a ser la misma ballena feliz de siempre, salto más alto que nunca e hizo piruetas nunca antes vistas para agradecer y deleitar a todas las personas que la había ayudado. –La ballena feliz'),
(32, 'El gato y su sardina', 'Fabula', 'Fabula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 107, 'Había una vez un gato amante de las sardinas cuya torpeza le imposibilitaba obtener a gusto su preciado alimento, un día al no poder ingerir sardinas en casa decidió ir a la feria de la plaza, donde había varios vendedores que ofertaban el sabroso pescado, calculador el gato se agazapo tras un muro y espero a que un vendedor se descuidase para salar sobre una de las cestas y robar tantas sardinas como pudiera, llegado el momento el felino salto, pero su torpeza hizo que el hombre se percatase enseguida y lo azorase con un palo, permitiéndole coger solo una pequeña sardina. –El gato y su sardina'),
(33, 'Los dos conejos', 'Fabula', 'Fabula corta infantil', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 138, 'La primavera había llegado al campo, el sol brillaba sobre la montaña y derretía las últimas nieves, abajo, en la pradera, los animales recibían con gusto el colorcito propio del cambio de temporada. La brisa tibia y el cielo azul animaron a salir de sus madrigueras a muchos animales que llevaban semanas escondidos por fin el duro invierno había desaparecido, las vacas pacían tranquilas mordisqueando briznas de hierba y las ovejas, en grupo seguían al pastor al ritmo de sus propios balidos. Los pajaritos animaban la jornada con sus cantos y de vez en cuando algún caballo salvaje pasaba galopando por delante de todos, disfrutando de su libertad los más numerosos eran los conejos, cientos de ellos aprovechaban el magnifico día para ir en busca de frutos silvestres y de paso estirar sus entumecidas patas. –Los dos conejos'),
(34, 'La estrella y sus nuevos amigos', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 112, 'La señora zorra el señor búho, el abuelo pájaro carpintero, la señora comadreja y la señora ardilla se acercaron al momento para averiguar qué había pasado, La estrella al despertarse vio que muchos ojos la estaban observando, donde estoy, quienes sois vosotros, dijo extrañada la estrella, somos los amigos del bosque y estas en nuestras casa, contesto la señora comadreja, pero yo no puedo estar aquí debo colgar en el cielo junto a mi mama la luna y mis hermanas las estrellas explico. No te preocupes nosotros te ayudaremos a subir al cielo cantaron todos a la vez pero primero te curaremos añadió la señora zorra. –La estrella y sus nuevos amigos.'),
(35, 'Don quijote', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 128, 'Para don quijote, las hazañas increíbles de los caballeros andantes y gigantes fueron más verdaderas que su propio mundo, él creía que para su honor y el de su país debían ser un caballero andante sin una palabra don quijote de la manca monto su caballo fiel rocinante y salió a vengar todos los actos malos y a proteger a las damas, no obstante primero fue necesario  ser armando como un caballero andante verdadero. El excéntrico don quijote llego hasta una venta aunque él pensó que el ventero y los huéspedes eran señores y señoritas, el ventero acordó amarle como caballero andante y así en una ceremonia breve, fingió a armar don quijote quien salió de aquel lugar feliz de ser un verdadero caballero al fin. –Don quijote'),
(36, 'Santillin', 'Lectura ', 'Lectura corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 116, 'Santillin es un osito muy inteligente, bueno y respetuoso, todos lo quieren mucho y sus amiguitos disfrutan jugando con él porque es muy divertido, le gusta dar largos paseos con su compañero el elefantito. Después de la merienda se reúnen y emprenden una larga caminata charlando y saludando a las mariposas que revolotean coquetas, desplegando sus coloridas alitas, siempre está atento a los juegos de los otros animalitos con mucha paciencia trata de enseñarles que pueden entretenerse sin dañar la plantas, sin pisotear el césped sin destruir lo hermoso que la naturaleza nos regala, un domingo llegaron vecinos nuevos santillin se apresuro a darles la bienvenida y enseguida invito a jugar al puercoespín más pequeño. –santillin '),
(37, 'El cerdito verde', 'Lectura Emocional', 'Lectura emocional corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 131, 'Se percataron que el animalito estaba sollozando y sin dudarlo se acercaron a el y le preguntaron que lo acongojaba, el cerdito con el tono de la esperanza les relato como lo habían exiliado de su hogar por ser diferente y por ello gano la solidaridad en sentimiento de los ciervos que casualmente nunca habían podido tener descendencia y vieron como esa extraña pero agradable  criatura despertaba sus instintos maternal y paternal, por ello propusieron al cerdito que viviese con ellos en el bosque, donde los tres podrían ser muy felices y vivir en familia esa de las que por distintos causas los tres habían sido privados, por supuesto el cerdito acepto gustoso y desde entonces habita en el bosque junto a los viejos y muy bellos ciervos. –El cerdito verde'),
(38, 'La gallinita roja', 'Lectura Emocional', 'Lectura emocional corta infantil.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 132, 'Ya más desilusionada de sus amigos que en el anterior pedido la gallinita roja les contesto pues bien ya me las apañare yo solita, acto seguido fue sin más ayuda que la de sus paticas y alas e invirtió gran cantidad de horas segando y separando luego el grano de la paja, al día siguiente muy extenuada pero contenta por haber obtenido un gran resultado después de un duro trabajo cayó en la cuenta de que ya solo le restaba ir al molino y hacer el delicioso pan que había previsto, aunque estaba molesta por la falta de disposición de sus amigos para hacer algo de los que también podrían beneficiarse pues a todos encantaba el pan de trigo, decidió darles otra oportunidad y acudió a solicitar su ayuda. –La gallinita roja'),
(39, 'Los ratones', 'Poesía', 'Poesía infantil corta.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 71, 'Untáronse los ratones para librarse del gato y después del largo rato de disputas y opiniones dijeron que acertarían en ponerle un cascabel que andando el gato con el librarse mejor podrían, salió un ratón barbicano colilargo, hociquirromo y encrespando el grueso lomo, dijo al senado romano después de hablar culto un rato quien de todos ha de ser el que se atreva a poner ese cascabel al gato. –Los ratones'),
(40, 'Como se dibuja un dibujo', 'Poesía', 'Poesía infantil corta.', '8,9 años', 'atomLector/4p/velocidad/4p', 4, 0, 99, 'Para dibujar un niño hay que hacerlo con cariño pintarle muchos flequillos que este comiendo un barquillo muchas pecas en la cara que se note que es un pillo continuemos el dibujo redonda cara de queso como es un niño de moda bebe jarabe con soda, lleva pantalón vaquero con un hermoso agujero camiseta americana y una gorrita de pana, las botas de futbolista porque chutando es artista, se ríe continuamente porque es muy inteligente debajo del brazo un cuento por eso esta tan contento para dibujar un niño hay que hacerlo con cariño. –Como se dibuja un dibujo'),
(41, 'La leyenda del queso', 'Fabula', 'Fabula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 150, 'Cuenta una antigua leyenda que un día hace cientos de años un pastor tuvo la necesidad de hacer un viaje a través del desierto a lomos de su viejo camello, tenía por delante varias horas de camino así que para no pasar hambre guardo algunos alimentos en un saco y para no pasar sed metió leche recién ordeñada de sus ovejas en un recipientes fabricado con tripa de animal, partió temprano justo antes del amanecer a esa hora todavía hacia fresco pero a media mañana el sol del desierto se volvió abrasador el pastor agobiado por el color pensó que si no bebía un poco se iba a desmayar cogió el recipiente que contenía la leche y cuando fue a tomarla se quedo de piedra debido a las altas temperaturas la leche se había cuajado es decir se había transformado en una pasta blanca muy espesa –La leyenda del queso.'),
(42, 'El lobo con piel de oveja', 'Fabula', 'Fabula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 125, 'Un lobo que estaba cansado de fracasar al intentar cazar las ovejas de un pastos un buen dia tuvo un plan se disfrazo cubriéndose con una piel de oveja y se mezclo con el rebaño para pasar desapercibido tan bueno era su disfraz que al final del día el pasto lo llevo junto con las demás ovejas al corral y allí lo encerró, el lobo estaba feliz finalmente iba a poder comerse a unas cuantas ovejas estaba a punto de llevar a cabo su plan cuando entro el pastor al corral tenía que procurar carne para su familia y venia a escoger una oveja para sacrificar escogió al lobo y los sacrifico al instante sin darse cuenta de nada –El lobo con piel de oveja.'),
(43, 'Las ranas pidiendo rey', 'Fabula', 'Fabula corta infantil', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 111, 'Las ranas vivían en el caos y la anarquía y estaban cansadas de esta situación así que mandaron una delegación para pedirle a Zeus el rey de los dioses que les enviara un rey Zeus atendió su petición les envió un grueso leño a su charca, las ranas e asustaron con el ruido que hizo el leño al caer y se escondieron entre ramas y piedras por fin al darse cuenta de que el leño no se movía fueron saliendo de sus escondites poco a poco dada la quietud que reinaba las ranas comenzaron a despreciar al nuevo rey brincando sobre él y siéntansele encima burlándose continuamente. –Las ranas pidiendo rey'),
(44, 'Mozart', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 115, 'Mozart fue un músico extraordinario que nació en un país europeo llamado Austria hace poco mas de 250 años, desde muy chiquitín demostró un don especial para la música con solo cuatro años ya era capaz de componer como si fuera un músico adulto y tocaba instrumentos tan complicados como el teclado o el violín un autentico niño prodigio, su padre que también era músico se esforzó por enseñarle todo lo que sabía poco tiempo después lo llevo de viaje por Europa para que tocara ante los reyes y gobernantes más importantes de la época todos se quedaron asombrados al comprobar la genialidad del pequeño Mozart y le dedicaron miles de aplausos y alabanzas. -Mozart'),
(45, 'Ricas cerezas', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 129, 'Las cerezas son los pequeños frutos de un árbol llamado cerezo, la mayoría de las cerezas son redonditas, lucen un color rojo intenso tienen la pulpa muy jugosa y esconden un pequeño hueso en su interior su sabor es más o menos dulce según la variedad, las cerezas se recogen en temporada de verano y suelen tomarse al natural con ellas se preparan deliciosas recetas, zumos mermeladas, licores cremas para rellenar tartas también sirven para elaborar una sopa fría que está muy de moda los últimos años el gazpacho de cereza una vez cogidas del árbol se pudren en pocos días una de las formas de disfrutar de las cerezas todo el año es conservándolas en un sirope hecho con agua y azúcar que se llama almíbar. –Ricas cerezas'),
(46, 'El elefante y el raton', 'Lectura ', 'Lectura corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 136, 'Te voy a aplastar con mi enorme pata para que aprendas a no molestarme mientras duermo el ratoncito asustado le suplico llorando, por favor elefante no me pises si me perdonas la vida yo te deberé un favor el elefante soltó una carcajada y le respondió, te soltare solo porque me das lastima pero no para que me debas un favor que podría hacer un insignificante ratón por mi entonces el elefante soltó al ratón sucedió que semanas más tarde mientras el ratoncito jugaba con sus amigos se encontró con el elefante atrapado bajo la redes de un cazador estaba muy débil porque había luchado mucho para liberarse y ya no tenía fuerzas para nada mas el ratoncito se puso a roer las cuerdas y después de un rato logro liberarlo. –El elefante y el ratón'),
(47, 'La casa de la tortuga ', 'Lectura Emocional', 'Lectura emocional corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 105, 'Un trueno rugió en las colinas abriendo paso a los relámpagos primer cayeron gotas y luego se desato la lluvia oh donde estarán mi casa suspiro la tortuga, un trueno rugió en las colinas abriendo el paso a los relámpagos primero cayeron gotas y luego se desato la lluvia oh donde estará la casa de tortuga se preguntaron el caracol el gorrión la mariquita y el ratón, el viento soplo con todas sus fuerzas derribando del caparazón a todos ay chillo la tortuga entonces se escondió dentro de su caparazón este era cálido y acogedor oh esta es mi casa. –La casa de la tortuga'),
(48, 'La maceta vacía', 'Lectura Emocional', 'Lectura emocional corta infantil.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 108, 'Me trajiste una maceta vacía todos comenzaron a reírse del niño de la maceta vacía Cheng bajo la cabeza y dijo con mucha vergüenza, lo siento su majestad intente cultivar la semilla pero no broto nada de ella el emperador se rasco la barbilla y sonrió luego les dijo a todos los presentes, Les presento a Cheng el nuevo emperador de china todas las semillas que les entregue fueron cocinadas para que no pudieran crecer, no sé como el resto de ustedes cultivaron flores pero ellas no crecieron de mis semillas, Cheng es el único que ha sido honesto y por esto merece ser emperador. –La maceta vacía  '),
(49, 'Balada del caracol negro', 'Poesía', 'Poesía infantil corta.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 136, 'Caracoles negros los niños sentados escuchan un cuento el rio traía coronas de viento y una gran serpiente desde un tronco viejo miraba las nubes redondas de cielo niño mío chico donde estas te siento en el corazón y no es verdad, lejos esperas que yo saque tu alma del silencio caracoles grandes caracoles negros partió temprano justo antes del amanecer a esa hora todavía hacia fresco pero a media mañana el sol del desierto se volvió abrasador, el pastor agobiado por el calor pensó que si no bebía un poco se iba a desmayar, cogió el recipiente que contenía la leche y cuando fue a tomarla se quedo de piedra debido a las altas temperaturas la leche se había cuajado es decir se había transformado en una pasta blanca muy espesa. –Balada del caracol negro'),
(50, 'Carnaval', 'Poesía', 'Poesía infantil corta.', '9,10 años', 'atomLector/5p/velocidad/5p', 5, 0, 67, 'Carnestolendas se acercan carnestolendas me traigas con colores para el rostro y alegrías para el alma con maquillaje de plata y mascaras de porcelana blanca con caretas de tez tostada cabezudos y comparsas para ocultar con ellos los malestares del alma carnestolendas se acercan carnestolendas se traiga que viva la felicidad que vivan las mascaradas y que bailen los disfraces antes de que las cenizas salgan. -Carnaval'),
(51, 'El sol y las ranas ', 'Fabula', 'Fabula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 101, 'Piden clemencia solo para ustedes o para todos los seres vivientes del planeta pues para nosotros porque habríamos de preocuparnos por otras especies cada cual que cuide y pida por lo suyo, así les ira replico la voz que desde entonces se desentendió de los pedidos de las ranas por su egoísmo, ciertamente el sol no dejo de brillar pero desde entonces las ranas son animales con muy pocos amigos y todo por el egoísmo de aquellas de una pequeña laguna capaces solo de preocuparse por su bienestar y desentendidas de todos lo que les rodeaba. –El sol y las ranas '),
(52, 'El dueño del cisne', 'Fabula', 'Fabula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 107, 'Sin embargo cuando ya el bello animal se sentía viejo y a punto de partir para otra vida entono el más bello canto que oídos humanos hayan escuchado al escuchar en el más absoluto deleite el hombre comprensión su error y pensó que tonto fui cuando pedí a mi bello animal que cantara en aquel entonces si hubiera conocido lo que el canto anuncia la petición hubiese sido bien distinta de esta forma el hombre y todos lo que le conocían comprendieron que las cosas en la vida incluso las más bellas y anheladas no puede apurarse todos llega en el momento  oportuno –El dueño del cisne'),
(53, 'El venado, el manantial y el león', 'Fabula', 'Fabula corta infantil', '10,11 años ', 'atomLector/6p/velocidad/6p', 6, 0, 138, 'Sin embargo la fuerza de este radica en el corazón y nunca se dio por vencido a pesar de la distancia razón por la que cuando se adentraron en lo matorrales del bosque se vio premiado, en ese escenario la cornamenta le hacía perder velocidad al ciervo pues se enredaba con cuanta rama y arbusto aparecía en el camino, de esa forma la distancia que separaba a ambos animales se fue haciendo cada vez más corta hasta que al final el ciervo quedo atrapado su cornamenta se había enredado con su lienzas ya a punto de morir bajo las garras del león el ciervo comprendió cuan equivocado había estado en el manantial, su principal atributo eran sus delgadas piernas y no la bella cornamenta que al final le costaría la vida. –El venado, el manantial y el león');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`idCuestionario`),
  ADD KEY `cuestionarioatomolector_fk` (`idLectura`);

--
-- Indices de la tabla `itemopcionmultiple`
--
ALTER TABLE `itemopcionmultiple`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `itemOpcionMultiplefk` (`idCuestionario`);

--
-- Indices de la tabla `registropruebacomprension`
--
ALTER TABLE `registropruebacomprension`
  ADD PRIMARY KEY (`idRegistro`);

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
-- AUTO_INCREMENT de la tabla `atomolector`
--
ALTER TABLE `atomolector`
  MODIFY `idLectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `atomolectorvelocidad`
--
ALTER TABLE `atomolectorvelocidad`
  MODIFY `idRegistroVelocidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `idCuestionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `itemopcionmultiple`
--
ALTER TABLE `itemopcionmultiple`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registropruebacomprension`
--
ALTER TABLE `registropruebacomprension`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `velocidadlectora`
--
ALTER TABLE `velocidadlectora`
  MODIFY `idLectura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD CONSTRAINT `cuestionarioatomolector_fk` FOREIGN KEY (`idLectura`) REFERENCES `atomolector` (`idLectura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `itemopcionmultiple`
--
ALTER TABLE `itemopcionmultiple`
  ADD CONSTRAINT `itemOpcionMultiplefk` FOREIGN KEY (`idCuestionario`) REFERENCES `cuestionario` (`idCuestionario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
