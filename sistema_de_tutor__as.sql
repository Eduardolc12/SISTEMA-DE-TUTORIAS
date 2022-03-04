-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2022 a las 16:33:36
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_de_tutorías`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinadordetutorias`
--

CREATE TABLE `coordinadordetutorias` (
  `Matricula_Coordinador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(15) NOT NULL,
  `CorreoInstitucional` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `coordinadordetutorias`
--

INSERT INTO `coordinadordetutorias` (`Matricula_Coordinador`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `telefono`, `CorreoInstitucional`) VALUES
('zS14052053', 'RAFAEL', 'SILVESTRE', 'PEÑALVER', 228247366, 'zS14052053@maestro.uv'),
('zS14052058', 'JOSE', 'CARLOS', 'RIPOLL', 58477020, 'zS14052058@maestro.uv'),
('zS14052724', 'HUGO', 'VALLS', 'VALLEJO', 228245697, 'zS14052724@maestro.uv'),
('zS15078053', 'MOHAMED', 'PEÑARANDA', 'VICO', 228399087, 'zS15078053@maestro.uv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinadordetutorias-periodo-escolar`
--

CREATE TABLE `coordinadordetutorias-periodo-escolar` (
  `ID_Coordinador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PeriodoEscolar` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Matricula_Estudiante` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoPaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoMaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Licenciatura` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Correo_institucional` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante-tutoria`
--

CREATE TABLE `estudiante-tutoria` (
  `ID_Tutoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Matricula_Estudiante` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia-estudiante`
--

CREATE TABLE `experiencia-estudiante` (
  `NRC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Matricula_Estudiante` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia-profesor`
--

CREATE TABLE `experiencia-profesor` (
  `NRC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Matricula_Profesor` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia educativa`
--

CREATE TABLE `experiencia educativa` (
  `NRC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo-tutoria`
--

CREATE TABLE `periodo-tutoria` (
  `iD_Tutoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PeriodoEscolar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_Tutorias` date NOT NULL,
  `horariosTutoria` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodocierrereporte`
--

CREATE TABLE `periodocierrereporte` (
  `Matricula Tutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PeriodoEscolar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fechaCierre_Reporte` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_escolar`
--

CREATE TABLE `periodo_escolar` (
  `ID_PeriodoEscolar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_inicioPeriodo` date NOT NULL,
  `fecha_finPeriodo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `periodo_escolar`
--

INSERT INTO `periodo_escolar` (`ID_PeriodoEscolar`, `fecha_inicioPeriodo`, `fecha_finPeriodo`) VALUES
('Agosto-Enero', '2022-02-03', '2022-06-17'),
('Febrero-Julio', '2022-08-17', '2023-01-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `MatriculaProfesor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoPaterno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoMaterno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CorreoInstitucional` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesorestudiante`
--

CREATE TABLE `profesorestudiante` (
  `matriculaProfesor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Matricula_Estudiante` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_coordinador`
--

CREATE TABLE `telefono_coordinador` (
  `Matricula_Coordinador` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_tutor`
--

CREATE TABLE `telefono_tutor` (
  `Matricula_Tutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `Matricula_Tutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoPaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ApellidoMaterno` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `CorreoInstitucional` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MatriculaEstudiante` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor-coordinador`
--

CREATE TABLE `tutor-coordinador` (
  `Matricula_Tutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Coordinador` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutorado`
--

CREATE TABLE `tutorado` (
  `Matricula_Tutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Matricula_Estudiante` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

CREATE TABLE `tutoria` (
  `ID_Tutoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NumeroSesion` int(10) NOT NULL,
  `MatriculaTutor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatriculaEstudiante` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PeriodoEscolar` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coordinadordetutorias`
--
ALTER TABLE `coordinadordetutorias`
  ADD PRIMARY KEY (`Matricula_Coordinador`);

--
-- Indices de la tabla `coordinadordetutorias-periodo-escolar`
--
ALTER TABLE `coordinadordetutorias-periodo-escolar`
  ADD PRIMARY KEY (`ID_Coordinador`,`ID_PeriodoEscolar`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Matricula_Estudiante`);

--
-- Indices de la tabla `estudiante-tutoria`
--
ALTER TABLE `estudiante-tutoria`
  ADD PRIMARY KEY (`ID_Tutoria`,`Matricula_Estudiante`);

--
-- Indices de la tabla `experiencia-estudiante`
--
ALTER TABLE `experiencia-estudiante`
  ADD PRIMARY KEY (`NRC`,`Matricula_Estudiante`);

--
-- Indices de la tabla `experiencia-profesor`
--
ALTER TABLE `experiencia-profesor`
  ADD PRIMARY KEY (`NRC`,`Matricula_Profesor`);

--
-- Indices de la tabla `experiencia educativa`
--
ALTER TABLE `experiencia educativa`
  ADD PRIMARY KEY (`NRC`);

--
-- Indices de la tabla `periodo-tutoria`
--
ALTER TABLE `periodo-tutoria`
  ADD PRIMARY KEY (`iD_Tutoria`,`ID_PeriodoEscolar`);

--
-- Indices de la tabla `periodocierrereporte`
--
ALTER TABLE `periodocierrereporte`
  ADD PRIMARY KEY (`Matricula Tutor`,`ID_PeriodoEscolar`);

--
-- Indices de la tabla `periodo_escolar`
--
ALTER TABLE `periodo_escolar`
  ADD PRIMARY KEY (`ID_PeriodoEscolar`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`MatriculaProfesor`);

--
-- Indices de la tabla `profesorestudiante`
--
ALTER TABLE `profesorestudiante`
  ADD PRIMARY KEY (`matriculaProfesor`,`Matricula_Estudiante`);

--
-- Indices de la tabla `telefono_coordinador`
--
ALTER TABLE `telefono_coordinador`
  ADD PRIMARY KEY (`Matricula_Coordinador`,`telefono`);

--
-- Indices de la tabla `telefono_tutor`
--
ALTER TABLE `telefono_tutor`
  ADD PRIMARY KEY (`Matricula_Tutor`,`telefono`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Matricula_Tutor`);

--
-- Indices de la tabla `tutor-coordinador`
--
ALTER TABLE `tutor-coordinador`
  ADD PRIMARY KEY (`Matricula_Tutor`,`ID_Coordinador`);

--
-- Indices de la tabla `tutorado`
--
ALTER TABLE `tutorado`
  ADD PRIMARY KEY (`Matricula_Tutor`,`Matricula_Estudiante`);

--
-- Indices de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD PRIMARY KEY (`ID_Tutoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
