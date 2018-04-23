-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Nis 2018, 11:52:46
-- Sunucu sürümü: 10.1.31-MariaDB
-- PHP Sürümü: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `xml`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `barcodes` text COLLATE utf8_unicode_ci NOT NULL,
  `integration` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `channel` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `channels`
--

INSERT INTO `channels` (`id`, `deleted_at`, `created_at`, `updated_at`, `channel`) VALUES
(1, NULL, '2018-04-17 02:35:41', '2018-04-17 02:35:41', 'markafoni');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `crontabs`
--

CREATE TABLE `crontabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cron_time` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `crontabs`
--

INSERT INTO `crontabs` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `cron_time`) VALUES
(1, NULL, '2018-04-17 02:57:16', '2018-04-20 02:50:38', 'Saniyede bir çalıştır', '* * * * * *'),
(2, NULL, '2018-04-17 02:57:21', '2018-04-20 03:01:24', 'Saatte bir kere', '0 * * * *'),
(3, '2018-04-17 03:11:40', '2018-04-17 03:03:22', '2018-04-17 03:11:40', 'dasda', ''),
(4, '2018-04-20 03:04:43', '2018-04-17 03:24:41', '2018-04-20 03:04:43', 'Günde bir kere', '*****'),
(5, '2018-04-20 03:04:25', '2018-04-17 03:24:52', '2018-04-20 03:04:25', 'İki saatte bir', ''),
(6, NULL, '2018-04-20 02:50:46', '2018-04-20 03:04:55', 'Dakikada bir', '* * * * *'),
(7, NULL, '2018-04-20 02:52:51', '2018-04-20 03:05:05', 'Üç dakikada bir', '*/3 * * * *'),
(8, NULL, '2018-04-20 02:58:01', '2018-04-20 03:05:10', 'İki dakikada bir', '*/2 * * * *	');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2018-04-17 02:30:10', '2018-04-17 02:30:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Admin', 'Male', '8888888888', '', 'admin@admin.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2018-04-17', '2018-04-17', '2018-04-17', '0.000', NULL, '2018-04-17 02:30:33', '2018-04-17 02:30:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `integrations`
--

CREATE TABLE `integrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `integration_url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `supplier` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `crontab` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stock_verge` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `integrations`
--

INSERT INTO `integrations` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `integration_url`, `supplier`, `crontab`, `start_date`, `end_date`, `stock_verge`) VALUES
(1, NULL, '2018-04-17 03:10:17', '2018-04-17 10:54:44', 'Test tedarikçisi için xml servisi', 'http://www.google.com', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, NULL, '2018-04-17 03:15:09', '2018-04-18 04:23:47', 'İkinci tedarikçi', 'htttp://www.karesoft.com.tr', 2, 2, '2018-04-17 09:30:00', '2018-01-03 11:00:00', 0),
(3, NULL, '2018-04-17 03:27:30', '2018-04-20 03:02:09', 'Rams Gümüş Stok Güncelleştirme', 'https://www.ramsgumus.com/index.php?route=feed/markafoni&cat_id=531', 3, 6, '2018-04-16 21:00:00', '2018-04-29 21:00:00', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Karesoft ', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(2, 'sitename_part1', '', 'Markafoni', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(3, 'sitename_part2', '', 'Integration', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(4, 'sitename_short', '', 'KA', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(5, 'site_description', '', '', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(6, 'sidebar_search', '', '0', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(7, 'show_messages', '', '0', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(8, 'show_notifications', '', '0', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(9, 'show_tasks', '', '0', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(10, 'show_rightsidebar', '', '0', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(11, 'skin', '', 'skin-blue', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(12, 'layout', '', 'fixed', '2018-04-17 02:30:10', '2018-04-18 01:56:51'),
(13, 'default_email', '', 'agit@karesoft.com.tr', '2018-04-17 02:30:10', '2018-04-18 01:56:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Diğer', '#', 'fa-group', 'custom', 0, 7, '2018-04-17 02:30:10', '2018-04-17 09:48:06'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:41:44'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 1, 5, '2018-04-17 02:30:10', '2018-04-17 02:42:05'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2018-04-17 02:30:10', '2018-04-17 02:41:44'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2018-04-17 02:30:10', '2018-04-17 02:41:44'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 6, '2018-04-17 02:30:10', '2018-04-17 02:42:05'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 1, 4, '2018-04-17 02:30:10', '2018-04-17 02:42:05'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 7, '2018-04-17 02:30:10', '2018-04-17 02:42:05'),
(9, 'Channels', 'channels', 'fa fa-cube', 'module', 0, 6, '2018-04-17 02:35:21', '2018-04-17 10:19:17'),
(13, 'Crontabs', 'crontabs', 'fa fa-cube', 'module', 0, 4, '2018-04-17 02:56:34', '2018-04-17 10:19:32'),
(15, 'Suppliers', 'suppliers', 'fa fa-cube', 'module', 0, 1, '2018-04-17 03:08:00', '2018-04-17 03:13:52'),
(16, 'Integrations', 'integrations', 'fa fa-cube', 'module', 0, 2, '2018-04-17 03:08:56', '2018-04-17 03:13:52'),
(17, 'Logs', 'logs', 'fa fa-cube', 'module', 0, 5, '2018-04-17 03:13:34', '2018-04-17 10:19:17'),
(18, 'Barcodes', 'barcodes', 'fa fa-cube', 'module', 0, 3, '2018-04-17 09:46:25', '2018-04-17 10:19:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `integration` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `logs`
--

INSERT INTO `logs` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`, `integration`) VALUES
(1, NULL, '2018-04-20 02:56:51', '2018-04-20 02:56:51', 'UPDATE', '1 adet ürün güncellendi', 3),
(2, NULL, '2018-04-20 02:56:59', '2018-04-20 02:56:59', 'UPDATE', '1 adet ürün güncellendi', 3),
(3, NULL, '2018-04-20 02:57:15', '2018-04-20 02:57:15', 'UPDATE', '1 adet ürün güncellendi', 3),
(4, NULL, '2018-04-20 02:57:16', '2018-04-20 02:57:16', 'UPDATE', '1 adet ürün güncellendi', 3),
(5, NULL, '2018-04-20 02:57:17', '2018-04-20 02:57:17', 'UPDATE', '1 adet ürün güncellendi', 3),
(6, NULL, '2018-04-20 02:57:18', '2018-04-20 02:57:18', 'UPDATE', '1 adet ürün güncellendi', 3),
(7, NULL, '2018-04-20 02:58:22', '2018-04-20 02:58:22', 'UPDATE', '1 adet ürün güncellendi', 3),
(8, NULL, '2018-04-20 02:58:26', '2018-04-20 02:58:26', 'UPDATE', '1 adet ürün güncellendi', 3),
(9, NULL, '2018-04-20 02:58:28', '2018-04-20 02:58:28', 'UPDATE', '1 adet ürün güncellendi', 3),
(10, NULL, '2018-04-20 02:58:29', '2018-04-20 02:58:29', 'UPDATE', '1 adet ürün güncellendi', 3),
(11, NULL, '2018-04-20 02:58:30', '2018-04-20 02:58:30', 'UPDATE', '1 adet ürün güncellendi', 3),
(12, NULL, '2018-04-20 02:58:32', '2018-04-20 02:58:32', 'UPDATE', '1 adet ürün güncellendi', 3),
(13, NULL, '2018-04-20 02:58:33', '2018-04-20 02:58:33', 'UPDATE', '1 adet ürün güncellendi', 3),
(14, NULL, '2018-04-20 02:58:35', '2018-04-20 02:58:35', 'UPDATE', '1 adet ürün güncellendi', 3),
(15, NULL, '2018-04-20 02:58:36', '2018-04-20 02:58:36', 'UPDATE', '1 adet ürün güncellendi', 3),
(16, NULL, '2018-04-20 03:02:14', '2018-04-20 03:02:14', 'UPDATE', '1 adet ürün güncellendi', 3),
(17, NULL, '2018-04-20 03:02:19', '2018-04-20 03:02:19', 'UPDATE', '1 adet ürün güncellendi', 3),
(18, NULL, '2018-04-20 03:02:24', '2018-04-20 03:02:24', 'UPDATE', '1 adet ürün güncellendi', 3),
(19, NULL, '2018-04-20 03:02:29', '2018-04-20 03:02:29', 'UPDATE', '1 adet ürün güncellendi', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1),
('2018_04_18_051135_create_jobs_table', 2),
('2018_04_18_051904_create_failed_jobs_table', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-04-17 02:30:08', '2018-04-17 02:30:10'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-04-17 02:30:09', '2018-04-17 02:30:10'),
(10, 'Channels', 'Channels', 'channels', 'channel', 'Channel', 'ChannelsController', 'fa-cube', 1, '2018-04-17 02:34:31', '2018-04-17 02:35:21'),
(12, 'Crontabs', 'Crontabs', 'crontabs', 'name', 'Crontab', 'CrontabsController', 'fa-cube', 1, '2018-04-17 02:55:37', '2018-04-17 02:56:34'),
(14, 'Suppliers', 'Suppliers', 'suppliers', 'code', 'Supplier', 'SuppliersController', 'fa-cube', 1, '2018-04-17 03:07:24', '2018-04-17 06:01:38'),
(15, 'Integrations', 'Integrations', 'integrations', 'integration_url', 'Integration', 'IntegrationsController', 'fa-cube', 1, '2018-04-17 03:08:25', '2018-04-17 03:14:39'),
(16, 'Logs', 'Logs', 'logs', 'name', 'Log', 'LogsController', 'fa-cube', 1, '2018-04-17 03:12:14', '2018-04-17 03:13:34'),
(17, 'Barcodes', 'Barcodes', 'barcodes', 'name', 'Barcode', 'BarcodesController', 'fa-cube', 1, '2018-04-17 09:43:20', '2018-04-17 09:47:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2018-04-17 02:30:09', '2018-04-17 02:30:09'),
(54, 'channel', 'Platform', 10, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 02:35:02', '2018-04-17 02:35:02'),
(61, 'name', 'Cron Adı', 12, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 02:55:53', '2018-04-17 02:56:29'),
(62, 'cron_time', 'Cron Aralığı', 12, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 02:56:26', '2018-04-17 02:56:26'),
(67, 'name', 'Tedarikçi Adı', 14, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 03:07:33', '2018-04-17 03:07:33'),
(68, 'channel', 'Platform', 14, 7, 0, '', 0, 0, 0, '@channels', 0, '2018-04-17 03:07:57', '2018-04-17 03:07:57'),
(69, 'name', 'Entegrasyon Adı', 15, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 03:08:37', '2018-04-17 03:08:37'),
(70, 'integration_url', 'Servis Linki', 15, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 03:08:49', '2018-04-17 03:08:49'),
(71, 'supplier', 'Tedarikçi', 15, 7, 0, '', 0, 0, 0, '@suppliers', 0, '2018-04-17 03:09:25', '2018-04-17 03:09:25'),
(72, 'crontab', 'Cron Tab', 15, 7, 0, '', 0, 0, 0, '@crontabs', 0, '2018-04-17 03:09:49', '2018-04-17 03:09:49'),
(73, 'name', 'Log Adı', 16, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 03:12:29', '2018-04-17 03:12:29'),
(74, 'description', 'Açıklama', 16, 21, 0, '', 0, 256, 0, '', 0, '2018-04-17 03:12:36', '2018-04-17 03:12:47'),
(75, 'integration', 'Entegrasyon', 16, 7, 0, '', 0, 0, 0, '@integrations', 0, '2018-04-17 03:13:30', '2018-04-17 03:13:30'),
(76, 'start_date', 'Başlangıç Tarihi', 15, 5, 0, '', 0, 0, 0, '', 0, '2018-04-17 03:14:26', '2018-04-17 03:14:26'),
(77, 'end_date', 'Bitiş Tarihi', 15, 5, 0, '', 0, 0, 0, '', 0, '2018-04-17 03:14:37', '2018-04-17 03:14:37'),
(78, 'code', 'Tedarikçi Kodu', 14, 16, 1, '', 0, 256, 0, '', 0, '2018-04-17 03:19:04', '2018-04-17 06:01:36'),
(79, 'name', 'İsim', 17, 16, 0, '', 0, 256, 0, '', 0, '2018-04-17 09:43:35', '2018-04-17 09:44:16'),
(80, 'barcodes', 'Barkodlar', 17, 21, 0, '', 0, 0, 0, '', 0, '2018-04-17 09:45:42', '2018-04-17 09:47:05'),
(81, 'integration', 'Entegrasyon', 17, 7, 0, '', 0, 0, 0, '@integrations', 0, '2018-04-17 09:46:13', '2018-04-17 09:46:13'),
(82, 'stock_verge', 'Stok Eşiği', 15, 13, 0, '0', 0, 11, 0, '', 0, '2018-04-18 03:47:39', '2018-04-18 03:47:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(2, 'Checkbox', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(3, 'Currency', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(4, 'Date', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(5, 'Datetime', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(6, 'Decimal', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(7, 'Dropdown', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(8, 'Email', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(9, 'File', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(10, 'Float', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(11, 'HTML', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(12, 'Image', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(13, 'Integer', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(14, 'Mobile', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(15, 'Multiselect', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(16, 'Name', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(17, 'Password', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(18, 'Radio', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(19, 'String', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(20, 'Taginput', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(21, 'Textarea', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(22, 'TextField', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(23, 'URL', '2018-04-17 02:30:08', '2018-04-17 02:30:08'),
(24, 'Files', '2018-04-17 02:30:08', '2018-04-17 02:30:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-04-17 02:30:10', '2018-04-17 02:30:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2018-04-17 02:30:10', '2018-04-17 02:30:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(2, 1, 2, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(3, 1, 3, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(4, 1, 4, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(5, 1, 5, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(6, 1, 6, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(7, 1, 7, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(8, 1, 8, 1, 1, 1, 1, '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(9, 1, 10, 1, 1, 1, 1, '2018-04-17 02:35:21', '2018-04-17 02:35:21'),
(12, 1, 12, 1, 1, 1, 1, '2018-04-17 02:56:34', '2018-04-17 02:56:34'),
(14, 1, 14, 1, 1, 1, 1, '2018-04-17 03:08:00', '2018-04-17 03:08:00'),
(15, 1, 15, 1, 1, 1, 1, '2018-04-17 03:08:56', '2018-04-17 03:08:56'),
(16, 1, 16, 1, 1, 1, 1, '2018-04-17 03:13:34', '2018-04-17 03:13:34'),
(17, 1, 17, 1, 1, 1, 1, '2018-04-17 09:46:25', '2018-04-17 09:46:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(2, 1, 2, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(3, 1, 3, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(4, 1, 4, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(5, 1, 5, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(6, 1, 6, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(7, 1, 7, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(8, 1, 8, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(9, 1, 9, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(10, 1, 10, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(11, 1, 11, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(12, 1, 12, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(13, 1, 13, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(14, 1, 14, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(15, 1, 15, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(16, 1, 16, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(17, 1, 17, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(18, 1, 18, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(19, 1, 19, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(20, 1, 20, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(21, 1, 21, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(22, 1, 22, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(23, 1, 23, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(24, 1, 24, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(25, 1, 25, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(26, 1, 26, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(27, 1, 27, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(28, 1, 28, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(29, 1, 29, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(30, 1, 30, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(31, 1, 31, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(32, 1, 32, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(33, 1, 33, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(34, 1, 34, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(35, 1, 35, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(36, 1, 36, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(37, 1, 37, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(38, 1, 38, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(39, 1, 39, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(40, 1, 40, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(41, 1, 41, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(42, 1, 42, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(43, 1, 43, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(44, 1, 44, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(45, 1, 45, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(46, 1, 46, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(47, 1, 47, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(48, 1, 48, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(49, 1, 49, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(50, 1, 50, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(51, 1, 51, 'write', '2018-04-17 02:30:10', '2018-04-17 02:30:10'),
(54, 1, 54, 'write', '2018-04-17 02:35:03', '2018-04-17 02:35:03'),
(61, 1, 61, 'write', '2018-04-17 02:55:53', '2018-04-17 02:55:53'),
(62, 1, 62, 'write', '2018-04-17 02:56:26', '2018-04-17 02:56:26'),
(67, 1, 67, 'write', '2018-04-17 03:07:33', '2018-04-17 03:07:33'),
(68, 1, 68, 'write', '2018-04-17 03:07:57', '2018-04-17 03:07:57'),
(69, 1, 69, 'write', '2018-04-17 03:08:37', '2018-04-17 03:08:37'),
(70, 1, 70, 'write', '2018-04-17 03:08:50', '2018-04-17 03:08:50'),
(71, 1, 71, 'write', '2018-04-17 03:09:25', '2018-04-17 03:09:25'),
(72, 1, 72, 'write', '2018-04-17 03:09:49', '2018-04-17 03:09:49'),
(73, 1, 73, 'write', '2018-04-17 03:12:29', '2018-04-17 03:12:29'),
(74, 1, 74, 'write', '2018-04-17 03:12:36', '2018-04-17 03:12:36'),
(75, 1, 75, 'write', '2018-04-17 03:13:30', '2018-04-17 03:13:30'),
(76, 1, 76, 'write', '2018-04-17 03:14:26', '2018-04-17 03:14:26'),
(77, 1, 77, 'write', '2018-04-17 03:14:37', '2018-04-17 03:14:37'),
(78, 1, 78, 'write', '2018-04-17 03:19:04', '2018-04-17 03:19:04'),
(79, 1, 79, 'write', '2018-04-17 09:43:35', '2018-04-17 09:43:35'),
(80, 1, 80, 'write', '2018-04-17 09:45:42', '2018-04-17 09:45:42'),
(81, 1, 81, 'write', '2018-04-17 09:46:13', '2018-04-17 09:46:13'),
(82, 1, 82, 'write', '2018-04-18 03:47:39', '2018-04-18 03:47:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `code` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `suppliers`
--

INSERT INTO `suppliers` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `channel`, `code`) VALUES
(1, NULL, '2018-04-17 03:08:06', '2018-04-17 06:01:49', 'test tedarikçi', 1, 'dasdsa'),
(2, NULL, '2018-04-17 03:15:33', '2018-04-17 03:19:25', 'karesoft', 1, '123'),
(3, NULL, '2018-04-17 03:27:41', '2018-04-17 03:27:41', 'Rams Gümüş', 1, 'ramsgumus');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@admin.com', '$2y$10$te8FqpW4P0M1vV.XD0sR8.xn4ZIAnUfH8CWLRS6xmsuIB9yDxTXAi', 'Employee', 'WeIePvrCCBfzFoG7PL1l2CfBZk8DTY4a9RRB3XwrLAUqzES7TaNCEwJW81tE', NULL, '2018-04-17 02:30:33', '2018-04-18 01:49:46');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Tablo için indeksler `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcodes_integration_foreign` (`integration`);

--
-- Tablo için indeksler `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `crontabs`
--
ALTER TABLE `crontabs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Tablo için indeksler `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `integrations_supplier_foreign` (`supplier`),
  ADD KEY `integrations_crontab_foreign` (`crontab`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`);

--
-- Tablo için indeksler `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_integration_foreign` (`integration`);

--
-- Tablo için indeksler `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Tablo için indeksler `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Tablo için indeksler `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Tablo için indeksler `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Tablo için indeksler `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_channel_foreign` (`channel`);

--
-- Tablo için indeksler `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `crontabs`
--
ALTER TABLE `crontabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- Tablo için AUTO_INCREMENT değeri `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Tablo için AUTO_INCREMENT değeri `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Tablo için AUTO_INCREMENT değeri `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_integration_foreign` FOREIGN KEY (`integration`) REFERENCES `integrations` (`id`);

--
-- Tablo kısıtlamaları `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Tablo kısıtlamaları `integrations`
--
ALTER TABLE `integrations`
  ADD CONSTRAINT `integrations_crontab_foreign` FOREIGN KEY (`crontab`) REFERENCES `crontabs` (`id`),
  ADD CONSTRAINT `integrations_supplier_foreign` FOREIGN KEY (`supplier`) REFERENCES `suppliers` (`id`);

--
-- Tablo kısıtlamaları `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_integration_foreign` FOREIGN KEY (`integration`) REFERENCES `integrations` (`id`);

--
-- Tablo kısıtlamaları `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_channel_foreign` FOREIGN KEY (`channel`) REFERENCES `channels` (`id`);

--
-- Tablo kısıtlamaları `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
