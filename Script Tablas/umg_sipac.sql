-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2025 a las 22:27:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `umg_sipac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `CARNET_ALUMNO` varchar(15) NOT NULL,
  `NOMBRE_ALUMNO` varchar(45) DEFAULT NULL,
  `DIRECCION_ALUMNO` varchar(45) DEFAULT NULL,
  `TELEFONO_ALUMNO` varchar(45) DEFAULT NULL,
  `EMAIL_ALUMNO` varchar(20) DEFAULT NULL,
  `ESTATUS_ALUMNO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`CARNET_ALUMNO`, `NOMBRE_ALUMNO`, `DIRECCION_ALUMNO`, `TELEFONO_ALUMNO`, `EMAIL_ALUMNO`, `ESTATUS_ALUMNO`) VALUES
('478', 'David', 'Zona 18', '7469', 'cdavid.com', '1'),
('584', 'Omar', 'Zona 16', '2589', 'vicoromar.com', '1'),
('927', 'Lourdes', 'Zona 25', '8376', 'lu.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumnos`
--

CREATE TABLE `asignacioncursosalumnos` (
  `CODIGO_CARRERAS` varchar(5) NOT NULL,
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `CODIGO_SECCION` varchar(5) NOT NULL,
  `CODIGO_AULA` varchar(5) NOT NULL,
  `CODIGO_CURSO` varchar(5) NOT NULL,
  `CARNET_ALUMNO` varchar(15) NOT NULL,
  `NOTA_ASIGNACIONCURSOALUMNOS` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosalumnos`
--

INSERT INTO `asignacioncursosalumnos` (`CODIGO_CARRERAS`, `CODIGO_SEDE`, `CODIGO_JORNADA`, `CODIGO_SECCION`, `CODIGO_AULA`, `CODIGO_CURSO`, `CARNET_ALUMNO`, `NOTA_ASIGNACIONCURSOALUMNOS`) VALUES
('9957', '701', '001', '102', '801', '115', '927', 4.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosmaestros`
--

CREATE TABLE `asignacioncursosmaestros` (
  `CODIGO_CARRERAS` varchar(5) NOT NULL,
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `CODIGO_SECCION` varchar(5) NOT NULL,
  `CODIGO_AULA` varchar(5) NOT NULL,
  `CODIGO_CURSO` varchar(5) NOT NULL,
  `CODIGO_MAESTRO` varchar(15) NOT NULL,
  `NOTA_ASIGNACIONCURSOALUMNOS` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `CODIGO_AULA` varchar(5) NOT NULL,
  `NOMBRE_AULA` varchar(45) DEFAULT NULL,
  `ESTATUS_AULA` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`CODIGO_AULA`, `NOMBRE_AULA`, `ESTATUS_AULA`) VALUES
('801', 'B25', '1'),
('802', 'C25', '1'),
('803', 'D25', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `CODIGO_CARRERAS` varchar(5) NOT NULL,
  `NOMBRE_CARRERAS` varchar(45) DEFAULT NULL,
  `CODIGO_FACULTAD` varchar(5) DEFAULT NULL,
  `ESTATUS_CARRERAS` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`CODIGO_CARRERAS`, `NOMBRE_CARRERAS`, `CODIGO_FACULTAD`, `ESTATUS_CARRERAS`) VALUES
('9955', 'Liceatura en base de datos', '00001', '1'),
('9956', 'Profesorado en base de datos', '00001', '1'),
('9957', 'Profesorado en sistemas y c.c', '00001', '1'),
('9958', 'Licenciatura en sistemas y C.C', '00001', '1'),
('9959', 'Ingenieria en Sist y C.C', '00001', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `CODIGO_CURSO` varchar(5) NOT NULL,
  `NOMBRE_CURSO` varchar(45) DEFAULT NULL,
  `ESTATUS_CURSO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`CODIGO_CURSO`, `NOMBRE_CURSO`, `ESTATUS_CURSO`) VALUES
('114', 'Progra 3', '1'),
('115', 'Electronica', '1'),
('116', 'Estadistica 2', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `CODIGO_FACULTAD` varchar(5) NOT NULL,
  `NOMBRE_FACULTAD` varchar(45) DEFAULT NULL,
  `ESTATUS_FACULTAD` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`CODIGO_FACULTAD`, `NOMBRE_FACULTAD`, `ESTATUS_FACULTAD`) VALUES
('00001', 'Facultad Ingenierìa en Sistemas y C C', '1'),
('226', 'Administracion', '1'),
('228', 'Comunicación', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `NOMBRE_JORNADA` varchar(45) DEFAULT NULL,
  `ESTATUS_JORNADA` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`CODIGO_JORNADA`, `NOMBRE_JORNADA`, `ESTATUS_JORNADA`) VALUES
('001', 'Matutina', '1'),
('002', 'Despertina', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `CODIGO_MAESTRO` varchar(5) NOT NULL,
  `NOMBRE_MAESTRO` varchar(45) DEFAULT NULL,
  `DIRECCION_MAESTRO` varchar(45) DEFAULT NULL,
  `TELEFONO_MAESTRO` varchar(45) DEFAULT NULL,
  `EMAIL_MAESTRO` varchar(20) DEFAULT NULL,
  `ESTATUS_MAESTRO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`CODIGO_MAESTRO`, `NOMBRE_MAESTRO`, `DIRECCION_MAESTRO`, `TELEFONO_MAESTRO`, `EMAIL_MAESTRO`, `ESTATUS_MAESTRO`) VALUES
('1523', 'Esduardo', 'Ciudad', '7485', 'esde.com', '1'),
('1524', 'Florian', 'Ciudad', '3625', 'flr.com', '1'),
('1526', 'Haziel', 'Coban', '4569', 'Hzl.com', '1'),
('1528', 'Francisco', 'Petén', '4685', 'frc.com', '1'),
('1530', 'Roxana', 'Solola', '1469', 'rxn.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `CODIGO_SECCION` varchar(5) NOT NULL,
  `NOMBRE_SECCION` varchar(45) DEFAULT NULL,
  `ESTATUS_SECCION` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`CODIGO_SECCION`, `NOMBRE_SECCION`, `ESTATUS_SECCION`) VALUES
('101', 'A', '1'),
('102', 'B', '1'),
('103', 'C', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `NOMBRE_SEDE` varchar(45) DEFAULT NULL,
  `ESTATUS_SEDE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`CODIGO_SEDE`, `NOMBRE_SEDE`, `ESTATUS_SEDE`) VALUES
('700', 'Naranjo', '1'),
('701', 'Portales', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`CARNET_ALUMNO`);

--
-- Indices de la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD PRIMARY KEY (`CODIGO_CARRERAS`,`CODIGO_SEDE`,`CODIGO_JORNADA`,`CODIGO_SECCION`,`CODIGO_AULA`,`CODIGO_CURSO`,`CARNET_ALUMNO`),
  ADD KEY `CODIGO_SEDE` (`CODIGO_SEDE`),
  ADD KEY `CODIGO_JORNADA` (`CODIGO_JORNADA`),
  ADD KEY `CODIGO_SECCION` (`CODIGO_SECCION`),
  ADD KEY `CODIGO_AULA` (`CODIGO_AULA`),
  ADD KEY `CODIGO_CURSO` (`CODIGO_CURSO`),
  ADD KEY `CARNET_ALUMNO` (`CARNET_ALUMNO`);

--
-- Indices de la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD PRIMARY KEY (`CODIGO_CARRERAS`,`CODIGO_SEDE`,`CODIGO_JORNADA`,`CODIGO_SECCION`,`CODIGO_AULA`,`CODIGO_CURSO`,`CODIGO_MAESTRO`),
  ADD KEY `CODIGO_SEDE` (`CODIGO_SEDE`),
  ADD KEY `CODIGO_JORNADA` (`CODIGO_JORNADA`),
  ADD KEY `CODIGO_SECCION` (`CODIGO_SECCION`),
  ADD KEY `CODIGO_AULA` (`CODIGO_AULA`),
  ADD KEY `CODIGO_CURSO` (`CODIGO_CURSO`),
  ADD KEY `CODIGO_MAESTRO` (`CODIGO_MAESTRO`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`CODIGO_AULA`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`CODIGO_CARRERAS`),
  ADD KEY `CODIGO_FACULTAD` (`CODIGO_FACULTAD`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`CODIGO_CURSO`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`CODIGO_FACULTAD`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`CODIGO_JORNADA`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`CODIGO_MAESTRO`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`CODIGO_SECCION`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`CODIGO_SEDE`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_1` FOREIGN KEY (`CODIGO_CARRERAS`) REFERENCES `carreras` (`CODIGO_CARRERAS`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_2` FOREIGN KEY (`CODIGO_SEDE`) REFERENCES `sedes` (`CODIGO_SEDE`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_3` FOREIGN KEY (`CODIGO_JORNADA`) REFERENCES `jornadas` (`CODIGO_JORNADA`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_4` FOREIGN KEY (`CODIGO_SECCION`) REFERENCES `secciones` (`CODIGO_SECCION`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_5` FOREIGN KEY (`CODIGO_AULA`) REFERENCES `aulas` (`CODIGO_AULA`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_6` FOREIGN KEY (`CODIGO_CURSO`) REFERENCES `cursos` (`CODIGO_CURSO`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_7` FOREIGN KEY (`CARNET_ALUMNO`) REFERENCES `alumnos` (`CARNET_ALUMNO`);

--
-- Filtros para la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_1` FOREIGN KEY (`CODIGO_CARRERAS`) REFERENCES `carreras` (`CODIGO_CARRERAS`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_2` FOREIGN KEY (`CODIGO_SEDE`) REFERENCES `sedes` (`CODIGO_SEDE`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_3` FOREIGN KEY (`CODIGO_JORNADA`) REFERENCES `jornadas` (`CODIGO_JORNADA`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_4` FOREIGN KEY (`CODIGO_SECCION`) REFERENCES `secciones` (`CODIGO_SECCION`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_5` FOREIGN KEY (`CODIGO_AULA`) REFERENCES `aulas` (`CODIGO_AULA`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_6` FOREIGN KEY (`CODIGO_CURSO`) REFERENCES `cursos` (`CODIGO_CURSO`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_7` FOREIGN KEY (`CODIGO_MAESTRO`) REFERENCES `maestros` (`CODIGO_MAESTRO`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`CODIGO_FACULTAD`) REFERENCES `facultad` (`CODIGO_FACULTAD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
