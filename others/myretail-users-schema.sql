-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.16 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for myretail_users
DROP DATABASE IF EXISTS `myretail_users`;
CREATE DATABASE IF NOT EXISTS `myretail_users` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myretail_users`;

-- Dumping structure for table myretail_users.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`),
  UNIQUE KEY `unique_code` (`code`),
  KEY `id` (`id`),
  KEY `code` (`code`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.contacts
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(50) NOT NULL DEFAULT '0',
  `email` varchar(30) DEFAULT '',
  `country` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0',
  `address_line_1` varchar(200) DEFAULT '0',
  `address_line_2` varchar(200) DEFAULT '0',
  `postal_code` varchar(30) DEFAULT '0',
  `public_id` varchar(50) DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `user` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK__countries` (`country`),
  KEY `FK__states` (`state`),
  KEY `FK__cities` (`city`),
  CONSTRAINT `FK_ContactDetails_City` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  CONSTRAINT `FK_ContactDetails_Country` FOREIGN KEY (`country`) REFERENCES `countries` (`id`),
  CONSTRAINT `FK_ContactDetails_State` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `key_id` (`id`),
  KEY `key_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.country_state_city_map
DROP TABLE IF EXISTS `country_state_city_map`;
CREATE TABLE IF NOT EXISTS `country_state_city_map` (
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  KEY `FK_country_state_city_map_countries` (`country`),
  KEY `FK_country_state_city_map_states` (`state`),
  KEY `FK_country_state_city_map_cities` (`city`),
  CONSTRAINT `FK_country_state_city_map_cities` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  CONSTRAINT `FK_country_state_city_map_states` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.logins
DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` bigint(50) NOT NULL DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `temporary_password` varchar(50) DEFAULT '0',
  `user` bigint(20) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK_login_users` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.passwords
DROP TABLE IF EXISTS `passwords`;
CREATE TABLE IF NOT EXISTS `passwords` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `login` bigint(50) DEFAULT '0',
  `password` varchar(80) DEFAULT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `id` (`id`),
  KEY `FK_Passwords_Login` (`login`),
  CONSTRAINT `FK_Passwords_Login` FOREIGN KEY (`login`) REFERENCES `logins` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(160) DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.states
DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table myretail_users.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(50) NOT NULL DEFAULT '0',
  `code` varchar(30) DEFAULT NULL,
  `primary_contact` bigint(50) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `public_id` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `created_by` bigint(50) DEFAULT NULL,
  `updated_by` bigint(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`),
  KEY `FK_users_roles` (`role`),
  KEY `FK_Users_Contact` (`primary_contact`),
  CONSTRAINT `FK_Users_Contact` FOREIGN KEY (`primary_contact`) REFERENCES `contacts` (`id`),
  CONSTRAINT `FK_Users_Role` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
