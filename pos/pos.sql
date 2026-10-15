-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2025 a las 04:59:06
-- Versión del servidor: 8.0.39-30
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dblgdguqxibveg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int NOT NULL,
  `email_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `password_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `rol_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `permissions_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `token_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `token_exp_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `status_admin` int DEFAULT '1',
  `title_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `symbol_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `font_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `color_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `back_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `scode_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `name_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_office_admin` int DEFAULT '0',
  `chatgpt_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `email_admin`, `password_admin`, `rol_admin`, `permissions_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `name_admin`, `id_office_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin@pos.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'superadmin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3Mzk1NTY3NzQsImV4cCI6MTczOTY0MzE3NCwiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQHBvcy5jb20ifX0.CSxpbwf7i39a5you5dAB2FpvFeXV_8SQ7i7CANF3VfU', '1739643174', 1, 'POS SYSTEM', '<i class=\"bi bi-cart-check-fill\"></i>', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\"><link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin><link href=\"https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap\" rel=\"stylesheet\">', '#611be4', 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6760a08e6d34e6.png', 'w958zu', 'El Programador', 0, NULL, '2024-12-16', '2025-02-14 18:12:54'),
(2, 'admin@pos.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzgzMzI2NjMsImV4cCI6MTczODQxOTA2MywiZGF0YSI6eyJpZCI6MiwiZW1haWwiOiJhZG1pbkBwb3MuY29tIn19.GoiDEMWXjHOwsneD-107U_aTTXfNU088t69jiCW4Ctk', '1738419063', 1, '', '', '', '', '', '', 'Sara Perez', 0, NULL, '2024-12-19', '2025-01-31 14:11:03'),
(3, 'supervisor@pos.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '{\"pos\":\"on\",\"clientes\":\"on\",\"productos\":\"on\",\"compras\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2Mzg5OTIsImV4cCI6MTczNDcyNTM5MiwiZGF0YSI6eyJpZCI6IjMiLCJlbWFpbCI6InN1cGVydmlzb3JAcG9zLmNvbSJ9fQ.As7FXVdD2qpivzfahbXWcU14TsB2J9k1KYFbkFQvxCk', '1734725392', 1, '', '', '', '', '', '', 'Jorge Riquelme', 0, NULL, '2024-12-19', '2025-01-17 17:29:33'),
(4, 'admin@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Jaime+Suarez', 1, NULL, '2024-12-19', '2025-01-17 17:29:36'),
(5, 'admin@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDE4MzEsImV4cCI6MTczNDcyODIzMSwiZGF0YSI6eyJpZCI6IjUiLCJlbWFpbCI6ImFkbWluQGNvbGluYXMuY29tIn19.q6HOV81yruqi5BEluh0e6ta_1cAM-tQuWuWQCb7HC28', '1734728231', 1, '', '', '', '', '', '', 'Marta+Galindo', 2, NULL, '2024-12-19', '2025-01-17 17:29:39'),
(6, 'admin@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22todo%22%3A%22on%22%7D', '', '', 1, '', '', '', '', '', '', 'Mary+Mendez', 3, NULL, '2024-12-19', '2025-01-17 17:29:41'),
(7, 'supervisor@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Pepe+Lucio', 1, NULL, '2024-12-19', '2025-01-17 17:29:44'),
(8, 'supervisor@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Mario+Lopez', 2, NULL, '2024-12-19', '2025-01-17 17:29:47'),
(9, 'supervisor@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%2C%22productos%22%3A%22on%22%2C%22compras%22%3A%22on%22%2C%22caja%22%3A%22on%22%2C%22gastos%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Julia+Martinez', 3, NULL, '2024-12-19', '2025-01-17 17:29:59'),
(10, 'seller@pueblolindo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Marcos+Londo%C3%B1o', 1, NULL, '2024-12-19', '2025-01-17 17:30:02'),
(11, 'seller@colinas.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDAxNjcsImV4cCI6MTczNDcyNjU2NywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6ImFkbWluQHB1ZWJsb2xpbmRvLmNvbSJ9fQ.3FWKr8N8HDe7j5zLcbLJx6mTu3BGB88yXhDHvX7e8dE', '1734726567', 1, '', '', '', '', '', '', 'Jaco+Cifuentes', 2, NULL, '2024-12-19', '2025-01-17 17:30:05'),
(12, 'seller@valles.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22pos%22%3A%22on%22%2C%22clientes%22%3A%22on%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzQ2NDE4MDcsImV4cCI6MTczNDcyODIwNywiZGF0YSI6eyJpZCI6IjEyIiwiZW1haWwiOiJzZWxsZXJAdmFsbGVzLmNvbSJ9fQ.G27uSrgFBaEP5wzVNPRk-HvzWIr7Pk9lcAlCyXW70-c', '1734728207', 1, '', '', '', '', '', '', 'Mona+Lisa', 3, NULL, '2024-12-19', '2025-01-17 17:30:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bills`
--

CREATE TABLE `bills` (
  `id_bill` int NOT NULL,
  `concept_bill` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `cost_bill` double DEFAULT '0',
  `date_bill` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_admin_bill` int DEFAULT '0',
  `id_office_bill` int DEFAULT '0',
  `date_created_bill` date DEFAULT NULL,
  `date_updated_bill` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `bills`
--

INSERT INTO `bills` (`id_bill`, `concept_bill`, `cost_bill`, `date_bill`, `id_admin_bill`, `id_office_bill`, `date_created_bill`, `date_updated_bill`) VALUES
(3, 'Almuerzo', 50, '2024-12-28 01:03:00', 1, 1, '2024-12-27', '2024-12-28 01:10:00'),
(4, 'Fotocopias', 10, '2024-12-28 01:03:00', 1, 1, '2024-12-27', '2024-12-28 01:10:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cashs`
--

CREATE TABLE `cashs` (
  `id_cash` int NOT NULL,
  `start_cash` double DEFAULT '0',
  `bills_cash` double DEFAULT '0',
  `money_cash` double DEFAULT '0',
  `diff_cash` double DEFAULT '0',
  `end_cash` double DEFAULT '0',
  `gap_cash` double DEFAULT '0',
  `status_cash` int DEFAULT '1',
  `date_start_cash` datetime DEFAULT NULL,
  `date_end_cash` datetime DEFAULT NULL,
  `id_admin_cash` int DEFAULT '0',
  `id_office_cash` int DEFAULT '0',
  `date_created_cash` date DEFAULT NULL,
  `date_updated_cash` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `cashs`
--

INSERT INTO `cashs` (`id_cash`, `start_cash`, `bills_cash`, `money_cash`, `diff_cash`, `end_cash`, `gap_cash`, `status_cash`, `date_start_cash`, `date_end_cash`, `id_admin_cash`, `id_office_cash`, `date_created_cash`, `date_updated_cash`) VALUES
(1, 1000, 0, 0, 0, 0, 0, 0, '2024-12-25 12:03:00', '0000-00-00 00:00:00', 7, 1, '2024-12-25', '2024-12-26 17:42:13'),
(2, 1000, 0, 0, 0, 0, 0, 0, '2024-12-26 12:03:00', '0000-00-00 00:00:00', 7, 1, '2024-12-26', '2024-12-27 19:20:32'),
(3, 1000, -60, 8222.7, 9162.7, 9100, -62.7, 0, '2024-12-27 14:03:00', '2024-12-27 20:25:00', 1, 1, '2024-12-27', '2024-12-28 01:26:01'),
(4, 10000, 0, 0, 10000, 10000, 0, 0, '2025-01-22 16:03:00', '2025-01-22 09:40:00', 1, 1, '2025-01-22', '2025-01-31 14:41:17'),
(5, 10000, 0, 0, 0, 0, 0, 1, '2025-01-24 08:03:00', '0000-00-00 00:00:00', 1, 3, '2025-01-24', '2025-01-24 13:24:31'),
(7, 1000000, 0, 0, 1000000, 0, 0, 0, '2025-01-31 09:03:00', '2025-02-13 18:32:00', 1, 1, '2025-01-31', '2025-02-14 23:32:10'),
(8, 1000000, 0, 0, 0, 0, 0, 1, '2025-02-14 18:03:00', '0000-00-00 00:00:00', 1, 1, '2025-02-14', '2025-02-14 23:32:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int NOT NULL,
  `title_category` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `img_category` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `order_category` int DEFAULT '0',
  `status_category` int DEFAULT '1',
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `title_category`, `img_category`, `order_category`, `status_category`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Headphones', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F67632dad8945845.png', 0, 1, '2024-12-18', '2025-01-17 17:02:46'),
(2, 'Shoes', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F67632df45101e56.png', 0, 1, '2024-12-18', '2025-01-17 17:02:46'),
(3, 'Mobiles', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F67632e0cbf0a320.png', 0, 1, '2024-12-18', '2025-01-17 17:02:46'),
(4, 'Watches', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F67632e2558a3145.png', 0, 1, '2024-12-18', '2025-01-17 17:02:46'),
(5, 'Laptops', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F67632e3962b825.png', 0, 1, '2024-12-18', '2025-01-17 17:02:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int NOT NULL,
  `dni_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `name_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `surname_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `email_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `address_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `phone_client` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_office_client` int DEFAULT '0',
  `date_created_client` date DEFAULT NULL,
  `date_updated_client` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `dni_client`, `name_client`, `surname_client`, `email_client`, `address_client`, `phone_client`, `id_office_client`, `date_created_client`, `date_updated_client`) VALUES
(1, '3426346354', 'Julian', 'Alvarez', 'julian@correo.com', 'Calle+34+%23+45+64', '6014567898', 1, '2024-12-18', '2024-12-18 19:39:08'),
(2, '568457573547', 'Lina', 'Gomez', 'lina@correo.com', 'Calle+14+%23+45+64', '6013567898', 1, '2024-12-18', '2024-12-18 19:39:47'),
(3, '3463453412', 'Luis', 'Perez', 'luis@correo.com', 'Calle+24+%23+45+64', '6011567898', 1, '2024-12-18', '2024-12-18 19:40:16'),
(4, '57456845689', 'Mar%C3%ADa', 'Zuleta', 'maria@correo.com', 'Calle+44+%23+45+64', '6012567898', 2, '2024-12-18', '2024-12-18 19:40:52'),
(5, '6846234124243', 'Clara', 'Gutierrez', 'clara@correo.com', 'Calle+2+%23+45+64', '6042567898', 2, '2024-12-18', '2024-12-18 19:41:28'),
(6, '123446355785', 'Jose', 'Martinez', 'jose@correo.com', 'Calle+1+%23+45+64', '6041567898', 2, '2024-12-18', '2024-12-18 19:42:10'),
(7, '123446355785', 'Miguel', 'Montes', 'miguel@correo.com', 'Calle+1+%23+333+65', '6021567898', 3, '2024-12-18', '2024-12-18 19:43:50'),
(8, '3427468457', 'Julio', 'Sanchez', 'julio@correo.com', 'Calle+55+%23+333+65', '6091567898', 3, '2024-12-18', '2024-12-18 19:44:30'),
(9, '3427468457', 'Karla', 'Tellez', 'karla@correo.com', 'Calle+11+%23+333+65', '6081567898', 3, '2024-12-18', '2024-12-18 19:45:05'),
(10, '98765123', 'Marcos', 'Jimenez', 'marcos@correo.com', 'calle 34', '6012345678', 1, '2024-12-26', '2024-12-26 20:49:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int NOT NULL,
  `id_module_column` int DEFAULT '0',
  `title_column` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `alias_column` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `type_column` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `matrix_column` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `visible_column` int DEFAULT '1',
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, '2024-12-16', '2024-12-16 21:46:24'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, '2024-12-16', '2024-12-16 21:46:24'),
(3, 2, 'email_admin', 'email', 'email', '', 1, '2024-12-16', '2024-12-16 21:46:24'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, '2024-12-16', '2024-12-16 21:46:24'),
(5, 2, 'token_admin', 'token', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:24'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:24'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, '2024-12-16', '2024-12-16 21:46:24'),
(8, 2, 'title_admin', 'título', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(11, 2, 'color_admin', 'color', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(13, 2, 'scode_admin', 'seguridad', 'text', '', 0, '2024-12-16', '2024-12-16 21:46:25'),
(14, 4, 'title_office', 'Sucursales', 'text', NULL, 1, '2024-12-17', '2024-12-16 23:17:24'),
(15, 4, 'address_office', 'Dirección', 'text', NULL, 1, '2024-12-17', '2024-12-16 23:17:24'),
(16, 4, 'phone_office', 'Teléfono', 'text', NULL, 1, '2024-12-17', '2024-12-16 23:17:24'),
(17, 6, 'dni_client', 'Documento', 'text', NULL, 1, '2024-12-18', '2024-12-18 19:37:40'),
(18, 6, 'name_client', 'Nombre', 'text', NULL, 1, '2024-12-18', '2024-12-18 19:37:40'),
(19, 6, 'surname_client', 'Apellido', 'text', NULL, 1, '2024-12-18', '2024-12-18 19:37:40'),
(20, 6, 'email_client', 'Email', 'email', NULL, 1, '2024-12-18', '2024-12-18 19:37:40'),
(21, 6, 'address_client', 'Dirección', 'text', NULL, 1, '2024-12-18', '2024-12-18 19:37:41'),
(22, 6, 'phone_client', 'Teléfono', 'text', NULL, 1, '2024-12-18', '2024-12-18 19:37:41'),
(23, 6, 'id_office_client', 'Sucursal', 'relations', 'offices', 1, '2024-12-18', '2024-12-18 19:38:33'),
(24, 8, 'title_category', 'Categoría', 'text', NULL, 1, '2024-12-18', '2024-12-18 20:14:59'),
(25, 8, 'img_category', 'Imagen', 'image', NULL, 1, '2024-12-18', '2024-12-18 20:15:00'),
(26, 8, 'order_category', 'Orden', 'order', NULL, 1, '2024-12-18', '2024-12-18 20:15:00'),
(27, 8, 'status_category', 'Estado', 'boolean', NULL, 1, '2024-12-18', '2024-12-18 20:15:00'),
(28, 10, 'title_product', 'Producto', 'text', NULL, 1, '2024-12-18', '2024-12-18 20:38:31'),
(29, 10, 'img_product', 'Imagen', 'image', NULL, 1, '2024-12-18', '2024-12-18 20:38:31'),
(30, 10, 'id_category_product', 'Categoría', 'relations', 'categories', 1, '2024-12-18', '2024-12-18 20:42:20'),
(31, 10, 'sku_product', 'SKU', 'text', NULL, 1, '2024-12-18', '2024-12-18 20:38:32'),
(32, 10, 'unit_product', 'Medida', 'select', '94_unidad', 1, '2024-12-18', '2025-02-14 23:27:38'),
(33, 10, 'tax_product', 'Impuesto', 'select', 'IVA_19,INC_4', 1, '2024-12-18', '2024-12-18 20:46:10'),
(34, 10, 'rte_product', 'Retención', 'select', 'NULL,RETF_11', 1, '2024-12-18', '2024-12-18 20:48:00'),
(35, 10, 'stock_product', 'Stock', 'text', NULL, 1, '2024-12-18', '2025-01-24 13:13:35'),
(36, 10, 'discount_product', 'Descuento', 'double', NULL, 1, '2024-12-18', '2024-12-18 20:38:33'),
(37, 10, 'status_product', 'Estado', 'boolean', NULL, 1, '2024-12-18', '2024-12-18 20:38:33'),
(38, 10, 'id_office_product', 'Sucursal', 'relations', 'offices', 1, '2024-12-18', '2024-12-18 20:48:54'),
(39, 12, 'supplier_purchase', 'Proveedor', 'text', NULL, 1, '2024-12-18', '2024-12-18 21:43:57'),
(40, 12, 'id_product_purchase', 'Producto', 'relations', 'products', 1, '2024-12-18', '2024-12-18 21:44:36'),
(41, 12, 'cost_purchase', 'Costo', 'money', NULL, 1, '2024-12-18', '2024-12-18 21:43:58'),
(42, 12, 'utility_purchase', 'Utilidad', 'select', '10%,20%,30%,40%,50%', 1, '2024-12-18', '2024-12-18 22:04:48'),
(43, 12, 'price_purchase', 'Precio', 'money', NULL, 1, '2024-12-18', '2024-12-18 21:43:58'),
(44, 12, 'qty_purchase', 'Cantidad', 'int', NULL, 1, '2024-12-18', '2024-12-18 21:43:58'),
(45, 12, 'invest_purchase', 'Inversión', 'money', NULL, 1, '2024-12-18', '2024-12-18 21:43:58'),
(46, 12, 'contact_purchase', 'Teléfono', 'text', NULL, 1, '2024-12-18', '2024-12-18 21:43:59'),
(47, 12, 'id_office_purchase', 'Sucursal', 'relations', 'offices', 1, '2024-12-18', '2024-12-18 21:55:18'),
(48, 14, 'transaction_order', 'Transacción', 'pos', NULL, 1, '2024-12-18', '2024-12-28 00:49:38'),
(49, 14, 'id_admin_order', 'Vendedor', 'relations', 'admins', 1, '2024-12-18', '2024-12-18 22:41:54'),
(50, 14, 'id_client_order', 'Cliente', 'relations', 'clients', 1, '2024-12-18', '2024-12-18 22:42:03'),
(51, 14, 'subtotal_order', 'Subtotal', 'money', NULL, 1, '2024-12-18', '2024-12-18 22:41:11'),
(52, 14, 'discount_order', 'Descuento', 'money', NULL, 1, '2024-12-18', '2024-12-18 22:41:11'),
(53, 14, 'tax_order', 'Impuesto', 'money', NULL, 1, '2024-12-18', '2024-12-18 22:41:12'),
(54, 14, 'total_order', 'Total', 'money', NULL, 1, '2024-12-18', '2024-12-18 22:41:12'),
(55, 14, 'method_order', 'Método', 'select', 'efectivo,transferencia,tarjeta', 1, '2024-12-18', '2024-12-18 22:46:09'),
(56, 14, 'transfer_order', 'Transferencia', 'text', NULL, 1, '2024-12-18', '2024-12-18 22:41:12'),
(57, 14, 'status_order', 'Estado', 'select', 'Completada,Pendiente', 1, '2024-12-18', '2024-12-18 22:46:26'),
(58, 14, 'date_order', 'Fecha', 'timestamp', NULL, 1, '2024-12-18', '2024-12-18 22:41:13'),
(59, 14, 'id_office_order', 'Sucursal', 'relations', 'offices', 1, '2024-12-18', '2024-12-18 22:42:12'),
(60, 16, 'id_order_sale', 'Orden', 'relations', 'orders', 1, '2024-12-18', '2024-12-18 22:55:22'),
(61, 16, 'id_product_sale', 'Producto', 'relations', 'products', 1, '2024-12-18', '2024-12-18 22:55:18'),
(62, 16, 'tax_type_sale', 'Tipo Impuesto', 'text', NULL, 1, '2024-12-18', '2024-12-18 22:54:25'),
(63, 16, 'tax_sale', 'Impuesto', 'double', NULL, 1, '2024-12-18', '2025-02-15 00:13:12'),
(64, 16, 'discount_sale', 'Descuento', 'double', NULL, 1, '2024-12-18', '2025-02-15 00:13:12'),
(65, 16, 'qty_sale', 'Cantidad', 'int', NULL, 1, '2024-12-18', '2024-12-18 22:54:25'),
(66, 16, 'subtotal_sale', 'Subtotal', 'money', NULL, 1, '2024-12-18', '2024-12-18 22:54:26'),
(67, 16, 'status_sale', 'Estado', 'select', 'Completada,Pendiente', 1, '2024-12-18', '2024-12-18 22:55:10'),
(68, 16, 'id_admin_sale', 'Vendedor', 'relations', 'admins', 1, '2024-12-18', '2024-12-18 22:55:01'),
(69, 16, 'id_client_sale', 'Cliente', 'relations', 'clients', 1, '2024-12-18', '2024-12-18 22:54:56'),
(70, 16, 'id_office_sale', 'Sucursal', 'relations', 'offices', 1, '2024-12-18', '2024-12-18 22:54:49'),
(71, 18, 'start_cash', 'Dinero Inicial', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:25'),
(72, 18, 'bills_cash', 'Gastos', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:26'),
(73, 18, 'money_cash', 'Ingresos', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:26'),
(74, 18, 'diff_cash', 'Diferencia', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:26'),
(75, 18, 'end_cash', 'Dinero Final', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:26'),
(76, 18, 'gap_cash', 'Brecha', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:09:27'),
(77, 18, 'status_cash', 'Estado', 'boolean', NULL, 1, '2024-12-19', '2024-12-18 23:09:27'),
(78, 18, 'date_start_cash', 'Fecha Inicial', 'datetime', NULL, 1, '2024-12-19', '2024-12-18 23:09:27'),
(79, 18, 'date_end_cash', 'Fecha Final', 'datetime', NULL, 1, '2024-12-19', '2024-12-18 23:09:27'),
(80, 18, 'id_admin_cash', 'Administrador', 'relations', 'admins', 1, '2024-12-19', '2024-12-18 23:09:43'),
(81, 18, 'id_office_cash', 'Sucursal', 'relations', 'offices', 1, '2024-12-19', '2024-12-18 23:09:39'),
(82, 20, 'concept_bill', 'Concepto', 'text', NULL, 1, '2024-12-19', '2024-12-18 23:14:38'),
(83, 20, 'cost_bill', 'Costo', 'money', NULL, 1, '2024-12-19', '2024-12-18 23:14:38'),
(84, 20, 'date_bill', 'Fecha', 'timestamp', NULL, 1, '2024-12-19', '2024-12-18 23:14:39'),
(85, 20, 'id_admin_bill', 'Administrador', 'relations', 'admins', 1, '2024-12-19', '2024-12-19 15:48:06'),
(86, 20, 'id_office_bill', 'Sucursal', 'relations', 'offices', 1, '2024-12-19', '2024-12-19 15:55:46'),
(87, 2, 'name_admin', 'Nombre', 'text', NULL, 1, '2024-12-19', '2024-12-19 20:12:24'),
(88, 2, 'id_office_admin', 'Sucursal', 'relations', 'offices', 1, '2024-12-19', '2024-12-19 20:20:36'),
(89, 10, 'code_product', 'Código de Barras', 'text', NULL, 1, '2025-01-24', '2025-01-24 13:13:35'),
(90, 4, 'dni_office', 'NIT', 'text', NULL, 1, '2025-01-24', '2025-01-24 15:57:02'),
(92, 36, 'id_order_invoice', 'Id Orden', 'relations', 'orders', 1, '2025-02-14', '2025-02-15 02:44:03'),
(93, 36, 'type_invoice', 'Tipo', 'text', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(94, 36, 'document_invoice', 'Documento', 'text', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(95, 36, 'cude_invoice', 'CUDE', 'text', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(96, 36, 'zip_invoice', 'ZIP', 'link', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(97, 36, 'dian_invoice', 'DIAN', 'link', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(98, 36, 'convert_invoice', 'Anular', 'link', NULL, 1, '2025-02-14', '2025-02-15 00:44:53'),
(99, 36, 'fields_invoice', 'Datos', 'text', NULL, 0, '2025-02-14', '2025-02-15 00:44:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int NOT NULL,
  `id_folder_file` int DEFAULT '0',
  `name_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `extension_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `type_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `size_file` double DEFAULT '0',
  `link_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `thumbnail_vimeo_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_mailchimp_file` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, '674dfdf7195d735', 'png', 'image/png', 918215, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6760a08e6d34e6.png', NULL, NULL, '2024-12-16', '2025-01-17 17:00:55'),
(2, 1, '674e11c5ce4055', 'png', 'image/png', 2945, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67632dad8945845.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(3, 1, '674e120172bb75', 'png', 'image/png', 3709, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67632df45101e56.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(4, 1, '674e121bf13c531', 'png', 'image/png', 4095, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67632e0cbf0a320.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(5, 1, '674e127c5d2498', 'png', 'image/png', 2209, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67632e2558a3145.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(6, 1, '674e12a07b01a44', 'png', 'image/png', 4586, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67632e3962b825.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(7, 1, '674e153f3200655', 'png', 'image/png', 6759, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676333a5a17a913.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(8, 1, '674e165bedcfd39', 'png', 'image/png', 8880, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763359f5e7e639.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(9, 1, '674e169291f1134', 'png', 'image/png', 12674, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676335bf88cd611.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(10, 1, '674e16e1b80a153', 'png', 'image/png', 10279, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676335e7b765751.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(11, 1, '674e17362b0eb18', 'png', 'image/png', 8830, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676336050329e21.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(12, 1, '674e17f3d32aa27', 'png', 'image/png', 8335, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763362601cc654.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(13, 1, '674e1818b981f4', 'png', 'image/png', 10435, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763364983cdc29.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(14, 1, '674e1c3aed10842', 'png', 'image/png', 7847, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763368780d2c31.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(15, 1, '674e1c695cead29', 'png', 'image/png', 11802, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676336be037ba26.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(16, 1, '674e1c9596eb513', 'png', 'image/png', 14185, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676336d8ae17952.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(17, 1, '674e1e2a37cea58', 'png', 'image/png', 11585, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676336fb70b6d27.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(18, 1, '674e1e0aa0fb026', 'png', 'image/png', 10007, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763372162e555.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(19, 1, '674e1d54eb75924', 'png', 'image/png', 10979, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763375d7ae0e5.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(20, 1, '674e1d83c2b1011', 'png', 'image/png', 10505, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676337786b5b132.png', NULL, NULL, '2024-12-18', '2025-01-17 17:00:55'),
(21, 1, '6751c1a6b299418', 'png', 'image/png', 1072, 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/67659e224786f6.png', NULL, NULL, '2024-12-20', '2025-01-17 17:00:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int NOT NULL,
  `name_folder` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `size_folder` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `total_folder` double DEFAULT '0',
  `max_upload_folder` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `url_folder` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `keys_folder` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 1079933, '500000000', 'http://pos.sistemasavanzadosintegrales.com', NULL, '2024-12-16', '2025-01-17 16:57:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id_invoice` int NOT NULL,
  `id_order_invoice` int DEFAULT '0',
  `type_invoice` text,
  `document_invoice` text,
  `cude_invoice` text,
  `zip_invoice` text,
  `dian_invoice` text,
  `convert_invoice` text,
  `fields_invoice` text,
  `date_created_invoice` date DEFAULT NULL,
  `date_updated_invoice` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `invoices`
--

INSERT INTO `invoices` (`id_invoice`, `id_order_invoice`, `type_invoice`, `document_invoice`, `cude_invoice`, `zip_invoice`, `dian_invoice`, `convert_invoice`, `fields_invoice`, `date_created_invoice`, `date_updated_invoice`) VALUES
(2, 15, 'Factura POS', 'FPOS2', '25e9b6feac9e309ed0c870109b38774d77698235a194d334790b5ca182df1854c447e3cc9fda95caf6d64f81c1ec74c7', '', 'https://catalogo-vpfe.dian.gov.co/document/searchqr?documentkey=25e9b6feac9e309ed0c870109b38774d77698235a194d334790b5ca182df1854c447e3cc9fda95caf6d64f81c1ec74c7', '', '{\"type\":\"invoice\",\"subtotal\":230720,\"tax_amount\":39065,\"discount\":25116,\"total\":244669,\"tax_base\":19,\"tax_type\":\"IVA\",\"customer\":{\"doc\":\"222222222222\",\"name\":\"Consumidor Final\",\"email\":\"\"},\"products\":[{\"title_product\":\"Yoga Book 9i\",\"sku_product\":\"PT014\",\"unit_product\":\"94_unidad\",\"qty_product\":2,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":30,\"subtotal_product\":83720},{\"title_product\":\"Tablet 1.02 inch\",\"sku_product\":\"PT013\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":56000},{\"title_product\":\"IdeaPad Slim 5 Gen 7\",\"sku_product\":\"PT012\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":91000}],\"pos\":{\"box_code\":1,\"box_location\":\"Sucursal Pueblo Lindo\",\"cashier\":\"El Programador\",\"box_type\":\"Caja de apoyo\",\"sales_code\":\"833946567552\"}}', '2025-02-14', '2025-02-15 02:43:28'),
(3, 15, 'Nota Crédito', 'FPOSNC2', 'cf195b7b9e34359745d5d335cd996c3139531a8422ce84015a01f690fb826e78b77d24a74fbe12f27e3d85b961fc8bdc', '', 'https://catalogo-vpfe.dian.gov.co/document/searchqr?documentkey=cf195b7b9e34359745d5d335cd996c3139531a8422ce84015a01f690fb826e78b77d24a74fbe12f27e3d85b961fc8bdc', '', '{\"type\":\"note\",\"subtotal\":230720,\"tax_amount\":39065,\"discount\":25116,\"total\":244669,\"tax_base\":19,\"tax_type\":\"IVA\",\"customer\":{\"doc\":\"222222222222\",\"name\":\"Consumidor Final\",\"email\":\"\"},\"products\":[{\"title_product\":\"Yoga Book 9i\",\"sku_product\":\"PT014\",\"unit_product\":\"94_unidad\",\"qty_product\":2,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":30,\"subtotal_product\":83720},{\"title_product\":\"Tablet 1.02 inch\",\"sku_product\":\"PT013\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":56000},{\"title_product\":\"IdeaPad Slim 5 Gen 7\",\"sku_product\":\"PT012\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":91000}],\"pos\":{\"box_code\":1,\"box_location\":\"Sucursal Pueblo Lindo\",\"cashier\":\"El Programador\",\"box_type\":\"Caja de apoyo\",\"sales_code\":\"833946567552\"},\"prefix\":\"FPOSNC\",\"number\":\"2\",\"invoice\":\"FPOS2\",\"cude\":\"25e9b6feac9e309ed0c870109b38774d77698235a194d334790b5ca182df1854c447e3cc9fda95caf6d64f81c1ec74c7\"}', '2025-02-14', '2025-02-15 02:43:28'),
(4, 15, 'Factura POS', 'FPOS7', '04e71139d175ca8a3d122898bd20617c42a70a5d745a5093be1403a2ad5dc0dd164fb767b3239899852fe24307af5c9e', 'https://developers.titulovalor.com/views/assets/zip/2025/pos/1/ad2222222222220022540000052/ad2222222222220022540000052.zip', 'https://catalogo-vpfe.dian.gov.co/document/searchqr?documentkey=04e71139d175ca8a3d122898bd20617c42a70a5d745a5093be1403a2ad5dc0dd164fb767b3239899852fe24307af5c9e', '', '{\"type\":\"invoice\",\"subtotal\":230720,\"tax_amount\":39065,\"discount\":25116,\"total\":244669,\"tax_base\":19,\"tax_type\":\"IVA\",\"customer\":{\"doc\":\"222222222222\",\"name\":\"Consumidor Final\",\"email\":\"\"},\"products\":[{\"title_product\":\"Yoga Book 9i\",\"sku_product\":\"PT014\",\"unit_product\":\"94_unidad\",\"qty_product\":2,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":30,\"subtotal_product\":83720},{\"title_product\":\"Tablet 1.02 inch\",\"sku_product\":\"PT013\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":56000},{\"title_product\":\"IdeaPad Slim 5 Gen 7\",\"sku_product\":\"PT012\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":91000}],\"pos\":{\"box_code\":1,\"box_location\":\"Sucursal Pueblo Lindo\",\"cashier\":\"El Programador\",\"box_type\":\"Caja de apoyo\",\"sales_code\":\"833946567552\"}}', '2025-02-14', '2025-02-15 03:08:29'),
(5, 15, 'Nota Crédito', 'FPOSNC7', 'cf3967de5b2182a14c1c19e01870db323c7d47971264d312fd4544dca3a716bab45005ed77655828cf4556b1f838edf8', 'https://developers.titulovalor.com/views/assets/zip/2025/ndac/1/ad2222222222220022540000053/ad2222222222220022540000053.zip', 'https://catalogo-vpfe.dian.gov.co/document/searchqr?documentkey=cf3967de5b2182a14c1c19e01870db323c7d47971264d312fd4544dca3a716bab45005ed77655828cf4556b1f838edf8', '', '{\"type\":\"note\",\"subtotal\":230720,\"tax_amount\":39065,\"discount\":25116,\"total\":244669,\"tax_base\":19,\"tax_type\":\"IVA\",\"customer\":{\"doc\":\"222222222222\",\"name\":\"Consumidor Final\",\"email\":\"\"},\"products\":[{\"title_product\":\"Yoga Book 9i\",\"sku_product\":\"PT014\",\"unit_product\":\"94_unidad\",\"qty_product\":2,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":30,\"subtotal_product\":83720},{\"title_product\":\"Tablet 1.02 inch\",\"sku_product\":\"PT013\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":56000},{\"title_product\":\"IdeaPad Slim 5 Gen 7\",\"sku_product\":\"PT012\",\"unit_product\":\"94_unidad\",\"qty_product\":1,\"tax_type_product\":\"IVA\",\"tax_product\":19,\"discount_product\":0,\"subtotal_product\":91000}],\"pos\":{\"box_code\":1,\"box_location\":\"Sucursal Pueblo Lindo\",\"cashier\":\"El Programador\",\"box_type\":\"Caja de apoyo\",\"sales_code\":\"833946567552\"},\"prefix\":\"FPOSNC\",\"number\":\"7\",\"invoice\":\"FPOS7\",\"cude\":\"04e71139d175ca8a3d122898bd20617c42a70a5d745a5093be1403a2ad5dc0dd164fb767b3239899852fe24307af5c9e\"}', '2025-02-14', '2025-02-15 03:08:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int NOT NULL,
  `id_page_module` int DEFAULT '0',
  `type_module` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `title_module` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `suffix_module` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `content_module` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `width_module` int DEFAULT '100',
  `editable_module` int DEFAULT '1',
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2024-12-16', '2024-12-16 21:46:23'),
(2, 2, 'tables', 'admins', 'admin', '', 100, 0, '2024-12-16', '2024-12-19 20:12:22'),
(3, 4, 'breadcrumbs', 'sucursales', '', '', 100, 1, '2024-12-17', '2024-12-16 23:10:34'),
(4, 4, 'tables', 'offices', 'office', '', 100, 1, '2024-12-17', '2024-12-16 23:17:23'),
(5, 5, 'breadcrumbs', 'clientes', '', '', 100, 1, '2024-12-18', '2024-12-18 19:33:43'),
(6, 5, 'tables', 'clients', 'client', '', 100, 1, '2024-12-18', '2024-12-18 19:37:39'),
(7, 6, 'breadcrumbs', 'categorías', '', '', 100, 1, '2024-12-18', '2024-12-18 20:12:25'),
(8, 6, 'tables', 'categories', 'category', '', 100, 1, '2024-12-18', '2024-12-18 20:14:59'),
(9, 7, 'breadcrumbs', 'productos', '', '', 100, 1, '2024-12-18', '2024-12-18 20:33:10'),
(10, 7, 'tables', 'products', 'product', '', 100, 1, '2024-12-18', '2024-12-18 20:38:30'),
(11, 8, 'breadcrumbs', 'compras', '', '', 100, 1, '2024-12-18', '2024-12-18 21:37:39'),
(12, 8, 'tables', 'purchases', 'purchase', '', 100, 1, '2024-12-18', '2024-12-18 21:43:57'),
(13, 9, 'breadcrumbs', 'Órdenes', '', '', 100, 1, '2024-12-18', '2024-12-18 22:35:32'),
(14, 9, 'tables', 'orders', 'order', '', 100, 0, '2024-12-18', '2024-12-18 22:45:34'),
(15, 10, 'breadcrumbs', 'ventas', '', '', 100, 1, '2024-12-18', '2024-12-18 22:50:59'),
(16, 10, 'tables', 'sales', 'sale', '', 100, 0, '2024-12-18', '2024-12-18 22:54:24'),
(17, 11, 'breadcrumbs', 'caja', '', '', 100, 1, '2024-12-19', '2024-12-18 23:02:12'),
(18, 11, 'tables', 'cashs', 'cash', '', 100, 1, '2024-12-19', '2024-12-18 23:09:25'),
(19, 12, 'breadcrumbs', 'gastos', '', '', 100, 1, '2024-12-19', '2024-12-18 23:12:39'),
(20, 12, 'tables', 'bills', 'bill', '', 100, 1, '2024-12-19', '2024-12-18 23:14:38'),
(21, 1, 'custom', 'orders', '', '', 100, 1, '2024-12-20', '2024-12-20 16:00:40'),
(22, 1, 'custom', 'products', '', '', 50, 1, '2024-12-20', '2024-12-20 16:02:03'),
(23, 1, 'custom', 'panel', '', '', 50, 1, '2024-12-20', '2024-12-20 16:02:18'),
(24, 13, 'metrics', 'ventas', '', '{\"type\":\"add\",\"table\":\"orders\", \"column\":\"total_order\",\"config\":\"price\",\"icon\":\"fas fa-cart-arrow-down\",\"color\":\"28, 175, 159\"  }', 25, 1, '2025-01-02', '2025-01-02 21:09:09'),
(25, 13, 'metrics', 'compras', '', '{\"type\":\"add\",\"table\":\"purchases\", \"column\":\"invest_purchase\",\"config\":\"price\",\"icon\":\"fas fa-shopping-basket\",\"color\":\"128, 0, 0\"  }', 25, 1, '2025-01-02', '2025-01-02 21:11:06'),
(26, 13, 'metrics', 'productos', '', '{\"type\":\"add\",\"table\":\"products\", \"column\":\"stock_product\",\"config\":\"unit\",\"icon\":\"fas fa-box\",\"color\":\"77, 93, 219\"  }', 25, 1, '2025-01-02', '2025-01-02 21:12:50'),
(27, 13, 'metrics', 'clientes', '', '{\"type\":\"total\",\"table\":\"clients\", \"column\":\"id_client\",\"config\":\"unit\",\"icon\":\"fas fa-users\",\"color\":\"43, 62, 101\"  }', 25, 1, '2025-01-02', '2025-01-02 21:13:46'),
(28, 13, 'graphics', 'gráfico de ventas diarias', '', '{\"type\":\"bar\",\"table\":\"orders\",\"xAxis\":\"date_created_order\",\"yAxis\":\"total_order\",\"color\":\"134, 153, 163\"}', 100, 1, '2025-01-02', '2025-01-02 21:28:51'),
(29, 13, 'graphics', 'gráfico de ventas mensuales', '', '{\"type\":\"line\",\"table\":\"orders\",\"xAxis\":\"date_created_order\",\"yAxis\":\"total_order\",\"color\":\"252, 115, 3\"}', 100, 1, '2025-01-02', '2025-01-02 22:03:38'),
(30, 13, 'graphics', 'ventas por sucursal', '', '{\"type\":\"bar\",\"table\":\"orders\",\"xAxis\":\"id_office_order\",\"yAxis\":\"total_order\",\"color\":\"28, 175, 159\"}', 50, 1, '2025-01-02', '2025-01-02 22:44:48'),
(31, 13, 'graphics', 'compras por sucursal', '', '{\"type\":\"bar\",\"table\":\"purchases\",\"xAxis\":\"id_office_purcahse\",\"yAxis\":\"invest_purchase\",\"color\":\"137, 39, 236\"}', 50, 1, '2025-01-02', '2025-01-02 23:12:33'),
(32, 13, 'custom', 'productos mas vendidos', '', '', 50, 1, '2025-01-03', '2025-01-03 13:43:01'),
(33, 13, 'custom', 'clientes mas activos', '', '', 50, 1, '2025-01-03', '2025-01-22 16:10:32'),
(34, 14, 'breadcrumbs', 'facturación', '', '', 100, 1, '2025-02-14', '2025-02-15 00:36:27'),
(36, 14, 'tables', 'invoices', 'invoice', '', 100, 1, '2025-02-14', '2025-02-15 00:44:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offices`
--

CREATE TABLE `offices` (
  `id_office` int NOT NULL,
  `title_office` text COLLATE utf8mb3_spanish_ci,
  `address_office` text COLLATE utf8mb3_spanish_ci,
  `phone_office` text COLLATE utf8mb3_spanish_ci,
  `dni_office` text COLLATE utf8mb3_spanish_ci,
  `date_created_office` date DEFAULT NULL,
  `date_updated_office` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `offices`
--

INSERT INTO `offices` (`id_office`, `title_office`, `address_office`, `phone_office`, `dni_office`, `date_created_office`, `date_updated_office`) VALUES
(1, 'Sucursal Pueblo Lindo', 'Calle 24 # 23 45', '6043214576', '42135423524-3', '2024-12-17', '2025-01-24 15:57:38'),
(2, 'Sucursal Colinas del Monte', 'Calle 67 # 45 67', '6043218798', '42135423524-3', '2024-12-17', '2025-01-24 15:57:31'),
(3, 'Sucursal Valles', 'Calle 30 # 98 56', '6043211234', '42135423524-3', '2024-12-17', '2025-01-24 15:57:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id_order` int NOT NULL,
  `transaction_order` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_admin_order` int DEFAULT '0',
  `id_client_order` int DEFAULT '0',
  `subtotal_order` double DEFAULT '0',
  `discount_order` double DEFAULT '0',
  `tax_order` double DEFAULT '0',
  `total_order` double DEFAULT '0',
  `method_order` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `transfer_order` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `status_order` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_office_order` int DEFAULT '0',
  `date_created_order` date DEFAULT NULL,
  `date_updated_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id_order`, `transaction_order`, `id_admin_order`, `id_client_order`, `subtotal_order`, `discount_order`, `tax_order`, `total_order`, `method_order`, `transfer_order`, `status_order`, `date_order`, `id_office_order`, `date_created_order`, `date_updated_order`) VALUES
(1, '192896735117', 1, 10, 0, 0, 0, 0, NULL, NULL, 'Pendiente', '2025-01-02 21:38:51', 1, '2024-10-10', '2025-01-02 21:38:51'),
(4, '853516679348', 1, 9, 6391.7, 839.16, 1054.98, 6607.52, 'efectivo', '', 'Completada', '2025-01-02 22:45:50', 1, '2024-11-20', '2025-01-02 22:45:50'),
(5, '988567392254', 1, 1, 838.6, 0, 159.33, 997.93, 'efectivo', '', 'Completada', '2025-01-02 22:45:07', 2, '2024-12-25', '2025-01-02 22:45:07'),
(6, '626919863779', 1, 3, 518.7, 0, 98.55, 617.25, 'efectivo', '', 'Completada', '2025-01-02 22:45:53', 3, '2024-12-27', '2025-01-02 22:45:53'),
(7, '444179866532', 1, 2, 1398.6, 419.58, 186.01, 1165.03, 'efectivo', '', 'Completada', '2025-01-23 00:53:26', 1, '2025-01-22', '2025-01-23 00:53:26'),
(8, '961327547368', 1, 4, 1118.6, 0, 212.53, 1331.13, 'efectivo', '', 'Completada', '2025-01-23 00:54:42', 1, '2025-01-22', '2025-01-23 00:54:42'),
(9, '219854523185', 1, 4, 388.7, 0, 73.85, 462.55, 'efectivo', '', 'Completada', '2025-01-23 01:10:10', 1, '2025-01-22', '2025-01-23 01:10:10'),
(10, '898459135227', 1, 6, 1538.6, 0, 292.33, 1830.93, 'efectivo', '', 'Completada', '2025-01-23 01:11:42', 1, '2025-01-22', '2025-01-23 01:11:42'),
(11, '784611233672', 1, 5, 388.7, 0, 73.85, 462.55, 'efectivo', '', 'Completada', '2025-01-23 01:12:15', 1, '2025-01-22', '2025-01-23 01:12:15'),
(12, '175639445968', 1, 3, 3602.1, 0, 684.4, 4286.5, 'efectivo', '', 'Completada', '2025-01-24 16:08:04', 3, '2025-01-24', '2025-01-24 16:08:04'),
(13, '734255591778', 1, 1, 1957.2, 0, 371.87, 2329.07, NULL, NULL, 'Pendiente', '2025-01-24 16:14:55', 3, '2025-01-24', '2025-01-24 16:14:55'),
(14, '468675855812', 1, 4, 4474.4, 419.58, 770.42, 4825.24, NULL, NULL, 'Pendiente', '2025-01-31 14:42:55', 1, '2025-01-31', '2025-01-31 14:42:55'),
(15, '833946567552', 1, 1, 230720, 25116, 39065, 244669, 'efectivo', '', 'Completada', '2025-02-15 03:03:09', 1, '2025-02-14', '2025-02-15 03:03:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int NOT NULL,
  `title_page` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `url_page` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `icon_page` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `type_page` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `order_page` int DEFAULT '1',
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'POS', 'pos', 'bi bi-house-door-fill', 'modules', 1, '2024-12-16', '2024-12-16 23:04:36'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 3, '2024-12-16', '2025-01-31 14:37:38'),
(3, 'Archivos', 'archivos', 'bi bi-file-earmark-image', 'custom', 4, '2024-12-16', '2025-01-31 14:37:38'),
(4, 'Sucursales', 'sucursales', 'bi bi-shop', 'modules', 2, '2024-12-17', '2025-01-31 14:37:38'),
(5, 'Clientes', 'clientes', 'bi bi-people', 'modules', 5, '2024-12-18', '2024-12-18 23:16:16'),
(6, 'Categorías', 'categorias', 'bi bi-card-list', 'modules', 6, '2024-12-18', '2024-12-18 23:16:16'),
(7, 'Productos', 'productos', 'bi bi-box', 'modules', 7, '2024-12-18', '2024-12-18 23:16:16'),
(8, 'Compras', 'compras', 'bi bi-basket-fill', 'modules', 8, '2024-12-18', '2024-12-18 23:16:16'),
(9, 'Órdenes', 'ordenes', 'bi bi-ticket-detailed', 'modules', 9, '2024-12-18', '2024-12-18 23:16:16'),
(10, 'Ventas', 'ventas', 'bi bi-cash-coin', 'modules', 10, '2024-12-18', '2024-12-18 23:16:16'),
(11, 'Caja', 'caja', 'fas fa-cash-register', 'modules', 11, '2024-12-19', '2024-12-18 23:16:16'),
(12, 'Gastos', 'gastos', 'fas fa-money-bill-wave', 'modules', 12, '2024-12-19', '2024-12-18 23:16:16'),
(13, 'Informes', 'informes', 'bi bi-file-earmark-bar-graph', 'modules', 13, '2025-01-02', '2025-01-31 14:37:38'),
(14, 'Facturación', 'facturacion', 'bi bi-receipt-cutoff', 'modules', 1000, '2025-02-14', '2025-02-15 00:36:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int NOT NULL,
  `title_product` text COLLATE utf8mb3_spanish_ci,
  `img_product` text COLLATE utf8mb3_spanish_ci,
  `id_category_product` int DEFAULT '0',
  `sku_product` text COLLATE utf8mb3_spanish_ci,
  `unit_product` text COLLATE utf8mb3_spanish_ci,
  `tax_product` text COLLATE utf8mb3_spanish_ci,
  `rte_product` text COLLATE utf8mb3_spanish_ci,
  `stock_product` text COLLATE utf8mb3_spanish_ci,
  `discount_product` double DEFAULT '0',
  `status_product` int DEFAULT '1',
  `id_office_product` int DEFAULT '0',
  `code_product` text COLLATE utf8mb3_spanish_ci,
  `date_created_product` date DEFAULT NULL,
  `date_updated_product` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `title_product`, `img_product`, `id_category_product`, `sku_product`, `unit_product`, `tax_product`, `rte_product`, `stock_product`, `discount_product`, `status_product`, `id_office_product`, `code_product`, `date_created_product`, `date_updated_product`) VALUES
(1, 'Airpod+2', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676333a5a17a913.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(2, 'Swagme', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763359f5e7e639.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(3, 'Red+Nike+Angelo', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335bf88cd611.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(4, 'Blue+White+OGR', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335e7b765751.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(5, 'Green+Nike+Fe', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336050329e21.png', 2, 'PT005', '94_unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(6, 'Iphone+11', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763362601cc654.png', 3, 'PT006', '94_unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(7, 'IPhone+14+64GB', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763364983cdc29.png', 3, 'PT007', '94_unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(8, 'Rolex+Tribute+V3', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763368780d2c31.png', 4, 'PT008', '94_unidad', 'IVA_19', 'NULL', '100', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(9, 'Timex+Black+SIlver', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336be037ba26.png', 4, 'PT009', '94_unidad', 'IVA_19', 'NULL', '98', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(10, 'Fossil+Pair+Of+3+in+1', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336d8ae17952.png', 4, 'PT010', '94_unidad', 'IVA_19', 'NULL', '95', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(11, 'MacBook+Pro', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336fb70b6d27.png', 5, 'PT011', '94_unidad', 'IVA_19', 'NULL', '99', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:28:35'),
(12, 'IdeaPad+Slim+5+Gen+7', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763372162e555.png', 5, 'PT012', '94_unidad', 'IVA_19', 'NULL', '92', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:37:51'),
(13, 'Tablet 1.02 inch', 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/6763375d7ae0e5.png', 5, 'PT013', '94_unidad', 'IVA_19', 'NULL', '92', 0, 1, 1, NULL, '2024-12-18', '2025-02-14 23:37:51'),
(14, 'Yoga Book 9i', 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676337786b5b132.png', 5, 'PT014', '94_unidad', 'IVA_19', 'NULL', '94', 30, 1, 1, '', '2024-12-18', '2025-02-14 23:42:46'),
(15, 'Airpod+2', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676333a5a17a913.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(16, 'Swagme', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763359f5e7e639.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(17, 'Red+Nike+Angelo', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335bf88cd611.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(18, 'Blue+White+OGR', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335e7b765751.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(19, 'Green+Nike+Fe', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336050329e21.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(20, 'Iphone+11', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763362601cc654.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(21, 'IPhone+14+64GB', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763364983cdc29.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(22, 'Rolex+Tribute+V3', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763368780d2c31.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(23, 'Timex+Black+SIlver', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336be037ba26.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(24, 'Fossil+Pair+Of+3+in+1', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336d8ae17952.png', 4, 'PT010', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(25, 'MacBook+Pro', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336fb70b6d27.png', 5, 'PT011', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(26, 'IdeaPad+Slim+5+Gen+7', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763372162e555.png', 5, 'PT012', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(27, 'Tablet+1.02+inch', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763375d7ae0e5.png', 5, 'PT013', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(28, 'Yoga+Book+9i', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676337786b5b132.png', 5, 'PT014', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 2, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(29, 'Airpod+2', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676333a5a17a913.png', 1, 'PT001', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(30, 'Swagme', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763359f5e7e639.png', 1, 'PT002', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(31, 'Red+Nike+Angelo', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335bf88cd611.png', 2, 'PT003', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(32, 'Blue+White+OGR', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676335e7b765751.png', 2, 'PT004', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(33, 'Green+Nike+Fe', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336050329e21.png', 2, 'PT005', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(34, 'Iphone+11', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763362601cc654.png', 3, 'PT006', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(35, 'IPhone+14+64GB', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763364983cdc29.png', 3, 'PT007', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(36, 'Rolex+Tribute+V3', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763368780d2c31.png', 4, 'PT008', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(37, 'Timex+Black+SIlver', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336be037ba26.png', 4, 'PT009', 'unidad', 'IVA_19', 'NULL', '97', 0, 1, 3, NULL, '2024-12-18', '2025-01-24 16:08:03'),
(38, 'Fossil+Pair+Of+3+in+1', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336d8ae17952.png', 4, 'PT010', 'unidad', 'IVA_19', 'NULL', '98', 0, 1, 3, NULL, '2024-12-18', '2025-01-24 16:08:03'),
(39, 'MacBook+Pro', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F676336fb70b6d27.png', 5, 'PT011', 'unidad', 'IVA_19', 'NULL', '100', 0, 1, 3, NULL, '2024-12-18', '2025-01-17 17:04:52'),
(40, 'IdeaPad+Slim+5+Gen+7', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763372162e555.png', 5, 'PT012', 'unidad', 'IVA_19', 'NULL', '99', 0, 1, 3, NULL, '2024-12-18', '2025-01-24 16:15:04'),
(41, 'Tablet+1.02+inch', 'http://pos.sistemasavanzadosintegrales.com/views%2Fassets%2Ffiles%2F6763375d7ae0e5.png', 5, 'PT013', 'unidad', 'IVA_19', 'NULL', '99', 0, 1, 3, NULL, '2024-12-18', '2025-01-24 16:15:04'),
(42, 'Yoga Book 9i', 'http://pos.sistemasavanzadosintegrales.com/views/assets/files/676337786b5b132.png', 5, 'PT014', 'unidad', 'IVA_19', 'NULL', '99', 0, 1, 3, '7800063400006', '2024-12-18', '2025-01-24 15:53:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id_purchase` int NOT NULL,
  `supplier_purchase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_product_purchase` int DEFAULT '0',
  `cost_purchase` double DEFAULT '0',
  `utility_purchase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `price_purchase` double DEFAULT '0',
  `qty_purchase` int DEFAULT '0',
  `invest_purchase` double DEFAULT '0',
  `contact_purchase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_office_purchase` int DEFAULT '0',
  `date_created_purchase` date DEFAULT NULL,
  `date_updated_purchase` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id_purchase`, `supplier_purchase`, `id_product_purchase`, `cost_purchase`, `utility_purchase`, `price_purchase`, `qty_purchase`, `invest_purchase`, `contact_purchase`, `id_office_purchase`, `date_created_purchase`, `date_updated_purchase`) VALUES
(1, 'Apple', 1, 300, '30%', 390, 100, 30000, '6054321234', 1, '2024-12-18', '2024-12-18 22:05:08'),
(2, 'JBL', 2, 100, '40%', 140, 100, 10000, '6054321256', 1, '2024-12-18', '2024-12-18 22:05:12'),
(3, 'Nike', 3, 80, '50%', 120, 100, 8000, '6054321277', 1, '2024-12-18', '2024-12-18 22:05:16'),
(4, 'Adidas', 4, 80, '50%', 120, 100, 8000, '6054321266', 1, '2024-12-18', '2024-12-18 22:05:19'),
(5, 'Nike', 5, 80, '50%', 120, 100, 8000, '6054321277', 1, '2024-12-18', '2024-12-18 22:05:21'),
(6, 'Apple', 6, 699, '40%', 978.6, 100, 69900, '6054321234', 1, '2024-12-18', '2024-12-18 22:05:23'),
(7, 'Apple', 7, 899, '40%', 1258.6, 100, 89900, '6054321234', 1, '2024-12-18', '2024-12-18 22:05:26'),
(8, 'Rolex', 8, 199, '30%', 258.7, 100, 19900, '6054320000', 1, '2024-12-18', '2024-12-18 22:05:28'),
(9, 'Rolex', 9, 299, '30%', 388.7, 100, 29900, '6054320000', 1, '2024-12-18', '2024-12-18 22:05:30'),
(10, 'Fossil', 10, 399, '30%', 518.7, 100, 39900, '6054320022', 1, '2024-12-18', '2024-12-18 22:05:32'),
(11, 'Apple', 11, 1099, '40%', 1538.6, 100, 109900, '6054321234', 1, '2024-12-18', '2024-12-18 22:05:34'),
(12, 'Lenovo', 12, 65000, '40%', 91000, 100, 6500000, '6054321222', 1, '2024-12-18', '2025-02-14 23:31:21'),
(13, 'Lenovo', 13, 40000, '40%', 56000, 100, 4000000, '6054321222', 1, '2024-12-18', '2025-02-14 23:31:03'),
(14, 'Lenovo', 14, 29900, '40%', 41860, 100, 2990000, '6054321222', 1, '2024-12-18', '2025-02-14 23:30:40'),
(15, 'Apple', 15, 300, '30%25', 390, 100, 30000, '6054321234', 2, '2024-12-18', '2024-12-18 22:09:06'),
(16, 'JBL', 16, 100, '40%25', 140, 100, 10000, '6054321256', 2, '2024-12-18', '2024-12-18 22:10:03'),
(17, 'Nike', 17, 80, '50%25', 120, 100, 8000, '6054321277', 2, '2024-12-18', '2024-12-18 22:10:11'),
(18, 'Adidas', 18, 80, '50%25', 120, 100, 8000, '6054321266', 2, '2024-12-18', '2024-12-18 22:10:19'),
(19, 'Nike', 19, 80, '50%25', 120, 100, 8000, '6054321277', 2, '2024-12-18', '2024-12-18 22:10:26'),
(20, 'Apple', 20, 699, '40%25', 978.6, 100, 69900, '6054321234', 2, '2024-12-18', '2024-12-18 22:10:35'),
(21, 'Apple', 21, 899, '40%25', 1258.6, 100, 89900, '6054321234', 2, '2024-12-18', '2024-12-18 22:10:46'),
(22, 'Rolex', 22, 199, '30%25', 258.7, 100, 19900, '6054320000', 2, '2024-12-18', '2024-12-18 22:11:06'),
(23, 'Rolex', 23, 299, '30%25', 388.7, 100, 29900, '6054320000', 2, '2024-12-18', '2024-12-18 22:11:21'),
(24, 'Fossil', 24, 399, '30%25', 518.7, 100, 39900, '6054320022', 2, '2024-12-18', '2024-12-18 22:11:32'),
(25, 'Apple', 25, 1099, '40%25', 1538.6, 100, 109900, '6054321234', 2, '2024-12-18', '2024-12-18 22:11:39'),
(26, 'Lenovo', 26, 599, '40%25', 838.6, 100, 59900, '6054321222', 2, '2024-12-18', '2024-12-18 22:11:46'),
(27, 'Lenovo', 27, 799, '40%25', 1118.6, 100, 79900, '6054321222', 2, '2024-12-18', '2024-12-18 22:11:55'),
(28, 'Lenovo', 28, 999, '40%25', 1398.6, 100, 99900, '6054321222', 2, '2024-12-18', '2024-12-18 22:12:00'),
(29, 'Apple', 29, 300, '30%25', 390, 100, 30000, '6054321234', 3, '2024-12-18', '2024-12-18 22:13:09'),
(30, 'JBL', 30, 100, '40%25', 140, 100, 10000, '6054321256', 3, '2024-12-18', '2024-12-18 22:13:18'),
(31, 'Nike', 31, 80, '50%25', 120, 100, 8000, '6054321277', 3, '2024-12-18', '2024-12-18 22:13:29'),
(32, 'Adidas', 32, 80, '50%25', 120, 100, 8000, '6054321266', 3, '2024-12-18', '2024-12-18 22:13:35'),
(33, 'Nike', 33, 80, '50%25', 120, 100, 8000, '6054321277', 3, '2024-12-18', '2024-12-18 22:13:43'),
(34, 'Apple', 34, 699, '40%25', 978.6, 100, 69900, '6054321234', 3, '2024-12-18', '2024-12-18 22:13:52'),
(35, 'Apple', 35, 899, '40%25', 1258.6, 100, 89900, '6054321234', 3, '2024-12-18', '2024-12-18 22:13:59'),
(36, 'Rolex', 36, 199, '30%25', 258.7, 100, 19900, '6054320000', 3, '2024-12-18', '2024-12-18 22:14:07'),
(37, 'Rolex', 37, 299, '30%25', 388.7, 100, 29900, '6054320000', 3, '2024-12-18', '2024-12-18 22:14:15'),
(38, 'Fossil', 38, 399, '30%25', 518.7, 100, 39900, '6054320022', 3, '2024-12-18', '2024-12-18 22:14:22'),
(39, 'Apple', 39, 1099, '40%25', 1538.6, 100, 109900, '6054321234', 3, '2024-12-18', '2024-12-18 22:14:30'),
(40, 'Lenovo', 40, 599, '40%25', 838.6, 100, 59900, '6054321222', 3, '2024-12-18', '2024-12-18 22:14:37'),
(41, 'Lenovo', 41, 799, '40%25', 1118.6, 100, 79900, '6054321222', 3, '2024-12-18', '2024-12-18 22:14:44'),
(42, 'Lenovo', 42, 999, '40%25', 1398.6, 100, 99900, '6054321222', 3, '2024-12-18', '2024-12-18 22:14:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id_sale` int NOT NULL,
  `id_order_sale` int DEFAULT '0',
  `id_product_sale` int DEFAULT '0',
  `tax_type_sale` text COLLATE utf8mb3_spanish_ci,
  `tax_sale` double DEFAULT '0',
  `discount_sale` double DEFAULT '0',
  `qty_sale` int DEFAULT '0',
  `subtotal_sale` double DEFAULT '0',
  `status_sale` text COLLATE utf8mb3_spanish_ci,
  `id_admin_sale` int DEFAULT '0',
  `id_client_sale` int DEFAULT '0',
  `id_office_sale` int DEFAULT '0',
  `date_created_sale` date DEFAULT NULL,
  `date_updated_sale` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id_sale`, `id_order_sale`, `id_product_sale`, `tax_type_sale`, `tax_sale`, `discount_sale`, `qty_sale`, `subtotal_sale`, `status_sale`, `id_admin_sale`, `id_client_sale`, `id_office_sale`, `date_created_sale`, `date_updated_sale`) VALUES
(31, 4, 13, 'IVA', 19, 0, 4, 2237.2, 'Completada', 1, 9, 1, '2024-12-27', '2025-01-03 13:48:38'),
(32, 4, 12, 'IVA', 19, 0, 5, 838.6, 'Completada', 1, 9, 1, '2024-12-27', '2025-01-03 13:48:52'),
(33, 4, 10, 'IVA', 19, 0, 3, 518.7, 'Completada', 1, 9, 1, '2024-12-27', '2025-01-03 13:49:05'),
(34, 4, 14, 'IVA', 19, 30, 2, 2797.2, 'Completada', 1, 9, 1, '2024-12-27', '2025-01-02 18:29:19'),
(35, 5, 12, 'IVA', 19, 0, 1, 838.6, 'Completada', 1, 1, 2, '2024-12-27', '2025-01-02 22:45:58'),
(36, 6, 10, 'IVA', 19, 0, 2, 518.7, 'Completada', 1, 3, 3, '2024-12-27', '2025-01-03 13:49:08'),
(37, 7, 14, 'IVA', 19, 30, 1, 1398.6, 'Completada', 1, 2, 1, '2025-01-22', '2025-01-23 00:53:26'),
(38, 8, 13, 'IVA', 19, 0, 1, 1118.6, 'Completada', 1, 4, 1, '2025-01-22', '2025-01-23 00:54:43'),
(39, 9, 9, 'IVA', 19, 0, 1, 388.7, 'Completada', 1, 4, 1, '2025-01-22', '2025-01-23 01:10:10'),
(40, 10, 11, 'IVA', 19, 0, 1, 1538.6, 'Completada', 1, 6, 1, '2025-01-22', '2025-01-23 01:11:42'),
(41, 11, 9, 'IVA', 19, 0, 1, 388.7, 'Completada', 1, 5, 1, '2025-01-22', '2025-01-23 01:12:15'),
(42, 12, 42, 'IVA', 19, 0, 1, 1398.6, 'Completada', 1, 3, 3, '2025-01-24', '2025-01-24 16:08:05'),
(43, 12, 38, 'IVA', 19, 0, 2, 1037.4, 'Completada', 1, 3, 3, '2025-01-24', '2025-01-24 16:08:05'),
(44, 12, 37, 'IVA', 19, 0, 3, 1166.1, 'Completada', 1, 3, 3, '2025-01-24', '2025-01-24 16:08:05'),
(45, 13, 41, 'IVA', 19, 0, 1, 1118.6, 'Pendiente', 1, 1, 3, '2025-01-24', '2025-01-24 16:14:54'),
(46, 13, 40, 'IVA', 19, 0, 1, 838.6, 'Pendiente', 1, 1, 3, '2025-01-24', '2025-01-24 16:14:55'),
(47, 14, 13, 'IVA', 19, 0, 2, 2237.2, 'Pendiente', 1, 4, 1, '2025-01-31', '2025-01-31 14:42:51'),
(48, 14, 12, 'IVA', 19, 0, 1, 838.6, 'Pendiente', 1, 4, 1, '2025-01-31', '2025-01-31 14:42:49'),
(49, 14, 14, 'IVA', 19, 30, 1, 1398.6, 'Pendiente', 1, 4, 1, '2025-01-31', '2025-01-31 14:42:54'),
(53, 15, 14, 'IVA', 19, 30, 2, 83720, 'Completada', 1, 1, 1, '2025-02-14', '2025-02-15 03:03:09'),
(54, 15, 13, 'IVA', 19, 0, 1, 56000, 'Completada', 1, 1, 1, '2025-02-14', '2025-02-15 03:03:09'),
(55, 15, 12, 'IVA', 19, 0, 1, 91000, 'Completada', 1, 1, 1, '2025-02-14', '2025-02-15 03:03:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indices de la tabla `cashs`
--
ALTER TABLE `cashs`
  ADD PRIMARY KEY (`id_cash`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`);

--
-- Indices de la tabla `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id_office`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cashs`
--
ALTER TABLE `cashs`
  MODIFY `id_cash` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id_invoice` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
  MODIFY `id_office` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id_purchase` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
