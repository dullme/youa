# ************************************************************
# Sequel Pro SQL dump
# Version (null)
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.29-0ubuntu0.18.04.1)
# Database: hvn
# Generation Time: 2020-04-16 02:14:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_config`;

CREATE TABLE `admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_config` WRITE;
/*!40000 ALTER TABLE `admin_config` DISABLE KEYS */;

INSERT INTO `admin_config` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'address','浙江省宁波市高新区科技广场','地址','2018-12-05 17:54:51','2020-04-16 10:05:02'),
	(2,'mobile','186-6821-5221','电话','2018-12-05 17:55:02','2018-12-05 17:58:58'),
	(3,'uri','www.hvn.cn','网址','2018-12-05 17:55:14','2020-04-15 23:04:32'),
	(4,'email','admin@hnv.cn','邮箱','2018-12-05 17:55:28','2020-04-15 23:04:55'),
	(5,'zip_code','570000','邮编','2018-12-05 17:55:52','2018-12-05 18:00:40'),
	(6,'holiday_mobile','18668560536','节假日电话','2018-12-05 17:56:06','2018-12-05 18:00:32'),
	(7,'wechat','you18868','微信','2018-12-05 17:56:24','2018-12-05 18:00:48'),
	(8,'qq','809944490','QQ','2018-12-05 17:57:03','2018-12-05 18:01:01'),
	(9,'logo','https://www.hvn.cn/storage/logo.png','网站Logo','2018-12-05 18:05:44','2020-04-16 10:04:35'),
	(10,'wechat_img','https://www.hvn.cn/storage/1-160921221334541.jpg','微信扫一扫','2018-12-05 20:53:28','2020-04-16 09:56:03'),
	(11,'keywords','keywords','keywords','2020-04-16 10:08:54','2020-04-16 10:08:54'),
	(12,'description','description','description','2020-04-16 10:09:09','2020-04-16 10:09:09'),
	(13,'index_title','标题','标题','2020-04-16 10:12:13','2020-04-16 10:12:41');

/*!40000 ALTER TABLE `admin_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2018-12-05 15:43:15'),
	(2,0,7,'系统管理','fa-tasks',NULL,NULL,NULL,'2018-12-05 21:11:58'),
	(3,2,8,'管理员','fa-users','auth/users',NULL,NULL,'2018-12-05 21:11:58'),
	(4,2,9,'角色','fa-user','auth/roles',NULL,NULL,'2018-12-05 21:11:58'),
	(5,2,10,'权限','fa-ban','auth/permissions',NULL,NULL,'2018-12-05 21:11:58'),
	(6,2,11,'菜单','fa-bars','auth/menu',NULL,NULL,'2018-12-05 21:11:58'),
	(7,2,12,'操作日志','fa-history','auth/logs',NULL,NULL,'2018-12-05 21:11:58'),
	(8,0,6,'配置','fa-bars','config',NULL,'2018-12-05 17:53:53','2018-12-05 21:11:58'),
	(9,0,5,'文件管理','fa-file','media',NULL,'2018-12-05 18:10:10','2018-12-05 21:11:58'),
	(10,0,4,'友情链接','fa-bars','links',NULL,'2018-12-05 18:20:49','2018-12-05 21:11:58'),
	(11,0,2,'新闻资讯','fa-bars','news',NULL,'2018-12-05 19:27:02','2018-12-05 19:27:07'),
	(12,0,3,'合作伙伴','fa-bars','partner',NULL,'2018-12-05 21:11:54','2018-12-05 21:11:58');

/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`)
VALUES
	(1,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:40:38','2018-12-05 15:40:38'),
	(2,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:40:44','2018-12-05 15:40:44'),
	(3,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:40:46','2018-12-05 15:40:46'),
	(4,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:40:48','2018-12-05 15:40:48'),
	(5,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:42:00','2018-12-05 15:42:00'),
	(6,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:42:11','2018-12-05 15:42:11'),
	(7,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:42:17','2018-12-05 15:42:17'),
	(8,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:42:32','2018-12-05 15:42:32'),
	(9,1,'admin','GET','127.0.0.1','[]','2018-12-05 15:43:01','2018-12-05 15:43:01'),
	(10,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:43:08','2018-12-05 15:43:08'),
	(11,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:43:10','2018-12-05 15:43:10'),
	(12,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 15:43:15','2018-12-05 15:43:15'),
	(13,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 15:43:15','2018-12-05 15:43:15'),
	(14,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 15:43:22','2018-12-05 15:43:22'),
	(15,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 15:43:23','2018-12-05 15:43:23'),
	(16,1,'admin','GET','127.0.0.1','[]','2018-12-05 17:52:43','2018-12-05 17:52:43'),
	(17,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:52:48','2018-12-05 17:52:48'),
	(18,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:52:50','2018-12-05 17:52:50'),
	(19,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:52:52','2018-12-05 17:52:52'),
	(20,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:53:08','2018-12-05 17:53:08'),
	(21,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:53:39','2018-12-05 17:53:39'),
	(22,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:53:43','2018-12-05 17:53:43'),
	(23,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\",\"icon\":\"fa-bars\",\"uri\":\"config\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 17:53:53','2018-12-05 17:53:53'),
	(24,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 17:53:53','2018-12-05 17:53:53'),
	(25,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 17:53:57','2018-12-05 17:53:57'),
	(26,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:53:58','2018-12-05 17:53:58'),
	(27,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:54:03','2018-12-05 17:54:03'),
	(28,1,'admin/config/create','GET','127.0.0.1','[]','2018-12-05 17:54:26','2018-12-05 17:54:26'),
	(29,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u5730\\u5740\",\"value\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u9ad8\\u65b0\\u533a\\u7814\\u53d1\\u56ed\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 17:54:51','2018-12-05 17:54:51'),
	(30,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:54:51','2018-12-05 17:54:51'),
	(31,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:54:52','2018-12-05 17:54:52'),
	(32,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u7535\\u8bdd\",\"value\":\"186-6821-5221\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:55:02','2018-12-05 17:55:02'),
	(33,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:55:02','2018-12-05 17:55:02'),
	(34,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:55:07','2018-12-05 17:55:07'),
	(35,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u7f51\\u5740\",\"value\":\"www.hibps.com\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:55:14','2018-12-05 17:55:14'),
	(36,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:55:14','2018-12-05 17:55:14'),
	(37,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:55:20','2018-12-05 17:55:20'),
	(38,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u90ae\\u7bb1\",\"value\":\"admin@hibps.com\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:55:28','2018-12-05 17:55:28'),
	(39,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:55:28','2018-12-05 17:55:28'),
	(40,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:55:46','2018-12-05 17:55:46'),
	(41,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u90ae\\u7f16\",\"value\":\"570000\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:55:52','2018-12-05 17:55:52'),
	(42,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:55:52','2018-12-05 17:55:52'),
	(43,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:55:57','2018-12-05 17:55:57'),
	(44,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u8282\\u5047\\u65e5\\u7535\\u8bdd\",\"value\":\"18668560536 \\u738b\\u5148\\u751f\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:56:06','2018-12-05 17:56:06'),
	(45,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:56:06','2018-12-05 17:56:06'),
	(46,1,'admin/config/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:56:13','2018-12-05 17:56:13'),
	(47,1,'admin/config/6','PUT','127.0.0.1','{\"name\":\"\\u8282\\u5047\\u65e5\\u7535\\u8bdd\",\"value\":\"18668560536\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:56:17','2018-12-05 17:56:17'),
	(48,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:56:17','2018-12-05 17:56:17'),
	(49,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:56:19','2018-12-05 17:56:19'),
	(50,1,'admin/config','POST','127.0.0.1','{\"name\":\"\\u5fae\\u4fe1\",\"value\":\"you18868\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:56:24','2018-12-05 17:56:24'),
	(51,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:56:24','2018-12-05 17:56:24'),
	(52,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:56:42','2018-12-05 17:56:42'),
	(53,1,'admin/config','POST','127.0.0.1','{\"name\":\"qq\",\"value\":\"809944490\",\"description\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:57:03','2018-12-05 17:57:03'),
	(54,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:57:03','2018-12-05 17:57:03'),
	(55,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:58:30','2018-12-05 17:58:30'),
	(56,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:58:32','2018-12-05 17:58:32'),
	(57,1,'admin/config/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:58:34','2018-12-05 17:58:34'),
	(58,1,'admin/config/1','PUT','127.0.0.1','{\"name\":\"address\",\"value\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u9ad8\\u65b0\\u533a\\u7814\\u53d1\\u56ed\",\"description\":\"\\u5730\\u5740\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:58:45','2018-12-05 17:58:45'),
	(59,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:58:45','2018-12-05 17:58:45'),
	(60,1,'admin/config/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:58:47','2018-12-05 17:58:47'),
	(61,1,'admin/config/2','PUT','127.0.0.1','{\"name\":\"mobile\",\"value\":\"186-6821-5221\",\"description\":\"\\u7535\\u8bdd\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:58:58','2018-12-05 17:58:58'),
	(62,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:58:58','2018-12-05 17:58:58'),
	(63,1,'admin/config/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:59:02','2018-12-05 17:59:02'),
	(64,1,'admin/config/3','PUT','127.0.0.1','{\"name\":\"uri\",\"value\":\"www.hibps.com\",\"description\":\"\\u7f51\\u5740\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:59:27','2018-12-05 17:59:27'),
	(65,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:59:27','2018-12-05 17:59:27'),
	(66,1,'admin/config/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:59:30','2018-12-05 17:59:30'),
	(67,1,'admin/config/4','PUT','127.0.0.1','{\"name\":\"email\",\"value\":\"admin@hibps.com\",\"description\":\"\\u90ae\\u7bb1\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 17:59:37','2018-12-05 17:59:37'),
	(68,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 17:59:37','2018-12-05 17:59:37'),
	(69,1,'admin/config/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 17:59:40','2018-12-05 17:59:40'),
	(70,1,'admin/config/5','PUT','127.0.0.1','{\"name\":\"zipcode\",\"value\":\"570000\",\"description\":\"\\u90ae\\u7f16\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:00:15','2018-12-05 18:00:15'),
	(71,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:00:15','2018-12-05 18:00:15'),
	(72,1,'admin/config/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:00:18','2018-12-05 18:00:18'),
	(73,1,'admin/config/6','PUT','127.0.0.1','{\"name\":\"holiday_mobile\",\"value\":\"18668560536\",\"description\":\"\\u8282\\u5047\\u65e5\\u7535\\u8bdd\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:00:32','2018-12-05 18:00:32'),
	(74,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:00:32','2018-12-05 18:00:32'),
	(75,1,'admin/config/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:00:35','2018-12-05 18:00:35'),
	(76,1,'admin/config/5','PUT','127.0.0.1','{\"name\":\"zip_code\",\"value\":\"570000\",\"description\":\"\\u90ae\\u7f16\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:00:40','2018-12-05 18:00:40'),
	(77,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:00:40','2018-12-05 18:00:40'),
	(78,1,'admin/config/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:00:43','2018-12-05 18:00:43'),
	(79,1,'admin/config/7','PUT','127.0.0.1','{\"name\":\"wechat\",\"value\":\"you18868\",\"description\":\"\\u5fae\\u4fe1\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:00:48','2018-12-05 18:00:48'),
	(80,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:00:48','2018-12-05 18:00:48'),
	(81,1,'admin/config/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:00:57','2018-12-05 18:00:57'),
	(82,1,'admin/config/8','PUT','127.0.0.1','{\"name\":\"qq\",\"value\":\"809944490\",\"description\":\"QQ\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:01:01','2018-12-05 18:01:01'),
	(83,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:01:01','2018-12-05 18:01:01'),
	(84,1,'admin/config/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:03:31','2018-12-05 18:03:31'),
	(85,1,'admin/config/1','PUT','127.0.0.1','{\"name\":\"address\",\"value\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u9ad8\\u65b0\\u533a\\u7814\\u53d1\\u56ed2\",\"description\":\"\\u5730\\u5740\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:03:33','2018-12-05 18:03:33'),
	(86,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:03:33','2018-12-05 18:03:33'),
	(87,1,'admin/config/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:03:39','2018-12-05 18:03:39'),
	(88,1,'admin/config/1','PUT','127.0.0.1','{\"name\":\"address\",\"value\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u9ad8\\u65b0\\u533a\\u7814\\u53d1\\u56ed\",\"description\":\"\\u5730\\u5740\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:03:41','2018-12-05 18:03:41'),
	(89,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:03:41','2018-12-05 18:03:41'),
	(90,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:05:31','2018-12-05 18:05:31'),
	(91,1,'admin/config','POST','127.0.0.1','{\"name\":\"logo\",\"value\":\"http:\\/\\/youa.test\\/skin\\/images\\/logo.png\",\"description\":\"\\u7f51\\u7ad9Logo\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:05:44','2018-12-05 18:05:44'),
	(92,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:05:44','2018-12-05 18:05:44'),
	(93,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:10:39','2018-12-05 18:10:39'),
	(94,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:10:41','2018-12-05 18:10:41'),
	(95,1,'admin/media/upload','POST','127.0.0.1','{\"dir\":\"\\/\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 18:10:57','2018-12-05 18:10:57'),
	(96,1,'admin/media','GET','127.0.0.1','[]','2018-12-05 18:10:57','2018-12-05 18:10:57'),
	(97,1,'admin/media','GET','127.0.0.1','[]','2018-12-05 18:11:14','2018-12-05 18:11:14'),
	(98,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:12:37','2018-12-05 18:12:37'),
	(99,1,'admin/config/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:12:40','2018-12-05 18:12:40'),
	(100,1,'admin/config/9','PUT','127.0.0.1','{\"name\":\"logo\",\"value\":\"http:\\/\\/youa.test\\/storage\\/2 2.jpg\",\"description\":\"\\u7f51\\u7ad9Logo\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 18:12:43','2018-12-05 18:12:43'),
	(101,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 18:12:43','2018-12-05 18:12:43'),
	(102,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:13:01','2018-12-05 18:13:01'),
	(103,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:13:05','2018-12-05 18:13:05'),
	(104,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:13:08','2018-12-05 18:13:08'),
	(105,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:13:14','2018-12-05 18:13:14'),
	(106,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:13:14','2018-12-05 18:13:14'),
	(107,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:13:17','2018-12-05 18:13:17'),
	(108,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:13:34','2018-12-05 18:13:34'),
	(109,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:14:05','2018-12-05 18:14:05'),
	(110,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:05','2018-12-05 18:14:05'),
	(111,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:07','2018-12-05 18:14:07'),
	(112,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-12-05 18:14:13','2018-12-05 18:14:13'),
	(113,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:14:13','2018-12-05 18:14:13'),
	(114,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:14','2018-12-05 18:14:14'),
	(115,1,'admin/auth/menu/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:14:28','2018-12-05 18:14:28'),
	(116,1,'admin/auth/menu/3','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:14:35','2018-12-05 18:14:35'),
	(117,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:35','2018-12-05 18:14:35'),
	(118,1,'admin/auth/menu/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:14:37','2018-12-05 18:14:37'),
	(119,1,'admin/auth/menu/4','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:14:41','2018-12-05 18:14:41'),
	(120,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:41','2018-12-05 18:14:41'),
	(121,1,'admin/auth/menu/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:14:50','2018-12-05 18:14:50'),
	(122,1,'admin/auth/menu/4','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:14:55','2018-12-05 18:14:55'),
	(123,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:14:55','2018-12-05 18:14:55'),
	(124,1,'admin/auth/menu/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:14:56','2018-12-05 18:14:56'),
	(125,1,'admin/auth/menu/5','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:15:01','2018-12-05 18:15:01'),
	(126,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:15:01','2018-12-05 18:15:01'),
	(127,1,'admin/auth/menu/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:02','2018-12-05 18:15:02'),
	(128,1,'admin/auth/menu/6','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:15:06','2018-12-05 18:15:06'),
	(129,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:15:06','2018-12-05 18:15:06'),
	(130,1,'admin/auth/menu/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:07','2018-12-05 18:15:07'),
	(131,1,'admin/auth/menu/7','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/auth\\/menu\"}','2018-12-05 18:15:13','2018-12-05 18:15:13'),
	(132,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:15:13','2018-12-05 18:15:13'),
	(133,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:15:19','2018-12-05 18:15:19'),
	(134,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:21','2018-12-05 18:15:21'),
	(135,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:23','2018-12-05 18:15:23'),
	(136,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:25','2018-12-05 18:15:25'),
	(137,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:27','2018-12-05 18:15:27'),
	(138,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:28','2018-12-05 18:15:28'),
	(139,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:29','2018-12-05 18:15:29'),
	(140,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:30','2018-12-05 18:15:30'),
	(141,1,'admin/media','GET','127.0.0.1','{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:44','2018-12-05 18:15:44'),
	(142,1,'admin/media','GET','127.0.0.1','{\"path\":\"\\/\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}','2018-12-05 18:15:46','2018-12-05 18:15:46'),
	(143,1,'admin/media','GET','127.0.0.1','{\"path\":\"\\/\",\"view\":\"table\"}','2018-12-05 18:20:21','2018-12-05 18:20:21'),
	(144,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:20:23','2018-12-05 18:20:23'),
	(145,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"icon\":\"fa-bars\",\"uri\":\"links\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 18:20:49','2018-12-05 18:20:49'),
	(146,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:20:49','2018-12-05 18:20:49'),
	(147,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-12-05 18:20:53','2018-12-05 18:20:53'),
	(148,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:20:53','2018-12-05 18:20:53'),
	(149,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 18:20:54','2018-12-05 18:20:54'),
	(150,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:21:31','2018-12-05 18:21:31'),
	(151,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:21:43','2018-12-05 18:21:43'),
	(152,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:22:13','2018-12-05 18:22:13'),
	(153,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:22:28','2018-12-05 18:22:28'),
	(154,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:22:38','2018-12-05 18:22:38'),
	(155,1,'admin/links/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 18:22:40','2018-12-05 18:22:40'),
	(156,1,'admin/links/create','GET','127.0.0.1','[]','2018-12-05 18:23:07','2018-12-05 18:23:07'),
	(157,1,'admin/links','POST','127.0.0.1','{\"name\":\"\\u53cb\\u60c5\\u94fe\\u63a5\",\"uri\":\"http:\\/\\/www.baidu.com\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 18:23:25','2018-12-05 18:23:25'),
	(158,1,'admin/links','GET','127.0.0.1','[]','2018-12-05 18:23:25','2018-12-05 18:23:25'),
	(159,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:06:52','2018-12-05 19:06:52'),
	(160,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:07:29','2018-12-05 19:07:29'),
	(161,1,'admin/links','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:07:30','2018-12-05 19:07:30'),
	(162,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:07:33','2018-12-05 19:07:33'),
	(163,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:07:34','2018-12-05 19:07:34'),
	(164,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:07:38','2018-12-05 19:07:38'),
	(165,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:26:37','2018-12-05 19:26:37'),
	(166,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\\u8d44\\u8baf\",\"icon\":\"fa-bars\",\"uri\":\"news\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:27:02','2018-12-05 19:27:02'),
	(167,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 19:27:02','2018-12-05 19:27:02'),
	(168,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-12-05 19:27:07','2018-12-05 19:27:07'),
	(169,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:27:07','2018-12-05 19:27:07'),
	(170,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 19:27:30','2018-12-05 19:27:30'),
	(171,1,'admin/news','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:27:32','2018-12-05 19:27:32'),
	(172,1,'admin/news/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:27:34','2018-12-05 19:27:34'),
	(173,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:31:24','2018-12-05 19:31:24'),
	(174,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:31:50','2018-12-05 19:31:50'),
	(175,1,'admin/news','POST','127.0.0.1','{\"title\":null,\"content\":null,\"type\":null,\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:31:51','2018-12-05 19:31:51'),
	(176,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:31:51','2018-12-05 19:31:51'),
	(177,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:32:47','2018-12-05 19:32:47'),
	(178,1,'admin/news','POST','127.0.0.1','{\"title\":null,\"content\":null,\"type\":null,\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:32:48','2018-12-05 19:32:48'),
	(179,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:32:48','2018-12-05 19:32:48'),
	(180,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:33:20','2018-12-05 19:33:20'),
	(181,1,'admin/news','POST','127.0.0.1','{\"title\":null,\"content\":null,\"type\":null,\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:33:21','2018-12-05 19:33:21'),
	(182,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:33:21','2018-12-05 19:33:21'),
	(183,1,'admin/news','POST','127.0.0.1','{\"title\":null,\"content\":null,\"type\":null,\"author\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:33:26','2018-12-05 19:33:26'),
	(184,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:33:26','2018-12-05 19:33:26'),
	(185,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:33:28','2018-12-05 19:33:28'),
	(186,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:33:29','2018-12-05 19:33:29'),
	(187,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:36:09','2018-12-05 19:36:09'),
	(188,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:05','2018-12-05 19:37:05'),
	(189,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:07','2018-12-05 19:37:07'),
	(190,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:08','2018-12-05 19:37:08'),
	(191,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:13','2018-12-05 19:37:13'),
	(192,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"content\":\"<p>123123<\\/p>\",\"type\":\"pt\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:37:30','2018-12-05 19:37:30'),
	(193,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:30','2018-12-05 19:37:30'),
	(194,1,'admin/news/create','GET','127.0.0.1','[]','2018-12-05 19:37:57','2018-12-05 19:37:57'),
	(195,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u89d2\\u8272\",\"content\":\"<p>1<\\/p>\",\"type\":\"1\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 19:38:02','2018-12-05 19:38:02'),
	(196,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:38:02','2018-12-05 19:38:02'),
	(197,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:38:56','2018-12-05 19:38:56'),
	(198,1,'admin/news/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:39:04','2018-12-05 19:39:04'),
	(199,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:19','2018-12-05 19:39:19'),
	(200,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:20','2018-12-05 19:39:20'),
	(201,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:21','2018-12-05 19:39:21'),
	(202,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:21','2018-12-05 19:39:21'),
	(203,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:41','2018-12-05 19:39:41'),
	(204,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:42','2018-12-05 19:39:42'),
	(205,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:47','2018-12-05 19:39:47'),
	(206,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:57','2018-12-05 19:39:57'),
	(207,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:58','2018-12-05 19:39:58'),
	(208,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:58','2018-12-05 19:39:58'),
	(209,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:39:59','2018-12-05 19:39:59'),
	(210,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:40:15','2018-12-05 19:40:15'),
	(211,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:41:33','2018-12-05 19:41:33'),
	(212,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:41:34','2018-12-05 19:41:34'),
	(213,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:41:34','2018-12-05 19:41:34'),
	(214,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:41:35','2018-12-05 19:41:35'),
	(215,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:41:35','2018-12-05 19:41:35'),
	(216,1,'admin/news/1','GET','127.0.0.1','[]','2018-12-05 19:42:24','2018-12-05 19:42:24'),
	(217,1,'admin/news','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:42:25','2018-12-05 19:42:25'),
	(218,1,'admin/news/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:42:29','2018-12-05 19:42:29'),
	(219,1,'admin/news','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:42:32','2018-12-05 19:42:32'),
	(220,1,'admin/news/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:42:47','2018-12-05 19:42:47'),
	(221,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u7ba1\\u7406\\u5458\",\"content\":\"<p>salads<\\/p>\",\"type\":\"2\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:42:53','2018-12-05 19:42:53'),
	(222,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:42:53','2018-12-05 19:42:53'),
	(223,1,'admin/news/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:42:56','2018-12-05 19:42:56'),
	(224,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u914d\\u7f6e\",\"content\":\"<p>\\u6492\\u6253\\u7b97\\u7684<\\/p>\",\"type\":\"3\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:43:01','2018-12-05 19:43:01'),
	(225,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:43:01','2018-12-05 19:43:01'),
	(226,1,'admin/news/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:43:55','2018-12-05 19:43:55'),
	(227,1,'admin/news','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:43:57','2018-12-05 19:43:57'),
	(228,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:55:59','2018-12-05 19:55:59'),
	(229,1,'admin/news/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:56:01','2018-12-05 19:56:01'),
	(230,1,'admin/news/1','PUT','127.0.0.1','{\"title\":\"\\u89d2\\u8272\",\"describe\":\"123123123\",\"content\":\"<p>1<\\/p>\",\"type\":\"1\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:56:08','2018-12-05 19:56:08'),
	(231,1,'admin/news/1/edit','GET','127.0.0.1','[]','2018-12-05 19:56:09','2018-12-05 19:56:09'),
	(232,1,'admin/news/1','PUT','127.0.0.1','{\"title\":\"\\u89d2\\u8272\",\"describe\":\"123123123\",\"content\":\"<p>1<\\/p>\",\"type\":\"1\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\"}','2018-12-05 19:56:37','2018-12-05 19:56:37'),
	(233,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:56:37','2018-12-05 19:56:37'),
	(234,1,'admin/news/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:56:40','2018-12-05 19:56:40'),
	(235,1,'admin/news/2','PUT','127.0.0.1','{\"title\":\"\\u7ba1\\u7406\\u5458\",\"describe\":\"\\u8bd5\\u8bd5\\u8bd5\\u8bd5\\u8bd5\\u8bd5\",\"content\":\"<p>salads<\\/p>\",\"type\":\"2\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:56:43','2018-12-05 19:56:43'),
	(236,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:56:43','2018-12-05 19:56:43'),
	(237,1,'admin/news/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:56:44','2018-12-05 19:56:44'),
	(238,1,'admin/news/3','PUT','127.0.0.1','{\"title\":\"\\u914d\\u7f6e\",\"describe\":\"1\\u5927\\u6492\\u6253\\u7b97\\u6253\\u7b97\\u7684\",\"content\":\"<p>\\u6492\\u6253\\u7b97\\u7684<\\/p>\",\"type\":\"3\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:56:48','2018-12-05 19:56:48'),
	(239,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:56:48','2018-12-05 19:56:48'),
	(240,1,'admin/news/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:59:30','2018-12-05 19:59:30'),
	(241,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"describe\":\"123123\",\"content\":\"<p>123123123<\\/p>\",\"type\":\"1\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:59:37','2018-12-05 19:59:37'),
	(242,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:59:37','2018-12-05 19:59:37'),
	(243,1,'admin/news/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 19:59:39','2018-12-05 19:59:39'),
	(244,1,'admin/news','POST','127.0.0.1','{\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"describe\":\"123123\",\"content\":\"<p>123123<\\/p>\",\"type\":\"1\",\"author\":\"admin\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/news\"}','2018-12-05 19:59:44','2018-12-05 19:59:44'),
	(245,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 19:59:44','2018-12-05 19:59:44'),
	(246,1,'admin/news','GET','127.0.0.1','[]','2018-12-05 20:40:08','2018-12-05 20:40:08'),
	(247,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 20:53:16','2018-12-05 20:53:16'),
	(248,1,'admin/config/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 20:53:18','2018-12-05 20:53:18'),
	(249,1,'admin/config','POST','127.0.0.1','{\"name\":\"wechat_img\",\"value\":null,\"description\":\"\\u5fae\\u4fe1\\u626b\\u4e00\\u626b\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 20:53:26','2018-12-05 20:53:26'),
	(250,1,'admin/config/create','GET','127.0.0.1','[]','2018-12-05 20:53:26','2018-12-05 20:53:26'),
	(251,1,'admin/config','POST','127.0.0.1','{\"name\":\"wechat_img\",\"value\":\"123\",\"description\":\"\\u5fae\\u4fe1\\u626b\\u4e00\\u626b\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 20:53:28','2018-12-05 20:53:28'),
	(252,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 20:53:28','2018-12-05 20:53:28'),
	(253,1,'admin/media','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 20:53:30','2018-12-05 20:53:30'),
	(254,1,'admin/config','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 20:53:40','2018-12-05 20:53:40'),
	(255,1,'admin/config/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 20:53:41','2018-12-05 20:53:41'),
	(256,1,'admin/config/10','PUT','127.0.0.1','{\"name\":\"wechat_img\",\"value\":\"http:\\/\\/youa.test\\/storage\\/2 2.jpg\",\"description\":\"\\u5fae\\u4fe1\\u626b\\u4e00\\u626b\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/config\"}','2018-12-05 20:53:44','2018-12-05 20:53:44'),
	(257,1,'admin/config','GET','127.0.0.1','[]','2018-12-05 20:53:44','2018-12-05 20:53:44'),
	(258,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:11:43','2018-12-05 21:11:43'),
	(259,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5408\\u4f5c\\u4f19\\u4f34\",\"icon\":\"fa-bars\",\"uri\":\"partner\",\"roles\":[null],\"permission\":null,\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 21:11:54','2018-12-05 21:11:54'),
	(260,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 21:11:54','2018-12-05 21:11:54'),
	(261,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-12-05 21:11:58','2018-12-05 21:11:58'),
	(262,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:11:58','2018-12-05 21:11:58'),
	(263,1,'admin/auth/menu','GET','127.0.0.1','[]','2018-12-05 21:12:12','2018-12-05 21:12:12'),
	(264,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:12:23','2018-12-05 21:12:23'),
	(265,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:12:27','2018-12-05 21:12:27'),
	(266,1,'admin/partner/create','GET','127.0.0.1','[]','2018-12-05 21:13:44','2018-12-05 21:13:44'),
	(267,1,'admin/partner/create','GET','127.0.0.1','[]','2018-12-05 21:13:46','2018-12-05 21:13:46'),
	(268,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\"}','2018-12-05 21:13:56','2018-12-05 21:13:56'),
	(269,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:13:56','2018-12-05 21:13:56'),
	(270,1,'admin/partner/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:13:58','2018-12-05 21:13:58'),
	(271,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:00','2018-12-05 21:14:00'),
	(272,1,'admin/partner/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:04','2018-12-05 21:14:04'),
	(273,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:07','2018-12-05 21:14:07'),
	(274,1,'admin/partner/1/edit','GET','127.0.0.1','[]','2018-12-05 21:14:19','2018-12-05 21:14:19'),
	(275,1,'admin/partner/1/edit','GET','127.0.0.1','[]','2018-12-05 21:14:20','2018-12-05 21:14:20'),
	(276,1,'admin/partner/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:21','2018-12-05 21:14:21'),
	(277,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:23','2018-12-05 21:14:23'),
	(278,1,'admin/partner/1','PUT','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\\/1\"}','2018-12-05 21:14:27','2018-12-05 21:14:27'),
	(279,1,'admin/partner/1','GET','127.0.0.1','[]','2018-12-05 21:14:27','2018-12-05 21:14:27'),
	(280,1,'admin/auth/setting','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:33','2018-12-05 21:14:33'),
	(281,1,'admin/partner/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:36','2018-12-05 21:14:36'),
	(282,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:39','2018-12-05 21:14:39'),
	(283,1,'admin/partner','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:43','2018-12-05 21:14:43'),
	(284,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:14:46','2018-12-05 21:14:46'),
	(285,1,'admin/partner/1','PUT','127.0.0.1','{\"name\":\"\\u5408\\u4f5c\\u4f19\\u4f34\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:14:59','2018-12-05 21:14:59'),
	(286,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:14:59','2018-12-05 21:14:59'),
	(287,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:15:53','2018-12-05 21:15:53'),
	(288,1,'admin/partner','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:16:08','2018-12-05 21:16:08'),
	(289,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:16:29','2018-12-05 21:16:29'),
	(290,1,'admin/partner/1','PUT','127.0.0.1','{\"name\":\"\\u5408\\u4f5c\\u4f19\\u4f34\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:16:51','2018-12-05 21:16:51'),
	(291,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:16:51','2018-12-05 21:16:51'),
	(292,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:21:38','2018-12-05 21:21:38'),
	(293,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:21:43','2018-12-05 21:21:43'),
	(294,1,'admin/partner/1','PUT','127.0.0.1','{\"name\":\"\\u5408\\u4f5c\\u4f19\\u4f34\",\"uri\":\"baidu.com\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:21:50','2018-12-05 21:21:50'),
	(295,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:21:50','2018-12-05 21:21:50'),
	(296,1,'admin/partner/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:21:51','2018-12-05 21:21:51'),
	(297,1,'admin/partner/1','PUT','127.0.0.1','{\"name\":\"\\u5408\\u4f5c\\u4f19\\u4f34\",\"uri\":\"http:\\/\\/aliyun.com\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:22:05','2018-12-05 21:22:05'),
	(298,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:22:05','2018-12-05 21:22:05'),
	(299,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:23:03','2018-12-05 21:23:03'),
	(300,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"uri\":\"today-complex\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:23:15','2018-12-05 21:23:15'),
	(301,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:23:15','2018-12-05 21:23:15'),
	(302,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:23:18','2018-12-05 21:23:18'),
	(303,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"uri\":\"today-complex\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:23:29','2018-12-05 21:23:29'),
	(304,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:23:29','2018-12-05 21:23:29'),
	(305,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:23:33','2018-12-05 21:23:33'),
	(306,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u8d56\\u660e\\u59da\",\"uri\":\"withdraw\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:23:42','2018-12-05 21:23:42'),
	(307,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:23:43','2018-12-05 21:23:43'),
	(308,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:23:44','2018-12-05 21:23:44'),
	(309,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"uri\":\"withdraw\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:24:01','2018-12-05 21:24:01'),
	(310,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:24:01','2018-12-05 21:24:01'),
	(311,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:24:44','2018-12-05 21:24:44'),
	(312,1,'admin/partner','POST','127.0.0.1','{\"name\":\"admin\",\"uri\":\"withdraw\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:24:57','2018-12-05 21:24:57'),
	(313,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:24:57','2018-12-05 21:24:57'),
	(314,1,'admin/partner/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2018-12-05 21:24:58','2018-12-05 21:24:58'),
	(315,1,'admin/partner','POST','127.0.0.1','{\"name\":\"\\u7ba1\\u7406\\u5458\",\"uri\":\"withdraw\",\"_token\":\"Kl2CpJyKnvJIau6oTc7Y2xJmeWky04QjmTjyQZQi\",\"_previous_\":\"http:\\/\\/youa.test\\/admin\\/partner\"}','2018-12-05 21:25:08','2018-12-05 21:25:08'),
	(316,1,'admin/partner','GET','127.0.0.1','[]','2018-12-05 21:25:08','2018-12-05 21:25:08'),
	(317,1,'admin-nimda','GET','183.132.185.166','[]','2020-04-15 17:31:06','2020-04-15 17:31:06'),
	(318,1,'admin-nimda/news','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-15 17:31:14','2020-04-15 17:31:14'),
	(319,1,'admin-nimda/partner','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-15 17:31:16','2020-04-15 17:31:16'),
	(320,1,'admin-nimda/links','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-15 17:31:20','2020-04-15 17:31:20'),
	(321,1,'admin-nimda/media','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-15 17:31:21','2020-04-15 17:31:21'),
	(322,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-15 17:31:22','2020-04-15 17:31:22'),
	(323,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-15 17:32:11','2020-04-15 17:32:11'),
	(324,1,'admin-nimda','GET','124.160.217.85','[]','2020-04-15 23:03:32','2020-04-15 23:03:32'),
	(325,1,'admin-nimda/config','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:03:53','2020-04-15 23:03:53'),
	(326,1,'admin-nimda/config/3/edit','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:04:20','2020-04-15 23:04:20'),
	(327,1,'admin-nimda/config/3','PUT','124.160.217.85','{\"name\":\"uri\",\"value\":\"www.hvn.cn\",\"description\":\"\\u7f51\\u5740\",\"_token\":\"3kgGJcIR5EEG5pf8G91lba9Cfw58JSASFtQJ6GHB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-15 23:04:32','2020-04-15 23:04:32'),
	(328,1,'admin-nimda/config','GET','124.160.217.85','[]','2020-04-15 23:04:32','2020-04-15 23:04:32'),
	(329,1,'admin-nimda/config/4/edit','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:04:40','2020-04-15 23:04:40'),
	(330,1,'admin-nimda/config/4','PUT','124.160.217.85','{\"name\":\"email\",\"value\":\"admin@hnv.cn\",\"description\":\"\\u90ae\\u7bb1\",\"_token\":\"3kgGJcIR5EEG5pf8G91lba9Cfw58JSASFtQJ6GHB\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-15 23:04:55','2020-04-15 23:04:55'),
	(331,1,'admin-nimda/config','GET','124.160.217.85','[]','2020-04-15 23:04:55','2020-04-15 23:04:55'),
	(332,1,'admin-nimda/config/4/edit','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:05','2020-04-15 23:05:05'),
	(333,1,'admin-nimda/config','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:09','2020-04-15 23:05:09'),
	(334,1,'admin-nimda/media','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:14','2020-04-15 23:05:14'),
	(335,1,'admin-nimda/links','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:16','2020-04-15 23:05:16'),
	(336,1,'admin-nimda/partner','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:17','2020-04-15 23:05:17'),
	(337,1,'admin-nimda/news','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:20','2020-04-15 23:05:20'),
	(338,1,'admin-nimda','GET','124.160.217.85','{\"_pjax\":\"#pjax-container\"}','2020-04-15 23:05:26','2020-04-15 23:05:26'),
	(339,1,'admin-nimda','GET','183.132.185.166','[]','2020-04-16 09:49:32','2020-04-16 09:49:32'),
	(340,1,'admin-nimda/news','GET','183.132.185.166','[]','2020-04-16 09:49:36','2020-04-16 09:49:36'),
	(341,1,'admin-nimda','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:00','2020-04-16 09:50:00'),
	(342,1,'admin-nimda/news','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:01','2020-04-16 09:50:01'),
	(343,1,'admin-nimda/partner','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:02','2020-04-16 09:50:02'),
	(344,1,'admin-nimda/links','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:05','2020-04-16 09:50:05'),
	(345,1,'admin-nimda/media','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:08','2020-04-16 09:50:08'),
	(346,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:09','2020-04-16 09:50:09'),
	(347,1,'admin-nimda/config/9/edit','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:13','2020-04-16 09:50:13'),
	(348,1,'admin-nimda/config/9','PUT','183.132.185.166','{\"name\":\"logo\",\"value\":\"https:\\/\\/hvn.cn\\/storage\\/2 2.jpg\",\"description\":\"\\u7f51\\u7ad9Logo\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 09:50:31','2020-04-16 09:50:31'),
	(349,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 09:50:31','2020-04-16 09:50:31'),
	(350,1,'admin-nimda/config/10/edit','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:33','2020-04-16 09:50:33'),
	(351,1,'admin-nimda/config/10','PUT','183.132.185.166','{\"name\":\"wechat_img\",\"value\":\"https:\\/\\/hvn.cn\\/storage\\/2 2.jpg\",\"description\":\"\\u5fae\\u4fe1\\u626b\\u4e00\\u626b\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 09:50:38','2020-04-16 09:50:38'),
	(352,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 09:50:38','2020-04-16 09:50:38'),
	(353,1,'admin-nimda/links','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:46','2020-04-16 09:50:46'),
	(354,1,'admin-nimda/partner','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:48','2020-04-16 09:50:48'),
	(355,1,'admin-nimda/news','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:50:52','2020-04-16 09:50:52'),
	(356,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:55:23','2020-04-16 09:55:23'),
	(357,1,'admin-nimda/media','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:55:24','2020-04-16 09:55:24'),
	(358,1,'admin-nimda/media/upload','POST','183.132.185.166','{\"dir\":\"\\/\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\"}','2020-04-16 09:55:47','2020-04-16 09:55:47'),
	(359,1,'admin-nimda/media','GET','183.132.185.166','[]','2020-04-16 09:55:47','2020-04-16 09:55:47'),
	(360,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:55:55','2020-04-16 09:55:55'),
	(361,1,'admin-nimda/config/10/edit','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 09:55:59','2020-04-16 09:55:59'),
	(362,1,'admin-nimda/config/10','PUT','183.132.185.166','{\"name\":\"wechat_img\",\"value\":\"https:\\/\\/www.hvn.cn\\/storage\\/1-160921221334541.jpg\",\"description\":\"\\u5fae\\u4fe1\\u626b\\u4e00\\u626b\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 09:56:03','2020-04-16 09:56:03'),
	(363,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 09:56:03','2020-04-16 09:56:03'),
	(364,1,'admin-nimda','GET','112.16.171.249','[]','2020-04-16 10:01:30','2020-04-16 10:01:30'),
	(365,1,'admin-nimda/media','GET','112.16.171.249','[]','2020-04-16 10:03:01','2020-04-16 10:03:01'),
	(366,1,'admin-nimda/links','GET','112.16.171.249','[]','2020-04-16 10:03:07','2020-04-16 10:03:07'),
	(367,1,'admin-nimda/links','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:14','2020-04-16 10:03:14'),
	(368,1,'admin-nimda/partner','GET','112.16.171.249','[]','2020-04-16 10:03:15','2020-04-16 10:03:15'),
	(369,1,'admin-nimda/config','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:16','2020-04-16 10:03:16'),
	(370,1,'admin-nimda/config/9/edit','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:22','2020-04-16 10:03:22'),
	(371,1,'admin-nimda','GET','112.16.171.249','[]','2020-04-16 10:03:28','2020-04-16 10:03:28'),
	(372,1,'admin-nimda/config','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:31','2020-04-16 10:03:31'),
	(373,1,'admin-nimda/auth/users','GET','112.16.171.249','[]','2020-04-16 10:03:37','2020-04-16 10:03:37'),
	(374,1,'admin-nimda/auth/roles','GET','112.16.171.249','[]','2020-04-16 10:03:38','2020-04-16 10:03:38'),
	(375,1,'admin-nimda/auth/users','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:38','2020-04-16 10:03:38'),
	(376,1,'admin-nimda/news','GET','112.16.171.249','[]','2020-04-16 10:03:40','2020-04-16 10:03:40'),
	(377,1,'admin-nimda/news','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:40','2020-04-16 10:03:40'),
	(378,1,'admin-nimda/partner','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:42','2020-04-16 10:03:42'),
	(379,1,'admin-nimda/links','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:44','2020-04-16 10:03:44'),
	(380,1,'admin-nimda','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:03:57','2020-04-16 10:03:57'),
	(381,1,'admin-nimda/news','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:04:01','2020-04-16 10:04:01'),
	(382,1,'admin-nimda/media','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:04:02','2020-04-16 10:04:02'),
	(383,1,'admin-nimda/media/download','GET','112.16.171.249','{\"file\":\".gitignore\"}','2020-04-16 10:04:04','2020-04-16 10:04:04'),
	(384,1,'admin-nimda/media/upload','POST','112.16.171.249','{\"dir\":\"\\/\",\"_token\":\"jgChXEur2slrdut8LguVnsJfHLlcknrFhrL7YEBL\"}','2020-04-16 10:04:19','2020-04-16 10:04:19'),
	(385,1,'admin-nimda/media','GET','112.16.171.249','[]','2020-04-16 10:04:19','2020-04-16 10:04:19'),
	(386,1,'admin-nimda/config','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:04:29','2020-04-16 10:04:29'),
	(387,1,'admin-nimda/config/9/edit','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:04:32','2020-04-16 10:04:32'),
	(388,1,'admin-nimda/config/9','PUT','112.16.171.249','{\"name\":\"logo\",\"value\":\"https:\\/\\/www.hvn.cn\\/storage\\/logo.png\",\"description\":\"\\u7f51\\u7ad9Logo\",\"_token\":\"jgChXEur2slrdut8LguVnsJfHLlcknrFhrL7YEBL\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/www.hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:04:35','2020-04-16 10:04:35'),
	(389,1,'admin-nimda/config','GET','112.16.171.249','[]','2020-04-16 10:04:35','2020-04-16 10:04:35'),
	(390,1,'admin-nimda/config/1/edit','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:04:56','2020-04-16 10:04:56'),
	(391,1,'admin-nimda/config/1','PUT','112.16.171.249','{\"name\":\"address\",\"value\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u9ad8\\u65b0\\u533a\\u79d1\\u6280\\u5e7f\\u573a\",\"description\":\"\\u5730\\u5740\",\"_token\":\"jgChXEur2slrdut8LguVnsJfHLlcknrFhrL7YEBL\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/www.hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:05:02','2020-04-16 10:05:02'),
	(392,1,'admin-nimda/config','GET','112.16.171.249','[]','2020-04-16 10:05:02','2020-04-16 10:05:02'),
	(393,1,'admin-nimda/config/create','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:05:10','2020-04-16 10:05:10'),
	(394,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 10:07:38','2020-04-16 10:07:38'),
	(395,1,'admin-nimda/config/create','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:08:41','2020-04-16 10:08:41'),
	(396,1,'admin-nimda/config','POST','183.132.185.166','{\"name\":\"keywords\",\"value\":\"keywords\",\"description\":\"keywords\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:08:54','2020-04-16 10:08:54'),
	(397,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 10:08:54','2020-04-16 10:08:54'),
	(398,1,'admin-nimda/config/create','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:08:56','2020-04-16 10:08:56'),
	(399,1,'admin-nimda/config','POST','183.132.185.166','{\"name\":\"description\",\"value\":\"description\",\"description\":\"description\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:09:09','2020-04-16 10:09:09'),
	(400,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 10:09:09','2020-04-16 10:09:09'),
	(401,1,'admin-nimda','GET','112.16.171.249','[]','2020-04-16 10:10:31','2020-04-16 10:10:31'),
	(402,1,'admin-nimda/config','GET','112.16.171.249','[]','2020-04-16 10:10:40','2020-04-16 10:10:40'),
	(403,1,'admin-nimda/media','GET','112.16.171.249','[]','2020-04-16 10:10:41','2020-04-16 10:10:41'),
	(404,1,'admin-nimda/config','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:10:41','2020-04-16 10:10:41'),
	(405,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:11:26','2020-04-16 10:11:26'),
	(406,1,'admin-nimda/media','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:11:27','2020-04-16 10:11:27'),
	(407,1,'admin-nimda','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:11:36','2020-04-16 10:11:36'),
	(408,1,'admin-nimda/news','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:11:38','2020-04-16 10:11:38'),
	(409,1,'admin-nimda/media','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:11:59','2020-04-16 10:11:59'),
	(410,1,'admin-nimda/config','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:12:00','2020-04-16 10:12:00'),
	(411,1,'admin-nimda/config/create','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:12:04','2020-04-16 10:12:04'),
	(412,1,'admin-nimda/config','POST','183.132.185.166','{\"name\":\"title\",\"value\":\"\\u6807\\u9898\",\"description\":\"\\u6807\\u9898\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:12:13','2020-04-16 10:12:13'),
	(413,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 10:12:13','2020-04-16 10:12:13'),
	(414,1,'admin-nimda/config/13/edit','GET','183.132.185.166','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:12:39','2020-04-16 10:12:39'),
	(415,1,'admin-nimda/config/13','PUT','183.132.185.166','{\"name\":\"index_title\",\"value\":\"\\u6807\\u9898\",\"description\":\"\\u6807\\u9898\",\"_token\":\"IaU831sAAhgix5YR5iJO3e2Mvzt4TGENHaMr6Lkv\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/hvn.cn\\/admin-nimda\\/config\"}','2020-04-16 10:12:41','2020-04-16 10:12:41'),
	(416,1,'admin-nimda/config','GET','183.132.185.166','[]','2020-04-16 10:12:41','2020-04-16 10:12:41'),
	(417,1,'admin-nimda/config','GET','112.16.171.249','[]','2020-04-16 10:13:33','2020-04-16 10:13:33'),
	(418,1,'admin-nimda/config/13/edit','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:13:36','2020-04-16 10:13:36'),
	(419,1,'admin-nimda','GET','112.16.171.249','[]','2020-04-16 10:13:42','2020-04-16 10:13:42'),
	(420,1,'admin-nimda/config','GET','112.16.171.249','{\"_pjax\":\"#pjax-container\"}','2020-04-16 10:13:43','2020-04-16 10:13:43');

/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`)
VALUES
	(1,'All permission','*','','*',NULL,NULL),
	(2,'Dashboard','dashboard','GET','/',NULL,NULL),
	(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
	(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
	(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),
	(6,'Media manager','ext.media-manager',NULL,'/media*','2018-12-05 18:10:10','2018-12-05 18:10:10');

/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`)
VALUES
	(1,2,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','administrator','2018-12-05 07:39:32','2018-12-05 07:39:32');

/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','$2y$10$RrRJtjMlmJ30zu.4xBaXJemOSSyTwWRPRgD4umJrSpWqaZ2bQttdu','管理员',NULL,NULL,'2018-12-05 07:39:32','2018-12-05 07:39:32');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `name`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,'友情链接','http://www.baidu.com','2018-12-05 18:23:25','2018-12-05 18:23:25');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_04_173148_create_admin_tables',1),
	(4,'2017_07_17_040159_create_config_table',2),
	(5,'2018_12_05_181816_create_links_table',3),
	(6,'2018_12_05_183227_create_posts_table',4),
	(7,'2018_12_05_210638_create_partners_table',5);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partners`;

CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;

INSERT INTO `partners` (`id`, `name`, `image`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,'合作伙伴','images/026.png','http://aliyun.com','2018-12-05 21:13:56','2018-12-05 21:22:05'),
	(2,'管理员','images/027.png','today-complex','2018-12-05 21:23:15','2018-12-05 21:23:15'),
	(3,'管理员','images/028_1.png','today-complex','2018-12-05 21:23:29','2018-12-05 21:23:29'),
	(4,'赖明姚','images/029.png','withdraw','2018-12-05 21:23:43','2018-12-05 21:23:43'),
	(5,'管理员','images/030.png','withdraw','2018-12-05 21:24:01','2018-12-05 21:24:01'),
	(6,'admin','images/0311.png','withdraw','2018-12-05 21:24:57','2018-12-05 21:24:57'),
	(7,'管理员','images/0322.png','withdraw','2018-12-05 21:25:08','2018-12-05 21:25:08');

/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `describe`, `content`, `type`, `author`, `created_at`, `updated_at`)
VALUES
	(1,'角色','123123123','<p>1</p>',1,'admin','2018-12-05 19:38:02','2018-12-05 19:56:37'),
	(2,'管理员','试试试试试试','<p>salads</p>',2,'admin','2018-12-05 19:42:53','2018-12-05 19:56:43'),
	(3,'配置','1大撒打算打算的','<p>撒打算的</p>',3,'admin','2018-12-05 19:43:01','2018-12-05 19:56:48'),
	(4,'操作日志','123123','<p>123123123</p>',1,'admin','2018-12-05 19:59:37','2018-12-05 19:59:37'),
	(5,'操作日志','123123','<p>123123</p>',1,'admin','2018-12-05 19:59:44','2018-12-05 19:59:44');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
