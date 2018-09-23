-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table s-cart.admin_menu
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_menu: ~32 rows (approximately)
DELETE FROM `admin_menu`;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
	(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
	(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
	(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
	(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
	(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
	(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
	(8, 31, 27, 'Khách hàng', 'fa-user-md', 'shop_customer', '2018-01-13 15:27:55', '2018-05-08 13:27:40'),
	(9, 25, 20, 'Đơn hàng', 'fa-shopping-cart', 'shop_order', '2018-01-13 15:33:55', '2018-05-07 13:45:27'),
	(10, 15, 16, 'Quản lý sản phảm', 'fa-file-photo-o', 'shop_product', '2018-01-13 15:44:02', '2018-02-11 15:03:44'),
	(11, 15, 18, 'Nhãn hiệu', 'fa-bank', 'shop_brand', '2018-01-13 15:47:15', '2018-02-11 15:03:44'),
	(12, 15, 17, 'Thuộc tính', 'fa-indent', 'shop_option', '2018-01-13 15:51:13', '2018-03-31 06:59:43'),
	(13, 15, 14, 'Danh mục sản phẩm', 'fa-folder-open-o', 'shop_category', '2018-01-13 15:52:17', '2018-02-11 15:03:44'),
	(14, 15, 15, 'Giá khuyến mãi', 'fa-paw', 'shop_special_price', '2018-02-06 18:07:21', '2018-02-11 15:03:44'),
	(15, 0, 13, 'Danh mục và sản phẩm', 'fa-folder-open', NULL, '2018-02-09 06:04:43', '2018-05-06 15:13:13'),
	(16, 23, 57, 'Bật/Tắt chức năng', 'fa-cog', 'config_mode', '2018-02-09 06:12:57', '2018-05-09 14:45:59'),
	(17, 0, 8, 'Quản lý nội dung CMS', 'fa-coffee', NULL, '2018-02-10 09:06:05', '2018-05-07 13:42:32'),
	(18, 23, 56, 'Cấu hình thông tin', 'fa-cog', 'config_info', '2018-02-10 09:07:45', '2018-05-09 14:45:59'),
	(21, 17, 11, 'Blog & Tin tức', 'fa-file-powerpoint-o', 'cms_news', '2018-02-10 09:13:01', '2018-02-11 15:03:44'),
	(22, 17, 12, 'Trang viết', 'fa-clone', 'cms_page', '2018-02-10 09:19:50', '2018-02-11 15:03:44'),
	(23, 0, 55, 'Cấu hình website', 'fa-cogs', NULL, '2018-02-11 15:01:24', '2018-05-09 14:45:59'),
	(24, 0, 58, 'Banner & Hình ảnh', 'fa-picture-o', 'banner', '2018-03-13 20:10:22', '2018-05-09 14:45:59'),
	(25, 0, 19, 'Quản lý đơn hàng', 'fa-cart-arrow-down', NULL, '2018-05-06 14:59:14', '2018-05-07 13:41:52'),
	(26, 25, 21, 'Order status', 'fa-asterisk', 'shop_order_status', '2018-05-06 15:56:14', '2018-05-07 13:45:27'),
	(27, 25, 22, 'Payment Status', 'fa-recycle', 'shop_payment_status', '2018-05-06 15:57:12', '2018-05-07 13:45:27'),
	(28, 25, 23, 'Shipping status', 'fa-ambulance', 'shop_shipping_status', '2018-05-06 23:46:53', '2018-05-07 13:45:27'),
	(30, 0, 30, 'Marketing', 'fa-star-half-empty', NULL, '2018-05-07 13:47:33', '2018-05-09 14:38:40'),
	(31, 0, 26, 'Khách hàng, nhà cung cấp', 'fa-group', NULL, '2018-05-07 13:52:20', '2018-05-07 23:41:43'),
	(41, 30, 32, 'Coupon & khuyến mãi', 'fa-rocket', 'shop_promotion', '2018-05-07 23:54:45', '2018-05-20 08:54:31'),
	(43, 0, 36, 'Quản lý vận chuyển', 'fa-ambulance', NULL, '2018-05-07 23:56:13', '2018-05-09 14:38:40'),
	(50, 43, 37, 'Cấu hình', 'fa-cog', 'shop_shipping', '2018-05-09 14:33:24', '2018-05-20 06:32:13'),
	(51, 23, 0, 'Config global', 'fa-cogs', 'config_global', '2018-09-19 20:51:31', '2018-09-19 20:51:31');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_operation_log
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_operation_log: ~0 rows (approximately)
DELETE FROM `admin_operation_log`;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_permissions
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_permissions: ~9 rows (approximately)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
	(1, 'All permission', '*', '', '*', NULL, '2018-07-26 14:29:38'),
	(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
	(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
	(4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, '2018-08-25 11:19:26'),
	(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
	(6, 'Admin CMS', 'admin_cms', '', '/cms_news\r\n/cms_news/*\r\n/cms_page\r\n/cms_page/*', '2018-03-23 15:18:05', '2018-03-23 16:20:58'),
	(7, 'Admin Shop', 'admin_shop', '', '/shop_*\r\n/getInfoProduct\r\n/shop_order_edit\r\n/shop_order_update', '2018-03-23 15:21:36', '2018-03-25 09:27:28'),
	(8, 'Admin Config', 'admin_confi', '', '/config_*', '2018-03-23 15:25:02', '2018-03-23 15:25:02'),
	(9, 'Manager Banner', 'banner', '', '/banner\r\n/banner/*', '2018-03-23 15:25:47', '2018-03-23 16:21:45');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_roles
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_roles: ~4 rows (approximately)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2018-01-12 17:27:40', '2018-01-12 17:27:40'),
	(2, 'Admin', 'admin', '2018-01-12 18:02:33', '2018-01-12 18:02:33'),
	(3, 'User', 'user', '2018-01-12 18:03:14', '2018-01-12 18:03:14'),
	(4, 'Content', 'content', '2018-01-13 08:27:11', '2018-01-13 08:27:11');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_menu
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_menu: ~4 rows (approximately)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 2, NULL, NULL),
	(1, 15, NULL, NULL),
	(2, 15, NULL, NULL),
	(1, 12, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_permissions
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_permissions: ~12 rows (approximately)
DELETE FROM `admin_role_permissions`;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL),
	(3, 4, NULL, NULL),
	(2, 2, NULL, NULL),
	(2, 3, NULL, NULL),
	(2, 4, NULL, NULL),
	(4, 3, NULL, NULL),
	(4, 4, NULL, NULL),
	(2, 6, NULL, NULL),
	(2, 7, NULL, NULL),
	(2, 8, NULL, NULL),
	(2, 9, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_role_users
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_role_users: ~2 rows (approximately)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(3, 3, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_users
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_users: ~2 rows (approximately)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$KZD7OLW2TVusUIpyj/gXw.EHJY1XqM7oLsD5TsRGsZDn4bF7X8fpS', 'Administrator', NULL, '6kMBW6SIFxIUdlnSrhCvERPmIV2F9FTW7voLbDpNVFV76v9KfbuF2By2F0qd', '2018-01-12 17:27:40', '2018-09-03 17:18:02'),
	(3, 'user', '$2y$10$5XHIa1PBq5y5XYqaE1Va.ulyxN8QFaFXyTqTcotp4uZj.kjsYTKKO', 'User', NULL, NULL, '2018-01-12 18:05:28', '2018-01-12 18:05:28');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- Dumping structure for table s-cart.admin_user_permissions
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.admin_user_permissions: ~0 rows (approximately)
DELETE FROM `admin_user_permissions`;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

-- Dumping structure for table s-cart.banner
DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.banner: ~3 rows (approximately)
DELETE FROM `banner`;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `image`, `url`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
	(8, 'banner/6122cfae7fdb5fff1a4e7406dcab10ef.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-02 16:23:32', '2018-09-20 22:24:53'),
	(16, 'banner/7b16dd5b838439ddbe58c3ea506f5db1.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 1, '2018-08-21 15:09:08', '2018-09-20 22:24:43'),
	(17, 'banner/36e662803f744d4f9df2cecc2e17b87b.jpg', NULL, '<h1>S-CART</h1>\r\n                  <h2>Free E-Commerce Template</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                  <button type="button" class="btn btn-default get">Get it now</button>', 1, 0, 0, 0, '2018-09-03 16:51:56', '2018-09-20 22:24:23');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_category
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL DEFAULT '0',
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquekey` (`uniquekey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_category: ~0 rows (approximately)
DELETE FROM `cms_category`;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_conten
DROP TABLE IF EXISTS `cms_conten`;
CREATE TABLE IF NOT EXISTS `cms_conten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) unsigned DEFAULT '0',
  `status` tinyint(4) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_conten: ~0 rows (approximately)
DELETE FROM `cms_conten`;
/*!40000 ALTER TABLE `cms_conten` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_conten` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_image
DROP TABLE IF EXISTS `cms_image`;
CREATE TABLE IF NOT EXISTS `cms_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_image: ~2 rows (approximately)
DELETE FROM `cms_image`;
/*!40000 ALTER TABLE `cms_image` DISABLE KEYS */;
INSERT INTO `cms_image` (`id`, `content_id`, `image`, `sort`, `status`) VALUES
	(1, 3, 'images/1f5eb6db2404b38b86e4246a792f3fac.png', 0, 0),
	(2, 3, 'images/75be44c336696094632625d2d85159b1.jpg', 0, 0);
/*!40000 ALTER TABLE `cms_image` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_news
DROP TABLE IF EXISTS `cms_news`;
CREATE TABLE IF NOT EXISTS `cms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_news: ~7 rows (approximately)
DELETE FROM `cms_news`;
/*!40000 ALTER TABLE `cms_news` DISABLE KEYS */;
INSERT INTO `cms_news` (`id`, `title`, `content`, `keyword`, `description`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-02-10 03:35:13', '2018-09-06 06:25:35'),
	(2, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:10:19', '2018-09-06 06:25:26'),
	(3, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-02 17:16:49', '2018-09-06 06:25:17'),
	(4, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-02 17:59:52', '2018-09-06 06:25:06'),
	(5, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/16889dd0f3e75856c9b387420d641ce4.png', 0, 1, '2018-08-09 13:44:08', '2018-09-23 09:27:12'),
	(6, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/8ce2fd76cf30bcd9e099345a68ca17b6.png', 0, 1, '2018-08-09 13:50:36', '2018-09-23 09:26:59'),
	(7, 'Easy Polo Black Edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n', 'cms_content/bdbd7a28e7be30d83ba2842cdc580a02.png', 0, 1, '2018-08-09 15:59:29', '2018-09-23 09:26:41');
/*!40000 ALTER TABLE `cms_news` ENABLE KEYS */;

-- Dumping structure for table s-cart.cms_page
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.cms_page: ~2 rows (approximately)
DELETE FROM `cms_page`;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`id`, `title`, `image`, `keyword`, `description`, `content`, `uniquekey`, `status`) VALUES
	(1, 'About', '', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'about', 1),
	(2, 'Contact', NULL, NULL, NULL, NULL, 'contact', 1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;

-- Dumping structure for table s-cart.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.config: ~17 rows (approximately)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `code`, `key`, `value`, `sort`, `detail`) VALUES
	(9, 'config', 'site_status', '1', 9, 'Bật/Tắt website'),
	(10, 'config', 'shop_allow_guest', '1', 11, 'Cho phép mua hàng không cần đăng nhập'),
	(11, 'info', 'smtp_host', '', 12, 'Server SMTP'),
	(12, 'info', 'smtp_user', '', 13, 'Tài khoản SMTP'),
	(13, 'info', 'smtp_password', '', 14, 'Mật khẩu SMTP'),
	(14, 'info', 'smtp_security', '', 15, 'Giao thức bảo mật (tls,ssl)'),
	(15, 'info', 'smtp_port', '', 16, 'Cổng SMTP'),
	(16, 'config', 'smtp_mode', '0', 10, 'Tự cấu hình SMTP gửi mail'),
	(17, 'config', 'product_display_special', '1', 17, 'Hiển thị cả giá gốc và giá khuyến mãi'),
	(18, 'config', 'product_preorder', '1', 18, 'Cho phép đặt hàng trước (mua trước thời gian bán chính thức)'),
	(19, 'config', 'product_display_out_of_stock', '1', 19, 'Hiển thị sản phẩm hết hàng'),
	(20, 'config', 'product_buy_out_of_stock', '1', 20, 'Cho phép mua vượt stock, kể cả đã hết hàng'),
	(21, 'info', 'site_fb_appID', '934208239994473', 22, 'ID app facebook'),
	(22, 'config', 'show_date_avalid', '1', 21, 'Hiển thị ngày cho phép mua'),
	(23, 'shipping', 'shipping_status', '1', 22, 'Sử dụng shipping'),
	(24, 'config', 'promotion_mode', '1', 1, 'Sử dụng mã giảm giá'),
	(25, 'config', 'PAYPAL_STATUS', '1', 0, 'Sử dụng paypal cho thanh toán');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table s-cart.config_global
DROP TABLE IF EXISTS `config_global`;
CREATE TABLE IF NOT EXISTS `config_global` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.config_global: ~1 rows (approximately)
DELETE FROM `config_global`;
/*!40000 ALTER TABLE `config_global` DISABLE KEYS */;
INSERT INTO `config_global` (`id`, `logo`, `template`, `title`, `description`, `keyword`, `phone`, `long_phone`, `email`, `address`, `watermark`, `status`) VALUES
	(1, 'images/scart-mid.png', 's-cart', 'Free open source - eCommerce Platform for Business', 'Free website shopping cart for business', NULL, '0123456789', 'Support: 0987654321', 'admin@admin.com', '123st - abc - xyz', 'images/09cde6a2213bfa2f0de36961b986691b.png', 1);
/*!40000 ALTER TABLE `config_global` ENABLE KEYS */;

-- Dumping structure for table s-cart.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.migrations: ~6 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_04_173148_create_admin_tables', 1),
	(4, '2018_03_27_145238_create_jobs_table', 2),
	(5, '2018_03_27_145322_create_failed_jobs_table', 2),
	(6, '2016_05_17_221000_create_promocodes_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table s-cart.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.password_resets: ~3 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('test@gmail.com', '$2y$10$Hig4bWDSh3NzYchxkAK5sOqNYs3dx2oYJMLZ5z6k.1bP91/kTYFyu', '2018-01-14 14:23:29'),
	('asakc@gmail.com', '$2y$10$pDj4LAa6kzG8TvoOHVBjkugNNF.tWxAJmghEETs32v.wkdBeaFe66', '2018-09-20 18:42:04'),
	('lanhktc@gmail.com', '$2y$10$qKtQ1Lqy9WraRawxDh.zQeemGIlYqoCRDNvysHbRlVtHVAtip0SCy', '2018-09-23 08:02:26');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_attribute
DROP TABLE IF EXISTS `shop_attribute`;
CREATE TABLE IF NOT EXISTS `shop_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_attribute: ~2 rows (approximately)
DELETE FROM `shop_attribute`;
/*!40000 ALTER TABLE `shop_attribute` DISABLE KEYS */;
INSERT INTO `shop_attribute` (`id`, `name`, `value`) VALUES
	(1, 'Màu sắc', 'Xanh,Đỏ,Vàng,Trắng'),
	(2, 'Size', 'X,S,L');
/*!40000 ALTER TABLE `shop_attribute` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_brand
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE IF NOT EXISTS `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_brand: ~6 rows (approximately)
DELETE FROM `shop_brand`;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` (`id`, `name`, `image`, `url`, `status`, `sort`) VALUES
	(1, 'Husq', 'brand/88360597aa1df738b183d2a2a5e41d92.png', NULL, 1, 0),
	(2, 'Ideal', 'brand/d0782fc5b01353d0b47c5d6b434e282e.png', NULL, 1, 0),
	(3, 'Apex', 'brand/4cbebcdaa679d1dcafccb620d3aea0c9.png', NULL, 1, 0),
	(4, 'CST', 'brand/69763cbe8e62f0de5d54e7a175167b21.png', NULL, 1, 0),
	(5, 'Klein', 'brand/3ef3fc68fb5257294c4a796b0ae08e08.png', NULL, 1, 0),
	(6, 'Metabo', 'brand/66afc30e21e9ada47493dccfad00bd34.png', NULL, 1, 0);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_category
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_category: ~19 rows (approximately)
DELETE FROM `shop_category`;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` (`id`, `name`, `image`, `keyword`, `uniquekey`, `description`, `parent`, `sort`, `status`) VALUES
	(1, 'SPORTSWEAR', NULL, 'sản phẩm', 'san-pham-khac', NULL, 0, 0, 1),
	(2, 'MENS', '', 'iot', 'iot', NULL, 0, 0, 1),
	(3, 'WOMENS', '', 'arduino', 'arduino', NULL, 0, 0, 1),
	(4, 'KIDS', '', 'linh kiện điện tử', 'linh-kien-dien-tu', NULL, 0, 0, 1),
	(5, 'FASHION', '', 'in 3d', 'in-3d', NULL, 0, 0, 1),
	(6, 'GUESS', '', 'quạt đèn led, led fan', 'led fan', NULL, 9, 0, 1),
	(7, 'PUMA', '', 'ic', 'ic', NULL, 4, 0, 1),
	(8, 'ASICS', '', 'lcd', 'lcd', NULL, 4, 0, 1),
	(9, 'HOUSEHOLDS', '', 'quảng cáo, holo 3d, led fan', 'san-pham-cong-nghe', 'Những sản phẩm công nghệ', 0, 0, 1),
	(10, 'VALENTINO', '', 'máy in 3d', 'may-in-3d', NULL, 2, 0, 1),
	(11, 'DIOR', '', 'diy, ráp máy in 3d', 'linh-kien-may-in-3d', NULL, 1, 0, 1),
	(12, 'VALENTINO', '', 'quatang,ledfan,quạt,hologram, quảng cáo', '3d-hologram-led-fan', NULL, 1, 3, 1),
	(13, 'DIOR', '', 'quatang,ledfan', 'clock-fan', NULL, 9, 2, 1),
	(14, 'FENDI', '', 'cảm biến, sensor', 'sensor', NULL, 4, 0, 1),
	(15, 'FENDI', '', 'in 3d, dịch vụ in 3d, 3d print, filament, tạo mẫu nhanh', 'filament', NULL, 5, 0, 1),
	(16, 'NIKE', '', '', 'Module-truyen-nhan-rf', NULL, 2, 0, 1),
	(17, 'UNDER ARMOUR', '', '', 'mach-arduino', NULL, 3, 0, 1),
	(18, 'ADIDAS', '', 'Arduino Shield', 'arduino-shield', NULL, 3, 0, 1),
	(19, 'GUESS', '', 'led,led dây,led strip', 'led-strip', NULL, 4, 0, 1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_image
DROP TABLE IF EXISTS `shop_image`;
CREATE TABLE IF NOT EXISTS `shop_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(2) unsigned NOT NULL DEFAULT '0',
  `status` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_image: ~22 rows (approximately)
DELETE FROM `shop_image`;
/*!40000 ALTER TABLE `shop_image` DISABLE KEYS */;
INSERT INTO `shop_image` (`id`, `image`, `product_id`, `sort`, `status`) VALUES
	(82, 'product_slide/0642809276ecd6a28cb23d464cf41734.jpeg', 38, 0, 0),
	(83, 'product_slide/f4786d81509a8d8ffa461535b07c77bc.png', 38, 0, 0),
	(84, 'product_slide/e09af215f794f8225063c368f46a971d.jpeg', 39, 0, 0),
	(87, 'product_slide/54fac65e58eb9abafe3ac1acbde5ee6d.jpeg', 40, 0, 0),
	(88, 'product_slide/81f37c10d867710075e3ab6153a31d03.png', 40, 0, 0),
	(89, 'product_slide/2fbba5ac3b9c0838e5ce2b536d0c5659.jpeg', 42, 0, 0),
	(90, 'product_slide/8718dfdb75f951010cdce669768c3e3a.png', 42, 0, 0),
	(92, 'product_slide/86282e4f808428108773596dea5ee29c.jpeg', 43, 0, 0),
	(93, 'product_slide/b89873b9c888c0511e14c6e3abc798e8.jpeg', 43, 0, 0),
	(94, 'product_slide/b0d9ffad7e40d07bae6d36665f765e0f.jpeg', 43, 0, 0),
	(95, 'product_slide/70edffd9b5b4121fb8aee7e41c941f03.jpeg', 44, 0, 0),
	(96, 'product_slide/e9d5898fc6daf50751ec0c4e91ed904d.jpeg', 45, 0, 0),
	(102, 'product_slide/a68b1950f148f2688c916cf1c0b5ea06.jpeg', 48, 0, 0),
	(103, 'product_slide/d5d98e50039843507f11ba0bae136624.jpeg', 48, 0, 0),
	(109, 'product_slide/e91e85e37bb89ed854aa4123ce5eb14f.jpeg', 49, 0, 0),
	(110, 'product_slide/bcf85f60d3fe35de2c1be6272f9605ef.png', 52, 0, 0),
	(111, 'product_slide/40999526f41b1d4090e30c6b0ce21dca.jpg', 53, 0, 0),
	(112, 'product_slide/cdc0fcaeef1a846c9993a272c1518922.jpg', 54, 0, 0),
	(113, 'product_slide/7963a1dc4e1676c2b3bc97ade96de7b6.jpeg', 49, 0, 0),
	(114, 'product_slide/101a109520cfbddde1be1791423010b6.jpeg', 46, 0, 0),
	(115, 'product_slide/f02dbb115272eac46f46f015608ab93a.jpeg', 46, 0, 0),
	(116, 'product_slide/89230e4667315ad3ce14785ebbe0bf2a.jpg', 48, 0, 0);
/*!40000 ALTER TABLE `shop_image` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_option
DROP TABLE IF EXISTS `shop_option`;
CREATE TABLE IF NOT EXISTS `shop_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1- radio, 2 -select, 3-text',
  `status` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_option: ~3 rows (approximately)
DELETE FROM `shop_option`;
/*!40000 ALTER TABLE `shop_option` DISABLE KEYS */;
INSERT INTO `shop_option` (`id`, `name`, `type`, `status`, `sort`) VALUES
	(1, 'Màu sắc', 1, 1, 0),
	(2, 'Kích thước', 2, 1, 0),
	(3, 'Chất liệu', 3, 1, 3);
/*!40000 ALTER TABLE `shop_option` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_option_detail
DROP TABLE IF EXISTS `shop_option_detail`;
CREATE TABLE IF NOT EXISTS `shop_option_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_option_detail: ~37 rows (approximately)
DELETE FROM `shop_option_detail`;
/*!40000 ALTER TABLE `shop_option_detail` DISABLE KEYS */;
INSERT INTO `shop_option_detail` (`id`, `name`, `add_price`, `option_id`, `product_id`) VALUES
	(1, 'X', 0, 2, 0),
	(2, 'XL', 10000, 2, 0),
	(3, 'Đỏ', 0, 1, 0),
	(4, 'Xanh', 10000, 1, 0),
	(5, 'Vàng', 5000, 1, 0),
	(24, 'Tím', 20000, 1, 15),
	(47, 'Tìm', 0, 2, 16),
	(48, 'Ok', 0, 2, 16),
	(49, 'Xanh', 0, 1, 17),
	(50, 'Do', 0, 1, 17),
	(581, 'S', 0, 2, 6),
	(582, 'XL', 0, 2, 6),
	(606, 'Màu xanh', 0, 1, 12),
	(607, 'Màu đỏ', 0, 1, 12),
	(608, 'Màu tím', 0, 1, 12),
	(609, 'XL', 0, 2, 12),
	(610, 'XXL', 0, 2, 12),
	(626, 'Màu Trắng Đục', 0, 1, 34),
	(627, 'Trong Suốt', 0, 1, 34),
	(628, 'ID=2 mm, OD=4 mm', 0, 2, 34),
	(629, 'ID=2 mm, OD=3 mm', 0, 2, 34),
	(630, 'ID=3 mm, OD=4 mm', 0, 2, 34),
	(631, 'S', 0, 2, 5),
	(632, 'XL', 0, 2, 5),
	(633, 'XXX', 0, 2, 5),
	(634, 'White/Đen', 0, 1, 9),
	(635, 'Black/Đen', 0, 1, 9),
	(636, 'Transparent/Trong suốt', 0, 1, 9),
	(637, 'Red/Đỏ', 0, 1, 9),
	(638, 'Yellow/Vàng', 0, 1, 9),
	(639, 'Blue/Xanh Dương', 0, 1, 9),
	(640, 'Green/Xanh Lá', 0, 1, 9),
	(641, 'Orange/Cam', 0, 1, 9),
	(642, 'Cyan/Lam', 0, 1, 9),
	(643, 'Pink/Hồng', 0, 1, 9),
	(644, 'Đường kính 1.75mm', 0, 2, 9),
	(645, 'Đường kính 3mm', 0, 2, 9);
/*!40000 ALTER TABLE `shop_option_detail` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-not send 1-pp send 2-sent',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-notship 1-sending 2-pp send 3-shipped',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-new 1-processing 2-hold 3-cancel 4-Completed',
  `tax` tinyint(4) DEFAULT '0' COMMENT '%',
  `total` int(11) DEFAULT '0',
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order: ~8 rows (approximately)
DELETE FROM `shop_order`;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` (`id`, `user_id`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `received`, `balance`, `toname`, `address1`, `address2`, `country`, `phone`, `comment`, `payment_method`, `transaction`, `created_at`, `updated_at`) VALUES
	(4, 0, 320000, 0, 0, 0, 0, 0, 0, 320000, 0, 320000, 'Le Nam', '15 nguyen bach', 'Tan Phu', NULL, '0999988898', 'ok', NULL, NULL, '2017-08-25 15:34:21', NULL),
	(38, 3, 485000, 15, -15, 0, 2, 4, 0, 485000, -485000, 0, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', NULL, NULL, NULL, '2018-05-15 13:59:39', '2018-05-20 06:13:07'),
	(39, 3, 1360000, 100000, -100000, 3, 1, 1, 0, 1360000, -1060000, 300000, 'Lê Văn Lanh', 'Quan 122', 'Ho chi minh', NULL, '0667151172', 'ok', NULL, NULL, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(74, 0, 20000, 10000, 0, 0, 0, 0, 0, 30000, 0, 30000, 'Nguyễn Tuấn', '南陽市長岡', 'fghfghfghfghfg', NULL, '09012345678', 'ok', NULL, NULL, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(75, 5, 45000, 20000, 0, 0, 0, 0, 0, 65000, 0, 65000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', NULL, NULL, NULL, '2018-09-05 20:59:07', NULL),
	(76, 5, 15000, 20000, -10000, 0, 0, 0, 0, 122000, 0, -115000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', NULL, NULL, NULL, '2018-09-06 18:59:25', NULL),
	(77, 5, 20000, 20000, -6000, 0, 0, 0, 0, 34000, 0, 34000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', NULL, NULL, NULL, '2018-09-07 20:58:47', NULL),
	(78, 5, NULL, 20000, 0, 0, 0, 0, 0, 20000, 0, 20000, 'Bao Khanh', '12', 'TTh07', NULL, '09012345678', NULL, NULL, NULL, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(93, 3, 25000, 20000, -25000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', NULL, 'paypal', NULL, '2018-09-23 12:41:07', NULL),
	(94, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', NULL, 'paypal', NULL, '2018-09-23 12:44:03', NULL),
	(95, 3, 30000, 20000, -30000, 0, 0, 0, 0, 20000, 0, 20000, 'Lê Văn Lanh', 'Quan 12', 'Ho chi minh', NULL, '0667151172', NULL, 'paypal', NULL, '2018-09-23 12:46:05', NULL),
	(96, 3, 10000, 20000, -10000, 0, 0, 3, 0, 20000, -10000, 10000, 'ABC', 'Quan 12', 'Ho chi minh', NULL, '066715117', NULL, 'paypal', 'PAY-96U44306W49582248LOTSSOY', '2018-09-23 12:48:40', '2018-09-23 12:53:18');
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_detail
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE IF NOT EXISTS `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0' COMMENT 'Price: price of product or type',
  `qty` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `sku` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Attributes',
  `option` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_detail: ~8 rows (approximately)
DELETE FROM `shop_order_detail`;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `sku`, `type`, `option`, `created_at`, `updated_at`) VALUES
	(131, 74, 32, 'Dây Gia Nhiệt 12V 40W Máy In 3D', 20000, 1, 20000, '3D-HOTWIRE1240', '[]', NULL, '2018-09-03 17:00:37', NULL),
	(132, 75, 44, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'P10-IRG', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(133, 75, 20, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, 'SS495A', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(134, 75, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-05 20:59:07', NULL),
	(135, 76, 35, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 15000, 1, 15000, '3D-SENSOR-NTC 100K', '[]', NULL, '2018-09-06 18:59:25', NULL),
	(136, 77, 34, 'Clock FAN Hiển Thị Ảnh Nhiều Màu Sắc', 20000, 1, 20000, '3D-TEFTLON-W24', '[]', NULL, '2018-09-07 20:58:47', NULL),
	(152, 93, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(153, 93, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:41:07', NULL),
	(154, 94, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(155, 94, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:44:03', NULL),
	(156, 95, 48, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5UT', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(157, 95, 47, 'Easy Polo Black Edition', 15000, 1, 15000, 'BX-5U0', '[]', NULL, '2018-09-23 12:46:05', NULL),
	(158, 96, 49, 'Easy Polo Black Edition', 10000, 1, 10000, 'BX-5UTbnv', '[]', NULL, '2018-09-23 12:48:40', NULL);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_history
DROP TABLE IF EXISTS `shop_order_history`;
CREATE TABLE IF NOT EXISTS `shop_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_history: ~10 rows (approximately)
DELETE FROM `shop_order_history`;
/*!40000 ALTER TABLE `shop_order_history` DISABLE KEYS */;
INSERT INTO `shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `add_date`) VALUES
	(40, 74, 'New order', 0, 0, '2018-09-03 17:00:37'),
	(41, 74, 'Thay đổi <b>comment</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'ok\'</span>', 1, 0, '2018-09-03 17:14:49'),
	(42, 74, 'Thay đổi <b>shipping</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'10000\'</span>', 1, 0, '2018-09-03 17:14:55'),
	(43, 39, 'Thay đổi <b>status</b> từ <span style="color:blue">\'4\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-03 17:17:00'),
	(44, 39, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-1060000\'</span>', 1, 0, '2018-09-03 17:17:09'),
	(45, 75, 'New order', 0, 5, '2018-09-05 20:59:07'),
	(46, 76, 'New order', 0, 5, '2018-09-06 18:59:25'),
	(47, 77, 'New order', 0, 5, '2018-09-07 20:58:47'),
	(48, 78, 'New order', 0, 5, '2018-09-08 00:27:24'),
	(49, 78, 'Xóa sản phẩm pID#137', 1, 0, '2018-09-12 22:28:50'),
	(71, 93, 'New order', 0, 3, '2018-09-23 12:41:07'),
	(72, 94, 'New order', 0, 3, '2018-09-23 12:44:03'),
	(73, 95, 'New order', 0, 3, '2018-09-23 12:46:05'),
	(74, 96, 'New order', 0, 3, '2018-09-23 12:48:40'),
	(75, 96, 'Transaction PAY-96U44306W49582248LOTSSOY', 0, 3, '2018-09-23 12:49:20'),
	(76, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'0\'</span> thành <span style="color:red">\'1\'</span>', 1, 0, '2018-09-23 12:51:14'),
	(77, 96, 'Thay đổi <b>status</b> từ <span style="color:blue">\'1\'</span> thành <span style="color:red">\'3\'</span>', 1, 0, '2018-09-23 12:51:21'),
	(78, 96, 'Thay đổi <b>phone</b> từ <span style="color:blue">\'0667151172\'</span> thành <span style="color:red">\'066715117\'</span>', 1, 0, '2018-09-23 12:51:59'),
	(79, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn Lanh\'</span> thành <span style="color:red">\'LLanh\'</span>', 1, 0, '2018-09-23 12:52:05'),
	(80, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'LLanh\'</span> thành <span style="color:red">\'Lê Văn\'</span>', 1, 0, '2018-09-23 12:52:11'),
	(81, 96, 'Thay đổi <b>toname</b> từ <span style="color:blue">\'Lê Văn\'</span> thành <span style="color:red">\'ABC\'</span>', 1, 0, '2018-09-23 12:52:23'),
	(82, 96, 'Thay đổi <b>received</b> từ <span style="color:blue">\'\'</span> thành <span style="color:red">\'-10000\'</span>', 1, 0, '2018-09-23 12:53:18');
/*!40000 ALTER TABLE `shop_order_history` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_status
DROP TABLE IF EXISTS `shop_order_status`;
CREATE TABLE IF NOT EXISTS `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_status: ~5 rows (approximately)
DELETE FROM `shop_order_status`;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
INSERT INTO `shop_order_status` (`id`, `name`) VALUES
	(0, 'Mới'),
	(1, 'Đang xử lý'),
	(2, 'Tạm giữ'),
	(3, 'Hủy bỏ'),
	(4, 'Hoàn thành'),
	(5, 'Failed');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_order_total
DROP TABLE IF EXISTS `shop_order_total`;
CREATE TABLE IF NOT EXISTS `shop_order_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_order_total: ~40 rows (approximately)
DELETE FROM `shop_order_total`;
/*!40000 ALTER TABLE `shop_order_total` DISABLE KEYS */;
INSERT INTO `shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `sort`, `created_at`, `updated_at`) VALUES
	(34, 38, 'Tổng tiền hàng', 'subtotal', 485000, 1, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(35, 38, 'Phí giao hàng', 'shipping', 15, 10, '2018-05-15 13:59:39', '2018-05-15 14:03:52'),
	(36, 38, 'Giảm giá', 'discount', -15, 20, '2018-05-15 13:59:39', '2018-05-15 14:03:34'),
	(37, 38, 'Đã thanh toán', 'received', -485000, 200, '2018-05-15 13:59:39', '2018-05-20 06:12:58'),
	(38, 38, 'Tổng tiền cần thanh toán', 'total', 485000, 100, '2018-05-15 13:59:39', '2018-05-20 06:12:46'),
	(39, 39, 'Tổng tiền hàng', 'subtotal', 1360000, 1, '2018-05-18 13:59:31', '2018-05-20 05:59:45'),
	(40, 39, 'Phí giao hàng', 'shipping', 100000, 10, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(41, 39, 'Giảm giá', 'discount', -100000, 20, '2018-05-18 13:59:31', '2018-05-20 04:29:42'),
	(42, 39, 'Tổng tiền cần thanh toán', 'total', 1360000, 100, '2018-05-18 13:59:31', '2018-05-20 06:07:14'),
	(43, 39, 'Đã thanh toán', 'received', -1060000, 200, '2018-05-18 13:59:31', '2018-09-03 17:17:09'),
	(214, 74, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-03 17:00:37', NULL),
	(215, 74, 'Phí giao hàng', 'shipping', 10000, 10, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(216, 74, 'Giảm giá', 'discount', 0, 20, '2018-09-03 17:00:37', NULL),
	(217, 74, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-03 17:00:37', '2018-09-03 17:14:55'),
	(218, 74, 'Đã thanh toán', 'received', 0, 200, '2018-09-03 17:00:37', NULL),
	(219, 75, 'Tổng tiền hàng', 'subtotal', 45000, 1, '2018-09-05 20:59:07', NULL),
	(220, 75, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-05 20:59:07', NULL),
	(221, 75, 'Giảm giá', 'discount', 0, 20, '2018-09-05 20:59:07', NULL),
	(222, 75, 'Tổng tiền cần thanh toán', 'total', 65000, 100, '2018-09-05 20:59:07', NULL),
	(223, 75, 'Đã thanh toán', 'received', 0, 200, '2018-09-05 20:59:07', NULL),
	(224, 76, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-06 18:59:25', NULL),
	(225, 76, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-06 18:59:25', NULL),
	(226, 76, 'Giảm giá 150,000VNĐ (<b>Code:</b> PAA-LLK04)', 'discount', -150000, 20, '2018-09-06 18:59:25', NULL),
	(227, 76, 'Tổng tiền cần thanh toán', 'total', -115000, 100, '2018-09-06 18:59:25', NULL),
	(228, 76, 'Đã thanh toán', 'received', 0, 200, '2018-09-06 18:59:25', NULL),
	(229, 77, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-07 20:58:47', NULL),
	(230, 77, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-07 20:58:47', NULL),
	(231, 77, 'Giảm tối đa 30% (<b>Code:</b> KKB3-KLLA)', 'discount', -6000, 20, '2018-09-07 20:58:47', NULL),
	(232, 77, 'Tổng tiền cần thanh toán', 'total', 34000, 100, '2018-09-07 20:58:47', NULL),
	(233, 77, 'Đã thanh toán', 'received', 0, 200, '2018-09-07 20:58:47', NULL),
	(234, 78, 'Tổng tiền hàng', 'subtotal', 20000, 1, '2018-09-08 00:27:24', NULL),
	(235, 78, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-08 00:27:24', NULL),
	(236, 78, 'Giảm giá', 'discount', 0, 20, '2018-09-08 00:27:24', NULL),
	(237, 78, 'Tổng tiền cần thanh toán', 'total', 20000, 100, '2018-09-08 00:27:24', '2018-09-12 22:28:50'),
	(238, 78, 'Đã thanh toán', 'received', 0, 200, '2018-09-08 00:27:24', NULL),
	(239, 79, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 08:54:19', NULL),
	(240, 79, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 08:54:19', NULL),
	(241, 79, 'Giảm giá', 'discount', 0, 20, '2018-09-23 08:54:19', NULL),
	(242, 79, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 08:54:19', NULL),
	(243, 79, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 08:54:19', NULL),
	(244, 80, 'Tổng tiền hàng', 'subtotal', 15000, 1, '2018-09-23 09:34:17', NULL),
	(245, 80, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:17', NULL),
	(246, 80, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:17', NULL),
	(247, 80, 'Tổng tiền cần thanh toán', 'total', 35000, 100, '2018-09-23 09:34:17', NULL),
	(248, 80, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:17', NULL),
	(249, 81, 'Tổng tiền hàng', 'subtotal', 10000, 1, '2018-09-23 09:34:47', NULL),
	(250, 81, 'Phí giao hàng', 'shipping', 20000, 10, '2018-09-23 09:34:47', NULL),
	(251, 81, 'Giảm giá', 'discount', 0, 20, '2018-09-23 09:34:47', NULL),
	(252, 81, 'Tổng tiền cần thanh toán', 'total', 30000, 100, '2018-09-23 09:34:47', NULL),
	(253, 81, 'Đã thanh toán', 'received', 0, 200, '2018-09-23 09:34:47', NULL),
	(254, 82, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 11:57:34', NULL),
	(255, 82, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:57:34', NULL),
	(256, 82, 'Discount', 'discount', 0, 20, '2018-09-23 11:57:34', NULL),
	(257, 82, 'Total', 'total', 45000, 100, '2018-09-23 11:57:34', NULL),
	(258, 82, 'Received', 'received', 0, 200, '2018-09-23 11:57:34', NULL),
	(259, 83, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 11:59:49', NULL),
	(260, 83, 'Shipping', 'shipping', 20000, 10, '2018-09-23 11:59:49', NULL),
	(261, 83, 'Discount', 'discount', 0, 20, '2018-09-23 11:59:49', NULL),
	(262, 83, 'Total', 'total', 35000, 100, '2018-09-23 11:59:49', NULL),
	(263, 83, 'Received', 'received', 0, 200, '2018-09-23 11:59:49', NULL),
	(264, 84, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:00:51', NULL),
	(265, 84, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:00:51', NULL),
	(266, 84, 'Discount', 'discount', 0, 20, '2018-09-23 12:00:51', NULL),
	(267, 84, 'Total', 'total', 35000, 100, '2018-09-23 12:00:51', NULL),
	(268, 84, 'Received', 'received', 0, 200, '2018-09-23 12:00:51', NULL),
	(269, 85, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:09:37', NULL),
	(270, 85, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:09:37', NULL),
	(271, 85, 'Discount', 'discount', 0, 20, '2018-09-23 12:09:37', NULL),
	(272, 85, 'Total', 'total', 35000, 100, '2018-09-23 12:09:37', NULL),
	(273, 85, 'Received', 'received', 0, 200, '2018-09-23 12:09:37', NULL),
	(274, 86, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:11:27', NULL),
	(275, 86, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:11:27', NULL),
	(276, 86, 'Discount', 'discount', 0, 20, '2018-09-23 12:11:27', NULL),
	(277, 86, 'Total', 'total', 35000, 100, '2018-09-23 12:11:27', NULL),
	(278, 86, 'Received', 'received', 0, 200, '2018-09-23 12:11:27', NULL),
	(279, 87, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:15:40', NULL),
	(280, 87, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:15:40', NULL),
	(281, 87, 'Discount', 'discount', 0, 20, '2018-09-23 12:15:40', NULL),
	(282, 87, 'Total', 'total', 35000, 100, '2018-09-23 12:15:40', NULL),
	(283, 87, 'Received', 'received', 0, 200, '2018-09-23 12:15:40', NULL),
	(284, 88, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:18:08', NULL),
	(285, 88, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:18:08', NULL),
	(286, 88, 'Discount', 'discount', 0, 20, '2018-09-23 12:18:08', NULL),
	(287, 88, 'Total', 'total', 30000, 100, '2018-09-23 12:18:08', NULL),
	(288, 88, 'Received', 'received', 0, 200, '2018-09-23 12:18:08', NULL),
	(289, 89, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:21:04', NULL),
	(290, 89, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:21:04', NULL),
	(291, 89, 'Discount', 'discount', 0, 20, '2018-09-23 12:21:04', NULL),
	(292, 89, 'Total', 'total', 30000, 100, '2018-09-23 12:21:04', NULL),
	(293, 89, 'Received', 'received', 0, 200, '2018-09-23 12:21:04', NULL),
	(294, 90, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:26:19', NULL),
	(295, 90, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:26:19', NULL),
	(296, 90, 'Discount', 'discount', 0, 20, '2018-09-23 12:26:19', NULL),
	(297, 90, 'Total', 'total', 35000, 100, '2018-09-23 12:26:19', NULL),
	(298, 90, 'Received', 'received', 0, 200, '2018-09-23 12:26:19', NULL),
	(299, 91, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:29:11', NULL),
	(300, 91, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:29:11', NULL),
	(301, 91, 'Discount', 'discount', 0, 20, '2018-09-23 12:29:11', NULL),
	(302, 91, 'Total', 'total', 35000, 100, '2018-09-23 12:29:11', NULL),
	(303, 91, 'Received', 'received', 0, 200, '2018-09-23 12:29:11', NULL),
	(304, 92, 'Sub total', 'subtotal', 15000, 1, '2018-09-23 12:31:28', NULL),
	(305, 92, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:31:28', NULL),
	(306, 92, 'Discount', 'discount', 0, 20, '2018-09-23 12:31:28', NULL),
	(307, 92, 'Total', 'total', 35000, 100, '2018-09-23 12:31:28', NULL),
	(308, 92, 'Received', 'received', 0, 200, '2018-09-23 12:31:28', NULL),
	(309, 93, 'Sub total', 'subtotal', 25000, 1, '2018-09-23 12:41:07', NULL),
	(310, 93, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:41:07', NULL),
	(311, 93, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK07)', 'discount', -25000, 20, '2018-09-23 12:41:07', NULL),
	(312, 93, 'Total', 'total', 20000, 100, '2018-09-23 12:41:07', NULL),
	(313, 93, 'Received', 'received', 0, 200, '2018-09-23 12:41:07', NULL),
	(314, 94, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:44:03', NULL),
	(315, 94, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:44:03', NULL),
	(316, 94, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK08)', 'discount', -30000, 20, '2018-09-23 12:44:03', NULL),
	(317, 94, 'Total', 'total', 20000, 100, '2018-09-23 12:44:03', NULL),
	(318, 94, 'Received', 'received', 0, 200, '2018-09-23 12:44:03', NULL),
	(319, 95, 'Sub total', 'subtotal', 30000, 1, '2018-09-23 12:46:05', NULL),
	(320, 95, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:46:05', NULL),
	(321, 95, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK09)', 'discount', -30000, 20, '2018-09-23 12:46:05', NULL),
	(322, 95, 'Total', 'total', 20000, 100, '2018-09-23 12:46:05', NULL),
	(323, 95, 'Received', 'received', 0, 200, '2018-09-23 12:46:05', NULL),
	(324, 96, 'Sub total', 'subtotal', 10000, 1, '2018-09-23 12:48:40', NULL),
	(325, 96, 'Shipping', 'shipping', 20000, 10, '2018-09-23 12:48:40', NULL),
	(326, 96, 'Giảm tối đa 219,999VNĐ (<b>Code:</b> PAA-LLK010)', 'discount', -10000, 20, '2018-09-23 12:48:40', NULL),
	(327, 96, 'Total', 'total', 20000, 100, '2018-09-23 12:48:40', NULL),
	(328, 96, 'Received', 'received', -10000, 200, '2018-09-23 12:48:40', '2018-09-23 12:53:18');
/*!40000 ALTER TABLE `shop_order_total` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_payment_status
DROP TABLE IF EXISTS `shop_payment_status`;
CREATE TABLE IF NOT EXISTS `shop_payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_payment_status: ~4 rows (approximately)
DELETE FROM `shop_payment_status`;
/*!40000 ALTER TABLE `shop_payment_status` DISABLE KEYS */;
INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
	(0, 'Chưa thanh toán'),
	(1, 'Thanh toán một phần'),
	(2, 'Thanh toán xong'),
	(3, 'Khách hàng dư tiền');
/*!40000 ALTER TABLE `shop_payment_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Nomal 1-New 2-Hot',
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0- inactive 1-active ',
  `view` int(11) DEFAULT '0',
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product: ~40 rows (approximately)
DELETE FROM `shop_product`;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`id`, `name`, `sku`, `keyword`, `description`, `image`, `content`, `brand_id`, `category_id`, `category_other`, `price`, `cost`, `stock`, `sold`, `type`, `option`, `sort`, `status`, `view`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
	(3, 'Easy Polo Black Edition', 'MEGA2560', '', NULL, 'product/f2d9505d28f1b10f949cec466cada01e.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 7, NULL, 220000, 150000, 0, -5, 0, NULL, 0, 1, 0, NULL, NULL, '2018-01-15 14:57:31', '2018-09-22 17:33:00'),
	(4, 'Easy Polo Black Edition', 'LEDFAN1', '', '', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 6, NULL, 190000, 100000, 17, -1, 1, NULL, 0, 1, 1, '2018-08-27 11:37:16', NULL, '2018-01-16 13:03:54', '2018-08-27 11:37:16'),
	(5, 'Easy Polo Black Edition', 'CLOCKFAN1', '', NULL, 'product/15aa6b1f31b53a0177d7653761a45274.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 13, NULL, 420000, 320000, 11, 1, 1, NULL, 0, 1, 5, '2018-09-22 23:27:46', NULL, '2018-01-16 13:04:41', '2018-09-22 23:27:46'),
	(6, 'Easy Polo Black Edition', 'CLOCKFAN2', '', '', 'product/0e1416d509af3712bd801404ca928702.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 13, NULL, 380000, 250000, 99, 78, 1, NULL, 0, 1, 0, NULL, NULL, '2018-02-02 14:52:50', '2018-08-23 09:20:43'),
	(7, 'Easy Polo Black Edition', 'CLOCKFAN3', '', '', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 13, NULL, 320000, 250000, 51, 0, 1, NULL, 1, 1, 0, NULL, NULL, '2018-02-02 14:53:30', '2018-08-23 09:20:25'),
	(8, 'Easy Polo Black Edition', 'TMC2208', '', '', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 6, 11, NULL, 220000, 130000, 101, 1, 0, NULL, 1, 1, 9, '2018-09-22 23:13:13', NULL, '2018-02-02 14:53:30', '2018-09-22 23:13:13'),
	(9, 'Easy Polo Black Edition', 'FILAMENT', '', NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 15, NULL, 299000, 200000, 127, 6, 1, NULL, 1, 1, 0, NULL, NULL, '2018-02-02 14:53:30', '2018-09-22 18:18:41'),
	(10, 'Easy Polo Black Edition', 'A4988', '', '', 'product/820283598735f98a9b23960821da438b.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 11, NULL, 39000, 20000, 107, 33, 0, NULL, 1, 1, 0, NULL, NULL, '2018-02-02 14:53:30', '2018-06-27 16:21:10'),
	(11, 'Easy Polo Black Edition', 'ANYCUBIC-P', '', NULL, 'product/d63af407fa92299e163696a585566dc7.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 3, 10, NULL, 4990000, 3500000, 1, 1048, 0, NULL, 0, 1, 0, NULL, NULL, '2018-01-15 14:57:31', '2018-09-22 19:44:41'),
	(12, 'Easy Polo Black Edition', '3DHLFD', '', '', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 1, 12, NULL, 7990000, 5200000, 10, 20, 1, NULL, 0, 1, 0, NULL, NULL, '2018-01-15 14:57:31', '2018-09-03 17:15:38'),
	(20, 'Easy Polo Black Edition', 'SS495A', '', '', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 2, 14, NULL, 15000, 7000, 1005, 1059, 1, NULL, 0, 1, 2, '2018-09-06 06:45:53', NULL, '2018-01-15 14:57:31', '2018-09-06 06:45:53'),
	(21, 'Easy Polo Black Edition', '3D-CARBON1.75', '', NULL, 'product/d05966a529efdd8d7b41ed9b687859b6.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 15, NULL, 390000, 15000, 10, 19, 1, NULL, 1, 1, 1, '2018-09-22 18:22:31', NULL, '2018-02-02 14:53:30', '2018-09-22 18:22:31'),
	(22, 'Easy Polo Black Edition', '3D-GOLD1.75', '', NULL, 'product/eedfd153bf368919a134da17f22c8de7.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 15, NULL, 500000, 15000, 10, 1, 1, NULL, 1, 1, 1, '2018-09-06 06:46:15', NULL, '2018-04-12 15:05:37', '2018-09-22 18:21:08'),
	(23, 'Easy Polo Black Edition', 'LCD12864-3D', '', NULL, 'product/a7a315526ecf7594731448d792714a11.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 11, NULL, 220000, 15000, 0, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-11 13:33:37', '2018-09-22 17:41:11'),
	(24, 'Easy Polo Black Edition', 'LCD2004-3D', '', NULL, 'product/9215506044b8a350fc082f5350b3653a.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 11, NULL, 190000, 15000, 0, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-11 13:39:31', '2018-09-22 17:40:39'),
	(25, 'Easy Polo Black Edition', 'RAMPS1.5-3D', '', NULL, 'product/1d6cdd4473603c7a4d162067713b8da8.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 11, NULL, 120000, 15000, 0, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-11 13:41:25', '2018-09-22 17:40:24'),
	(26, 'Easy Polo Black Edition', 'EFULL-3D', '', NULL, 'product/07e79f6546499878cba383dd5bfe977e.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 11, NULL, 890000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-08-28 06:39:46', NULL, '2018-08-11 13:50:25', '2018-09-22 17:39:55'),
	(27, 'Easy Polo Black Edition', 'ANYCUBIC-I3M', '', NULL, 'product/ea88b7078652909f3d6c5d445aa05f59.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 10, NULL, 7990000, 15000, 5, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-22 16:26:00', '2018-09-22 17:34:25'),
	(28, 'Easy Polo Black Edition', '3DNOZZLE', '', NULL, 'product/c25c81c852823f5ea8ba4250978217a5.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 11, NULL, 10000, 15000, 500, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-24 04:21:48', '2018-09-22 18:17:21'),
	(29, 'Easy Polo Black Edition', '3D-TEFLONLOCK', '', NULL, 'product/8e28f51184f0a96970c05185b1412fa1.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 12, NULL, 10000, 15000, 500, 0, 0, NULL, 0, 1, 10, '2018-09-22 23:10:22', NULL, '2018-08-24 04:32:48', '2018-09-22 23:10:22'),
	(30, 'Easy Polo Black Edition', '3D-BELT-GT2', '', NULL, 'product/dfee86df16f49b73a9139b55c488a228.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 11, NULL, 20000, 15000, 0, 0, 1, NULL, 0, 1, 4, '2018-09-22 21:10:20', NULL, '2018-08-24 04:35:39', '2018-09-22 21:10:20'),
	(31, 'Easy Polo Black Edition', '3D-TEFLONLOCK-M10', '', NULL, 'product/0e1416d509af3712bd801404ca928702.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 11, NULL, 10000, 15000, 100, 0, 0, NULL, 0, 1, 4, '2018-09-08 13:19:46', NULL, '2018-08-24 04:39:03', '2018-09-22 17:29:10'),
	(32, 'Easy Polo Black Edition', '3D-HOTWIRE1240', '', NULL, 'product/efd9fb910ba539c125b7c431a1ccc563.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 11, NULL, 20000, 15000, -1, 1, 1, NULL, 0, 1, 2, '2018-09-06 06:35:24', NULL, '2018-08-24 04:40:54', '2018-09-22 18:16:56'),
	(33, 'Easy Polo Black Edition', '3D-TEFTLON-24', '', NULL, 'product/a635cc2bdf5485ccb2c0cc9d186968b2.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 16, NULL, 15000, 15000, 100, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-24 04:44:04', '2018-09-22 17:31:51'),
	(34, 'Easy Polo Black Edition', '3D-TEFTLON-W24', '', NULL, 'product/a32f12e009ebf0d24ab264706ecbc15e.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 5, 11, NULL, 20000, 15000, 99, 1, 1, NULL, 0, 1, 3, '2018-09-22 23:15:28', NULL, '2018-08-24 05:09:34', '2018-09-22 23:15:28'),
	(35, 'Easy Polo Black Edition', '3D-SENSOR-NTC 100K', '', NULL, 'product/41c8f0d0111cd5a3f0538604233cbed8.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 4, 10, NULL, 15000, 15000, 98, 2, 1, NULL, 0, 1, 3, '2018-08-31 22:14:35', NULL, '2018-08-24 05:13:58', '2018-09-22 17:31:33'),
	(36, 'Easy Polo Black Edition', 'nRLF24L01+2.4HZ', '', NULL, 'product/820283598735f98a9b23960821da438b.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 3, 11, NULL, 25000, 15000, 0, 0, 0, NULL, 0, 1, 0, NULL, NULL, '2018-08-24 06:07:15', '2018-09-22 17:31:06'),
	(37, 'Easy Polo Black Edition', 'ARDUINO-NANO', '', NULL, 'product/da687e60e54bd7fc7eab5c76e7ec3754.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 17, NULL, 100000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-08-31 21:59:45', NULL, '2018-08-24 06:25:48', '2018-09-22 18:16:43'),
	(38, 'Easy Polo Black Edition', 'LEDSTRIP-5050RGB', '', NULL, 'product/61559578baf403e03565e73a14f845ce.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 9, NULL, 15000, 15000, 0, 0, 1, NULL, 0, 1, 12, '2018-08-27 16:44:08', NULL, '2018-08-24 06:33:31', '2018-09-22 18:16:25'),
	(39, 'Easy Polo Black Edition', 'LEDSTRIP-S', '', NULL, 'product/c400aecd5c6d87782ac9af33dd7a5980.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 4, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 1, '2018-08-27 15:28:14', NULL, '2018-08-24 08:46:21', '2018-09-22 19:19:40'),
	(40, 'Easy Polo Black Edition', 'P10-IR', '', NULL, 'product/830d640cd17eba0bf186dc649d5c3053.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 6, '2018-08-30 23:20:31', NULL, '2018-08-24 08:49:49', '2018-09-22 17:27:41'),
	(41, 'Easy Polo Black Edition', 'P10-IG', '', NULL, 'product/9d9aab8be8634708c9cf5b690fee74a4.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, 0, 0, 1, NULL, 0, 1, 12, '2018-09-22 21:08:14', NULL, '2018-08-24 08:51:11', '2018-09-22 21:08:14'),
	(42, 'Easy Polo Black Edition', 'P10-IB', '', NULL, 'product/98fafb9da683cd9ee854598f3f3a3bd5.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 9, '2018-08-31 21:45:43', NULL, '2018-08-24 08:52:58', '2018-09-22 17:35:35'),
	(43, 'Easy Polo Black Edition', 'P10-IRGB', '', NULL, 'product/a111c060ebb6ffbbd2d34ae278501789.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 3, '2018-09-08 14:13:30', NULL, '2018-08-24 08:54:45', '2018-09-22 19:43:47'),
	(44, 'Easy Polo Black Edition', 'P10-IRG', '', NULL, 'product/95349d3747fdaf79d391fdc98e083701.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, -1, 1, 1, NULL, 0, 1, 18, '2018-08-27 17:19:52', NULL, '2018-08-24 08:56:02', '2018-09-22 17:39:35'),
	(45, 'Easy Polo Black Edition', 'LFF', '', NULL, 'product/3c8f613d30b4e487ef95a5e4cdea634c.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 6, NULL, 15000, 15000, -1, 1, 0, NULL, 0, 1, 20, '2018-09-22 23:00:45', NULL, '2018-08-24 08:58:42', '2018-09-23 12:31:28'),
	(46, 'Easy Polo Black Edition', 'P2.5-I', '', NULL, 'product/949fa36ebd56593445fb61d141fd2a81.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 19, NULL, 15000, 15000, 0, 0, 0, NULL, 0, 1, 10, '2018-09-01 01:05:52', NULL, '2018-08-24 09:23:07', '2018-09-22 18:20:41'),
	(47, 'Easy Polo Black Edition', 'BX-5U0', '', NULL, 'product/cd7aa3394c35330ed7f9e4095c6adb65.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, -5, 5, 0, NULL, 0, 1, 80, '2018-09-22 23:22:47', NULL, '2018-08-24 09:48:31', '2018-09-23 12:46:05'),
	(48, 'Easy Polo Black Edition', 'BX-5UT', '', NULL, 'product/6ddd855403d127a9fed049d0ec335481.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, 19, NULL, 15000, 15000, -10, 10, 0, NULL, 0, 1, 164, '2018-09-23 12:28:59', NULL, '2018-08-24 09:52:15', '2018-09-23 12:46:05'),
	(49, 'Easy Polo Black Edition', 'BX-5UTbnv', '', NULL, 'product/0950df6d59696ad39a8e5505735f578c.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 2, 2, NULL, 15000, 15000, -6, 6, 1, NULL, 0, 1, 15, '2018-09-22 21:10:26', '2018-09-19 00:00:00', '2018-09-03 08:05:59', '2018-09-23 12:48:40');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_like
DROP TABLE IF EXISTS `shop_product_like`;
CREATE TABLE IF NOT EXISTS `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product_like: ~0 rows (approximately)
DELETE FROM `shop_product_like`;
/*!40000 ALTER TABLE `shop_product_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_like` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_recent_view
DROP TABLE IF EXISTS `shop_product_recent_view`;
CREATE TABLE IF NOT EXISTS `shop_product_recent_view` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `customer_id_product_id` (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table s-cart.shop_product_recent_view: ~8 rows (approximately)
DELETE FROM `shop_product_recent_view`;
/*!40000 ALTER TABLE `shop_product_recent_view` DISABLE KEYS */;
INSERT INTO `shop_product_recent_view` (`user_id`, `product_id`, `created_at`) VALUES
	(3, 35, '2018-08-27 15:58:21'),
	(3, 38, '2018-08-27 16:44:08'),
	(3, 41, '2018-08-27 17:19:33'),
	(3, 42, '2018-08-27 17:02:03'),
	(3, 44, '2018-08-27 17:19:52'),
	(3, 46, '2018-08-27 17:14:29'),
	(3, 47, '2018-08-27 17:01:57'),
	(3, 48, '2018-08-27 17:01:49');
/*!40000 ALTER TABLE `shop_product_recent_view` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_product_type
DROP TABLE IF EXISTS `shop_product_type`;
CREATE TABLE IF NOT EXISTS `shop_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opt_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_price` int(11) DEFAULT NULL,
  `opt_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_sku` (`opt_sku`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_product_type: ~7 rows (approximately)
DELETE FROM `shop_product_type`;
/*!40000 ALTER TABLE `shop_product_type` DISABLE KEYS */;
INSERT INTO `shop_product_type` (`id`, `opt_name`, `opt_sku`, `opt_price`, `opt_image`, `product_id`) VALUES
	(3, 'Sản phẩm xanh', 'BX-5UT-s', 454, 'product/4c28c6a2fc6a3fa79197798707d55b5c.png', 48),
	(4, '34324234', 'BX-5UT-T', 1111, 'product/293da323794f89ee2d7962f44f930393.png', 48),
	(12, 'fdgdfg', 'fgdfgd', NULL, 'product/68f8a4d063e4ddef447616116dd03e0f.png', 42),
	(13, 'bnmbnmbn', 'BX-5U0-1fgfgjghjhgj', NULL, 'product/2702691387f97f5985843cbb243d267c.png', 42),
	(16, 'Sản phẩm xanh', 'BX-5U0-1fgfgkjh', NULL, 'product/777274d55ff7adeef36ca930022a8db9.jpg', 29),
	(17, 'Sản phẩm xanh', 'BX-5U0-1fgfgl', NULL, 'product/0ba3c6a927bb0e2cd2d54ce0c13df919.jpg', 30),
	(18, 'Sản phẩm xanh', 'BX-5U0-1fgfgg', NULL, 'product/7eb3eefcb94b7548cc4942a42f36e186.jpg', 27);
/*!40000 ALTER TABLE `shop_product_type` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_promocodes
DROP TABLE IF EXISTS `shop_promocodes`;
CREATE TABLE IF NOT EXISTS `shop_promocodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `number_uses` int(10) unsigned NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promocodes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.shop_promocodes: ~11 rows (approximately)
DELETE FROM `shop_promocodes`;
/*!40000 ALTER TABLE `shop_promocodes` DISABLE KEYS */;
INSERT INTO `shop_promocodes` (`id`, `code`, `reward`, `type`, `data`, `number_uses`, `used`, `status`, `expires_at`) VALUES
	(1, 'ABC-XAA01', 100000, 0, 'Khuyến mãi đầu năm', 100, 2, 1, '2018-08-11 00:00:00'),
	(2, 'KKB3-KLLA', 30, 2, NULL, 33, 2, 1, '2018-10-11 00:00:00'),
	(3, 'PAA-LLK01', 100000, 1, 'Tặng điểm khách hàng thân thiết', 22, 1, 1, NULL),
	(4, 'VONN_KKH1', 150000, 0, NULL, 1, 1, 1, '2019-03-08 00:00:00'),
	(5, 'PAA-LLK02', 150000, 1, NULL, 111, 0, 1, NULL),
	(6, 'VONN_KKH2', 900000, 0, 'Refurn', 4, 1, 1, '2018-07-07 00:00:00'),
	(8, 'PAA-LLK03', 150000, 0, NULL, 111, 1, 1, NULL),
	(9, 'PAA-LLK04', 150000, 0, NULL, 111, 2, 1, NULL),
	(10, 'PAA-LLK05', 150000, 0, NULL, 111, 1, 1, NULL),
	(11, 'PAA-LLK06', 150000, 0, NULL, 111, 1, 1, NULL),
	(13, 'PAA-LLK07', 219999, 0, NULL, 111, 2, 1, NULL),
	(15, 'PAA-LLK08', 219999, 0, NULL, 111, 2, 1, NULL),
	(16, 'PAA-LLK09', 219999, 0, NULL, 111, 2, 1, NULL),
	(17, 'PAA-LLK010', 219999, 0, NULL, 111, 2, 1, NULL);
/*!40000 ALTER TABLE `shop_promocodes` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_promocode_user
DROP TABLE IF EXISTS `shop_promocode_user`;
CREATE TABLE IF NOT EXISTS `shop_promocode_user` (
  `user_id` int(10) unsigned NOT NULL,
  `promocode_id` int(10) unsigned NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`promocode_id`),
  KEY `promocode_user_promocode_id_foreign` (`promocode_id`),
  CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `shop_promocodes` (`id`),
  CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.shop_promocode_user: ~10 rows (approximately)
DELETE FROM `shop_promocode_user`;
/*!40000 ALTER TABLE `shop_promocode_user` DISABLE KEYS */;
INSERT INTO `shop_promocode_user` (`user_id`, `promocode_id`, `log`, `used_at`) VALUES
	(2, 1, 'Đơn hàng 3', '2018-05-20 22:04:28'),
	(3, 1, 'Đơn hàng 11', '2018-05-22 06:22:35'),
	(3, 2, 'Order #48', '2018-06-03 14:20:25'),
	(3, 3, 'Order #43', '2018-05-22 14:06:21'),
	(3, 4, NULL, '2018-05-22 14:03:02'),
	(3, 6, 'Order #45', '2018-05-27 10:53:16'),
	(3, 8, 'Order #50', '2018-06-03 14:56:26'),
	(3, 9, 'Order #51', '2018-06-03 15:15:19'),
	(3, 10, 'Order #52', '2018-06-03 15:41:31'),
	(3, 11, 'Order #62', '2018-06-05 23:01:53'),
	(3, 13, 'Order #93', '2018-09-23 12:41:07'),
	(3, 15, 'Order #94', '2018-09-23 12:44:03'),
	(3, 16, 'Order #95', '2018-09-23 12:46:05'),
	(3, 17, 'Order #96', '2018-09-23 12:48:40'),
	(5, 2, 'Order #77', '2018-09-07 20:58:47'),
	(5, 9, 'Order #76', '2018-09-06 18:59:25');
/*!40000 ALTER TABLE `shop_promocode_user` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shipping
DROP TABLE IF EXISTS `shop_shipping`;
CREATE TABLE IF NOT EXISTS `shop_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shipping: ~0 rows (approximately)
DELETE FROM `shop_shipping`;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` (`id`, `type`, `value`, `free`, `status`) VALUES
	(1, 0, 20000, 10000000, 1);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shipping_address
DROP TABLE IF EXISTS `shop_shipping_address`;
CREATE TABLE IF NOT EXISTS `shop_shipping_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(3) DEFAULT NULL,
  `phone` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shipping_address: ~0 rows (approximately)
DELETE FROM `shop_shipping_address`;
/*!40000 ALTER TABLE `shop_shipping_address` DISABLE KEYS */;
INSERT INTO `shop_shipping_address` (`id`, `user_id`, `address1`, `address2`, `country`, `phone`, `sort`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Quan 1', 'Ho chi Minh', NULL, '09978998768678', 0, 0, '2018-01-14 03:12:50', '2018-01-14 03:12:50');
/*!40000 ALTER TABLE `shop_shipping_address` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shipping_status
DROP TABLE IF EXISTS `shop_shipping_status`;
CREATE TABLE IF NOT EXISTS `shop_shipping_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shipping_status: ~3 rows (approximately)
DELETE FROM `shop_shipping_status`;
/*!40000 ALTER TABLE `shop_shipping_status` DISABLE KEYS */;
INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
	(0, 'Chưa gửi'),
	(1, 'Đang gửi'),
	(2, 'Gửi xong');
/*!40000 ALTER TABLE `shop_shipping_status` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_shoppingcart
DROP TABLE IF EXISTS `shop_shoppingcart`;
CREATE TABLE IF NOT EXISTS `shop_shoppingcart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_shoppingcart: ~0 rows (approximately)
DELETE FROM `shop_shoppingcart`;
/*!40000 ALTER TABLE `shop_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_shoppingcart` ENABLE KEYS */;

-- Dumping structure for table s-cart.shop_special_price
DROP TABLE IF EXISTS `shop_special_price`;
CREATE TABLE IF NOT EXISTS `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) unsigned NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table s-cart.shop_special_price: ~10 rows (approximately)
DELETE FROM `shop_special_price`;
/*!40000 ALTER TABLE `shop_special_price` DISABLE KEYS */;
INSERT INTO `shop_special_price` (`id`, `product_id`, `price`, `off`, `date_start`, `date_end`, `status`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 21, 150000, 0, '2018-01-28 00:00:00', '2019-04-30 00:00:00', 1, NULL, '2018-02-06 12:05:20', '2018-04-12 14:45:17'),
	(4, 6, 40000, 0, NULL, '2019-06-28 00:00:00', 1, NULL, '2018-02-06 12:44:40', '2018-04-12 14:45:32'),
	(6, 8, 30000, 0, '2018-02-07 00:00:00', '2018-03-10 00:00:00', 1, NULL, '2018-02-07 14:45:19', '2018-02-07 15:17:42'),
	(7, 10, 15000, 0, '2018-02-06 00:00:00', '2018-03-29 00:00:00', 1, NULL, '2018-02-07 14:49:48', '2018-03-11 05:36:43'),
	(9, 11, 100000, 0, '2018-03-19 00:00:00', '2018-03-31 00:00:00', 1, NULL, '2018-02-08 15:51:45', '2018-03-25 02:49:07'),
	(11, 12, 100000, 0, NULL, NULL, 1, NULL, '2018-03-27 14:13:47', '2018-03-27 14:18:44'),
	(12, 7, 320000, 0, '2011-10-26 00:00:00', '2019-05-08 00:00:00', 1, NULL, '2018-04-12 14:46:40', '2018-09-01 00:05:12'),
	(13, 23, 198000, 10, '2018-05-08 00:00:00', '2018-06-08 00:00:00', 0, 'test giam gia', '2018-05-09 15:15:37', '2018-08-28 22:13:45'),
	(14, 49, 10000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:19:07', '2018-09-22 18:19:07'),
	(15, 3, 200000, 0, NULL, NULL, 1, NULL, '2018-09-22 18:20:14', '2018-09-22 18:20:14');
/*!40000 ALTER TABLE `shop_special_price` ENABLE KEYS */;

-- Dumping structure for table s-cart.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table s-cart.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address1`, `address2`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Hoang Ngoc Tu', 'dfne11pd2707@gmail.com', '$2y$10$yMT7ox6mh6kRQon.06MXZue.PBTwhT0xFLM9s7RDVgLYrMM/sBJHu', '122/23B, Tôn Thất Tùng', 'Quận 7', '009404945435', 'V5VfBF0g3ZjllZJyFo9Guh2E5dxIAA5HlpJScrAplZxmSMjJKiQO6W4m90kh', '2018-01-14 03:12:50', '2018-09-03 17:13:27'),
	(2, 'Hung', 'hung@fdgfdg.com', '$2y$10$eGf2jiO3I7wj879B0RRBBuZgvVvDJLQKP0HF88ZCgr4ti50AgznuO', 'Quan 1', 'Ho chi Minh', '099789987686', NULL, '2018-01-15 15:43:35', '2018-01-15 16:40:14'),
	(3, 'Lê Văn Lanh', 'lanhktc@gmail.com', '$2y$10$4HMDRFpiNXRPYitWP7tDhuYsCYKGK3QFiRvyeQxYbsyzgmsabRrhS', 'Quan 12', 'Ho chi minh', '0667151172', 'GzmAIfW7F4U2cCkLVUpi0VihjbPASKtWzppkDCOemyQrh1i93CQ0hAaJncm6', '2018-02-04 09:56:12', '2018-09-03 17:13:17'),
	(4, 'Châu Tuấn Anh', 'lengocchau_11233@gmail.com', '$2y$10$udnwsVhfef3QcS8oP8OEsuHg9eKTTI7lb0q6Zffd9jHiEGnIIxUBe', 'Tân Kỳ', 'Hồ Chí Minh', '0664456189', 'iYg2W7K79pAleTv2Q0rHsRCsMkx8lLN4l2fTE8o8GlLKBHyrj3TeHvIjWYgt', '2018-03-12 16:20:04', '2018-05-09 15:00:55'),
	(5, 'Bao Khanh', 'baokhanh123@gmail.com', '$2y$10$/DzsZSjPNLRY8NlrMk5lselrbMYQdmr90tXBPlYQe8CNsi1JQFyse', '12', 'TTh07', '09012345678', NULL, '2018-09-05 20:57:19', '2018-09-05 20:57:19'),
	(6, 'ABC', 'abc@abc.com', '$2y$10$1OygbWuORyylC70H5gxBXuk3dloYdwIwVLiABJ0YUZVZsWuLaf6F.', 'Address 1', 'Address 2', '098765432321', '61LIuCv7we6a79eInQTGuQkEFCy23SqgKHEFM5wdlKx32UAA1riBMfFmPS0S', '2018-09-23 07:54:21', '2018-09-23 07:54:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
