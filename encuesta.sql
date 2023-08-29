-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2023 a las 01:47:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pregunta` varchar(150) NOT NULL,
  `estatus` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `estatus`) VALUES
(1, '¿Programas o conoces HTML5?', 1),
(2, '¿Programas o conoces CSS3?', 1),
(3, '¿Te gusta desarrollar web?', 1),
(4, '¿Te gusta la programacion?', 1),
(5, '¿Conoces el lenguaje de programación Flutter?', 1),
(6, '¿Tienes conocimiento en JavaScript?', 1),
(7, '¿Concoces NodeJS?', 1),
(8, '¿Te gusta la programación PHP?', 1),
(9, '¿Conoces Laravel?', 1),
(10, '¿Te gustaría aprender desarrollar aplicaciones móviles?', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_encuesta`
--

CREATE TABLE `respuestas_encuesta` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pregunta` int(2) NOT NULL,
  `respuesta` varchar(10) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `observacion` text NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas_encuesta`
--

INSERT INTO `respuestas_encuesta` (`id`, `id_pregunta`, `respuesta`, `codigo`, `observacion`, `created`) VALUES
(256, 6, 'NO', '1448065159', 'No hay observación', '2022-11-06 10:49:03'),
(261, 1, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(262, 2, 'NO', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(263, 3, 'NO', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(264, 4, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(265, 5, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(266, 6, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(267, 7, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(268, 8, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(269, 9, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(270, 10, 'SI', '69881400', 'Tomar en cuenta otros lenguajes', '2023-08-28 19:03:05'),
(271, 1, 'SI', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(272, 2, 'NO', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(273, 3, 'SI', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(274, 4, 'SI', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(275, 5, 'SI', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(276, 6, 'SI', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(277, 7, 'NO', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(278, 8, 'NO', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(279, 9, 'NO', '275908110', 'No hay observación', '2023-08-28 19:35:17'),
(280, 10, 'NO', '275908110', 'No hay observación', '2023-08-28 19:35:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_encuesta`
--
ALTER TABLE `respuestas_encuesta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `respuestas_encuesta`
--
ALTER TABLE `respuestas_encuesta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
