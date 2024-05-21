-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 22 май 2024 в 00:10
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_10`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
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
(25, 'Can add car dealer', 7, 'add_cardealer'),
(26, 'Can change car dealer', 7, 'change_cardealer'),
(27, 'Can delete car dealer', 7, 'delete_cardealer'),
(28, 'Can view car dealer', 7, 'view_cardealer'),
(29, 'Can add vehicles', 8, 'add_vehicles'),
(30, 'Can change vehicles', 8, 'change_vehicles'),
(31, 'Can delete vehicles', 8, 'delete_vehicles'),
(32, 'Can view vehicles', 8, 'view_vehicles'),
(33, 'Can add area', 9, 'add_area'),
(34, 'Can change area', 9, 'change_area'),
(35, 'Can delete area', 9, 'delete_area'),
(36, 'Can view area', 9, 'view_area'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add orders', 11, 'add_orders'),
(42, 'Can change orders', 11, 'change_orders'),
(43, 'Can delete orders', 11, 'delete_orders'),
(44, 'Can view orders', 11, 'view_orders'),
(45, 'Can add area', 12, 'add_area'),
(46, 'Can change area', 12, 'change_area'),
(47, 'Can delete area', 12, 'delete_area'),
(48, 'Can view area', 12, 'view_area'),
(49, 'Can add car dealer', 13, 'add_cardealer'),
(50, 'Can change car dealer', 13, 'change_cardealer'),
(51, 'Can delete car dealer', 13, 'delete_cardealer'),
(52, 'Can view car dealer', 13, 'view_cardealer'),
(53, 'Can add vehicles', 14, 'add_vehicles'),
(54, 'Can change vehicles', 14, 'change_vehicles'),
(55, 'Can delete vehicles', 14, 'delete_vehicles'),
(56, 'Can view vehicles', 14, 'view_vehicles'),
(57, 'Can add orders', 15, 'add_orders'),
(58, 'Can change orders', 15, 'change_orders'),
(59, 'Can delete orders', 15, 'delete_orders'),
(60, 'Can view orders', 15, 'view_orders'),
(61, 'Can add customer', 16, 'add_customer'),
(62, 'Can change customer', 16, 'change_customer'),
(63, 'Can delete customer', 16, 'delete_customer'),
(64, 'Can view customer', 16, 'view_customer');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$WMlCE81ZJhwQi2s3flgCV7$hi80iVIByEFzDMzuZM6lvYINfNkDy5QzN07iBzMyZjA=', '2024-05-21 20:16:54.412948', 1, 'admin', '', '', '', 1, 1, '2024-02-22 13:39:14.822388'),
(2, 'pbkdf2_sha256$600000$BUMQ3SZuqdQTqfVk77HYen$VNSTWrIxbawCqhqfNITphnq4efSW82ZRSUjwfn9yovk=', NULL, 0, 'ivan', 'Иван', 'Иванов', 'a@b.c', 0, 1, '2024-05-21 19:55:45.592948'),
(8, 'pbkdf2_sha256$600000$zF3gLiIVIyhLQYJ0yqtU74$wHdcWKatIqHAisxtVj7ZcpD2WdM/JhBBWULBLjvjGXA=', NULL, 0, 'niki', 'Ники', 'Николов', 'a@b.c', 0, 1, '2024-05-21 20:19:41.944433'),
(10, 'pbkdf2_sha256$600000$zyXHtDFesTjfou9Lf6051f$RLEl6+FY1HyiER/LoVVI2p2pP+vrnagHfIjhhs1Id+Q=', NULL, 0, 'pepi', 'Петър', 'Петров', 'a@b.c', 0, 1, '2024-05-21 20:21:46.723760'),
(13, 'pbkdf2_sha256$600000$wOA45n90Sr0TTWO4AvXzHf$4B3wamVy32e1Oj0SicPb6PgMkfh5k3+MatZ36eZQQ+o=', '2024-05-21 20:35:45.537032', 0, 'mitko', 'Митко', 'Митков', 'a@b.c', 0, 1, '2024-05-21 20:24:53.913455'),
(15, 'pbkdf2_sha256$600000$Je5kji6wajOG7ZM57L6zEh$pbY4QCOtCKFlK+3mhT2Qpj43in9GLdEp0ppyxPF4Kcs=', '2024-05-21 22:05:45.440518', 0, 'dimo', 'Димо', 'Димов', 'a@b.c', 0, 1, '2024-05-21 22:00:22.974712');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `car_dealer_portal_area`
--

DROP TABLE IF EXISTS `car_dealer_portal_area`;
CREATE TABLE `car_dealer_portal_area` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `car_dealer_portal_cardealer`
--

DROP TABLE IF EXISTS `car_dealer_portal_cardealer`;
CREATE TABLE `car_dealer_portal_cardealer` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `wallet` int(11) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `car_dealer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `car_dealer_portal_vehicles`
--

DROP TABLE IF EXISTS `car_dealer_portal_vehicles`;
CREATE TABLE `car_dealer_portal_vehicles` (
  `id` bigint(20) NOT NULL,
  `car_name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `capacity` varchar(2) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `dealer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `customer_customer`
--

DROP TABLE IF EXISTS `customer_customer`;
CREATE TABLE `customer_customer` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `customer_customer`
--

INSERT INTO `customer_customer` (`id`, `mobile`, `area_id`, `user_id`) VALUES
(1, '1234', 1, 8),
(2, '123333', 2, 10),
(3, '123333', 3, 13);

-- --------------------------------------------------------

--
-- Структура на таблица `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE `customer_orders` (
  `id` bigint(20) NOT NULL,
  `rent` varchar(8) NOT NULL,
  `days` varchar(3) NOT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `car_dealer_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `customer_portal_customer`
--

DROP TABLE IF EXISTS `customer_portal_customer`;
CREATE TABLE `customer_portal_customer` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `customer_portal_orders`
--

DROP TABLE IF EXISTS `customer_portal_orders`;
CREATE TABLE `customer_portal_orders` (
  `id` bigint(20) NOT NULL,
  `rent` varchar(8) NOT NULL,
  `days` varchar(3) NOT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `car_dealer_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `dealer_area`
--

DROP TABLE IF EXISTS `dealer_area`;
CREATE TABLE `dealer_area` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `dealer_area`
--

INSERT INTO `dealer_area` (`id`, `pincode`, `city`) VALUES
(1, '2222', 'qwerty'),
(2, '3333', 'asdf'),
(3, '4444', 'asdf'),
(4, '5555', 'банско'),
(5, '123456', 'банско');

-- --------------------------------------------------------

--
-- Структура на таблица `dealer_cardealer`
--

DROP TABLE IF EXISTS `dealer_cardealer`;
CREATE TABLE `dealer_cardealer` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `wallet` int(11) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `car_dealer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `dealer_cardealer`
--

INSERT INTO `dealer_cardealer` (`id`, `mobile`, `wallet`, `area_id`, `car_dealer_id`) VALUES
(1, '12321123', 0, 4, 15);

-- --------------------------------------------------------

--
-- Структура на таблица `dealer_vehicles`
--

DROP TABLE IF EXISTS `dealer_vehicles`;
CREATE TABLE `dealer_vehicles` (
  `id` bigint(20) NOT NULL,
  `car_name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `capacity` varchar(2) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `dealer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `dealer_vehicles`
--

INSERT INTO `dealer_vehicles` (`id`, `car_name`, `color`, `capacity`, `is_available`, `description`, `area_id`, `dealer_id`) VALUES
(1, 'Toyota RAV 4', 'черен', '5', 1, 'описание на колата', 5, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'car_dealer_portal', 'area'),
(7, 'car_dealer_portal', 'cardealer'),
(8, 'car_dealer_portal', 'vehicles'),
(5, 'contenttypes', 'contenttype'),
(16, 'customer', 'customer'),
(15, 'customer', 'orders'),
(10, 'customer_portal', 'customer'),
(11, 'customer_portal', 'orders'),
(12, 'dealer', 'area'),
(13, 'dealer', 'cardealer'),
(14, 'dealer', 'vehicles'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-22 13:15:15.708345'),
(2, 'auth', '0001_initial', '2024-02-22 13:15:16.232693'),
(3, 'admin', '0001_initial', '2024-02-22 13:15:16.370012'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-22 13:15:16.380074'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-22 13:15:16.387073'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-22 13:15:16.463333'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-22 13:15:16.530186'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-22 13:15:16.553441'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-22 13:15:16.564077'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-22 13:15:16.628464'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-22 13:15:16.633474'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-22 13:15:16.643476'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-22 13:15:16.661966'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-22 13:15:16.677353'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-22 13:15:16.698347'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-22 13:15:16.709832'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-22 13:15:16.730583'),
(18, 'sessions', '0001_initial', '2024-02-22 13:15:16.779421'),
(19, 'car_dealer_portal', '0001_initial', '2024-05-04 22:24:45.326584'),
(20, 'customer_portal', '0001_initial', '2024-05-04 22:24:46.069216'),
(21, 'dealer', '0001_initial', '2024-05-21 19:57:53.338018'),
(22, 'customer', '0001_initial', '2024-05-21 19:57:53.802458'),
(23, 'customer', '0002_rename_dealer_orders_car_dealer', '2024-05-21 19:57:57.153538'),
(24, 'dealer', '0002_rename_dealer_cardealer_car_dealer', '2024-05-21 19:57:57.534003');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lbjx25g8h21jbae5yjljweuesn6jx2ef', '.eJxVjDsOwjAQBe_iGlnZeP2jpOcM1nrXwQGUSHFSIe4OkVJA-2bmvVSiba1pa2VJo6izAnX63TLxo0w7kDtNt1nzPK3LmPWu6IM2fZ2lPC-H-3dQqdVvHcg4KND10lPMwM5YloE7BM8UBIIj9BAsRswYnclhYERyVkzxHki9P9QqN20:1rd9O2:Eollw8_cQ1oaEtIBtGbXnLByMVUqAzRaIoQ-IbnUp40', '2024-03-07 13:45:18.537599'),
('qh1j6bjvplb0h5nny6sypxbhzbetcata', '.eJxVjDsOwjAQBe_iGllrZ_2jpOcM1m7s4ACypTipEHeHSCmgfTPzXiLStpa49bzEOYmzUOL0uzGNj1x3kO5Ub02Ora7LzHJX5EG7vLaUn5fD_Tso1Mu39qAsukH7FDQYZSwrYG9Gx4iEhjFPYHPgAMk7Yqsnn0hBoEFbjRrF-wOsgDan:1s3NPC:TJcNcItUz8Db7OlNEKDtniA5RisCTHRUmhkyoyZTvNA', '2024-05-18 21:58:54.322479'),
('tp5m1gpfykttp6do7ezwcho6p2uisi5r', '.eJxVjEsKwjAUAO-StQTT9DWJS_eeoby8j61KA027Eu8ugS50OzPM24y4b9O4V1nHmc3FODCnX5iRnrI0ww9c7sVSWbZ1zrYl9rDV3grL63q0f4MJ69S-qDGLpNhTRyyogEn7QMlnTTw40gAALkLIzgdN3RDPrCJhIMbek_l8ATk1ORk:1s9Xc9:3O9YUDK5cqt7_1K9zJ8eAs8lABHvPTye10QTJ24Rd9w', '2024-06-04 22:05:45.445514');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `car_dealer_portal_area`
--
ALTER TABLE `car_dealer_portal_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pincode` (`pincode`);

--
-- Индекси за таблица `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_id` (`area_id`),
  ADD UNIQUE KEY `car_dealer_id` (`car_dealer_id`);

--
-- Индекси за таблица `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_dealer_portal_ve_area_id_aa5a0daa_fk_car_deale` (`area_id`),
  ADD KEY `car_dealer_portal_ve_dealer_id_f1f31e1c_fk_car_deale` (`dealer_id`);

--
-- Индекси за таблица `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `customer_customer_area_id_7c942e35_fk_dealer_area_id` (`area_id`);

--
-- Индекси за таблица `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_orders_user_id_4ba246a6_fk_auth_user_id` (`user_id`),
  ADD KEY `customer_orders_vehicle_id_4b52fffd_fk_dealer_vehicles_id` (`vehicle_id`),
  ADD KEY `customer_orders_car_dealer_id_c79d2712_fk_dealer_cardealer_id` (`car_dealer_id`);

--
-- Индекси за таблица `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `customer_portal_cust_area_id_9d75d4c8_fk_car_deale` (`area_id`);

--
-- Индекси за таблица `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_portal_orde_car_dealer_id_a4556a42_fk_car_deale` (`car_dealer_id`),
  ADD KEY `customer_portal_orders_user_id_61ee261b_fk_auth_user_id` (`user_id`),
  ADD KEY `customer_portal_orde_vehicle_id_3da80825_fk_car_deale` (`vehicle_id`);

--
-- Индекси за таблица `dealer_area`
--
ALTER TABLE `dealer_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pincode` (`pincode`);

--
-- Индекси за таблица `dealer_cardealer`
--
ALTER TABLE `dealer_cardealer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_id` (`area_id`),
  ADD UNIQUE KEY `dealer_id` (`car_dealer_id`);

--
-- Индекси за таблица `dealer_vehicles`
--
ALTER TABLE `dealer_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dealer_vehicles_area_id_0f20a46a_fk_dealer_area_id` (`area_id`),
  ADD KEY `dealer_vehicles_dealer_id_a3906dd3_fk_dealer_cardealer_id` (`dealer_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_dealer_portal_area`
--
ALTER TABLE `car_dealer_portal_area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealer_area`
--
ALTER TABLE `dealer_area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dealer_cardealer`
--
ALTER TABLE `dealer_cardealer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dealer_vehicles`
--
ALTER TABLE `dealer_vehicles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  ADD CONSTRAINT `car_dealer_portal_ca_area_id_a3b130bc_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `car_dealer_portal_ca_car_dealer_id_a3409dd0_fk_auth_user` FOREIGN KEY (`car_dealer_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  ADD CONSTRAINT `car_dealer_portal_ve_area_id_aa5a0daa_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `car_dealer_portal_ve_dealer_id_f1f31e1c_fk_car_deale` FOREIGN KEY (`dealer_id`) REFERENCES `car_dealer_portal_cardealer` (`id`);

--
-- Ограничения за таблица `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD CONSTRAINT `customer_customer_area_id_7c942e35_fk_dealer_area_id` FOREIGN KEY (`area_id`) REFERENCES `dealer_area` (`id`),
  ADD CONSTRAINT `customer_customer_user_id_549f4343_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `customer_orders_car_dealer_id_c79d2712_fk_dealer_cardealer_id` FOREIGN KEY (`car_dealer_id`) REFERENCES `dealer_cardealer` (`id`),
  ADD CONSTRAINT `customer_orders_user_id_4ba246a6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `customer_orders_vehicle_id_4b52fffd_fk_dealer_vehicles_id` FOREIGN KEY (`vehicle_id`) REFERENCES `dealer_vehicles` (`id`);

--
-- Ограничения за таблица `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  ADD CONSTRAINT `customer_portal_cust_area_id_9d75d4c8_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `customer_portal_customer_user_id_eecc325f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  ADD CONSTRAINT `customer_portal_orde_car_dealer_id_a4556a42_fk_car_deale` FOREIGN KEY (`car_dealer_id`) REFERENCES `car_dealer_portal_cardealer` (`id`),
  ADD CONSTRAINT `customer_portal_orde_vehicle_id_3da80825_fk_car_deale` FOREIGN KEY (`vehicle_id`) REFERENCES `car_dealer_portal_vehicles` (`id`),
  ADD CONSTRAINT `customer_portal_orders_user_id_61ee261b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `dealer_cardealer`
--
ALTER TABLE `dealer_cardealer`
  ADD CONSTRAINT `dealer_cardealer_area_id_7efddfc4_fk_dealer_area_id` FOREIGN KEY (`area_id`) REFERENCES `dealer_area` (`id`),
  ADD CONSTRAINT `dealer_cardealer_car_dealer_id_8f742b60_fk_auth_user_id` FOREIGN KEY (`car_dealer_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `dealer_vehicles`
--
ALTER TABLE `dealer_vehicles`
  ADD CONSTRAINT `dealer_vehicles_area_id_0f20a46a_fk_dealer_area_id` FOREIGN KEY (`area_id`) REFERENCES `dealer_area` (`id`),
  ADD CONSTRAINT `dealer_vehicles_dealer_id_a3906dd3_fk_dealer_cardealer_id` FOREIGN KEY (`dealer_id`) REFERENCES `dealer_cardealer` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
