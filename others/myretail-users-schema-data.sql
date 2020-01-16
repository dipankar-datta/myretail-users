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
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.cities: ~531 rows (approximately)
DELETE FROM `cities`;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1, 'Woonsocket', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2, 'Providence', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3, 'Warwick', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4, 'Cranston', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5, 'Washington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6, 'Bullhead City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7, 'Mesa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8, 'Yuma', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9, 'Peoria', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(10, 'Gilbert', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(11, 'Glendale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(12, 'Phoenix', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(13, 'Scottsdale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(14, 'Tucson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(15, 'Avondale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(16, 'Chandler', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(17, 'Sierra Vista', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(18, 'Tempe', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(19, 'San Luis Obispo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(20, 'Anaheim', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(21, 'Oceanside', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(22, 'San Gabriel', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(23, 'Lakewood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(24, 'Whittier', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(25, 'Lancaster', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(26, 'Chula Vista', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(27, 'Mission Viejo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(28, 'Citrus Heights', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(29, 'Redlands', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(30, 'Yucaipa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(31, 'Santa Barbara', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(32, 'Bakersfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(33, 'Fresno', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 'Long Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 'La Mesa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 'Dublin', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(37, 'Fairfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(38, 'Temecula', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(39, 'Vallejo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(40, 'Hesperia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(41, 'Woodland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(42, 'Lodi', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(43, 'Visalia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(44, 'Vacaville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(45, 'Santa Ana', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(46, 'Escondido', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(47, 'Pico Rivera', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(48, 'San Jose', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(49, 'Encinitas', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(50, 'Thousand Oaks', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(51, 'Santa Clara', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(52, 'Morgan Hill', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(53, 'Salinas', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(54, 'Torrance', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(55, 'San Clemente', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(56, 'Huntington Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(57, 'Pomona', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(58, 'San Bernardino', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(59, 'Sacramento', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(60, 'Murrieta', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(61, 'Redondo Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(62, 'Redding', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(63, 'Brentwood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(64, 'Burbank', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(65, 'Antioch', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(66, 'Oxnard', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(67, 'Danville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(68, 'Moreno Valley', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(69, 'Coachella', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(70, 'Apple Valley', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(71, 'Ontario', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(72, 'El Cajon', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(73, 'Los Angeles', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(74, 'Lake Forest', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(75, 'San Mateo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(76, 'Riverside', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(77, 'Lake Elsinore', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(78, 'Stockton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(79, 'Westminster', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(80, 'Manteca', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(81, 'Laguna Niguel', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(82, 'La Quinta', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(83, 'Camarillo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(84, 'Roseville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(85, 'Sunnyvale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(86, 'Oakland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(87, 'Montebello', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(88, 'Rancho Cucamonga', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(89, 'Chico', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(90, 'Santa Maria', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(91, 'Davis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(92, 'San Francisco', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(93, 'Pasadena', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(94, 'Modesto', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(95, 'Redwood City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(96, 'Concord', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(97, 'San Diego', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(98, 'Costa Mesa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(99, 'Inglewood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(100, 'Helena', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(101, 'Missoula', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(102, 'Bozeman', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(103, 'Great Falls', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(104, 'Billings', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(105, 'Holland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(106, 'Rochester Hills', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(107, 'Detroit', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(108, 'Taylor', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(109, 'Lansing', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(110, 'Grand Rapids', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(111, 'Mount Pleasant', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(112, 'Ann Arbor', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(113, 'Oak Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(114, 'Jackson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(115, 'Sterling Heights', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(116, 'Midland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(117, 'Dearborn Heights', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(118, 'Westland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(119, 'Royal Oak', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(120, 'Dearborn', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(121, 'Saginaw', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(122, 'Lincoln Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(123, 'Canton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(124, 'Trenton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(125, 'Rochester', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(126, 'Lakeville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(127, 'Saint Paul', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(128, 'Saint Cloud', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(129, 'Cottage Grove', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(130, 'Moorhead', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(131, 'Coon Rapids', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(132, 'Eagan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(133, 'Minneapolis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(134, 'Woodbury', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(135, 'Maple Grove', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(136, 'Chester', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(137, 'York', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(138, 'Allentown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(139, 'Reading', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(140, 'Bethlehem', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(141, 'Altoona', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(142, 'Philadelphia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(143, 'Dover', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(144, 'Newark', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(145, 'Wilmington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(146, 'Des Moines', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(147, 'Urbandale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(148, 'Burlington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(149, 'Dubuque', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(150, 'Marion', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(151, 'Waterloo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(152, 'Cedar Rapids', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(153, 'Iowa City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(154, 'Atlantic City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(155, 'New Brunswick', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(156, 'Clifton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(157, 'Passaic', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(158, 'Perth Amboy', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(159, 'Orange', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(160, 'Westfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(161, 'Linden', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(162, 'Paterson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(163, 'Bridgeton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(164, 'Bayonne', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(165, 'Belleville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(166, 'East Orange', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(167, 'Plainfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(168, 'Morristown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(169, 'Hackensack', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(170, 'Vineland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(171, 'Gulfport', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(172, 'Hattiesburg', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(173, 'Southaven', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(174, 'Las Cruces', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(175, 'Carlsbad', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(176, 'Santa Fe', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(177, 'Clovis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(178, 'Albuquerque', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(179, 'Rio Rancho', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(180, 'Farmington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(181, 'Danbury', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(182, 'Waterbury', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(183, 'Milford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(184, 'Bristol', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(185, 'Middletown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(186, 'Norwich', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(187, 'Shelton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(188, 'Meriden', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(189, 'Manchester', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(190, 'Lake Charles', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(191, 'Lafayette', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(192, 'Kenner', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(193, 'Monroe', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(194, 'Bossier City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(195, 'Newport News', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(196, 'Charlottesville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(197, 'Waynesboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(198, 'Virginia Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(199, 'Hampton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(200, 'Suffolk', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(201, 'Harrisonburg', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(202, 'Springfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(203, 'Richmond', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(204, 'Arlington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(205, 'Alexandria', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(206, 'Salem', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(207, 'Chesapeake', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(208, 'Pocatello', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(209, 'Lewiston', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(210, 'Boise', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(211, 'Twin Falls', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(212, 'Caldwell', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(213, 'Meridian', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(214, 'Chattanooga', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(215, 'Franklin', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(216, 'Murfreesboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(217, 'Nashville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(218, 'Hendersonville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(219, 'Columbia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(220, 'Johnson City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(221, 'Lebanon', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(222, 'Knoxville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(223, 'Memphis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(224, 'Clarksville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(225, 'Bartlett', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(226, 'Smyrna', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(227, 'Bangor', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(228, 'Greensboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(229, 'Charlotte', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(230, 'Fayetteville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(231, 'Greenville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(232, 'Raleigh', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(233, 'Wilson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(234, 'Chapel Hill', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(235, 'Gastonia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(236, 'Goldsboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(237, 'Cary', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(238, 'Asheville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(239, 'Thomasville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(240, 'Jacksonville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(241, 'Durham', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(242, 'Hickory', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(243, 'Cheyenne', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(244, 'Bloomington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(245, 'New Castle', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(246, 'Noblesville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(247, 'Portage', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(248, 'Lawrence', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(249, 'New Albany', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(250, 'Mishawaka', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(251, 'Elkhart', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(252, 'La Porte', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(253, 'Columbus', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(254, 'South Bend', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(255, 'Greenwood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(256, 'Indianapolis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(257, 'Florence', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(258, 'Rock Hill', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(259, 'Summerville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(260, 'North Charleston', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(261, 'Grand Island', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(262, 'Omaha', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(263, 'Norfolk', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(264, 'Fremont', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(265, 'Olympia', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(266, 'Vancouver', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(267, 'Redmond', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(268, 'Longview', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(269, 'Renton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(270, 'Auburn', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(271, 'Everett', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(272, 'Seattle', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(273, 'Bellevue', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(274, 'Spokane', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(275, 'Covington', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(276, 'Bellingham', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(277, 'Marysville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(278, 'Pasco', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(279, 'Kent', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(280, 'Edmonds', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(281, 'Wheeling', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(282, 'Marlborough', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(283, 'Leominster', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(284, 'Holyoke', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(285, 'Cambridge', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(286, 'Quincy', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(287, 'Revere', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(288, 'Beverly', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(289, 'Lowell', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(290, 'Andover', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(291, 'New Bedford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(292, 'Malden', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(293, 'Independence', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(294, 'Saint Charles', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(295, 'Saint Louis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(296, 'Saint Peters', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(297, 'Gladstone', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(298, 'Kirkwood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(299, 'Jefferson City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(300, 'Las Vegas', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(301, 'Reno', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(302, 'North Las Vegas', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(303, 'Henderson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(304, 'Sparks', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(305, 'Murray', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(306, 'Bowling Green', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(307, 'Louisville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(308, 'Owensboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(309, 'Georgetown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(310, 'Troy', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(311, 'Hempstead', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(312, 'Utica', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(313, 'Yonkers', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(314, 'Jamestown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(315, 'Rome', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(316, 'Watertown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(317, 'Lindenhurst', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(318, 'Mount Vernon', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(319, 'Niagara Falls', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(320, 'New York City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(321, 'New Rochelle', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(322, 'Freeport', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(323, 'Buffalo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(324, 'Rapid City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(325, 'Sioux Falls', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(326, 'Aberdeen', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(327, 'Wichita', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(328, 'Overland Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(329, 'Olathe', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(330, 'Manhattan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(331, 'Garden City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(332, 'Fort Lauderdale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(333, 'Port Saint Lucie', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(334, 'Saint Petersburg', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(335, 'Homestead', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(336, 'Coral Springs', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(337, 'Pompano Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(338, 'Tamarac', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(339, 'Miami', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(340, 'Port Orange', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(341, 'Hollywood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(342, 'Deltona', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(343, 'Delray Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(344, 'Miramar', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(345, 'Jupiter', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(346, 'West Palm Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(347, 'Pembroke Pines', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(348, 'Orlando', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(349, 'Margate', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(350, 'Boca Raton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(351, 'Lakeland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(352, 'Tampa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(353, 'Palm Coast', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(354, 'Kissimmee', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(355, 'Boynton Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(356, 'Hialeah', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(357, 'Ormond Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(358, 'Apopka', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(359, 'Pensacola', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(360, 'Melbourne', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(361, 'Tallahassee', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(362, 'Sanford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(363, 'Plantation', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(364, 'North Miami', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(365, 'Coral Gables', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(366, 'Daytona Beach', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(367, 'Nashua', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(368, 'League City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(369, 'Round Rock', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(370, 'Edinburg', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(371, 'San Antonio', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(372, 'Mesquite', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(373, 'Mcallen', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(374, 'Laredo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(375, 'Grapevine', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(376, 'Missouri City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(377, 'Garland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(378, 'Irving', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(379, 'Houston', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(380, 'Carrollton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(381, 'Mansfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(382, 'Huntsville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(383, 'Pearland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(384, 'Austin', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(385, 'Harlingen', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(386, 'Brownsville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(387, 'Tyler', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(388, 'Deer Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(389, 'Coppell', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(390, 'Amarillo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(391, 'Corpus Christi', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(392, 'San Marcos', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(393, 'San Angelo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(394, 'Bryan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(395, 'El Paso', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(396, 'Frisco', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(397, 'Allen', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(398, 'The Colony', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(399, 'Beaumont', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(400, 'Richardson', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(401, 'Waco', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(402, 'Bedford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(403, 'Port Arthur', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(404, 'Conroe', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(405, 'Grand Prairie', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(406, 'College Station', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(407, 'Fort Worth', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(408, 'Baytown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(409, 'Haltom City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(410, 'Odessa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(411, 'Pharr', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(412, 'Texas City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(413, 'Cedar Hill', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(414, 'Keller', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(415, 'Plano', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(416, 'Dallas', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(417, 'Abilene', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(418, 'Lubbock', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(419, 'Highland Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(420, 'Glenview', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(421, 'Oswego', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(422, 'Bolingbrook', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(423, 'Chicago', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(424, 'Evanston', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(425, 'Arlington Heights', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(426, 'Normal', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(427, 'Aurora', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(428, 'Romeoville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(429, 'Buffalo Grove', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(430, 'Frankfort', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(431, 'Palatine', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(432, 'Park Ridge', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(433, 'Naperville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(434, 'Orland Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(435, 'Rockford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(436, 'Carol Stream', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(437, 'Tinley Park', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(438, 'Des Plaines', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(439, 'Woodstock', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(440, 'Decatur', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(441, 'Skokie', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(442, 'Champaign', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(443, 'Elmhurst', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(444, 'Marietta', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(445, 'Sandy Springs', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(446, 'Atlanta', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(447, 'Warner Robins', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(448, 'Roswell', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(449, 'East Point', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(450, 'Macon', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(451, 'Athens', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(452, 'Akron', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(453, 'Grove City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(454, 'Parma', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(455, 'Cincinnati', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(456, 'Mentor', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(457, 'Medina', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(458, 'Cleveland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(459, 'Hamilton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(460, 'Cuyahoga Falls', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(461, 'Lorain', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(462, 'Mason', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(463, 'Toledo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(464, 'Elyria', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(465, 'Rockville', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(466, 'Baltimore', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(467, 'Gaithersburg', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(468, 'Laurel', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(469, 'Clinton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(470, 'Hagerstown', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(471, 'Oklahoma City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(472, 'Broken Arrow', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(473, 'Norman', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(474, 'Edmond', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(475, 'Tulsa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(476, 'Muskogee', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(477, 'Lawton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(478, 'Gresham', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(479, 'Hillsboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(480, 'Portland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(481, 'Eugene', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(482, 'Medford', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(483, 'Tigard', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(484, 'Layton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(485, 'Pleasant Grove', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(486, 'Logan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(487, 'Draper', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(488, 'Provo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(489, 'Salt Lake City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(490, 'West Jordan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(491, 'Lehi', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(492, 'Orem', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(493, 'Tuscaloosa', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(494, 'Montgomery', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(495, 'Hoover', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(496, 'Mobile', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(497, 'Pine Bluff', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(498, 'Springdale', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(499, 'Rogers', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(500, 'Jonesboro', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(501, 'Texarkana', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(502, 'Conway', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(503, 'Hot Springs', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(504, 'Little Rock', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(505, 'Longmont', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(506, 'Englewood', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(507, 'Fort Collins', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(508, 'Parker', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(509, 'Pueblo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(510, 'Littleton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(511, 'Commerce City', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(512, 'Arvada', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(513, 'Broomfield', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(514, 'Thornton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(515, 'Greeley', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(516, 'Loveland', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(517, 'Denver', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(518, 'Colorado Springs', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(519, 'Fargo', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(520, 'Madison', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(521, 'West Allis', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(522, 'Superior', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(523, 'Green Bay', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(524, 'Eau Claire', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(525, 'La Crosse', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(526, 'Wausau', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(527, 'Sheboygan', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(528, 'Waukesha', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(529, 'Appleton', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(530, 'Milwaukee', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
INSERT INTO `cities` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(531, 'Kenosha', NULL, 0, 0, '2020-01-16 21:07:59', '2020-01-16 21:07:59');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;

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
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK__countries` (`country`),
  KEY `FK__states` (`state`),
  KEY `FK__cities` (`city`),
  CONSTRAINT `FK_ContactDetails_City` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  CONSTRAINT `FK_ContactDetails_Country` FOREIGN KEY (`country`) REFERENCES `countries` (`id`),
  CONSTRAINT `FK_ContactDetails_State` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.contacts: ~0 rows (approximately)
DELETE FROM `contacts`;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table myretail_users.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `key_id` (`id`),
  KEY `key_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.countries: ~0 rows (approximately)
DELETE FROM `countries`;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1, 'United States', NULL, NULL, NULL, NULL, '2020-01-16 21:10:07');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table myretail_users.country_state_city_map
DROP TABLE IF EXISTS `country_state_city_map`;
CREATE TABLE IF NOT EXISTS `country_state_city_map` (
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  KEY `FK_country_state_city_map_countries` (`country`),
  KEY `FK_country_state_city_map_states` (`state`),
  KEY `FK_country_state_city_map_cities` (`city`),
  CONSTRAINT `country_state_city_map_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `country_state_city_map_ibfk_2` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `country_state_city_map_ibfk_3` FOREIGN KEY (`state`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.country_state_city_map: ~604 rows (approximately)
DELETE FROM `country_state_city_map`;
/*!40000 ALTER TABLE `country_state_city_map` DISABLE KEYS */;
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 1, 1);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 1, 2);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 1, 3);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 1, 4);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 2, 5);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 6);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 7);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 8);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 9);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 10);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 11);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 12);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 13);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 14);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 15);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 16);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 17);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 3, 18);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 19);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 20);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 21);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 22);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 23);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 24);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 25);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 26);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 27);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 28);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 29);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 30);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 31);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 32);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 33);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 34);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 35);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 36);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 37);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 38);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 39);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 40);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 41);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 42);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 43);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 44);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 45);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 46);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 47);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 48);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 49);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 50);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 51);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 52);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 53);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 54);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 55);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 56);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 57);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 58);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 59);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 60);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 61);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 62);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 63);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 64);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 65);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 66);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 67);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 68);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 69);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 70);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 71);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 72);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 73);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 74);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 75);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 76);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 77);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 78);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 79);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 80);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 81);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 82);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 83);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 84);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 85);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 86);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 87);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 88);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 89);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 90);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 91);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 92);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 93);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 94);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 95);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 96);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 97);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 98);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 4, 99);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 5, 100);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 5, 101);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 5, 102);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 5, 103);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 5, 104);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 105);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 106);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 107);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 108);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 109);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 84);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 110);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 111);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 112);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 113);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 114);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 115);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 116);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 117);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 118);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 119);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 120);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 121);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 122);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 123);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 6, 124);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 125);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 126);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 84);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 127);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 128);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 129);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 130);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 131);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 132);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 133);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 134);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 70);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 7, 135);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 136);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 137);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 138);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 139);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 140);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 25);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 141);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 8, 142);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 9, 143);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 9, 144);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 9, 145);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 146);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 147);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 148);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 149);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 150);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 151);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 152);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 10, 153);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 154);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 155);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 23);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 156);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 157);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 158);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 159);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 160);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 161);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 162);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 163);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 164);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 165);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 166);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 167);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 168);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 169);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 11, 170);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 12, 171);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 12, 114);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 12, 172);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 12, 173);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 174);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 175);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 176);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 177);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 178);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 179);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 13, 180);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 181);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 182);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 183);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 184);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 37);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 185);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 186);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 187);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 188);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 14, 189);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 15, 190);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 15, 191);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 15, 192);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 15, 193);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 15, 194);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 195);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 196);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 197);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 198);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 199);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 200);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 201);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 202);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 203);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 204);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 205);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 206);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 16, 207);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 208);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 209);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 210);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 211);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 212);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 17, 213);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 214);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 215);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 216);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 217);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 114);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 218);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 219);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 220);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 221);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 222);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 184);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 223);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 224);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 225);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 18, 226);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 19, 148);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 20, 227);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 20, 209);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 228);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 229);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 230);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 231);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 232);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 233);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 234);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 193);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 235);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 148);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 96);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 236);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 145);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 237);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 238);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 239);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 240);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 241);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 21, 242);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 22, 243);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 244);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 245);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 246);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 247);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 248);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 249);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 250);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 251);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 252);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 191);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 253);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 203);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 254);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 255);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 23, 256);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 219);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 257);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 111);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 258);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 259);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 24, 260);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 25, 261);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 25, 262);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 25, 263);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 25, 264);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 146);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 265);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 266);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 267);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 268);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 269);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 270);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 271);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 272);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 273);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 274);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 275);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 276);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 277);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 278);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 279);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 26, 280);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 27, 281);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 282);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 215);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 283);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 284);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 285);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 286);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 248);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 287);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 271);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 288);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 289);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 290);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 291);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 28, 292);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 293);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 219);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 294);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 295);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 296);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 202);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 297);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 298);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 29, 299);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 30, 300);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 30, 301);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 30, 302);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 30, 303);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 30, 304);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 257);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 305);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 306);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 203);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 307);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 308);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 303);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 31, 309);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 310);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 311);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 312);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 125);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 21);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 313);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 270);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 314);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 315);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 316);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 317);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 318);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 319);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 320);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 34);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 321);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 322);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 32, 323);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 33, 324);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 33, 325);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 33, 326);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 34, 327);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 34, 328);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 34, 329);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 34, 330);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 34, 331);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 332);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 333);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 334);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 335);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 336);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 337);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 338);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 339);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 340);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 341);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 342);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 343);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 344);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 345);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 346);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 347);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 348);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 349);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 350);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 351);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 352);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 353);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 354);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 355);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 356);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 357);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 358);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 359);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 360);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 361);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 362);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 363);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 240);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 364);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 365);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 35, 366);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 36, 143);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 36, 367);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 36, 96);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 368);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 369);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 370);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 371);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 372);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 373);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 374);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 375);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 376);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 377);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 378);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 379);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 380);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 381);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 382);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 383);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 384);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 385);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 386);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 387);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 388);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 389);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 390);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 391);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 392);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 393);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 394);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 395);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 396);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 397);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 398);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 399);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 400);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 401);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 402);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 403);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 404);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 405);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 406);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 407);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 408);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 93);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 409);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 410);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 411);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 412);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 252);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 413);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 204);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 414);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 415);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 416);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 417);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 37, 418);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 244);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 419);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 420);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 421);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 422);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 423);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 424);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 113);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 425);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 426);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 427);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 281);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 67);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 428);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 429);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 322);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 430);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 431);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 286);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 432);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 433);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 434);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 9);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 435);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 436);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 437);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 438);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 439);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 294);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 440);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 441);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 442);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 38, 443);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 444);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 445);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 446);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 447);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 253);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 448);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 449);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 450);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 451);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 226);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 39, 439);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 452);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 310);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 453);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 454);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 306);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 455);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 23);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 456);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 25);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 457);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 458);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 459);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 460);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 253);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 36);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 202);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 461);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 462);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 37);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 150);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 144);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 463);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 279);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 40, 464);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 219);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 465);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 466);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 467);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 468);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 469);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 41, 470);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 471);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 472);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 473);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 474);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 475);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 476);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 42, 477);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 478);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 479);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 480);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 267);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 202);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 206);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 481);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 482);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 43, 483);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 484);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 485);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 486);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 305);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 487);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 488);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 489);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 490);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 491);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 44, 492);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 257);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 382);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 440);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 493);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 494);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 495);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 270);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 45, 496);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 497);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 498);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 499);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 500);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 230);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 501);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 502);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 503);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 46, 504);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 505);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 506);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 507);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 508);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 509);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 307);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 427);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 510);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 511);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 512);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 513);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 514);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 515);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 516);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 517);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 47, 518);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 48, 519);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 520);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 215);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 521);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 522);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 523);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 524);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 525);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 526);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 527);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 528);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 529);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 530);
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 49, 531);
/*!40000 ALTER TABLE `country_state_city_map` ENABLE KEYS */;

-- Dumping structure for table myretail_users.logins
DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` bigint(50) NOT NULL DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `temporary_password` varchar(50) DEFAULT '0',
  `user` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK_login_users` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.logins: ~0 rows (approximately)
DELETE FROM `logins`;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;

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

-- Dumping data for table myretail_users.passwords: ~0 rows (approximately)
DELETE FROM `passwords`;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;

-- Dumping structure for table myretail_users.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(160) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.roles: ~4 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `code`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1, 'ADMIN', 'Admin', NULL, NULL, '2020-01-16 21:12:13', '2020-01-16 21:12:13');
INSERT INTO `roles` (`id`, `code`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2, 'CUSTOMER', 'Customer', NULL, NULL, '2020-01-16 21:12:13', '2020-01-16 21:12:13');
INSERT INTO `roles` (`id`, `code`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3, 'EMPLOYEE', 'Employee', NULL, NULL, '2020-01-16 21:12:13', '2020-01-16 21:12:13');
INSERT INTO `roles` (`id`, `code`, `name`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4, 'SUPPLIER', 'Supplier', NULL, NULL, '2020-01-16 21:12:13', '2020-01-16 21:12:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table myretail_users.states
DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.states: ~49 rows (approximately)
DELETE FROM `states`;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(1, 'Rhode Island', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(2, 'District of Columbia', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(3, 'Arizona', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(4, 'California', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(5, 'Montana', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(6, 'Michigan', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(7, 'Minnesota', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(8, 'Pennsylvania', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(9, 'Delaware', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(10, 'Iowa', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(11, 'New Jersey', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(12, 'Mississippi', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(13, 'New Mexico', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(14, 'Connecticut', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(15, 'Louisiana', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(16, 'Virginia', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(17, 'Idaho', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(18, 'Tennessee', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(19, 'Vermont', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(20, 'Maine', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(21, 'North Carolina', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(22, 'Wyoming', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(23, 'Indiana', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(24, 'South Carolina', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(25, 'Nebraska', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(26, 'Washington', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(27, 'West Virginia', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(28, 'Massachusetts', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(29, 'Missouri', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(30, 'Nevada', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(31, 'Kentucky', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(32, 'New York', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(33, 'South Dakota', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(34, 'Kansas', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(35, 'Florida', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(36, 'New Hampshire', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(37, 'Texas', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(38, 'Illinois', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(39, 'Georgia', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(40, 'Ohio', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(41, 'Maryland', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(42, 'Oklahoma', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(43, 'Oregon', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(44, 'Utah', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(45, 'Alabama', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(46, 'Arkansas', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(47, 'Colorado', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(48, 'North Dakota', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
INSERT INTO `states` (`id`, `name`, `code`, `created_by`, `updated_by`, `creation_time`, `updation_time`) VALUES
	(49, 'Wisconsin', NULL, NULL, NULL, '2020-01-16 21:12:53', '2020-01-16 21:12:53');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;

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
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
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

-- Dumping data for table myretail_users.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table myretail_users.user_contact_map
DROP TABLE IF EXISTS `user_contact_map`;
CREATE TABLE IF NOT EXISTS `user_contact_map` (
  `user` bigint(50) DEFAULT NULL,
  `contact` bigint(50) DEFAULT NULL,
  KEY `FK__users_map` (`user`),
  KEY `FK__contact_details` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.user_contact_map: ~0 rows (approximately)
DELETE FROM `user_contact_map`;
/*!40000 ALTER TABLE `user_contact_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contact_map` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
