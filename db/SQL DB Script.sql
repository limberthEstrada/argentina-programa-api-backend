-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2023 a las 04:39:49
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre_curso` varchar(200) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre_curso`, `id_persona`) VALUES
(1, 'Full stack Node.js - Digital House', 1),
(2, 'Full stack Python - CodoACodo', 1),
(3, 'Diseño UI/UX - EducacionIT', 1),
(4, 'TestingQA Manual - CocaCola', 1),
(5, 'Marketing Digital - Junior Achievement', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_aux_portfolio`
--

CREATE TABLE `imagen_aux_portfolio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagen_aux_portfolio`
--

INSERT INTO `imagen_aux_portfolio` (`id`, `nombre`) VALUES
(1, 'github.logo.png'),
(2, 'linkedin-logo.png'),
(3, 'mail-logo.png'),
(4, 'node.png'),
(5, 'csharp.png'),
(6, 'react.png'),
(7, 'bootstrap.png'),
(8, 'html.png'),
(9, 'css.png'),
(10, 'js.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_proyecto`
--

CREATE TABLE `imagen_proyecto` (
  `id` int(11) NOT NULL,
  `nombre_imagen` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagen_proyecto`
--

INSERT INTO `imagen_proyecto` (`id`, `nombre_imagen`, `fecha`, `id_proyecto`) VALUES
(1, 'vicath.png', '2022-12-11', 1),
(2, 'petsius.png', '2022-12-11', 2),
(3, 'meli.png', '2022-12-11', 3),
(4, 'port.png', '2022-12-11', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `especialidad` varchar(200) NOT NULL,
  `presentacion` text NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `especialidad`, `presentacion`, `imagen`, `telefono`) VALUES
(1, 'Limberth Estrada', 'Desarrollador Web Full Stack', 'Actualmente soy estudiante de Ingenieria en Sistemas en la UTN. Mi pasión por la programación web fue iluminandose gracias a que soy muy autodidacta y por las oportunidades que me fueron apareciendo en el camino y aún lo hacen. Cabe destacar también que mi fuerte esta en la parte del Front-end y próximamente profundizare en la otra vertiente. A modo de cierre y para contar algo más de mi, me destaco por ser una persona flexible, autodidacta, curiosa y honesta. ¡Que sigas disfruntando de lo que queda!', 'foto-perfil.png', '1139046424');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_has_skills`
--

CREATE TABLE `personas_has_skills` (
  `id_persona` int(11) NOT NULL,
  `id_skill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas_has_skills`
--

INSERT INTO `personas_has_skills` (`id_persona`, `id_skill`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `enlace_deploy` varchar(200) NOT NULL,
  `enlace_repo` varchar(200) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `nombre`, `enlace_deploy`, `enlace_repo`, `id_persona`) VALUES
(1, 'Libreria e-commerce', 'https://vicath-libreria.herokuapp.com', 'https://github.com/limberthEstrada/Proyecto-DH-Libreria-Vicath.git', 1),
(2, 'Sitio web para encontrar mascotas perdidas', 'https://petsius.netlify.app', 'https://github.com/limberthEstrada/Petsius-CodoACodo-Limberth-Estrada.git', 1),
(3, 'Copia Mercado Libre', 'https://mercado-liebre-estrada.herokuapp.com', 'https://github.com/limberthEstrada/mercadoLiebreEstrada.git', 1),
(4, 'Portafolio', 'https://www.google.com.ar', 'https://github.com/limberthEstrada/portfolio-Frontend.git', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_social`
--

CREATE TABLE `red_social` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `enlace` varchar(200) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `red_social`
--

INSERT INTO `red_social` (`id`, `nombre`, `enlace`, `id_persona`) VALUES
(1, 'GitHub', 'https://github.com/limberthEstrada', 1),
(2, 'LinkedIn', 'https://www.linkedin.com/in/limberth-estrada', 1),
(3, 'E-mail', 'limberth.estrada@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `skill`
--

INSERT INTO `skill` (`id`, `nombre`) VALUES
(4, 'Bootstrap'),
(2, 'C#'),
(6, 'CSS'),
(5, 'HTML'),
(7, 'Javascript'),
(1, 'Node.js'),
(3, 'React.js');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Curso_id_persona` (`id_persona`);

--
-- Indices de la tabla `imagen_aux_portfolio`
--
ALTER TABLE `imagen_aux_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagen_proyecto`
--
ALTER TABLE `imagen_proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Imagen_proyecto_id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_Persona_nombre` (`nombre`);

--
-- Indices de la tabla `personas_has_skills`
--
ALTER TABLE `personas_has_skills`
  ADD KEY `fk_personas_has_skills_id_persona` (`id_persona`),
  ADD KEY `fk_personas_has_skills_id_skill` (`id_skill`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Proyecto_id_persona` (`id_persona`);

--
-- Indices de la tabla `red_social`
--
ALTER TABLE `red_social`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Red_social_id_persona` (`id_persona`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_Skill_nombre` (`nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_Curso_id_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `imagen_proyecto`
--
ALTER TABLE `imagen_proyecto`
  ADD CONSTRAINT `fk_Imagen_proyecto_id_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id`);

--
-- Filtros para la tabla `personas_has_skills`
--
ALTER TABLE `personas_has_skills`
  ADD CONSTRAINT `fk_personas_has_skills_id_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `fk_personas_has_skills_id_skill` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `fk_Proyecto_id_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `red_social`
--
ALTER TABLE `red_social`
  ADD CONSTRAINT `fk_Red_social_id_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
