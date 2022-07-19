-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-07-2022 a las 03:59:03
-- Versión del servidor: 8.0.29
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apisdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombres` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expediente` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `apellido_paterno`, `apellido_materno`, `nombres`, `expediente`, `created_at`, `updated_at`, `deleted_at`) VALUES
('14551a09-0714-11ed-8df2-48ba4e4f382c', 'ROJAS', 'DELGADO', 'JEANPOOL DAVID', 2, '2022-07-19 03:36:34', '2022-07-19 03:36:34', NULL),
('c32a6c58-0711-11ed-8df2-48ba4e4f382c', 'ROJAS', 'DELGADO', 'RICHTER DAVID', 1, '2022-07-19 03:19:15', '2022-07-19 03:19:15', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
