-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2023 a las 01:54:52
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uttinventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `planta_id` bigint(20) UNSIGNED NOT NULL,
  `edificio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `name`, `planta_id`, `edificio_id`, `created_at`, `updated_at`) VALUES
(1, 'Recepción', 1, 1, '2022-11-30 05:23:05', '2022-11-30 05:23:05'),
(2, 'Soporte Técnico TIC Docencia 1', 1, 1, '2022-11-30 15:30:16', '2022-11-30 17:00:06'),
(3, 'Sala de juntas Docencia 1', 1, 1, '2022-11-30 17:19:52', '2022-11-30 17:19:52'),
(4, 'Cubículo 2 TICS Docencia 1', 1, 1, '2022-11-30 17:30:39', '2022-11-30 17:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `name`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Equipos', 'Ninguno', '2022-11-30 15:39:48', '2022-11-30 15:45:04'),
(2, 'Equipo Educacional y Recreativo', 'Ninguno', '2022-11-30 16:35:52', '2022-11-30 16:50:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificios`
--

CREATE TABLE `edificios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ubicacion` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `edificios`
--

INSERT INTO `edificios` (`id`, `name`, `number`, `email`, `ubicacion`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Docencia 1', 1234, 'arianamaciel5@gmail.com', 'A un costado de la entrada #1', 1, '2022-11-30 05:19:45', '2022-11-30 05:19:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 'Activo', 'Se encuentra en disponibilidad de uso', '2022-11-30 05:33:07', '2022-11-30 05:33:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `name`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'Ninguno', '2022-11-30 15:34:57', '2022-11-30 15:34:57'),
(2, 'CISCO', 'CISCO', '2022-11-30 16:33:42', '2022-11-30 16:33:42'),
(3, 'LANIX', 'Ninguno', '2022-11-30 17:01:27', '2022-11-30 17:01:27'),
(4, 'S/M', 'N/A', '2022-11-30 17:15:31', '2022-11-30 17:15:31'),
(5, 'SAMSUNG', 'Ninguno', '2022-11-30 17:27:41', '2022-11-30 17:27:41'),
(6, 'Logitech', 'Logitech', '2022-12-01 17:11:31', '2022-12-01 17:11:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_27_153832_edificio', 1),
(6, '2021_10_27_155035_plantas', 1),
(7, '2021_10_27_155410_areas', 1),
(8, '2021_10_27_160239_resguardos', 1),
(9, '2021_10_27_160351_prestamos', 1),
(10, '2021_10_27_161631_tipo_alta', 1),
(11, '2021_10_27_161701_estados', 1),
(12, '2021_10_27_161734_categoria', 1),
(13, '2021_10_27_162106_marca', 1),
(14, '2021_10_27_162219_subcategoria', 1),
(15, '2021_10_27_162501_modelo', 1),
(16, '2021_10_27_162600_producto', 1),
(17, '2021_11_05_220357_create_permission_tables', 1),
(18, '2021_11_29_225701_create_prestamo_producto_table', 1),
(19, '2021_11_30_193959_create_producto_resguardo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `modelo` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `modelo`, `marca_id`, `created_at`, `updated_at`) VALUES
(1, '2300MP', 1, '2022-11-30 15:40:52', '2022-11-30 15:40:52'),
(2, '2600', 2, '2022-11-30 16:54:29', '2022-11-30 16:54:29'),
(3, '3050 V3', 3, '2022-11-30 17:04:31', '2022-11-30 17:04:31'),
(4, 'S/M', 4, '2022-11-30 17:16:50', '2022-11-30 17:16:50'),
(5, 'GALAXY S6', 5, '2022-11-30 17:28:16', '2022-11-30 17:28:16'),
(6, 'M90', 6, '2022-12-01 17:13:34', '2022-12-01 17:13:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ver-rol', 'web', '2022-11-26 02:25:35', '2022-11-26 02:25:35'),
(2, 'crear-rol', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(3, 'editar-rol', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(4, 'borrar-rol', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(5, 'ver-edificio', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(6, 'crear-edificio', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(7, 'editar-edificio', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(8, 'borrar-edificio', 'web', '2022-11-26 02:25:37', '2022-11-26 02:25:37'),
(9, 'ver-planta', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(10, 'crear-planta', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(11, 'editar-planta', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(12, 'borrar-planta', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(13, 'ver-area', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(14, 'crear-area', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(15, 'editar-area', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(16, 'borrar-area', 'web', '2022-11-26 02:25:38', '2022-11-26 02:25:38'),
(17, 'ver-categoria', 'web', '2022-11-26 02:25:39', '2022-11-26 02:25:39'),
(18, 'crear-categoria', 'web', '2022-11-26 02:25:39', '2022-11-26 02:25:39'),
(19, 'editar-categoria', 'web', '2022-11-26 02:25:39', '2022-11-26 02:25:39'),
(20, 'borrar-categoria', 'web', '2022-11-26 02:25:39', '2022-11-26 02:25:39'),
(21, 'ver-subcategoria', 'web', '2022-11-26 02:25:39', '2022-11-26 02:25:39'),
(22, 'crear-subcategoria', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(23, 'editar-subcategoria', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(24, 'borrar-subcategoria', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(25, 'ver-estado', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(26, 'crear-estado', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(27, 'editar-estado', 'web', '2022-11-26 02:25:40', '2022-11-26 02:25:40'),
(28, 'borrar-estado', 'web', '2022-11-26 02:25:41', '2022-11-26 02:25:41'),
(29, 'ver-marca', 'web', '2022-11-26 02:25:41', '2022-11-26 02:25:41'),
(30, 'crear-marca', 'web', '2022-11-26 02:25:41', '2022-11-26 02:25:41'),
(31, 'editar-marca', 'web', '2022-11-26 02:25:41', '2022-11-26 02:25:41'),
(32, 'borrar-marca', 'web', '2022-11-26 02:25:41', '2022-11-26 02:25:41'),
(33, 'ver-modelo', 'web', '2022-11-26 02:25:42', '2022-11-26 02:25:42'),
(34, 'crear-modelo', 'web', '2022-11-26 02:25:42', '2022-11-26 02:25:42'),
(35, 'editar-modelo', 'web', '2022-11-26 02:25:42', '2022-11-26 02:25:42'),
(36, 'borrar-modelo', 'web', '2022-11-26 02:25:42', '2022-11-26 02:25:42'),
(37, 'ver-prestamo', 'web', '2022-11-26 02:25:43', '2022-11-26 02:25:43'),
(38, 'crear-prestamo', 'web', '2022-11-26 02:25:44', '2022-11-26 02:25:44'),
(39, 'editar-prestamo', 'web', '2022-11-26 02:25:44', '2022-11-26 02:25:44'),
(40, 'borrar-prestamo', 'web', '2022-11-26 02:25:44', '2022-11-26 02:25:44'),
(41, 'ver-producto', 'web', '2022-11-26 02:25:45', '2022-11-26 02:25:45'),
(42, 'crear-producto', 'web', '2022-11-26 02:25:45', '2022-11-26 02:25:45'),
(43, 'editar-producto', 'web', '2022-11-26 02:25:45', '2022-11-26 02:25:45'),
(44, 'borrar-producto', 'web', '2022-11-26 02:25:45', '2022-11-26 02:25:45'),
(45, 'ver-resguardo', 'web', '2022-11-26 02:25:46', '2022-11-26 02:25:46'),
(46, 'crear-resguardo', 'web', '2022-11-26 02:25:46', '2022-11-26 02:25:46'),
(47, 'editar-resguardo', 'web', '2022-11-26 02:25:46', '2022-11-26 02:25:46'),
(48, 'borrar-resguardo', 'web', '2022-11-26 02:25:46', '2022-11-26 02:25:46'),
(49, 'ver-tipoalta', 'web', '2022-11-26 02:25:46', '2022-11-26 02:25:46'),
(50, 'crear-tipoalta', 'web', '2022-11-26 02:25:47', '2022-11-26 02:25:47'),
(51, 'editar-tipoalta', 'web', '2022-11-26 02:25:47', '2022-11-26 02:25:47'),
(52, 'borrar-tipoalta', 'web', '2022-11-26 02:25:47', '2022-11-26 02:25:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `edificio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `name`, `edificio_id`, `created_at`, `updated_at`) VALUES
(1, 'Baja', 1, '2022-11-30 05:20:27', '2022-11-30 15:21:29'),
(2, 'Alta', 1, '2022-11-30 05:20:38', '2022-11-30 15:21:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_dev` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_sali` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id`, `matricula`, `name`, `email`, `fecha_dev`, `fecha_sali`, `observaciones`, `user_id`, `area_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '0320129488', 'Marco García', '0320129488@miutt.edu.mx', '2022-12-01', '2022-11-01', 'Producto en buenas condiciones', 3, 2, NULL, '2022-11-30 17:46:53', '2022-12-06 19:46:07'),
(2, '0320130975', 'Cristian López', '0320130975@ut-tijuana.edu.mx', '2022-12-07', '2022-12-05', 'Producto en buenas condiciones', 3, 2, '2022-12-05 23:49:24', '2022-12-05 19:23:40', '2022-12-05 23:49:24'),
(3, '0320127762', 'Ariana Maciel', 'arianamaciel5@gmail.com', '2022-12-08', '2022-12-07', 'Producto en buenas condiciones', 3, 2, NULL, '2022-12-07 17:12:37', '2022-12-07 17:12:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_producto`
--

CREATE TABLE `prestamo_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `prestamo_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `prestamo_producto`
--

INSERT INTO `prestamo_producto` (`id`, `producto_id`, `prestamo_id`, `quantity`, `created_at`, `updated_at`) VALUES
(22, 3, 2, 1, NULL, NULL),
(24, 1, 1, 1, NULL, NULL),
(25, 3, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num_inventario` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_alta` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `modelo_id` bigint(20) UNSIGNED NOT NULL,
  `num_serie` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `subcategoria_id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ubicacion` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `num_inventario`, `name`, `area_id`, `fecha_alta`, `marca_id`, `user_id`, `status_id`, `modelo_id`, `num_serie`, `categoria_id`, `subcategoria_id`, `imagen`, `ubicacion`, `created_at`, `updated_at`) VALUES
(1, 'FAM-0153', 'Cañón Proyector', 2, '1999-09-01', 1, 2, 1, 1, 'TW-0G5371-70641-49F-0220', 1, 1, 'Ninguno', 'Área de soporte técnico en Docencia #1', '2022-11-30 16:16:16', '2022-11-30 16:16:16'),
(2, '02-0263', 'ROUTER CISCO', 2, '2002-07-18', 2, 2, 1, 2, 'JMX0628K2KA', 2, 2, 'Ninguno', 'Área de soporte técnico en Docencia #1', '2022-11-30 16:56:51', '2022-11-30 16:56:51'),
(3, 'FAM-0173', 'COMPUTADORA PERSONAL', 2, '1999-09-01', 3, 2, 1, 3, '603275154', 1, 3, 'Ninguno', 'Área de soporte técnico en Docencia #1', '2022-11-30 17:08:50', '2022-11-30 17:08:50'),
(4, '03-0447', 'SILLA FIJA MODELO VISITANTE, COLOR NEGRA', 3, '2003-10-10', 4, 2, 1, 4, 'S/N', 2, 2, 'Ninguno', 'Sala de juntas Docencia 1 Planta Baja', '2022-11-30 17:22:23', '2022-11-30 17:22:23'),
(5, '15-0045', 'SAMSUNG GALAXY S6 32GB COLOR AZUL', 4, '2015-09-07', 5, 2, 1, 5, 'IMEI352148070154548', 1, 4, 'Ninguno', 'Cubículo 2 TICS Docencia 1', '2022-11-30 17:34:17', '2022-11-30 17:34:17'),
(6, 'P01', 'Mouse Alámbrico', 2, '2022-12-05', 6, 3, 1, 6, 'S/N', 1, 3, 'C:\\xampp\\tmp\\phpBF6A.tmp', 'Área de soporte técnico en Docencia #1', '2022-12-01 17:17:53', '2022-12-05 20:03:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_resguardo`
--

CREATE TABLE `producto_resguardo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `resguardo_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto_resguardo`
--

INSERT INTO `producto_resguardo` (`id`, `producto_id`, `resguardo_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 4, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resguardos`
--

CREATE TABLE `resguardos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_solicitante` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_resguardo` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `matricula` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_dev` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `resguardos`
--

INSERT INTO `resguardos` (`id`, `nombre_solicitante`, `number`, `email`, `fecha_resguardo`, `matricula`, `fecha_dev`, `observaciones`, `user_id`, `area_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cleotilde Tenorio Hernández', 6641234567, 'cleotilde.tenorio@uttijuana.edu.mx', '2023-01-02', '003', '2023-04-21', 'Producto en buenas condiciones', 3, 2, NULL, '2022-11-30 18:11:22', '2022-11-30 18:11:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2022-11-26 02:26:45', '2022-11-26 02:26:45'),
(2, 'Laboratorista', 'web', '2022-11-26 02:27:59', '2022-11-26 02:27:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `name`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Aparatos Visuales', 1, '2022-11-30 15:45:25', '2022-11-30 15:45:25'),
(2, 'Mobiliario', 2, '2022-11-30 16:50:24', '2022-11-30 16:50:24'),
(3, 'Equipo de Cómputo y de Tecnologías de la Información', 1, '2022-11-30 17:03:50', '2022-11-30 17:03:50'),
(4, 'Comunicación y Telecomunicación', 1, '2022-11-30 17:29:18', '2022-11-30 17:29:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoaltas`
--

CREATE TABLE `tipoaltas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipoaltas`
--

INSERT INTO `tipoaltas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Física', '2022-11-30 16:04:20', '2022-11-30 16:04:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `matricula`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0320127762', 'Ariana Maciel', 'arianamaciel5@gmail.com', NULL, '$2y$10$14HXF2w58OtMKTePYSzmRe4uXZsKRXXDadroXnIaD89FJXchLhvme', NULL, '2022-11-26 01:12:31', '2022-11-26 02:30:20'),
(2, '000', 'Judith Félix', 'jcristina.felix@uttijuana.edu.mx', NULL, '$2y$10$ULLqiukmyz3rXU352nk0c.yKiY2enBtzJG8qCCpJjijU6Kr80NTJi', NULL, '2022-11-30 16:11:01', '2022-11-30 17:41:31'),
(3, '002', 'Jovanny Perez Solano', 'jovanny.perez@uttijuana.edu.mx', NULL, '$2y$10$dPBG3zQOqlHClilN26POGec2OAtjJq7nNXbrBvzEY2lGamiycKI8a', NULL, '2022-11-30 17:56:35', '2022-11-30 17:58:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_edificio_id_foreign` (`edificio_id`),
  ADD KEY `areas_planta_id_foreign` (`planta_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edificios`
--
ALTER TABLE `edificios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edificios_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modelos_marca_id_foreign` (`marca_id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plantas_edificio_id_foreign` (`edificio_id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestamos_user_id_foreign` (`user_id`),
  ADD KEY `prestamos_area_id_foreign` (`area_id`);

--
-- Indices de la tabla `prestamo_producto`
--
ALTER TABLE `prestamo_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestamo_producto_producto_id_foreign` (`producto_id`),
  ADD KEY `prestamo_producto_prestamo_id_foreign` (`prestamo_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_area_id_foreign` (`area_id`),
  ADD KEY `productos_marca_id_foreign` (`marca_id`),
  ADD KEY `productos_user_id_foreign` (`user_id`),
  ADD KEY `productos_status_id_foreign` (`status_id`),
  ADD KEY `productos_modelo_id_foreign` (`modelo_id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `productos_subcategoria_id_foreign` (`subcategoria_id`);

--
-- Indices de la tabla `producto_resguardo`
--
ALTER TABLE `producto_resguardo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_resguardo_producto_id_foreign` (`producto_id`),
  ADD KEY `producto_resguardo_resguardo_id_foreign` (`resguardo_id`);

--
-- Indices de la tabla `resguardos`
--
ALTER TABLE `resguardos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resguardos_user_id_foreign` (`user_id`),
  ADD KEY `resguardos_area_id_foreign` (`area_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategorias_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `tipoaltas`
--
ALTER TABLE `tipoaltas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `edificios`
--
ALTER TABLE `edificios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `prestamo_producto`
--
ALTER TABLE `prestamo_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `producto_resguardo`
--
ALTER TABLE `producto_resguardo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `resguardos`
--
ALTER TABLE `resguardos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipoaltas`
--
ALTER TABLE `tipoaltas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_edificio_id_foreign` FOREIGN KEY (`edificio_id`) REFERENCES `edificios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_planta_id_foreign` FOREIGN KEY (`planta_id`) REFERENCES `plantas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `edificios`
--
ALTER TABLE `edificios`
  ADD CONSTRAINT `edificios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD CONSTRAINT `plantas_edificio_id_foreign` FOREIGN KEY (`edificio_id`) REFERENCES `edificios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prestamos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `prestamo_producto`
--
ALTER TABLE `prestamo_producto`
  ADD CONSTRAINT `prestamo_producto_prestamo_id_foreign` FOREIGN KEY (`prestamo_id`) REFERENCES `prestamos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prestamo_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_subcategoria_id_foreign` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipoaltas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_resguardo`
--
ALTER TABLE `producto_resguardo`
  ADD CONSTRAINT `producto_resguardo_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_resguardo_resguardo_id_foreign` FOREIGN KEY (`resguardo_id`) REFERENCES `resguardos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resguardos`
--
ALTER TABLE `resguardos`
  ADD CONSTRAINT `resguardos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resguardos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `subcategorias_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
