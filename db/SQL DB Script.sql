CREATE TABLE `educacion` (
  `id_educacion` int(11) NOT NULL,
  `personas_idpersona` int(11) NOT NULL,
  `educacion` varchar(100) DEFAULT NULL,
  `duración` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id_educacion`, `personas_idpersona`, `educacion`, `duración`, `descripcion`, `imagen`) VALUES
(1, 32797989, 'Bachiller en Producción de Bienes y Servicios - Colegio Secundario', '7', 'Colegio Secundario - Especialidad en Recursos Hídricos y Ambiente - ETQ N° 4-017 Bernardino Izuel', NULL),
(2, 32797989, 'Ingeniería en Computación', '5', 'Estudiante de Ingeniería en Computación - FCEFYN - UNC', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL,
  `personas_idpersona` int(11) NOT NULL,
  `trabajo` varchar(45) DEFAULT NULL,
  `duración` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id_experiencia`, `personas_idpersona`, `trabajo`, `duración`, `descripcion`, `imagen`) VALUES
(1, 32797989, 'Auxiliar Administrativo', '8', 'Auxiliar IT en Facultad de Lengaus  -UNC: armado y reparación de PCs, mantenimiento de servidores y redes de computadoras.', NULL),
(2, 32797989, 'Subjefe de Área', '1', 'Subjefe de Despacho de Alumnos en Area de Enseñanza. Facultad de Artes - UNC', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idpersona` int(11) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `banner` varchar(45) DEFAULT NULL,
  `acercade` varchar(45) DEFAULT NULL,
  `profesion` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `foto`, `banner`, `acercade`, `profesion`, `direccion`, `contacto`, `email`) VALUES
(32797989, 'García', 'Ángel', 'Limberth', NULL, 'Soy un tipo común', 'Full Stack Web Developer Jr.', 'Fulton 6464,  Córdoba - Argentina', '351-3748842', 'Limberth.garcia@unc.edu.ar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `personas_idpersona` int(11) NOT NULL,
  `proyecto` varchar(45) DEFAULT NULL,
  `duración` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `personas_idpersona`, `proyecto`, `duración`, `descripcion`, `imagen`) VALUES
(1, 32797989, 'MULTIPASE', '3', 'Acceso digital seguro - Sistema de cerraduras inteligentes para puertas y portones', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id_skills` int(11) NOT NULL,
  `personas_idpersona` int(11) NOT NULL,
  `skill` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social`
--

CREATE TABLE `social` (
  `personas_idpersona` int(11) NOT NULL,
  `github` varchar(45) DEFAULT NULL,
  `whatsapp` varchar(45) DEFAULT NULL,
  `linkedin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `personas_idpersona` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`personas_idpersona`, `username`, `password`) VALUES
(32797989, 'Limberth', 'Limberth');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id_educacion`,`personas_idpersona`),
  ADD KEY `fk_experiencia_personas10` (`personas_idpersona`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id_experiencia`,`personas_idpersona`),
  ADD KEY `fk_experiencia_personas1` (`personas_idpersona`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`,`personas_idpersona`),
  ADD KEY `fk_experiencia_personas11` (`personas_idpersona`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skills`,`personas_idpersona`),
  ADD KEY `fk_experiencia_personas100` (`personas_idpersona`);

--
-- Indices de la tabla `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`personas_idpersona`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`personas_idpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id_educacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_experiencia_personas10` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_experiencia_personas1` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_experiencia_personas11` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `fk_experiencia_personas100` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `social`
--
ALTER TABLE `social`
  ADD CONSTRAINT `fk_social_personas1` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_personas` FOREIGN KEY (`personas_idpersona`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;