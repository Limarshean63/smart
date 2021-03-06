-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2018 a las 21:26:03
-- Versión del servidor: 5.1.30
-- Versión de PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `biblio_t1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carteles`
--

CREATE TABLE IF NOT EXISTS `carteles` (
  `id_cartel` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(25) NOT NULL DEFAULT '''AGENDA''',
  `titulo` text NOT NULL,
  `texto` text,
  `imagen` varchar(128) DEFAULT NULL,
  `plantilla` int(11) DEFAULT '1',
  `v_desde` varchar(20) DEFAULT NULL,
  `v_hasta` varchar(20) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `link` varchar(128) DEFAULT NULL,
  `texto1` text,
  `texto2` text,
  `imagen1` text,
  PRIMARY KEY (`id_cartel`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Volcar la base de datos para la tabla `carteles`
--

INSERT INTO `carteles` (`id_cartel`, `categoria`, `titulo`, `texto`, `imagen`, `plantilla`, `v_desde`, `v_hasta`, `activo`, `link`, `texto1`, `texto2`, `imagen1`) VALUES
(1, 'Portada', 'Entrega de examenes Finales:', 'Sres Tutores: \r\n                     Se les comunica que los examenes finales realizados el sabado 02/06/2018 fueron evaluados y pronto les llegaran las notas por medio del cuaderno de comunicaciones de los alumnos... ', '', 3, '', '', 1, '', '		', '				   		                            Â¡Muchas Gracias!', 'Important.png'),
(3, 'Portada', 'Muestra Educativa', '				   				   Los trabajos realizados durante el ciclo lectivo son expuestos en la escuela .Pueden venir los chicos de todas partes a disfrutar de este evento unico en su tipo.		   		   ', '', 3, '', '', 1, '', '	   ', '', 'MuestraEducativa.jpg'),
(5, 'Portada', 'MUESTRA ESCOLAR', 'MUESTRA EN LA ESCUELA  DE PROYECTOS REALIZADOS PORRANTE EL CICLO LECTIVO', 'Educacion.jpg', 3, '', '', 1, 'https://www.smartinstitutes.com', '', '', 'EjemploTOP.png'),
(6, 'Calendario', 'FIESTA FIN DE CURSO', 'Entrega de dipolmas etc etc', 'ElFlaco.png', 2, '15 de diciembre', '15 de diciembre', 1, '', NULL, NULL, NULL),
(7, 'Eventos', 'Cumple del Flaco', '', 'ElFlaco.png', 0, '03 noviembre', '', 0, '', '', '', ''),
(10, 'Musica', 'Muddy Waters', '				   				   McKinley Morganfield (Rolling Fork, Misisipi, 4 de abril de 1913-Westmont, Illinois, 30 de abril de 1983), más conocido como Muddy Waters, fue un músico de blues estadounidense, generalmente considerado el padre del Chicago blues. Su figura y su sonido fueron, del mismo modo, una de las máximas inspiraciones para la escena del blues británico, que comenzó a despuntar en el Reino Unido hacia principios de la década de 1960.\r\n\r\nMuddy Waters ha sido ubicado en el puesto # 17 de la lista de los más grandes artistas de todos los tiempos realizado por la revista Rolling Stone.		   		   ', '250px-Muddy_Waters_(blues_musician)-cropped.jpg', 0, '4 de abril de 1913', '30 de abril de 1983', 1, '', '				   				   		   		   ', '				   				   		   		   ', ''),
(11, 'Humor', 'Mafalda', 'El dibujante argentino Joaquín Salvador Lavado, Quino, es mucho más que el padre de Mafalda. Es el rey del humor inteligente que pellizca, tratado desde la ternura, el respecto y la sensibilidad social. Lleva 54 años analizando el mundo, denunciando las injusticias, criticando a los poderosos y sus estructuras, apoyando a los desvalidos y siendo el cronista de una evolución histórica cuyo futuro no considera que sea muy prometedor, tal y como declara en una entrevista a Público.   		   ', 'tiramafalda.jpg', 3, '', '', 1, 'http://blogs.publico.es/comics/568/el-genial-quino/', '', '', ''),
(12, 'Humor', 'Patoruzito', 'Pamperito: Es el flete o el pingo de Patoruzito, es muy fiel a él y puede sentir su presencia. Cuando escucha su voz se pone muy alegre y siempre va corriendo a él. Es tan valiente como su amo.\r\nPatoruzito: ', 'personajesdepatoruzito.jpg', 0, '  ', '  ', 1, '', 'Protagonista de esta historieta es el más valiente, fiel a sus convicciones y siempre del lado de la ley. Está dispuesto a ayudar a encerrar en la cárcel a los bandidos, suele hacer muchas donaciones, generalmente al asilo de ancianos.\r\nIsidorito: Otro de los protagonistas de esta revista, aunque no esté en todas. Su presencia siempre nos hace reir, es divertido, miedoso y le gusta hacerse el vivo y siempre salir ganando. Siempre en las situaciones de riesgo quiere convencer al indio para volverse y hacer de cuenta como que no pasó nada.\r\nCoronel Cañones: Es el tío de Isidorito, es muy estricto y al igual que Patoruzito siempre está al lado de la ley. Siempre trata de enderezar a Iisidorito.\r\nChupamiel: Es el nieto de Chiquizuel, en una revista mencionaba que si Patoruzito no pasaba las pruebas para ser cacique, él sería el cacique ya que así *lo indicaban las reglas de la tribu*. Le gusta mucho comer miel, siempre se lo ve con un pote de miel en la mano.\r\nChiquizuel: Abuelo de Chupamiel, es el más anciano y el brujo de la tribu. Patoruzito le prohibió la entrada a sus tierras, pero muchas veces está presente para hacer de las suyas y aprovecha que su sobrino si puede ir, entonces va de incógnito.\r\nÑancul: Trabaja para Patoruzito, aunque ya son como amigos porque siempre está a su lado y lo aprecia mucho.\r\nChacha: Es la nodriza de Patoruzito, cuando él nació Patoruzek le encargó a Chacha que ayudará en el cuidado del niño. Hace unas empanadas realmente deliciosas, y está soltera aunque en una edición se encontraba enamorada del dueño de una hacienda vecina.', '', ''),
(13, 'Otros', 'Pruebita', '				   				   				   				   		 texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto		   		   		   		   ', 'cuerpo.jpg', 3, 'TODAS LAS VOCES', '...TODAS', 1, '', '				   Otro Texto * Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *Otro Texto *    		   		   ', 'MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto * MAs Texto *    ', 'header.png'),
(14, '', 'Repuestos para el mecanico', '				   				   Los mas variados repuestos para autos-motos-camiones   		   ', '123.png', 2, '', '', 1, 'http://mercadolibre.com', '				   				   		   Bombas de agua - correas - alternadores		   ', '				   				   		   		   ', ''),
(15, 'Musica', 'Luis Salinas', '¡El es de otro mundo!', 'salinas_2.jpg', 0, '', '', 1, '', 'Su carrera internacional comenzó  grabando un disco en Suecia,  luego dos en EE.UU. para el sello GRP con la  producción de Tommy Li Puma y Ricky Peterson (Productor de Al Jarreau, George  Benson, Miles Davis, entre otros).\r\nSu carrera artística y discográfica se  ha ido consolidando en los principales escenarios del mundo: el UMEA en Suecia,  el Montreux Jazz Festival en Suiza, Festival Patrimonio de Córcega en Francia,  Palabra de Guitarra Latina – Gira por España y Portugal; también se presentó  con su propuesta en Milán, Italia, entre  otros importantes escenarios y festivales.', '				   				   				   				Chucho Valdez  dice  Luis fue invitado a Centroamérica por el gran Chucho Valdez y tocó frente  a una audiencia de 30.000 personas en La Habana, Cuba.\r\nsobre Luis: Dudo que pueda haber dos guitarristas en el mundo que puedan  tocar y conocer tan bien la guitarra como Luis Salinas. ¡El es de otro mundo!		   	   				   				   				   		   		   		   		   		   		   		   ', 'salinas_1.jpg'),
(17, 'Musica', 'Jimi» Hendrix ', 'James Marshall «Jimi» Hendrix (nacido Johnny Allen Hendrix ) fue un guitarrista, cantante y compositor estadounidense. A pesar de que su carrera solo duró cuatro años, es considerado uno de los guitarristas más influyentes de la historia del rock y uno de los músicos más famosos del siglo XX. El Salón de la Fama del Rock and Roll le describe como «indiscutiblemente el músico más grande de la historia del rock».1', 'Jimi_Hendrix_1967.png', 3, '27 de noviembre de 1', '18 de septiembre de ', 1, '', 'James Marshall «Jimi» Hendrix (nacido Johnny Allen Hendrix ) fue un guitarrista, cantante y compositor estadounidense. A pesar de que su carrera solo duró cuatro años, es considerado uno de los guitarristas más influyentes de la historia del rock y uno de los músicos más famosos del siglo XX. El Salón de la Fama del Rock and Roll le describe como «indiscutiblemente el músico más grande de la historia del rock».1', 'James Marshall «Jimi» Hendrix (nacido Johnny Allen Hendrix ) fue un guitarrista, cantante y compositor estadounidense. A pesar de que su carrera solo duró cuatro años, es considerado uno de los guitarristas más influyentes de la historia del rock y uno de los músicos más famosos del siglo XX. El Salón de la Fama del Rock and Roll le describe como «indiscutiblemente el músico más grande de la historia del rock».1', ''),
(19, 'Deportes', 'Copa Libertadores', '		   ', 'cuerpo.jpg', 0, '', '', 1, '', '		   ', '		   ', 'header.png'),
(20, 'Deportes', 'COPA ARGENTINA', '	PARTICIPAN TODAS LAS CAtegorias de la afa	   ', '', 2, 'SEMIFIANL ATL TUCUMA', 'LANUS', 1, 'http://www.afa.com', '		   ', '		   ', 'cumple.png'),
(22, 'Portada', 'Inscripciones Abiertas 2018', 'Sres. Tutores: \r\n                       Se les informa que a partir de hoy Lunes 21/05/2018 estarÃ¡n abiertas las inscripciones de todos aquellos que deseen aprender en nuestras instalaciones o vÃ­a online ', '', 3, '', '', 1, 'https://www.smartinstitutes.com', '		   ', '		   ', 'Inscript.jpg'),
(23, 'Portada', 'Ya se me estan acabando las ideas nene', 'Auto\r\n', 'autos.jpg', 3, '', '', 1, '', '', '		   ', ''),
(24, 'Portada', 'srwhj4et5wujw462u4i2uh', '3umn536n53 bv57g5u5454gregokehq vgvuioerhviohe0oihgvio23hi0 gh03i4yhgb0i3i0hbv0i3h4ibh304ibjoefh0ibh3i0 rnbonrjh0ibhhjs kohb0ivhwri0hi0bg 0irwehbi0hwri0b h0iehwr0ihbi0 rhwi0hb09iehwi0bh i0erhb0iheri0bhi0er hbihr		   ', 'header.png', 3, '', '', 1, '', '3umn536n53bv57g5u54 54gre gokehqvgvuioerh viohe0oihgvio23hi0g h03i4yhgb0i3i 0hbv0i3h4ibh304ibjoefh0 ibh3i0rnbonrjh0ibhh jskohb0ivhwri0hi0bg0irw ehbi0hwri0 bh0iehwr0ihbi0rh wi0hb09iehwi0bhi0er hb0iheri0bhi0erhbihr		   ', '3umn53 6n53bv57g5u54 54gregokehqv gvuioerhvi ohe0oihgvio23hi0g h03i4yhgb0i3i0hbv0 i3h4ibh304ibjoefh0i bh3i0rnbonrjh0ibhhjskohb0i vhwri0hi0bg0irwehb i0hwri0bh0iehwr0ih bi0rhwi0hb09iehwi 0bhi0erhb0iheri0bhi0erhbihr		   ', 'header.png'),
(25, 'Portada', 'HOOLA!! COMO ESTAN??', '	Bienvenidos a la pagina web de Nuestro instituto,espero que les guste y que nos pongan un 10 [Mensaje subliminal XD] Y ahora algo random:	   ', 'descarga.jpg', 3, '', '', 1, '', '		   ', '		   ', 'Hola.png'),
(26, 'Logo', '', '		   ', 'autos.jpg', 0, '', '', 1, '', '		   ', '		   ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Volcar la base de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES
(1, 'cm', 'hola', '2017-09-15 19:11:01'),
(2, 'cm', 'to bien ??\r\n', '2017-09-15 21:22:43'),
(3, 'cm', 'No entiendo\r\n', '2017-10-20 10:26:33'),
(4, 'lp', 'hola bb', '2018-04-19 18:14:52'),
(5, 'cm', 'comoestas?\r\n', '2018-04-19 18:19:20'),
(6, 'Lucas', 'sdasdadsfsdfs', '2018-04-19 18:59:06'),
(7, 'ls', '8wbs88\r\n1321', '2018-04-26 21:00:44'),
(8, '', '1231113131\r\n', '2018-04-26 21:06:09'),
(9, 'ls', 'Hola Mundo!!!\r\n', '2018-04-26 21:13:26'),
(10, 'ls', 'Hola Mundo!!!\r\n', '2018-04-26 21:24:48'),
(11, 'ls', '', '2018-04-26 21:24:54'),
(12, 'ls', '', '2018-04-26 21:24:54'),
(13, 'ls', '', '2018-04-26 21:24:54'),
(14, 'ls', '', '2018-04-26 21:24:55'),
(15, 'ls', '', '2018-04-26 21:24:55'),
(16, 'ls', '', '2018-04-26 21:26:07'),
(17, 'ls', 'hola', '2018-04-26 21:26:24'),
(18, 'ls', 'hola', '2018-04-26 21:26:39'),
(19, 'ls', 'hola', '2018-04-26 21:27:37'),
(20, 'ls', 'hola', '2018-04-26 21:27:53'),
(21, 'ls', 'hola', '2018-04-26 21:28:10'),
(22, 'ls', 'hola', '2018-04-26 21:30:50'),
(23, '', 'lkhdh\r\n', '2018-05-02 13:35:56'),
(24, '', 'hola como estas?\r\n', '2018-05-02 13:36:21'),
(25, '', 'Hola,Â¿CÃ³mo estas?', '2018-05-02 13:36:35'),
(26, 'fs', 'sadasd', '2018-08-23 19:29:36'),
(27, 'fs', 'asdasd', '2018-08-23 19:29:38'),
(28, 'fs', 'd', '2018-08-23 19:31:25'),
(29, 'fs', 'f', '2018-08-23 19:31:27'),
(30, 'fs', 'f', '2018-08-23 19:31:43'),
(31, 'fs', 'f', '2018-08-23 19:31:46'),
(32, 'fs', 'dgh', '2018-08-23 19:31:48'),
(33, 'fs', 'dgh', '2018-08-23 19:32:35'),
(34, 'fs', '', '2018-08-23 19:32:43'),
(35, 'fs', '', '2018-08-23 19:33:57'),
(36, 'fs', '', '2018-08-23 19:33:59'),
(37, 'fs', '', '2018-08-23 19:38:22'),
(38, 'fs', 'wqe', '2018-08-23 19:41:46'),
(39, 'fs', 's', '2018-08-23 19:42:42'),
(40, 'fs', 's', '2018-08-23 19:42:43'),
(41, 'fs', 's', '2018-08-23 19:42:44'),
(42, 'fs', 's', '2018-08-23 19:42:45'),
(43, 'fs', 'asd', '2018-08-23 19:42:52'),
(44, 'fs', 'asdsa', '2018-08-23 19:48:31'),
(45, 'fs', '', '2018-08-23 19:48:37'),
(46, 'fs', '', '2018-08-23 19:49:26'),
(47, 'fs', '', '2018-08-23 19:49:35'),
(48, 'fs', '', '2018-08-23 19:49:54'),
(49, 'fs', '', '2018-08-23 19:50:13'),
(50, 'fs', '', '2018-08-23 19:50:46'),
(51, 'fs', '', '2018-08-23 19:51:24'),
(52, 'fs', '', '2018-08-23 19:51:46'),
(53, 'fs', '', '2018-08-23 19:51:59'),
(54, 'fs', '', '2018-08-23 19:53:16'),
(55, 'fs', '', '2018-09-06 18:38:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicados`
--

CREATE TABLE IF NOT EXISTS `comunicados` (
  `id_comunicado` int(100) NOT NULL AUTO_INCREMENT,
  `emisor` text NOT NULL,
  `reseptor` text NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_comunicado`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `comunicados`
--

INSERT INTO `comunicados` (`id_comunicado`, `emisor`, `reseptor`, `titulo`, `texto`, `fecha`, `activo`) VALUES
(9, 'administrador', 'Docente', 'Inscripciones Abiertas', 'Estan abiertas las inscripciones		   ', '2018-09-06', 1),
(10, 'administrador', 'Docente', 'Funcionaaaaaaaaaaaaaaa', '		   ', '2018-09-06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `codigo` int(2) NOT NULL,
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcar la base de datos para la tabla `estados`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `matricula` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `carrera` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `user` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '''''',
  `passwd` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '''''',
  `rol` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '''''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=154 ;

--
-- Volcar la base de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`, `apellido`, `sexo`, `matricula`, `carrera`, `email`, `user`, `passwd`, `rol`) VALUES
(1, 'Julio Jose', 'Lopez', 'Masculino', '8976456', 'Multimedia', '', '', '', ''''''),
(4, 'luis', 'Perconti', 'Masculino', '11951164', 'Software', '', '', '', ''''''),
(6, 'Pedro Andres', 'Guerra', 'Femenino', '', 'Software', '', '', '', ''''''),
(22, 'Jose Segundo', 'AguanteMiguel', 'Masculino', '11111111', 'Mecatronica', '', '', '', ''''''),
(38, 'Nestor', 'Esposito', 'Masculino', '26123432', 'Multimedia', '', '', '', ''''''),
(39, 'Jorge', 'Alperin', 'Masculino', '21324432', 'Redes', '', '', '', ''''''),
(40, 'B. B.', 'King', 'Masculino', '2000211', 'Software', '', '', '', ''''''),
(50, 'Fredy', 'King', 'Masculino', '2000876', 'Mecatronica', '', '', '', ''''''),
(61, 'albert', 'King', 'Masculino', '2132890', 'Software', '', '', '', ''''''),
(66, 'Florencia', 'Galvan', 'Femenino', '', 'Software', '', '', '', ''''''),
(67, 'Nat', 'King Cole', 'Femenino', '2000876', 'Software', '', '', '', ''''''),
(68, 'Milo', 'Perconti', 'Masculino', '', 'Software', '', '', '', ''''''),
(69, 'Lucia', 'gutierre', 'Femenino', '3232323245', 'Redes', '', '', '', ''''''),
(77, 'Rosa Isabel', 'Correa', 'Femenino', '14323434', 'Software', '', '', '', ''''''),
(83, 'Alfredo', 'Malvicini', 'Masculino', '14398969', 'Software', '', '', '', ''''''),
(85, 'Fabian', 'Malvicini', 'Masculino', '14398969', 'Software', '', '', '', ''''''),
(100, 'Claudia', 'Malvicini', 'Femenino', '14398969', 'Software', '', '', '', ''''''),
(109, 'Sergio Fabian', 'Malvicini', 'Masculino', '18342588', 'Mecatronica', '', '', '', ''''''),
(110, 'Sofia', 'Malvicini', 'Femenino', '37453766', 'Mecatronica', '', '', '', ''''''),
(111, 'Alejo Fabian', 'Malvicini', 'Masculino', '39877678', 'Redes', '', '', '', ''''''),
(112, 'Agustin Sergio', 'Malvicini', 'Masculino', '44398969', 'Mecatronica', '', '', '', ''''''),
(113, 'Pepe', 'King', 'Masculino', '24355231', 'Mecatronica', '', '', '', ''''''),
(114, 'Ñata', 'King', 'Femenino', '24355231', 'Redes', '', '', '', ''''''),
(115, 'Lucile', 'King', 'Femenino', '24355231', 'Mecatronica', '', '', '', ''''''),
(116, 'Lucia Soledad', 'Malvicini', 'Femenino', '42322433', 'Mecatronica', '', '', '', ''''''),
(119, 'Hetito Julio', 'Marucci', 'Masculino', '12453432', 'Mecatronica', '', '', '', ''''''),
(123, 'Karina', 'Guerra', 'Femenino', '2234456', 'Software', '', '', '', ''''''),
(125, 'Patricia Maria', 'Guerra', 'Femenino', '23432234', 'Software', '', '', '', ''''''),
(126, 'Maria Jose', 'Marucci', 'Femenino', '123432345', 'Mecatronica', '', '', '', ''''''),
(127, 'Pancho', 'Gutierrez', 'Masculino', '32456765', 'Multimedia', '', '', '', ''''''),
(129, 'Ivancito', 'Marucci', 'Masculino', '33467865', 'Mecatronica', '', '', '', ''''''),
(132, 'Marieta', 'Marucci', 'Femenino', '', 'Software', '', '', '', ''''''),
(133, 'Masimo Hetor', 'Marucci', 'Masculino', '45654432', 'Software', '', '', '', ''''''),
(134, 'Silvio', 'Gomez', 'Femenino', '', 'Software', '', '', '', ''''''),
(135, 'Mario', ' Etchegoyen', 'Masculino', '23456777', 'Software', '', '', '', ''''''),
(136, 'Ignacio', ' Etchegoyen', 'Masculino', '23456789', 'Software', '', '', '', ''''''),
(137, 'German', 'Perconti', 'Masculino', '', 'Software', '', '', '', ''''''),
(139, 'Bebu', 'Gomez', 'Femenino', '', 'Multimedia', '', '', '', ''''''),
(140, 'Juje', 'Gomez', 'Femenino', '', 'Multimedia', '', '', '', ''''''),
(141, 'Caro', 'Gomez', 'Femenino', '', 'Multimedia', '', '', '', ''''''),
(142, 'Fran', 'Gomez', 'Masculino', '', 'Software', '', '', '', ''''''),
(143, 'Pini', 'Perconti de Gomez', 'Femenino', '31211213', 'Software', '', '', '', ''''''),
(144, 'Luis Alberto', 'Spinetta', 'Masculino', 'IDOLO', 'Software', '', '', '', ''''''),
(145, 'Mariana', 'de Marucci', 'Femenino', '', 'Software', '', '', '', ''''''),
(146, 'Hermann', 'Hesse', 'Masculino', '1000000', 'Software', '', '', '', ''''''),
(147, 'Horacio', 'Fontova', 'Masculino', '', 'Mecatronica', '', '', '', ''''''),
(150, 'Santiago', 'Maldonado', 'Masculino', '12121212', 'Redes', '', '''''', '''''', ''''''),
(152, 'Fernando', 'Perconti', 'Masculino', '32323232', 'Multimedia', '', '''''', '''''', ''''''),
(153, 'Ramona *Monchi*', 'Perconti', 'Femenino', '33', 'Mecatronica', '', '''''', '''''', '''''');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_d`
--

CREATE TABLE IF NOT EXISTS `libros_d` (
  `id_libro` int(11) NOT NULL AUTO_INCREMENT,
  `Autor` varchar(64) NOT NULL,
  `Titulo` varchar(128) NOT NULL,
  `edicion` varchar(32) NOT NULL,
  `año` varchar(32) NOT NULL,
  `origen` varchar(32) NOT NULL,
  `Area` varchar(32) NOT NULL,
  `Materia` varchar(32) NOT NULL,
  `Comentario` varchar(128) NOT NULL,
  `Archivo` varchar(128) NOT NULL,
  `tipo` varchar(32) NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `libros_d`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_user`
--

CREATE TABLE IF NOT EXISTS `log_user` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` smallint(6) unsigned NOT NULL,
  `fecha` date NOT NULL DEFAULT '2000-01-01',
  `hora` time NOT NULL DEFAULT '00:00:00',
  `ip` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=107 ;

--
-- Volcar la base de datos para la tabla `log_user`
--

INSERT INTO `log_user` (`id_log`, `id_usuario`, `fecha`, `hora`, `ip`) VALUES
(1, 1, '2015-05-16', '21:18:00', ''),
(2, 1, '2015-05-16', '21:52:00', ''),
(3, 1, '2015-05-16', '21:57:00', ''),
(4, 1, '2015-05-16', '21:58:00', ''),
(5, 1, '2017-05-16', '11:03:00', ''),
(6, 1, '2017-05-16', '19:14:00', ''),
(7, 1, '2017-05-16', '20:32:00', ''),
(8, 1, '2017-05-16', '20:39:00', ''),
(9, 1, '2017-05-16', '20:41:00', ''),
(10, 1, '2017-05-16', '21:04:00', ''),
(11, 1, '2017-05-16', '21:10:00', ''),
(12, 1, '2017-05-16', '21:28:00', ''),
(13, 1, '2017-05-16', '21:29:00', ''),
(14, 1, '2017-05-16', '21:32:00', ''),
(15, 1, '2018-05-16', '19:10:00', ''),
(16, 1, '2018-05-16', '19:27:00', ''),
(17, 1, '2018-05-16', '19:28:00', ''),
(18, 1, '2018-05-16', '20:16:00', ''),
(19, 1, '2019-05-16', '18:47:00', ''),
(20, 1, '2019-05-16', '19:16:00', ''),
(21, 1, '2019-05-16', '19:23:00', ''),
(22, 1, '2019-05-16', '20:00:00', ''),
(23, 1, '2019-05-16', '20:48:00', ''),
(24, 1, '2019-05-16', '20:52:00', ''),
(25, 3, '2019-05-16', '21:02:00', ''),
(26, 1, '2019-05-16', '21:12:00', ''),
(27, 1, '2019-05-16', '21:14:00', ''),
(28, 1, '2021-05-16', '11:55:00', ''),
(29, 1, '2021-05-16', '14:47:00', ''),
(30, 1, '2021-05-16', '15:29:00', ''),
(31, 5, '2021-05-16', '15:41:00', ''),
(32, 1, '2026-05-16', '18:20:00', ''),
(33, 1, '2026-05-16', '19:55:00', ''),
(34, 2, '2026-05-16', '19:56:00', ''),
(35, 1, '2026-05-16', '19:56:00', ''),
(36, 5, '2026-05-16', '19:56:00', ''),
(37, 2, '2026-05-16', '21:05:00', ''),
(38, 2, '2026-05-16', '21:06:00', ''),
(39, 1, '2002-06-16', '14:17:00', ''),
(40, 1, '2002-06-16', '19:31:00', ''),
(41, 1, '2002-06-16', '19:33:00', ''),
(42, 2, '2002-06-16', '19:35:00', ''),
(43, 2, '2002-06-16', '19:38:00', ''),
(44, 2, '2002-06-16', '20:45:00', ''),
(45, 6, '2002-06-16', '20:57:00', ''),
(46, 2, '2002-06-16', '20:57:00', ''),
(47, 1, '2003-06-16', '14:14:00', ''),
(48, 1, '2003-06-16', '14:18:00', ''),
(49, 1, '2003-06-16', '14:20:00', ''),
(50, 1, '2007-06-16', '21:07:00', ''),
(51, 1, '2016-06-16', '18:07:00', ''),
(52, 2, '2016-06-16', '18:08:00', ''),
(53, 2, '2016-06-16', '18:30:00', ''),
(54, 2, '2016-06-16', '18:48:00', ''),
(55, 2, '2016-06-16', '19:26:00', ''),
(56, 4, '2016-06-16', '20:27:00', ''),
(57, 4, '2016-06-16', '20:28:00', ''),
(58, 4, '2016-06-16', '20:29:00', ''),
(59, 4, '2023-06-16', '17:59:00', ''),
(60, 4, '2030-06-16', '19:34:00', ''),
(61, 1, '2030-06-16', '20:12:00', ''),
(62, 4, '2030-06-16', '20:12:00', ''),
(63, 1, '2030-06-16', '20:13:00', ''),
(64, 4, '2007-07-16', '18:17:00', ''),
(65, 1, '2007-07-16', '18:18:00', ''),
(66, 1, '2007-07-16', '18:19:00', ''),
(67, 4, '2007-07-16', '19:30:00', ''),
(68, 1, '2007-07-16', '19:32:00', ''),
(69, 4, '2007-07-16', '19:34:00', ''),
(70, 1, '2007-07-16', '19:35:00', ''),
(71, 4, '2014-07-16', '18:35:00', ''),
(72, 1, '2014-07-16', '19:05:00', ''),
(73, 4, '2014-07-16', '19:35:00', ''),
(74, 4, '2014-07-16', '21:16:00', ''),
(75, 1, '2018-08-16', '18:01:00', ''),
(76, 4, '2018-08-16', '18:55:00', ''),
(77, 4, '2018-08-16', '19:00:00', ''),
(78, 1, '2018-08-16', '19:21:00', ''),
(79, 4, '2018-08-16', '19:22:00', ''),
(80, 4, '2018-08-16', '20:00:00', ''),
(81, 4, '2025-08-16', '18:44:00', ''),
(82, 4, '2025-08-16', '19:31:00', ''),
(83, 4, '2025-08-16', '19:35:00', ''),
(84, 4, '2025-08-16', '19:38:00', ''),
(85, 4, '2025-08-16', '19:58:00', ''),
(86, 4, '2025-08-16', '20:01:00', ''),
(87, 4, '2025-08-16', '20:35:00', ''),
(88, 4, '2025-08-16', '20:43:00', ''),
(89, 4, '2001-09-16', '20:19:00', ''),
(90, 4, '2008-09-16', '18:14:00', ''),
(91, 4, '2008-09-16', '18:15:00', ''),
(92, 4, '2015-09-16', '18:30:00', ''),
(93, 4, '2015-09-16', '19:24:00', ''),
(94, 4, '2015-09-16', '20:25:00', ''),
(95, 4, '2019-09-16', '16:12:00', ''),
(96, 4, '2028-09-16', '16:45:00', ''),
(97, 4, '2028-09-16', '17:06:00', ''),
(98, 4, '2013-10-16', '10:01:00', ''),
(99, 1, '2020-10-16', '12:35:00', ''),
(100, 4, '2027-10-16', '16:47:00', ''),
(101, 4, '2027-10-16', '21:05:00', ''),
(102, 4, '2003-11-16', '20:07:00', ''),
(103, 4, '2023-03-17', '19:51:00', ''),
(104, 4, '2030-03-17', '16:32:00', ''),
(105, 4, '2009-04-17', '19:51:00', ''),
(106, 1, '2028-04-17', '21:03:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `dni` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `carrera` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `user` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `passwd` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=164 ;

--
-- Volcar la base de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `sexo`, `dni`, `carrera`, `telefono`, `email`, `user`, `passwd`, `rol`) VALUES
(152, 'Milo', 'Perconti Gutierrez', 'Masculino', '45454545', 'Mecatronica', '42564177', 'milo@milo', 'pm', '81dc9bdb52d04dc20036dbd8313ed055', 'Docente'),
(153, 'Lucas', 'Spandre', 'Masculino', '42427583', 'First Certificated E', '1141751842', 'spandrelucas@hotmail.com', 'sl', '81dc9bdb52d04dc20036dbd8313ed055', 'Estudiante'),
(155, 'Francisco', 'Figueroa', 'Masculino', '', 'Software', '', '', 'ff', '81dc9bdb52d04dc20036dbd8313ed055', 'Estudiante'),
(159, 'Santiago ', 'Faverio', 'Masculino', '', 'Software', '', 'spandrejorge@yahoo.com.ar', 'fs', '81dc9bdb52d04dc20036dbd8313ed055', 'administrador'),
(160, 'Cintia', 'Gonzalez', 'Femenino', '', 'Software', '', '', 'gc', '81dc9bdb52d04dc20036dbd8313ed055', 'Estudiante'),
(161, 'Walter', 'Paz', 'Masculino', '23165487', '6to AÃ±o', '1122334455', 'ajfbabf@vjadbvb.com', 'pw', '81dc9bdb52d04dc20036dbd8313ed055', 'Preceptor'),
(162, 'Jorge', 'Spandre', 'Masculino', '20415413', '', '1159785697', 'spandrejorge@yahoo.com.ar', 'sj', '81dc9bdb52d04dc20036dbd8313ed055', 'Padre'),
(163, '', '', '', NULL, NULL, NULL, 'dylan@hotmail.com', 'dj', '81dc9bdb52d04dc20036dbd8313ed055', 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Puede :',
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`, `descripcion`) VALUES
(1, 'Administrador General', 'Puede : Hacer Todo'),
(2, 'Supervisor Proyecto', 'Adminstra un proyecto determin'),
(3, 'Programador Senior', 'Realiza tareas de desarollo'),
(4, 'Docente', 'Supervisa un proyecto de su materia\r\nuno y solo uno'),
(5, 'Directivo', 'Puede ver informes y generar tickets para este proyecto');
