-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2019 a las 09:45:31
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plocandownloads`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add client', 7, 'add_client'),
(26, 'Can change client', 7, 'change_client'),
(27, 'Can delete client', 7, 'delete_client'),
(28, 'Can view client', 7, 'view_client'),
(29, 'Can add file', 8, 'add_file'),
(30, 'Can change file', 8, 'change_file'),
(31, 'Can delete file', 8, 'delete_file'),
(32, 'Can view file', 8, 'view_file');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$CzJhBPlRgNXw$ymDJnt7WQ4bLEpr4EvkacPA36xgoCHvOD/oS6U8yBhE=', '2019-05-02 09:53:35.596868', 1, 'root', '', '', 'root@root.com', 1, 1, '2019-04-23 13:29:51.426255');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-23 13:31:23.748321', '1', 'bdddiasnd.png', 1, '[{\"added\": {}}]', 8, 1),
(2, '2019-04-23 13:45:55.235318', '1', 'bdddiasnd.png', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(3, '2019-04-23 13:46:09.516534', '1', 'Poster de jesucristo', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(4, '2019-04-23 14:03:12.290541', '1', 'Jesucristo Poster', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(5, '2019-04-23 14:11:46.113477', '1', 'Jesucristo Poster', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(6, '2019-04-23 14:12:08.749032', '1', 'Jesucristo Poster', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(7, '2019-04-23 14:22:18.763434', '2', 'Pepe', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-04-23 14:23:14.109437', '3', 'imagen', 1, '[{\"added\": {}}]', 8, 1),
(9, '2019-04-23 14:24:38.320278', '4', 'pdf', 1, '[{\"added\": {}}]', 8, 1),
(10, '2019-04-24 09:51:09.605326', '4', 'pdf', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(11, '2019-04-24 09:51:17.233460', '3', 'imagen', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(12, '2019-04-24 09:51:23.769788', '2', 'Pepe', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(13, '2019-04-24 09:51:29.590401', '1', 'Jesucristo Poster', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(14, '2019-04-24 09:52:02.285321', '4', 'pdf', 2, '[{\"changed\": {\"fields\": [\"file\"]}}]', 8, 1),
(15, '2019-04-25 07:58:37.810376', '4', 'pdf', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 8, 1),
(16, '2019-04-25 07:58:47.576456', '3', 'pdf2', 2, '[{\"changed\": {\"fields\": [\"name\", \"category\"]}}]', 8, 1),
(17, '2019-04-25 07:59:00.072584', '2', 'Imagen1', 2, '[{\"changed\": {\"fields\": [\"name\", \"category\"]}}]', 8, 1),
(18, '2019-04-25 07:59:08.056351', '1', 'Imagen2', 2, '[{\"changed\": {\"fields\": [\"name\", \"category\"]}}]', 8, 1),
(19, '2019-04-25 07:59:41.350688', '5', 'documento1', 1, '[{\"added\": {}}]', 8, 1),
(20, '2019-04-25 07:59:54.781528', '6', 'documento2', 1, '[{\"added\": {}}]', 8, 1),
(21, '2019-04-26 07:50:30.729782', '6', 'documento2', 3, '', 8, 1),
(22, '2019-04-26 07:50:30.743649', '5', 'documento1', 3, '', 8, 1),
(23, '2019-04-26 07:50:30.753655', '4', 'pdf', 3, '', 8, 1),
(24, '2019-04-26 07:50:30.764593', '3', 'pdf2', 3, '', 8, 1),
(25, '2019-04-26 07:50:30.776566', '2', 'Imagen1', 3, '', 8, 1),
(26, '2019-04-26 07:50:30.816562', '1', 'Imagen2', 3, '', 8, 1),
(27, '2019-04-26 14:29:29.180299', '7', 'Documento de jesus', 1, '[{\"added\": {}}]', 8, 1),
(28, '2019-04-26 14:30:06.192177', '8', 'Documento de paco', 1, '[{\"added\": {}}]', 8, 1),
(29, '2019-04-26 14:30:33.562635', '9', 'Hola chavales', 1, '[{\"added\": {}}]', 8, 1),
(30, '2019-04-29 09:48:12.748664', '9', 'Hola chavales', 3, '', 8, 1),
(31, '2019-04-29 09:48:12.756645', '8', 'Documento de paco', 3, '', 8, 1),
(32, '2019-04-29 09:48:12.761038', '7', 'Documento de jesus', 3, '', 8, 1),
(33, '2019-04-29 13:55:33.486312', '10', 'AF_B3M-N15', 1, '[{\"added\": {}}]', 8, 1),
(34, '2019-04-29 13:55:56.574086', '11', 'AF-B3M-N1', 1, '[{\"added\": {}}]', 8, 1),
(35, '2019-04-29 13:56:49.899810', '12', 'AF-B3M-N2', 1, '[{\"added\": {}}]', 8, 1),
(36, '2019-04-29 13:57:06.203966', '13', 'AF-B3M-N3', 1, '[{\"added\": {}}]', 8, 1),
(37, '2019-04-29 13:57:21.507025', '14', 'AF-B3M-N4', 1, '[{\"added\": {}}]', 8, 1),
(38, '2019-04-29 13:57:38.026578', '15', 'AF-B3M-N5', 1, '[{\"added\": {}}]', 8, 1),
(39, '2019-04-29 13:57:51.976597', '16', 'AF-B3M-N6', 1, '[{\"added\": {}}]', 8, 1),
(40, '2019-04-29 13:58:11.521390', '17', 'AF-B3M-N7', 1, '[{\"added\": {}}]', 8, 1),
(41, '2019-04-29 13:58:29.941593', '18', 'AF-B3M-N8', 1, '[{\"added\": {}}]', 8, 1),
(42, '2019-04-29 13:58:47.560672', '19', 'B3M N9', 1, '[{\"added\": {}}]', 8, 1),
(43, '2019-04-29 13:59:05.297253', '20', 'B3M N10', 1, '[{\"added\": {}}]', 8, 1),
(44, '2019-04-29 13:59:25.326905', '21', 'B3M-N14 VF', 1, '[{\"added\": {}}]', 8, 1),
(45, '2019-04-29 14:01:45.364537', '22', 'ESTOC Informe técnico  nº 3-ICCM', 1, '[{\"added\": {}}]', 8, 1),
(46, '2019-04-29 14:02:01.382467', '23', 'ESTOC Informe técnico nº 7-ICCM', 1, '[{\"added\": {}}]', 8, 1),
(47, '2019-04-29 14:02:19.099090', '24', 'Informe técnico nº 8-ICCM', 1, '[{\"added\": {}}]', 8, 1),
(48, '2019-04-29 14:02:36.088809', '25', 'Informe técnico nº 9-ICCM', 1, '[{\"added\": {}}]', 8, 1),
(49, '2019-04-29 14:02:53.385956', '26', 'TEC. PESCA ARTESANAL', 1, '[{\"added\": {}}]', 8, 1),
(50, '2019-04-29 14:07:28.359232', '27', 'b3m-n11', 1, '[{\"added\": {}}]', 8, 1),
(51, '2019-04-29 14:07:45.301890', '28', 'b3m-n12', 1, '[{\"added\": {}}]', 8, 1),
(52, '2019-04-29 14:08:07.555653', '29', 'b3m-n13', 1, '[{\"added\": {}}]', 8, 1),
(53, '2019-04-29 14:08:49.790256', '30', 'AF Manual Boya SeaMon', 1, '[{\"added\": {}}]', 8, 1),
(54, '2019-04-29 14:09:23.949733', '31', 'buenas practicas portuarias pt', 1, '[{\"added\": {}}]', 8, 1),
(55, '2019-04-29 14:09:43.446755', '32', 'gestion de aguas portuarias pt', 1, '[{\"added\": {}}]', 8, 1),
(56, '2019-04-29 14:10:05.375639', '33', 'manual barquito primaria', 1, '[{\"added\": {}}]', 8, 1),
(57, '2019-04-29 14:10:41.038799', '34', 'Manual de los Botes Educativos', 1, '[{\"added\": {}}]', 8, 1),
(58, '2019-04-29 14:10:54.739296', '35', 'Manual Edurovs 01', 1, '[{\"added\": {}}]', 8, 1),
(59, '2019-04-29 14:11:08.946949', '36', 'Manual Edurovs 02', 1, '[{\"added\": {}}]', 8, 1),
(60, '2019-04-29 14:11:30.691703', '37', 'Manual EDUROVs', 1, '[{\"added\": {}}]', 8, 1),
(61, '2019-04-29 14:12:20.325548', '38', 'PLOCAN_memoria07080910_maquetada', 1, '[{\"added\": {}}]', 8, 1),
(62, '2019-04-29 14:12:52.663965', '39', 'PLOCANMEM11alta-3', 1, '[{\"added\": {}}]', 8, 1),
(63, '2019-04-29 14:13:17.955880', '40', 'PLOCANMEM11-ING', 1, '[{\"added\": {}}]', 8, 1),
(64, '2019-04-29 14:14:07.350458', '41', 'Annual Report 2012 PLOCAN', 1, '[{\"added\": {}}]', 8, 1),
(65, '2019-04-29 14:14:25.351468', '42', 'Memoria Plocan 2012 libro ok5', 1, '[{\"added\": {}}]', 8, 1),
(66, '2019-04-29 14:14:48.740674', '43', 'AF_MEMORIAPLOCAN13_ES', 1, '[{\"added\": {}}]', 8, 1),
(67, '2019-04-29 14:15:06.422730', '44', 'AF_MEMORIAPLOCAN13_ING', 1, '[{\"added\": {}}]', 8, 1),
(68, '2019-04-29 14:15:31.787461', '45', 'informePLOCAN14_ALTA_vF', 1, '[{\"added\": {}}]', 8, 1),
(69, '2019-04-29 14:15:50.048702', '46', 'informePLOCAN14_ingles_ALTA', 1, '[{\"added\": {}}]', 8, 1),
(70, '2019-04-29 14:16:21.357361', '47', 'MEMORIAPLOCAN15_HD', 1, '[{\"added\": {}}]', 8, 1),
(71, '2019-04-29 14:16:50.774359', '48', 'MEMORIAPLOCAN15_ING', 1, '[{\"added\": {}}]', 8, 1),
(72, '2019-04-29 14:17:28.689727', '49', 'MEMORIAPLOCAN16_9_vF', 1, '[{\"added\": {}}]', 8, 1),
(73, '2019-04-29 14:17:52.609685', '50', 'MEMORIAPLOCAN16_INGLES', 1, '[{\"added\": {}}]', 8, 1),
(74, '2019-04-29 14:18:29.489003', '51', 'MEMORIAPLOCAN17_ALTA', 1, '[{\"added\": {}}]', 8, 1),
(75, '2019-04-29 14:18:45.074453', '52', 'MEMORIAPLOCAN17_ING', 1, '[{\"added\": {}}]', 8, 1),
(76, '2019-04-29 14:34:31.064763', '53', 'ENVRIplus', 1, '[{\"added\": {}}]', 8, 1),
(77, '2019-04-29 14:34:45.500448', '54', 'AORAC-SA EN', 1, '[{\"added\": {}}]', 8, 1),
(78, '2019-04-29 14:34:58.781070', '55', 'ATLANTOS', 1, '[{\"added\": {}}]', 8, 1),
(79, '2019-04-29 14:35:21.147746', '56', 'COST 01', 1, '[{\"added\": {}}]', 8, 1),
(80, '2019-04-29 14:35:31.672859', '57', 'ESTOC', 1, '[{\"added\": {}}]', 8, 1),
(81, '2019-04-29 14:35:44.377121', '58', 'Estramar', 1, '[{\"added\": {}}]', 8, 1),
(82, '2019-04-29 14:35:54.805080', '59', 'FixO3 EN', 1, '[{\"added\": {}}]', 8, 1),
(83, '2019-04-29 14:36:10.617782', '60', 'FIXO3', 1, '[{\"added\": {}}]', 8, 1),
(84, '2019-04-29 14:36:24.327302', '61', 'GROOM', 1, '[{\"added\": {}}]', 8, 1),
(85, '2019-04-29 14:36:39.186755', '62', 'Leanwind EN', 1, '[{\"added\": {}}]', 8, 1),
(86, '2019-04-29 14:36:55.380841', '63', 'MacSIMAR', 1, '[{\"added\": {}}]', 8, 1),
(87, '2019-04-29 14:37:08.919976', '64', 'MARCET', 1, '[{\"added\": {}}]', 8, 1),
(88, '2019-04-29 14:37:21.005906', '65', 'MARES ES y PT', 1, '[{\"added\": {}}]', 8, 1),
(89, '2019-04-29 14:37:31.896941', '66', 'NetBiome 01 EN', 1, '[{\"added\": {}}]', 8, 1),
(90, '2019-04-29 14:38:05.197689', '67', 'NetBiome 01 ES', 1, '[{\"added\": {}}]', 8, 1),
(91, '2019-04-29 14:38:23.640149', '68', 'NEXOS EN', 1, '[{\"added\": {}}]', 8, 1),
(92, '2019-04-29 14:38:58.429987', '69', 'NEXOS sensors 1', 1, '[{\"added\": {}}]', 8, 1),
(93, '2019-04-29 14:39:17.930347', '70', 'NEXOS sensors 2', 1, '[{\"added\": {}}]', 8, 1),
(94, '2019-04-29 14:39:33.291277', '71', 'OceanEraNET', 1, '[{\"added\": {}}]', 8, 1),
(95, '2019-04-29 14:39:44.209434', '72', 'PERSEUS', 1, '[{\"added\": {}}]', 8, 1),
(96, '2019-04-29 14:39:56.896154', '73', 'Proyectos PLOCAN 2019', 1, '[{\"added\": {}}]', 8, 1),
(97, '2019-04-29 14:40:12.560508', '74', 'REDSUB 01', 1, '[{\"added\": {}}]', 8, 1),
(98, '2019-04-29 14:40:25.906941', '75', 'ROVINO 2017', 1, '[{\"added\": {}}]', 8, 1),
(99, '2019-04-29 14:40:59.046045', '76', 'SMART BLUE', 1, '[{\"added\": {}}]', 8, 1),
(100, '2019-04-29 14:41:16.752532', '77', 'SmartBlue', 1, '[{\"added\": {}}]', 8, 1),
(101, '2019-04-29 14:41:26.152353', '77', 'SmartBlue', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 8, 1),
(102, '2019-04-29 14:41:40.295470', '78', 'SWARMs', 1, '[{\"added\": {}}]', 8, 1),
(103, '2019-04-29 14:41:55.616252', '79', 'TROPOS', 1, '[{\"added\": {}}]', 8, 1),
(104, '2019-04-29 14:42:11.080591', '80', 'UnderWorld', 1, '[{\"added\": {}}]', 8, 1),
(105, '2019-04-29 14:42:24.327922', '81', 'UNDIGEN 01 ES', 1, '[{\"added\": {}}]', 8, 1),
(106, '2019-04-29 14:42:37.911881', '82', 'UNDIGEN', 1, '[{\"added\": {}}]', 8, 1),
(107, '2019-04-29 14:42:54.971425', '83', 'UNDIGEN+ 01 EN', 1, '[{\"added\": {}}]', 8, 1),
(108, '2019-04-29 14:43:09.778701', '84', 'UNDIGEN+01 ES', 1, '[{\"added\": {}}]', 8, 1),
(109, '2019-04-29 14:43:26.693307', '85', 'welcome', 1, '[{\"added\": {}}]', 8, 1),
(110, '2019-04-29 14:43:46.566082', '86', 'FORMACION', 1, '[{\"added\": {}}]', 8, 1),
(111, '2019-04-29 14:43:55.564518', '87', 'RESIDUOS PLOCAN 2019', 1, '[{\"added\": {}}]', 8, 1),
(112, '2019-04-30 08:42:39.351318', '38', 'PLOCAN_memoria07080910_maquetada', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(113, '2019-04-30 08:43:05.623257', '40', 'PLOCANMEM11-ING', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(114, '2019-04-30 08:43:32.216630', '39', 'PLOCANMEM11alta-3', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(115, '2019-04-30 08:44:37.400402', '41', 'Annual Report 2012 PLOCAN', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(116, '2019-04-30 08:45:10.518724', '42', 'Memoria Plocan 2012 libro ok5', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(117, '2019-04-30 08:45:39.677841', '44', 'AF_MEMORIAPLOCAN13_ING', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(118, '2019-04-30 08:45:47.623922', '43', 'AF_MEMORIAPLOCAN13_ES', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(119, '2019-04-30 08:46:26.869013', '46', 'informePLOCAN14_ingles_ALTA', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(120, '2019-04-30 08:46:37.833714', '45', 'informePLOCAN14_ALTA_vF', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(121, '2019-04-30 08:47:02.675669', '47', 'MEMORIAPLOCAN15_HD', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(122, '2019-04-30 08:47:10.709833', '48', 'MEMORIAPLOCAN15_ING', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(123, '2019-04-30 08:47:24.327661', '50', 'MEMORIAPLOCAN16_INGLES', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(124, '2019-04-30 08:47:36.958747', '49', 'MEMORIAPLOCAN16_9_vF', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(125, '2019-04-30 08:47:54.415309', '52', 'MEMORIAPLOCAN17_ING', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(126, '2019-04-30 08:48:04.692973', '51', 'MEMORIAPLOCAN17_ALTA', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(127, '2019-05-02 10:10:06.476550', '34', 'Barcos Educativos - manuales', 2, '[{\"changed\": {\"fields\": [\"name\", \"file\"]}}]', 8, 1),
(128, '2019-05-02 10:11:42.300381', '88', 'MBP _N.0 - manuales', 1, '[{\"added\": {}}]', 8, 1),
(129, '2019-05-02 10:12:48.534840', '88', 'MBP _N0 - manuales', 2, '[{\"changed\": {\"fields\": [\"name\", \"file\"]}}]', 8, 1),
(130, '2019-05-02 10:13:05.490326', '89', 'MBP_N1 - manuales', 1, '[{\"added\": {}}]', 8, 1),
(131, '2019-05-02 10:13:27.704212', '90', 'MBP_N2 - manuales', 1, '[{\"added\": {}}]', 8, 1),
(132, '2019-05-02 10:14:00.580139', '33', 'Manual barquito primaria - manuales', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(133, '2019-05-02 10:15:17.797642', '33', 'PRIMROV - manuales', 2, '[{\"changed\": {\"fields\": [\"name\", \"file\"]}}]', 8, 1),
(134, '2019-05-02 10:16:26.016344', '91', 'Proceso Construcción Plataforma_EN - manuales', 1, '[{\"added\": {}}]', 8, 1),
(135, '2019-05-02 10:16:39.762680', '92', 'Proceso Construcción Plataforma_ES - manuales', 1, '[{\"added\": {}}]', 8, 1),
(136, '2019-05-02 10:17:54.423888', '30', 'AF Manual Boya SeaMon - manuales', 2, '[]', 8, 1),
(137, '2019-05-02 10:21:36.536518', '26', 'TEC. PESCA ARTESANAL - informes', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(138, '2019-05-02 10:22:02.440702', '25', 'Informe técnico nº 9-ICCM - informes', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(139, '2019-05-02 10:22:06.233379', '24', 'Informe técnico nº 8-ICCM - informes', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(140, '2019-05-02 10:22:09.873066', '23', 'ESTOC Informe técnico nº 7-ICCM - informes', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1),
(141, '2019-05-02 10:22:13.467455', '22', 'ESTOC Informe técnico  nº 3-ICCM - informes', 2, '[{\"changed\": {\"fields\": [\"subcategory\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'downloadspage', 'client'),
(8, 'downloadspage', 'file'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-23 13:27:20.517213'),
(2, 'auth', '0001_initial', '2019-04-23 13:27:21.954557'),
(3, 'admin', '0001_initial', '2019-04-23 13:27:31.047688'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 13:27:33.672539'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-23 13:27:33.735000'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 13:27:35.391170'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 13:27:36.281733'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 13:27:37.547215'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 13:27:37.609764'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 13:27:38.094106'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 13:27:38.172224'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 13:27:38.219096'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 13:27:39.328394'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 13:27:40.625178'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-04-23 13:27:41.562611'),
(16, 'auth', '0011_update_proxy_permissions', '2019-04-23 13:27:41.640731'),
(17, 'sessions', '0001_initial', '2019-04-23 13:27:42.359431'),
(18, 'downloadspage', '0001_initial', '2019-04-23 13:27:55.764741'),
(19, 'downloadspage', '0002_client_id_file', '2019-04-24 09:58:01.503086'),
(20, 'downloadspage', '0003_client_date', '2019-04-24 12:02:05.518861');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0744jdce22zy2opy031v7wxgh7r96m73', 'ZjlhOTgwMTNhMzRlMWFjMzMwYTQ4ODNlYjRiNWQyNmJiMGE5NTM4Mjp7Im5hbWUiOiJwYWNzaW5pT0FOTyIsImxvY2F0aW9uIjoiSVdOTkRJT0FTTkRJT04iLCJwdXJwb3NlIjoiT05JT0RBU05JT0ROQVNPRCIsImlkIjoiMyIsInNhdmVkIjp0cnVlfQ==', '2019-05-08 10:42:08.850271'),
('1cfucaz1clydxcnbfqy3gwsw51dzy406', 'MzU2ZWU0MmYxNTI2N2Q3MmIxNGM5Y2E1ZDFjOGI3YWU1OTk5NTg0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNjg4ODY3ODA1NjYzZGY4NDU0MDY2N2RmMjljZTdhYzIxNzgzNjFjIn0=', '2019-05-16 09:53:35.602310'),
('2dja4t8dse5awijfsm8stmweqfbsbjzc', 'OGRiZDBjMGE5OTM4ZTgyNDZkNWQ5YjhlOGU3NjNiOWZjMWMxNTc5Njp7Im5hbWUiOiJkaGFzZ2R1aSIsImxvY2F0aW9uIjoiaGR1YXNpZHVpYXMiLCJwdXJwb3NlIjoiZ3VkaWFzZ2R1aWFzIiwiaWQiOiIzIiwic2F2ZWQiOnRydWV9', '2019-05-08 13:01:26.356070'),
('2xl2kupqxzmpv8zoqgfhe9lqkd3pvjrl', 'NjI1MmU4Y2E1Mzc3OGIzNGFkZTdhYmFkNzFiMmU2ZWQ1MjQ3OGU5Mzp7Im5hbWUiOiJkYmFzaXVkYmFzaSIsImxvY2F0aW9uIjoib2libmRzYXVpYmR1aWFzIiwicHVycG9zZSI6ImlvYm5kdWlhc2JkdWlhc2JkIiwiaWQiOiIyIiwic2F2ZWQiOnRydWUsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjdiZTY3NzdmODgwYjk2Yzc0NTZkOWM5YzJjZTRiOTI3NjVlMjkzIn0=', '2019-05-08 10:49:05.288579'),
('4e8odwvrzg2kc85y2rlxoi2m0tbb0ha1', 'MmI0Yjg2ZTJmMTQxNjgwY2ZlNmQ4MzQzYjc5MTcxYjc3ZTJlNzAwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjdiZTY3NzdmODgwYjk2Yzc0NTZkOWM5YzJjZTRiOTI3NjVlMjkzIn0=', '2019-05-10 14:28:55.967263'),
('5r1kmduhvv32bmogv08klmt2uyxt910w', 'MmI0Yjg2ZTJmMTQxNjgwY2ZlNmQ4MzQzYjc5MTcxYjc3ZTJlNzAwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjdiZTY3NzdmODgwYjk2Yzc0NTZkOWM5YzJjZTRiOTI3NjVlMjkzIn0=', '2019-05-10 07:50:03.061175'),
('9rdmx4g0uocmztbg75npl4006fg0cs7j', 'NzA3N2IwYzU1YTA0YmJjNjljOTIzYTcwZTRmYWFmNTFhZWI5YTc1NDp7Im5hbWUiOiJEYW5pZWwiLCJsb2NhdGlvbiI6IkxhcyBQYWxtYXMiLCJwdXJwb3NlIjoicG9ycXVlIGNyZW8gZW4gZGlvcyIsImlkIjoiMSIsInNhdmVkIjp0cnVlLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODY3YmU2Nzc3Zjg4MGI5NmM3NDU2ZDljOWMyY2U0YjkyNzY1ZTI5MyJ9', '2019-05-09 07:58:28.150174'),
('b908q5cvmccmob3xe16zrplswfgft5lf', 'ZTI5OGUwZjZjOTNhMTcyMmI0ODAyZGFmNDlkYTAwZmEyMDE1NzgyYjp7Im5hbWUiOiJkYW5pZWwiLCJsb2NhdGlvbiI6IkxhcyBQYWxtYXMgIiwicHVycG9zZSI6InBvcnF1ZSBzaSIsImlkIjoiODciLCJzYXZlZCI6dHJ1ZSwiX3Nlc3Npb25fZXhwaXJ5Ijo5MDB9', '2019-04-30 11:51:37.247107'),
('eqil1k82nesg3oqvzic9v6cnb3ckv4km', 'MWE3M2Q3MTNiMzg4MDcxZGQ5ZGZiYTY3OWU3YjE2NWVlNTllZjk1NDp7Im5hbWUiOiJwYWMiLCJsb2NhdGlvbiI6InBleCIsInB1cnBvc2UiOiJwaWMiLCJpZCI6IjUiLCJzYXZlZCI6dHJ1ZSwiX3Nlc3Npb25fZXhwaXJ5IjozMH0=', '2019-04-25 08:20:36.968100'),
('fjxeq7vi54dpc0qkvbb2vfzx31ys145o', 'YjgzZjYxY2NjNWNlOWIwMmRiNWFjMGM3NzBkNDI1NzE0NzFjOTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNjg4ODY3ODA1NjYzZGY4NDU0MDY2N2RmMjljZTdhYzIxNzgzNjFjIiwibmFtZSI6InBhY28iLCJsb2NhdGlvbiI6InBlcGUiLCJwdXJwb3NlIjoianVhbiIsImlkIjoiODMiLCJzYXZlZCI6dHJ1ZSwiX3Nlc3Npb25fZXhwaXJ5Ijo5MDB9', '2019-04-30 08:55:54.990526'),
('j91joegf5g5zrlhqqrzlj3yti6e66jqx', 'MDJhNzc5N2I2MzNlOWFlZDIzYTNkNDA4MGMxNTFiYzExY2YyNmZmMjp7Im5hbWUiOiJwYWMiLCJsb2NhdGlvbiI6InBleCIsInB1cnBvc2UiOiJwaWMiLCJpZCI6IjMiLCJzYXZlZCI6dHJ1ZSwiX3Nlc3Npb25fZXhwaXJ5IjozMH0=', '2019-04-25 08:19:56.070080'),
('jezxo1vtvgteoh3vi54p2g9spkci7cm1', 'NjEwMDgyMzUyNTRjOWQ3ODI5ODAwZDM4ZjQ2MDRkNjM5MzQ2YTNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjdiZTY3NzdmODgwYjk2Yzc0NTZkOWM5YzJjZTRiOTI3NjVlMjkzIiwibmFtZSI6InBhY28iLCJsb2NhdGlvbiI6ImxhcyBwYWxtYXMiLCJwdXJwb3NlIjoiaWFuc2RvaWFzbmRpb2FzbmRvaWFzbmRpb2Fuc2RvaWFzbmRvYXNpbmRvaWFzbmRpb2FzbmRvaWFzZCIsImlkIjoiNSIsInNhdmVkIjp0cnVlLCJfc2Vzc2lvbl9leHBpcnkiOjkwMH0=', '2019-04-26 08:03:48.387857'),
('qx3q2dja5vd1yhxpidy4e1hvi68v2jgr', 'YTY2YjQzY2RjZjFhNjg0MTIwNGFlMmYxNDNkM2QzODA1YTA4MDgzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjdiZTY3NzdmODgwYjk2Yzc0NTZkOWM5YzJjZTRiOTI3NjVlMjkzIiwiZm9ybWRhdGEiOiIiLCJkYXRhc2F2ZWQiOiIiLCJzYXZlZCI6IiJ9', '2019-05-08 10:25:36.437602'),
('rkyr8unexhh4lx2qzpuegwumvo1y7z5w', 'NzE4YmIyMDM1NDBmOTcwNWIzYTA5ODMzMzRiMmQzMThlNWJmY2IyNzp7Im5hbWUiOiJ4ZCIsImxvY2F0aW9uIjoiZG5hc29kbmFpbyIsInB1cnBvc2UiOiJucWlvbmRvaXNhIiwiaWQiOiIxIiwic2F2ZWQiOnRydWV9', '2019-05-08 10:39:45.648669'),
('s4yp2nllgb61wo8ivdl698bj4949gtib', 'OWUxNzk2NGRlNTliZWI2ZTA2NTVlODcwZjNkNmRkMDI1Y2Y5ZTBkZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNjg4ODY3ODA1NjYzZGY4NDU0MDY2N2RmMjljZTdhYzIxNzgzNjFjIiwibmFtZSI6IlBhY28iLCJsb2NhdGlvbiI6ImxhcyBwYWxtYXMiLCJwdXJwb3NlIjoiaG9sYSIsImlkIjoiNDIiLCJzYXZlZCI6dHJ1ZSwiX3Nlc3Npb25fZXhwaXJ5Ijo5MDB9', '2019-04-29 14:37:33.557840'),
('wmlx0de1mcc8c1cv7xmjgtsj18p8cdf4', 'MjY2Y2M5YTBjYjUyMzkwMzEzNzAyNTg4NjgyZjRjMDgxOWUyMmJhYzp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsIm5hbWUiOiJob2xhIGEgdG9kb29zIiwibG9jYXRpb24iOiJtaWtlIiwicHVycG9zZSI6InRlIHF1aWVybyBiZWJvdGUiLCJpZCI6IjUiLCJzYXZlZCI6dHJ1ZX0=', '2019-04-25 08:16:06.398882');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `downloadspage_client`
--

CREATE TABLE `downloadspage_client` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `purpose` varchar(350) NOT NULL,
  `id_file_id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `downloadspage_client`
--

INSERT INTO `downloadspage_client` (`id`, `name`, `location`, `purpose`, `id_file_id`, `date`) VALUES
(2, 'paco', 'pepe', 'juan', 83, '2019-04-30 08:40:56.574511'),
(3, 'daniel', 'Las Palmas ', 'porque si', 87, '2019-04-30 11:36:38.552013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `downloadspage_file`
--

CREATE TABLE `downloadspage_file` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `category` varchar(150) NOT NULL,
  `subcategory` varchar(150) DEFAULT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `downloadspage_file`
--

INSERT INTO `downloadspage_file` (`id`, `name`, `file`, `category`, `subcategory`, `date`) VALUES
(10, 'AF_B3M-N15', 'AF_B3M-N15.pdf', 'b3m', NULL, '2019-04-29 13:54:09.000000'),
(11, 'AF-B3M-N1', 'AF-B3M-N1.pdf', 'b3m', NULL, '2019-04-29 13:55:35.000000'),
(12, 'AF-B3M-N2', 'AF-B3M-N2.pdf', 'b3m', NULL, '2019-04-29 13:56:36.000000'),
(13, 'AF-B3M-N3', 'AF-B3M-N3.pdf', 'b3m', NULL, '2019-04-29 13:56:51.000000'),
(14, 'AF-B3M-N4', 'AF-B3M-N4.pdf', 'b3m', NULL, '2019-04-29 13:57:07.000000'),
(15, 'AF-B3M-N5', 'AF-B3M-N5.pdf', 'b3m', NULL, '2019-04-29 13:57:23.000000'),
(16, 'AF-B3M-N6', 'AF-B3M-N6.pdf', 'b3m', NULL, '2019-04-29 13:57:39.000000'),
(17, 'AF-B3M-N7', 'AF-B3M-N7.pdf', 'b3m', NULL, '2019-04-29 13:57:53.000000'),
(18, 'AF-B3M-N8', 'AF-B3M-N8.pdf', 'b3m', NULL, '2019-04-29 13:58:13.000000'),
(19, 'B3M N9', 'B3M_N9.pdf', 'b3m', NULL, '2019-04-29 13:58:31.000000'),
(20, 'B3M N10', 'B3M_N10.pdf', 'b3m', NULL, '2019-04-29 13:58:49.000000'),
(21, 'B3M-N14 VF', 'B3M-N14_VF.pdf', 'b3m', NULL, '2019-04-29 13:59:06.000000'),
(22, 'ESTOC Informe técnico  nº 3-ICCM', 'ESTOC_Informe_técnico__nº_3-ICCM.pdf', 'informes', 'Técnicos', '2019-04-29 14:01:14.000000'),
(23, 'ESTOC Informe técnico nº 7-ICCM', 'ESTOC_Informe_técnico_nº_7-ICCM.pdf', 'informes', 'Técnicos', '2019-04-29 14:01:47.000000'),
(24, 'Informe técnico nº 8-ICCM', 'Informe_técnico_nº_8-ICCM.pdf', 'informes', 'Técnicos', '2019-04-29 14:02:02.000000'),
(25, 'Informe técnico nº 9-ICCM', 'Informe_técnico_nº_9-ICCM.pdf', 'informes', 'Técnicos', '2019-04-29 14:02:22.000000'),
(26, 'TEC. PESCA ARTESANAL', 'TEC._PESCA_ARTESANAL.pdf', 'informes', 'Técnicos', '2019-04-29 14:02:39.000000'),
(27, 'b3m-n11', 'b3m-n11.pdf', 'b3m', NULL, '2019-04-29 14:07:07.000000'),
(28, 'b3m-n12', 'b3m-n12.pdf', 'b3m', NULL, '2019-04-29 14:07:30.000000'),
(29, 'b3m-n13', 'b3m-n13.pdf', 'b3m', NULL, '2019-04-29 14:07:47.000000'),
(30, 'AF Manual Boya SeaMon', 'AF_Manual_Boya_SeaMon.pdf', 'manuales', NULL, '2019-04-29 14:08:23.000000'),
(31, 'buenas practicas portuarias pt', 'buenas_practicas_portuarias_pt.pdf', 'manuales', NULL, '2019-04-29 14:08:51.000000'),
(32, 'gestion de aguas portuarias pt', 'gestion_de_aguas_portuarias_pt.pdf', 'manuales', NULL, '2019-04-29 14:09:25.000000'),
(33, 'PRIMROV', 'PRIMROV.pdf', 'manuales', NULL, '2019-04-29 14:09:44.000000'),
(34, 'Barcos Educativos', 'Barcos_Educativos.pdf', 'manuales', NULL, '2019-04-29 14:10:28.000000'),
(35, 'Manual Edurovs 01', 'Manual_Edurovs_01.pdf', 'manuales', NULL, '2019-04-29 14:10:42.000000'),
(36, 'Manual Edurovs 02', 'Manual_Edurovs_02.pdf', 'manuales', NULL, '2019-04-29 14:10:56.000000'),
(37, 'Manual EDUROVs', 'Manual_EDUROVs.pdf', 'manuales', NULL, '2019-04-29 14:11:10.000000'),
(38, 'PLOCAN_memoria07080910_maquetada', 'PLOCAN_memoria07080910_maquetada.pdf', 'memorias', '2010', '2019-04-29 14:11:54.000000'),
(39, 'PLOCANMEM11alta-3', 'PLOCANMEM11alta-3.pdf', 'memorias', '2011', '2019-04-29 14:12:22.000000'),
(40, 'PLOCANMEM11-ING', 'PLOCANMEM11-ING.pdf', 'memorias', '2011', '2019-04-29 14:12:55.000000'),
(41, 'Annual Report 2012 PLOCAN', 'Annual_Report_2012_PLOCAN.pdf', 'memorias', '2012', '2019-04-29 14:13:39.000000'),
(42, 'Memoria Plocan 2012 libro ok5', 'Memoria_Plocan_2012_libro_ok5.pdf', 'memorias', '2012', '2019-04-29 14:14:11.000000'),
(43, 'AF_MEMORIAPLOCAN13_ES', 'AF_MEMORIAPLOCAN13_ES.pdf', 'memorias', '2013', '2019-04-29 14:14:31.000000'),
(44, 'AF_MEMORIAPLOCAN13_ING', 'AF_MEMORIAPLOCAN13_ING.pdf', 'memorias', '2013', '2019-04-29 14:14:50.000000'),
(45, 'informePLOCAN14_ALTA_vF', 'informePLOCAN14_ALTA_vF.pdf', 'memorias', '2014', '2019-04-29 14:15:20.000000'),
(46, 'informePLOCAN14_ingles_ALTA', 'informePLOCAN14_ingles_ALTA.pdf', 'memorias', '2014', '2019-04-29 14:15:33.000000'),
(47, 'MEMORIAPLOCAN15_HD', 'MEMORIAPLOCAN15_HD.pdf', 'memorias', '2015', '2019-04-29 14:15:52.000000'),
(48, 'MEMORIAPLOCAN15_ING', 'MEMORIAPLOCAN15_ING.pdf', 'memorias', '2015', '2019-04-29 14:16:26.000000'),
(49, 'MEMORIAPLOCAN16_9_vF', 'MEMORIAPLOCAN16_9_vF.pdf', 'memorias', '2016', '2019-04-29 14:17:05.000000'),
(50, 'MEMORIAPLOCAN16_INGLES', 'MEMORIAPLOCAN16_INGLES.pdf', 'memorias', '2016', '2019-04-29 14:17:31.000000'),
(51, 'MEMORIAPLOCAN17_ALTA', 'MEMORIAPLOCAN17_ALTA.pdf', 'memorias', '2017', '2019-04-29 14:17:56.000000'),
(52, 'MEMORIAPLOCAN17_ING', 'MEMORIAPLOCAN17_ING.pdf', 'memorias', '2017', '2019-04-29 14:18:31.000000'),
(53, 'ENVRIplus', '_ENVRIplus.pdf', 'proyectos', NULL, '2019-04-29 14:34:00.000000'),
(54, 'AORAC-SA EN', 'AORAC-SA_EN.pdf', 'proyectos', NULL, '2019-04-29 14:34:32.000000'),
(55, 'ATLANTOS', 'ATLANTOS.pdf', 'proyectos', NULL, '2019-04-29 14:34:46.000000'),
(56, 'COST 01', 'COST_01.pdf', 'proyectos', NULL, '2019-04-29 14:35:01.000000'),
(57, 'ESTOC', 'ESTOC.pdf', 'proyectos', NULL, '2019-04-29 14:35:23.000000'),
(58, 'Estramar', 'Estramar.pdf', 'proyectos', NULL, '2019-04-29 14:35:32.000000'),
(59, 'FixO3 EN', 'FixO3_EN.pdf', 'proyectos', NULL, '2019-04-29 14:35:45.000000'),
(60, 'FIXO3', 'FIXO3.PDF', 'proyectos', NULL, '2019-04-29 14:35:56.000000'),
(61, 'GROOM', 'GROOM.pdf', 'proyectos', NULL, '2019-04-29 14:36:12.000000'),
(62, 'Leanwind EN', 'Leanwind_EN.pdf', 'proyectos', NULL, '2019-04-29 14:36:27.000000'),
(63, 'MacSIMAR', 'MacSIMAR.pdf', 'proyectos', NULL, '2019-04-29 14:36:40.000000'),
(64, 'MARCET', 'MARCET.pdf', 'proyectos', NULL, '2019-04-29 14:36:57.000000'),
(65, 'MARES ES y PT', 'MARES_ES_y_PT.pdf', 'proyectos', NULL, '2019-04-29 14:37:10.000000'),
(66, 'NetBiome 01 EN', 'NetBiome_01_EN.pdf', 'proyectos', NULL, '2019-04-29 14:37:22.000000'),
(67, 'NetBiome 01 ES', 'NetBiome_01_ES.pdf', 'proyectos', NULL, '2019-04-29 14:37:56.000000'),
(68, 'NEXOS EN', 'NEXOS_EN.pdf', 'proyectos', NULL, '2019-04-29 14:38:09.000000'),
(69, 'NEXOS sensors 1', 'NEXOS_sensors_1.pdf', 'proyectos', NULL, '2019-04-29 14:38:25.000000'),
(70, 'NEXOS sensors 2', 'NEXOS_sensors_2.pdf', 'proyectos', NULL, '2019-04-29 14:39:00.000000'),
(71, 'OceanEraNET', 'OceanEraNET.pdf', 'proyectos', NULL, '2019-04-29 14:39:25.000000'),
(72, 'PERSEUS', 'PERSEUS.pdf', 'proyectos', NULL, '2019-04-29 14:39:34.000000'),
(73, 'Proyectos PLOCAN 2019', 'Proyectos_PLOCAN_2019.pdf', 'proyectos', NULL, '2019-04-29 14:39:46.000000'),
(74, 'REDSUB 01', 'REDSUB_01.pdf', 'proyectos', NULL, '2019-04-29 14:39:58.000000'),
(75, 'ROVINO 2017', 'ROVINO_2017.pdf', 'proyectos', NULL, '2019-04-29 14:40:13.000000'),
(76, 'SMART BLUE', 'SMART_BLUE.pdf', 'proyectos', NULL, '2019-04-29 14:40:29.000000'),
(77, 'SmartBlue', 'SmartBlue.pdf', 'proyectos', NULL, '2019-04-29 14:41:00.000000'),
(78, 'SWARMs', 'SWARMs.pdf', 'proyectos', NULL, '2019-04-29 14:41:28.000000'),
(79, 'TROPOS', 'TROPOS.pdf', 'proyectos', NULL, '2019-04-29 14:41:41.000000'),
(80, 'UnderWorld', 'UnderWorld.pdf', 'proyectos', NULL, '2019-04-29 14:41:59.000000'),
(81, 'UNDIGEN 01 ES', 'UNDIGEN_01_ES.pdf', 'proyectos', NULL, '2019-04-29 14:42:13.000000'),
(82, 'UNDIGEN', 'UNDIGEN.pdf', 'proyectos', NULL, '2019-04-29 14:42:29.000000'),
(83, 'UNDIGEN+ 01 EN', 'UNDIGEN_01_EN.pdf', 'proyectos', NULL, '2019-04-29 14:42:40.000000'),
(84, 'UNDIGEN+01 ES', 'UNDIGEN01_ES.pdf', 'proyectos', NULL, '2019-04-29 14:42:56.000000'),
(85, 'welcome', 'welcome.pdf', 'proyectos', NULL, '2019-04-29 14:43:16.000000'),
(86, 'FORMACION', 'FORMACION.pdf', 'undefined', NULL, '2019-04-29 14:43:34.000000'),
(87, 'RESIDUOS PLOCAN 2019', 'RESIDUOS_PLOCAN_2019.pdf', 'posters', NULL, '2019-04-29 14:43:48.000000'),
(88, 'MBP _N0', 'MBP__N0.pdf', 'manuales', NULL, '2019-05-02 10:11:29.000000'),
(89, 'MBP_N1', 'MBP_N1.pdf', 'manuales', NULL, '2019-05-02 10:12:51.000000'),
(90, 'MBP_N2', 'MBP_N2.pdf', 'manuales', NULL, '2019-05-02 10:13:08.000000'),
(91, 'Proceso Construcción Plataforma_EN', 'Proceso_Construcción_Plataforma_EN.pdf', 'manuales', NULL, '2019-05-02 10:16:13.000000'),
(92, 'Proceso Construcción Plataforma_ES', 'Proceso_Construcción_Plataforma_ES.pdf', 'manuales', NULL, '2019-05-02 10:16:27.000000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `downloadspage_client`
--
ALTER TABLE `downloadspage_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadspage_client_id_file_id_d1621820_fk_downloads` (`id_file_id`);

--
-- Indices de la tabla `downloadspage_file`
--
ALTER TABLE `downloadspage_file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `downloadspage_client`
--
ALTER TABLE `downloadspage_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `downloadspage_file`
--
ALTER TABLE `downloadspage_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `downloadspage_client`
--
ALTER TABLE `downloadspage_client`
  ADD CONSTRAINT `downloadspage_client_id_file_id_d1621820_fk_downloads` FOREIGN KEY (`id_file_id`) REFERENCES `downloadspage_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
