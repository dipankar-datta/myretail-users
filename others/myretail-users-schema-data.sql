-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.16 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`),
  UNIQUE KEY `unique_code` (`code`),
  KEY `id` (`id`),
  KEY `code` (`code`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.cities: ~0 rows (approximately)
DELETE FROM `cities`;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `name`, `code`) VALUES
	(1, 'Woonsocket', NULL),
	(2, 'Providence', NULL),
	(3, 'Warwick', NULL),
	(4, 'Cranston', NULL),
	(5, 'Washington', NULL),
	(6, 'Bullhead City', NULL),
	(7, 'Mesa', NULL),
	(8, 'Yuma', NULL),
	(9, 'Peoria', NULL),
	(10, 'Gilbert', NULL),
	(11, 'Glendale', NULL),
	(12, 'Phoenix', NULL),
	(13, 'Scottsdale', NULL),
	(14, 'Tucson', NULL),
	(15, 'Avondale', NULL),
	(16, 'Chandler', NULL),
	(17, 'Sierra Vista', NULL),
	(18, 'Tempe', NULL),
	(19, 'San Luis Obispo', NULL),
	(20, 'Anaheim', NULL),
	(21, 'Oceanside', NULL),
	(22, 'San Gabriel', NULL),
	(23, 'Lakewood', NULL),
	(24, 'Whittier', NULL),
	(25, 'Lancaster', NULL),
	(26, 'Chula Vista', NULL),
	(27, 'Mission Viejo', NULL),
	(28, 'Citrus Heights', NULL),
	(29, 'Redlands', NULL),
	(30, 'Yucaipa', NULL),
	(31, 'Santa Barbara', NULL),
	(32, 'Bakersfield', NULL),
	(33, 'Fresno', NULL),
	(34, 'Long Beach', NULL),
	(35, 'La Mesa', NULL),
	(36, 'Dublin', NULL),
	(37, 'Fairfield', NULL),
	(38, 'Temecula', NULL),
	(39, 'Vallejo', NULL),
	(40, 'Hesperia', NULL),
	(41, 'Woodland', NULL),
	(42, 'Lodi', NULL),
	(43, 'Visalia', NULL),
	(44, 'Vacaville', NULL),
	(45, 'Santa Ana', NULL),
	(46, 'Escondido', NULL),
	(47, 'Pico Rivera', NULL),
	(48, 'San Jose', NULL),
	(49, 'Encinitas', NULL),
	(50, 'Thousand Oaks', NULL),
	(51, 'Santa Clara', NULL),
	(52, 'Morgan Hill', NULL),
	(53, 'Salinas', NULL),
	(54, 'Torrance', NULL),
	(55, 'San Clemente', NULL),
	(56, 'Huntington Beach', NULL),
	(57, 'Pomona', NULL),
	(58, 'San Bernardino', NULL),
	(59, 'Sacramento', NULL),
	(60, 'Murrieta', NULL),
	(61, 'Redondo Beach', NULL),
	(62, 'Redding', NULL),
	(63, 'Brentwood', NULL),
	(64, 'Burbank', NULL),
	(65, 'Antioch', NULL),
	(66, 'Oxnard', NULL),
	(67, 'Danville', NULL),
	(68, 'Moreno Valley', NULL),
	(69, 'Coachella', NULL),
	(70, 'Apple Valley', NULL),
	(71, 'Ontario', NULL),
	(72, 'El Cajon', NULL),
	(73, 'Los Angeles', NULL),
	(74, 'Lake Forest', NULL),
	(75, 'San Mateo', NULL),
	(76, 'Riverside', NULL),
	(77, 'Lake Elsinore', NULL),
	(78, 'Stockton', NULL),
	(79, 'Westminster', NULL),
	(80, 'Manteca', NULL),
	(81, 'Laguna Niguel', NULL),
	(82, 'La Quinta', NULL),
	(83, 'Camarillo', NULL),
	(84, 'Roseville', NULL),
	(85, 'Sunnyvale', NULL),
	(86, 'Oakland', NULL),
	(87, 'Montebello', NULL),
	(88, 'Rancho Cucamonga', NULL),
	(89, 'Chico', NULL),
	(90, 'Santa Maria', NULL),
	(91, 'Davis', NULL),
	(92, 'San Francisco', NULL),
	(93, 'Pasadena', NULL),
	(94, 'Modesto', NULL),
	(95, 'Redwood City', NULL),
	(96, 'Concord', NULL),
	(97, 'San Diego', NULL),
	(98, 'Costa Mesa', NULL),
	(99, 'Inglewood', NULL),
	(100, 'Helena', NULL),
	(101, 'Missoula', NULL),
	(102, 'Bozeman', NULL),
	(103, 'Great Falls', NULL),
	(104, 'Billings', NULL),
	(105, 'Holland', NULL),
	(106, 'Rochester Hills', NULL),
	(107, 'Detroit', NULL),
	(108, 'Taylor', NULL),
	(109, 'Lansing', NULL),
	(110, 'Grand Rapids', NULL),
	(111, 'Mount Pleasant', NULL),
	(112, 'Ann Arbor', NULL),
	(113, 'Oak Park', NULL),
	(114, 'Jackson', NULL),
	(115, 'Sterling Heights', NULL),
	(116, 'Midland', NULL),
	(117, 'Dearborn Heights', NULL),
	(118, 'Westland', NULL),
	(119, 'Royal Oak', NULL),
	(120, 'Dearborn', NULL),
	(121, 'Saginaw', NULL),
	(122, 'Lincoln Park', NULL),
	(123, 'Canton', NULL),
	(124, 'Trenton', NULL),
	(125, 'Rochester', NULL),
	(126, 'Lakeville', NULL),
	(127, 'Saint Paul', NULL),
	(128, 'Saint Cloud', NULL),
	(129, 'Cottage Grove', NULL),
	(130, 'Moorhead', NULL),
	(131, 'Coon Rapids', NULL),
	(132, 'Eagan', NULL),
	(133, 'Minneapolis', NULL),
	(134, 'Woodbury', NULL),
	(135, 'Maple Grove', NULL),
	(136, 'Chester', NULL),
	(137, 'York', NULL),
	(138, 'Allentown', NULL),
	(139, 'Reading', NULL),
	(140, 'Bethlehem', NULL),
	(141, 'Altoona', NULL),
	(142, 'Philadelphia', NULL),
	(143, 'Dover', NULL),
	(144, 'Newark', NULL),
	(145, 'Wilmington', NULL),
	(146, 'Des Moines', NULL),
	(147, 'Urbandale', NULL),
	(148, 'Burlington', NULL),
	(149, 'Dubuque', NULL),
	(150, 'Marion', NULL),
	(151, 'Waterloo', NULL),
	(152, 'Cedar Rapids', NULL),
	(153, 'Iowa City', NULL),
	(154, 'Atlantic City', NULL),
	(155, 'New Brunswick', NULL),
	(156, 'Clifton', NULL),
	(157, 'Passaic', NULL),
	(158, 'Perth Amboy', NULL),
	(159, 'Orange', NULL),
	(160, 'Westfield', NULL),
	(161, 'Linden', NULL),
	(162, 'Paterson', NULL),
	(163, 'Bridgeton', NULL),
	(164, 'Bayonne', NULL),
	(165, 'Belleville', NULL),
	(166, 'East Orange', NULL),
	(167, 'Plainfield', NULL),
	(168, 'Morristown', NULL),
	(169, 'Hackensack', NULL),
	(170, 'Vineland', NULL),
	(171, 'Gulfport', NULL),
	(172, 'Hattiesburg', NULL),
	(173, 'Southaven', NULL),
	(174, 'Las Cruces', NULL),
	(175, 'Carlsbad', NULL),
	(176, 'Santa Fe', NULL),
	(177, 'Clovis', NULL),
	(178, 'Albuquerque', NULL),
	(179, 'Rio Rancho', NULL),
	(180, 'Farmington', NULL),
	(181, 'Danbury', NULL),
	(182, 'Waterbury', NULL),
	(183, 'Milford', NULL),
	(184, 'Bristol', NULL),
	(185, 'Middletown', NULL),
	(186, 'Norwich', NULL),
	(187, 'Shelton', NULL),
	(188, 'Meriden', NULL),
	(189, 'Manchester', NULL),
	(190, 'Lake Charles', NULL),
	(191, 'Lafayette', NULL),
	(192, 'Kenner', NULL),
	(193, 'Monroe', NULL),
	(194, 'Bossier City', NULL),
	(195, 'Newport News', NULL),
	(196, 'Charlottesville', NULL),
	(197, 'Waynesboro', NULL),
	(198, 'Virginia Beach', NULL),
	(199, 'Hampton', NULL),
	(200, 'Suffolk', NULL),
	(201, 'Harrisonburg', NULL),
	(202, 'Springfield', NULL),
	(203, 'Richmond', NULL),
	(204, 'Arlington', NULL),
	(205, 'Alexandria', NULL),
	(206, 'Salem', NULL),
	(207, 'Chesapeake', NULL),
	(208, 'Pocatello', NULL),
	(209, 'Lewiston', NULL),
	(210, 'Boise', NULL),
	(211, 'Twin Falls', NULL),
	(212, 'Caldwell', NULL),
	(213, 'Meridian', NULL),
	(214, 'Chattanooga', NULL),
	(215, 'Franklin', NULL),
	(216, 'Murfreesboro', NULL),
	(217, 'Nashville', NULL),
	(218, 'Hendersonville', NULL),
	(219, 'Columbia', NULL),
	(220, 'Johnson City', NULL),
	(221, 'Lebanon', NULL),
	(222, 'Knoxville', NULL),
	(223, 'Memphis', NULL),
	(224, 'Clarksville', NULL),
	(225, 'Bartlett', NULL),
	(226, 'Smyrna', NULL),
	(227, 'Bangor', NULL),
	(228, 'Greensboro', NULL),
	(229, 'Charlotte', NULL),
	(230, 'Fayetteville', NULL),
	(231, 'Greenville', NULL),
	(232, 'Raleigh', NULL),
	(233, 'Wilson', NULL),
	(234, 'Chapel Hill', NULL),
	(235, 'Gastonia', NULL),
	(236, 'Goldsboro', NULL),
	(237, 'Cary', NULL),
	(238, 'Asheville', NULL),
	(239, 'Thomasville', NULL),
	(240, 'Jacksonville', NULL),
	(241, 'Durham', NULL),
	(242, 'Hickory', NULL),
	(243, 'Cheyenne', NULL),
	(244, 'Bloomington', NULL),
	(245, 'New Castle', NULL),
	(246, 'Noblesville', NULL),
	(247, 'Portage', NULL),
	(248, 'Lawrence', NULL),
	(249, 'New Albany', NULL),
	(250, 'Mishawaka', NULL),
	(251, 'Elkhart', NULL),
	(252, 'La Porte', NULL),
	(253, 'Columbus', NULL),
	(254, 'South Bend', NULL),
	(255, 'Greenwood', NULL),
	(256, 'Indianapolis', NULL),
	(257, 'Florence', NULL),
	(258, 'Rock Hill', NULL),
	(259, 'Summerville', NULL),
	(260, 'North Charleston', NULL),
	(261, 'Grand Island', NULL),
	(262, 'Omaha', NULL),
	(263, 'Norfolk', NULL),
	(264, 'Fremont', NULL),
	(265, 'Olympia', NULL),
	(266, 'Vancouver', NULL),
	(267, 'Redmond', NULL),
	(268, 'Longview', NULL),
	(269, 'Renton', NULL),
	(270, 'Auburn', NULL),
	(271, 'Everett', NULL),
	(272, 'Seattle', NULL),
	(273, 'Bellevue', NULL),
	(274, 'Spokane', NULL),
	(275, 'Covington', NULL),
	(276, 'Bellingham', NULL),
	(277, 'Marysville', NULL),
	(278, 'Pasco', NULL),
	(279, 'Kent', NULL),
	(280, 'Edmonds', NULL),
	(281, 'Wheeling', NULL),
	(282, 'Marlborough', NULL),
	(283, 'Leominster', NULL),
	(284, 'Holyoke', NULL),
	(285, 'Cambridge', NULL),
	(286, 'Quincy', NULL),
	(287, 'Revere', NULL),
	(288, 'Beverly', NULL),
	(289, 'Lowell', NULL),
	(290, 'Andover', NULL),
	(291, 'New Bedford', NULL),
	(292, 'Malden', NULL),
	(293, 'Independence', NULL),
	(294, 'Saint Charles', NULL),
	(295, 'Saint Louis', NULL),
	(296, 'Saint Peters', NULL),
	(297, 'Gladstone', NULL),
	(298, 'Kirkwood', NULL),
	(299, 'Jefferson City', NULL),
	(300, 'Las Vegas', NULL),
	(301, 'Reno', NULL),
	(302, 'North Las Vegas', NULL),
	(303, 'Henderson', NULL),
	(304, 'Sparks', NULL),
	(305, 'Murray', NULL),
	(306, 'Bowling Green', NULL),
	(307, 'Louisville', NULL),
	(308, 'Owensboro', NULL),
	(309, 'Georgetown', NULL),
	(310, 'Troy', NULL),
	(311, 'Hempstead', NULL),
	(312, 'Utica', NULL),
	(313, 'Yonkers', NULL),
	(314, 'Jamestown', NULL),
	(315, 'Rome', NULL),
	(316, 'Watertown', NULL),
	(317, 'Lindenhurst', NULL),
	(318, 'Mount Vernon', NULL),
	(319, 'Niagara Falls', NULL),
	(320, 'New York City', NULL),
	(321, 'New Rochelle', NULL),
	(322, 'Freeport', NULL),
	(323, 'Buffalo', NULL),
	(324, 'Rapid City', NULL),
	(325, 'Sioux Falls', NULL),
	(326, 'Aberdeen', NULL),
	(327, 'Wichita', NULL),
	(328, 'Overland Park', NULL),
	(329, 'Olathe', NULL),
	(330, 'Manhattan', NULL),
	(331, 'Garden City', NULL),
	(332, 'Fort Lauderdale', NULL),
	(333, 'Port Saint Lucie', NULL),
	(334, 'Saint Petersburg', NULL),
	(335, 'Homestead', NULL),
	(336, 'Coral Springs', NULL),
	(337, 'Pompano Beach', NULL),
	(338, 'Tamarac', NULL),
	(339, 'Miami', NULL),
	(340, 'Port Orange', NULL),
	(341, 'Hollywood', NULL),
	(342, 'Deltona', NULL),
	(343, 'Delray Beach', NULL),
	(344, 'Miramar', NULL),
	(345, 'Jupiter', NULL),
	(346, 'West Palm Beach', NULL),
	(347, 'Pembroke Pines', NULL),
	(348, 'Orlando', NULL),
	(349, 'Margate', NULL),
	(350, 'Boca Raton', NULL),
	(351, 'Lakeland', NULL),
	(352, 'Tampa', NULL),
	(353, 'Palm Coast', NULL),
	(354, 'Kissimmee', NULL),
	(355, 'Boynton Beach', NULL),
	(356, 'Hialeah', NULL),
	(357, 'Ormond Beach', NULL),
	(358, 'Apopka', NULL),
	(359, 'Pensacola', NULL),
	(360, 'Melbourne', NULL),
	(361, 'Tallahassee', NULL),
	(362, 'Sanford', NULL),
	(363, 'Plantation', NULL),
	(364, 'North Miami', NULL),
	(365, 'Coral Gables', NULL),
	(366, 'Daytona Beach', NULL),
	(367, 'Nashua', NULL),
	(368, 'League City', NULL),
	(369, 'Round Rock', NULL),
	(370, 'Edinburg', NULL),
	(371, 'San Antonio', NULL),
	(372, 'Mesquite', NULL),
	(373, 'Mcallen', NULL),
	(374, 'Laredo', NULL),
	(375, 'Grapevine', NULL),
	(376, 'Missouri City', NULL),
	(377, 'Garland', NULL),
	(378, 'Irving', NULL),
	(379, 'Houston', NULL),
	(380, 'Carrollton', NULL),
	(381, 'Mansfield', NULL),
	(382, 'Huntsville', NULL),
	(383, 'Pearland', NULL),
	(384, 'Austin', NULL),
	(385, 'Harlingen', NULL),
	(386, 'Brownsville', NULL),
	(387, 'Tyler', NULL),
	(388, 'Deer Park', NULL),
	(389, 'Coppell', NULL),
	(390, 'Amarillo', NULL),
	(391, 'Corpus Christi', NULL),
	(392, 'San Marcos', NULL),
	(393, 'San Angelo', NULL),
	(394, 'Bryan', NULL),
	(395, 'El Paso', NULL),
	(396, 'Frisco', NULL),
	(397, 'Allen', NULL),
	(398, 'The Colony', NULL),
	(399, 'Beaumont', NULL),
	(400, 'Richardson', NULL),
	(401, 'Waco', NULL),
	(402, 'Bedford', NULL),
	(403, 'Port Arthur', NULL),
	(404, 'Conroe', NULL),
	(405, 'Grand Prairie', NULL),
	(406, 'College Station', NULL),
	(407, 'Fort Worth', NULL),
	(408, 'Baytown', NULL),
	(409, 'Haltom City', NULL),
	(410, 'Odessa', NULL),
	(411, 'Pharr', NULL),
	(412, 'Texas City', NULL),
	(413, 'Cedar Hill', NULL),
	(414, 'Keller', NULL),
	(415, 'Plano', NULL),
	(416, 'Dallas', NULL),
	(417, 'Abilene', NULL),
	(418, 'Lubbock', NULL),
	(419, 'Highland Park', NULL),
	(420, 'Glenview', NULL),
	(421, 'Oswego', NULL),
	(422, 'Bolingbrook', NULL),
	(423, 'Chicago', NULL),
	(424, 'Evanston', NULL),
	(425, 'Arlington Heights', NULL),
	(426, 'Normal', NULL),
	(427, 'Aurora', NULL),
	(428, 'Romeoville', NULL),
	(429, 'Buffalo Grove', NULL),
	(430, 'Frankfort', NULL),
	(431, 'Palatine', NULL),
	(432, 'Park Ridge', NULL),
	(433, 'Naperville', NULL),
	(434, 'Orland Park', NULL),
	(435, 'Rockford', NULL),
	(436, 'Carol Stream', NULL),
	(437, 'Tinley Park', NULL),
	(438, 'Des Plaines', NULL),
	(439, 'Woodstock', NULL),
	(440, 'Decatur', NULL),
	(441, 'Skokie', NULL),
	(442, 'Champaign', NULL),
	(443, 'Elmhurst', NULL),
	(444, 'Marietta', NULL),
	(445, 'Sandy Springs', NULL),
	(446, 'Atlanta', NULL),
	(447, 'Warner Robins', NULL),
	(448, 'Roswell', NULL),
	(449, 'East Point', NULL),
	(450, 'Macon', NULL),
	(451, 'Athens', NULL),
	(452, 'Akron', NULL),
	(453, 'Grove City', NULL),
	(454, 'Parma', NULL),
	(455, 'Cincinnati', NULL),
	(456, 'Mentor', NULL),
	(457, 'Medina', NULL),
	(458, 'Cleveland', NULL),
	(459, 'Hamilton', NULL),
	(460, 'Cuyahoga Falls', NULL),
	(461, 'Lorain', NULL),
	(462, 'Mason', NULL),
	(463, 'Toledo', NULL),
	(464, 'Elyria', NULL),
	(465, 'Rockville', NULL),
	(466, 'Baltimore', NULL),
	(467, 'Gaithersburg', NULL),
	(468, 'Laurel', NULL),
	(469, 'Clinton', NULL),
	(470, 'Hagerstown', NULL),
	(471, 'Oklahoma City', NULL),
	(472, 'Broken Arrow', NULL),
	(473, 'Norman', NULL),
	(474, 'Edmond', NULL),
	(475, 'Tulsa', NULL),
	(476, 'Muskogee', NULL),
	(477, 'Lawton', NULL),
	(478, 'Gresham', NULL),
	(479, 'Hillsboro', NULL),
	(480, 'Portland', NULL),
	(481, 'Eugene', NULL),
	(482, 'Medford', NULL),
	(483, 'Tigard', NULL),
	(484, 'Layton', NULL),
	(485, 'Pleasant Grove', NULL),
	(486, 'Logan', NULL),
	(487, 'Draper', NULL),
	(488, 'Provo', NULL),
	(489, 'Salt Lake City', NULL),
	(490, 'West Jordan', NULL),
	(491, 'Lehi', NULL),
	(492, 'Orem', NULL),
	(493, 'Tuscaloosa', NULL),
	(494, 'Montgomery', NULL),
	(495, 'Hoover', NULL),
	(496, 'Mobile', NULL),
	(497, 'Pine Bluff', NULL),
	(498, 'Springdale', NULL),
	(499, 'Rogers', NULL),
	(500, 'Jonesboro', NULL),
	(501, 'Texarkana', NULL),
	(502, 'Conway', NULL),
	(503, 'Hot Springs', NULL),
	(504, 'Little Rock', NULL),
	(505, 'Longmont', NULL),
	(506, 'Englewood', NULL),
	(507, 'Fort Collins', NULL),
	(508, 'Parker', NULL),
	(509, 'Pueblo', NULL),
	(510, 'Littleton', NULL),
	(511, 'Commerce City', NULL),
	(512, 'Arvada', NULL),
	(513, 'Broomfield', NULL),
	(514, 'Thornton', NULL),
	(515, 'Greeley', NULL),
	(516, 'Loveland', NULL),
	(517, 'Denver', NULL),
	(518, 'Colorado Springs', NULL),
	(519, 'Fargo', NULL),
	(520, 'Madison', NULL),
	(521, 'West Allis', NULL),
	(522, 'Superior', NULL),
	(523, 'Green Bay', NULL),
	(524, 'Eau Claire', NULL),
	(525, 'La Crosse', NULL),
	(526, 'Wausau', NULL),
	(527, 'Sheboygan', NULL),
	(528, 'Waukesha', NULL),
	(529, 'Appleton', NULL),
	(530, 'Milwaukee', NULL),
	(531, 'Kenosha', NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;

-- Dumping structure for table myretail_users.contact_details
DROP TABLE IF EXISTS `contact_details`;
CREATE TABLE IF NOT EXISTS `contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_contact` varchar(30) DEFAULT '',
  `secondary_contact` varchar(30) DEFAULT '',
  `email` varchar(30) DEFAULT '',
  `customer` int(11) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0',
  `address_line_1` varchar(200) DEFAULT '0',
  `address_line_2` varchar(200) DEFAULT '0',
  `postal_code` varchar(30) DEFAULT '0',
  `public_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK__users` (`customer`),
  KEY `FK__countries` (`country`),
  KEY `FK__states` (`state`),
  KEY `FK__cities` (`city`),
  CONSTRAINT `contact_details_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  CONSTRAINT `contact_details_ibfk_2` FOREIGN KEY (`country`) REFERENCES `countries` (`id`),
  CONSTRAINT `contact_details_ibfk_3` FOREIGN KEY (`state`) REFERENCES `states` (`id`),
  CONSTRAINT `contact_details_ibfk_4` FOREIGN KEY (`customer`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.contact_details: ~0 rows (approximately)
DELETE FROM `contact_details`;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;

-- Dumping structure for table myretail_users.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `key_id` (`id`),
  KEY `key_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.countries: ~0 rows (approximately)
DELETE FROM `countries`;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `code`) VALUES
	(1, 'United States', NULL);
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

-- Dumping data for table myretail_users.country_state_city_map: ~0 rows (approximately)
DELETE FROM `country_state_city_map`;
/*!40000 ALTER TABLE `country_state_city_map` DISABLE KEYS */;
INSERT INTO `country_state_city_map` (`country`, `state`, `city`) VALUES
	(1, 1, 1),
	(1, 1, 2),
	(1, 1, 3),
	(1, 1, 4),
	(1, 2, 5),
	(1, 3, 6),
	(1, 3, 7),
	(1, 3, 8),
	(1, 3, 9),
	(1, 3, 10),
	(1, 3, 11),
	(1, 3, 12),
	(1, 3, 13),
	(1, 3, 14),
	(1, 3, 15),
	(1, 3, 16),
	(1, 3, 17),
	(1, 3, 18),
	(1, 4, 19),
	(1, 4, 20),
	(1, 4, 21),
	(1, 4, 22),
	(1, 4, 23),
	(1, 4, 24),
	(1, 4, 25),
	(1, 4, 26),
	(1, 4, 27),
	(1, 4, 28),
	(1, 4, 29),
	(1, 4, 30),
	(1, 4, 31),
	(1, 4, 32),
	(1, 4, 33),
	(1, 4, 34),
	(1, 4, 35),
	(1, 4, 36),
	(1, 4, 37),
	(1, 4, 38),
	(1, 4, 39),
	(1, 4, 40),
	(1, 4, 41),
	(1, 4, 42),
	(1, 4, 43),
	(1, 4, 44),
	(1, 4, 45),
	(1, 4, 46),
	(1, 4, 47),
	(1, 4, 48),
	(1, 4, 49),
	(1, 4, 50),
	(1, 4, 51),
	(1, 4, 52),
	(1, 4, 53),
	(1, 4, 54),
	(1, 4, 55),
	(1, 4, 56),
	(1, 4, 57),
	(1, 4, 58),
	(1, 4, 59),
	(1, 4, 60),
	(1, 4, 61),
	(1, 4, 62),
	(1, 4, 63),
	(1, 4, 64),
	(1, 4, 65),
	(1, 4, 66),
	(1, 4, 67),
	(1, 4, 68),
	(1, 4, 69),
	(1, 4, 70),
	(1, 4, 71),
	(1, 4, 72),
	(1, 4, 73),
	(1, 4, 74),
	(1, 4, 75),
	(1, 4, 76),
	(1, 4, 77),
	(1, 4, 78),
	(1, 4, 79),
	(1, 4, 80),
	(1, 4, 81),
	(1, 4, 82),
	(1, 4, 83),
	(1, 4, 84),
	(1, 4, 85),
	(1, 4, 86),
	(1, 4, 87),
	(1, 4, 88),
	(1, 4, 89),
	(1, 4, 90),
	(1, 4, 91),
	(1, 4, 92),
	(1, 4, 93),
	(1, 4, 94),
	(1, 4, 95),
	(1, 4, 96),
	(1, 4, 97),
	(1, 4, 98),
	(1, 4, 99),
	(1, 5, 100),
	(1, 5, 101),
	(1, 5, 102),
	(1, 5, 103),
	(1, 5, 104),
	(1, 6, 105),
	(1, 6, 106),
	(1, 6, 107),
	(1, 6, 108),
	(1, 6, 109),
	(1, 6, 84),
	(1, 6, 110),
	(1, 6, 111),
	(1, 6, 112),
	(1, 6, 113),
	(1, 6, 114),
	(1, 6, 115),
	(1, 6, 116),
	(1, 6, 117),
	(1, 6, 118),
	(1, 6, 119),
	(1, 6, 120),
	(1, 6, 121),
	(1, 6, 122),
	(1, 6, 123),
	(1, 6, 124),
	(1, 7, 125),
	(1, 7, 126),
	(1, 7, 84),
	(1, 7, 127),
	(1, 7, 128),
	(1, 7, 129),
	(1, 7, 130),
	(1, 7, 131),
	(1, 7, 132),
	(1, 7, 133),
	(1, 7, 134),
	(1, 7, 70),
	(1, 7, 135),
	(1, 8, 136),
	(1, 8, 137),
	(1, 8, 138),
	(1, 8, 139),
	(1, 8, 140),
	(1, 8, 25),
	(1, 8, 141),
	(1, 8, 142),
	(1, 9, 143),
	(1, 9, 144),
	(1, 9, 145),
	(1, 10, 146),
	(1, 10, 147),
	(1, 10, 148),
	(1, 10, 149),
	(1, 10, 150),
	(1, 10, 151),
	(1, 10, 152),
	(1, 10, 153),
	(1, 11, 154),
	(1, 11, 155),
	(1, 11, 23),
	(1, 11, 156),
	(1, 11, 157),
	(1, 11, 158),
	(1, 11, 159),
	(1, 11, 160),
	(1, 11, 161),
	(1, 11, 162),
	(1, 11, 163),
	(1, 11, 164),
	(1, 11, 165),
	(1, 11, 166),
	(1, 11, 167),
	(1, 11, 168),
	(1, 11, 169),
	(1, 11, 170),
	(1, 12, 171),
	(1, 12, 114),
	(1, 12, 172),
	(1, 12, 173),
	(1, 13, 174),
	(1, 13, 175),
	(1, 13, 176),
	(1, 13, 177),
	(1, 13, 178),
	(1, 13, 179),
	(1, 13, 180),
	(1, 14, 181),
	(1, 14, 182),
	(1, 14, 183),
	(1, 14, 184),
	(1, 14, 37),
	(1, 14, 185),
	(1, 14, 186),
	(1, 14, 187),
	(1, 14, 188),
	(1, 14, 189),
	(1, 15, 190),
	(1, 15, 191),
	(1, 15, 192),
	(1, 15, 193),
	(1, 15, 194),
	(1, 16, 195),
	(1, 16, 196),
	(1, 16, 197),
	(1, 16, 198),
	(1, 16, 199),
	(1, 16, 200),
	(1, 16, 201),
	(1, 16, 202),
	(1, 16, 203),
	(1, 16, 204),
	(1, 16, 205),
	(1, 16, 206),
	(1, 16, 207),
	(1, 17, 208),
	(1, 17, 209),
	(1, 17, 210),
	(1, 17, 211),
	(1, 17, 212),
	(1, 17, 213),
	(1, 18, 214),
	(1, 18, 215),
	(1, 18, 216),
	(1, 18, 217),
	(1, 18, 114),
	(1, 18, 218),
	(1, 18, 219),
	(1, 18, 220),
	(1, 18, 221),
	(1, 18, 222),
	(1, 18, 184),
	(1, 18, 223),
	(1, 18, 224),
	(1, 18, 225),
	(1, 18, 226),
	(1, 19, 148),
	(1, 20, 227),
	(1, 20, 209),
	(1, 21, 228),
	(1, 21, 229),
	(1, 21, 230),
	(1, 21, 231),
	(1, 21, 232),
	(1, 21, 233),
	(1, 21, 234),
	(1, 21, 193),
	(1, 21, 235),
	(1, 21, 148),
	(1, 21, 96),
	(1, 21, 236),
	(1, 21, 145),
	(1, 21, 237),
	(1, 21, 238),
	(1, 21, 239),
	(1, 21, 240),
	(1, 21, 241),
	(1, 21, 242),
	(1, 22, 243),
	(1, 23, 244),
	(1, 23, 245),
	(1, 23, 246),
	(1, 23, 247),
	(1, 23, 248),
	(1, 23, 249),
	(1, 23, 250),
	(1, 23, 251),
	(1, 23, 252),
	(1, 23, 191),
	(1, 23, 253),
	(1, 23, 203),
	(1, 23, 254),
	(1, 23, 255),
	(1, 23, 256),
	(1, 24, 219),
	(1, 24, 257),
	(1, 24, 111),
	(1, 24, 258),
	(1, 24, 259),
	(1, 24, 260),
	(1, 25, 261),
	(1, 25, 262),
	(1, 25, 263),
	(1, 25, 264),
	(1, 26, 146),
	(1, 26, 265),
	(1, 26, 266),
	(1, 26, 267),
	(1, 26, 268),
	(1, 26, 269),
	(1, 26, 270),
	(1, 26, 271),
	(1, 26, 272),
	(1, 26, 273),
	(1, 26, 274),
	(1, 26, 275),
	(1, 26, 276),
	(1, 26, 277),
	(1, 26, 278),
	(1, 26, 279),
	(1, 26, 280),
	(1, 27, 281),
	(1, 28, 282),
	(1, 28, 215),
	(1, 28, 283),
	(1, 28, 284),
	(1, 28, 285),
	(1, 28, 286),
	(1, 28, 248),
	(1, 28, 287),
	(1, 28, 271),
	(1, 28, 288),
	(1, 28, 289),
	(1, 28, 290),
	(1, 28, 291),
	(1, 28, 292),
	(1, 29, 293),
	(1, 29, 219),
	(1, 29, 294),
	(1, 29, 295),
	(1, 29, 296),
	(1, 29, 202),
	(1, 29, 297),
	(1, 29, 298),
	(1, 29, 299),
	(1, 30, 300),
	(1, 30, 301),
	(1, 30, 302),
	(1, 30, 303),
	(1, 30, 304),
	(1, 31, 257),
	(1, 31, 305),
	(1, 31, 306),
	(1, 31, 203),
	(1, 31, 307),
	(1, 31, 308),
	(1, 31, 303),
	(1, 31, 309),
	(1, 32, 310),
	(1, 32, 311),
	(1, 32, 312),
	(1, 32, 125),
	(1, 32, 21),
	(1, 32, 313),
	(1, 32, 270),
	(1, 32, 314),
	(1, 32, 315),
	(1, 32, 316),
	(1, 32, 317),
	(1, 32, 318),
	(1, 32, 319),
	(1, 32, 320),
	(1, 32, 34),
	(1, 32, 321),
	(1, 32, 322),
	(1, 32, 323),
	(1, 33, 324),
	(1, 33, 325),
	(1, 33, 326),
	(1, 34, 327),
	(1, 34, 328),
	(1, 34, 329),
	(1, 34, 330),
	(1, 34, 331),
	(1, 35, 332),
	(1, 35, 333),
	(1, 35, 334),
	(1, 35, 335),
	(1, 35, 336),
	(1, 35, 337),
	(1, 35, 338),
	(1, 35, 339),
	(1, 35, 340),
	(1, 35, 341),
	(1, 35, 342),
	(1, 35, 343),
	(1, 35, 344),
	(1, 35, 345),
	(1, 35, 346),
	(1, 35, 347),
	(1, 35, 348),
	(1, 35, 349),
	(1, 35, 350),
	(1, 35, 351),
	(1, 35, 352),
	(1, 35, 353),
	(1, 35, 354),
	(1, 35, 355),
	(1, 35, 356),
	(1, 35, 357),
	(1, 35, 358),
	(1, 35, 359),
	(1, 35, 360),
	(1, 35, 361),
	(1, 35, 362),
	(1, 35, 363),
	(1, 35, 240),
	(1, 35, 364),
	(1, 35, 365),
	(1, 35, 366),
	(1, 36, 143),
	(1, 36, 367),
	(1, 36, 96),
	(1, 37, 368),
	(1, 37, 369),
	(1, 37, 370),
	(1, 37, 371),
	(1, 37, 372),
	(1, 37, 373),
	(1, 37, 374),
	(1, 37, 375),
	(1, 37, 376),
	(1, 37, 377),
	(1, 37, 378),
	(1, 37, 379),
	(1, 37, 380),
	(1, 37, 381),
	(1, 37, 382),
	(1, 37, 383),
	(1, 37, 384),
	(1, 37, 385),
	(1, 37, 386),
	(1, 37, 387),
	(1, 37, 388),
	(1, 37, 389),
	(1, 37, 390),
	(1, 37, 391),
	(1, 37, 392),
	(1, 37, 393),
	(1, 37, 394),
	(1, 37, 395),
	(1, 37, 396),
	(1, 37, 397),
	(1, 37, 398),
	(1, 37, 399),
	(1, 37, 400),
	(1, 37, 401),
	(1, 37, 402),
	(1, 37, 403),
	(1, 37, 404),
	(1, 37, 405),
	(1, 37, 406),
	(1, 37, 407),
	(1, 37, 408),
	(1, 37, 93),
	(1, 37, 409),
	(1, 37, 410),
	(1, 37, 411),
	(1, 37, 412),
	(1, 37, 252),
	(1, 37, 413),
	(1, 37, 204),
	(1, 37, 414),
	(1, 37, 415),
	(1, 37, 416),
	(1, 37, 417),
	(1, 37, 418),
	(1, 38, 244),
	(1, 38, 419),
	(1, 38, 420),
	(1, 38, 421),
	(1, 38, 422),
	(1, 38, 423),
	(1, 38, 424),
	(1, 38, 113),
	(1, 38, 425),
	(1, 38, 426),
	(1, 38, 427),
	(1, 38, 281),
	(1, 38, 67),
	(1, 38, 428),
	(1, 38, 429),
	(1, 38, 322),
	(1, 38, 430),
	(1, 38, 431),
	(1, 38, 286),
	(1, 38, 432),
	(1, 38, 433),
	(1, 38, 434),
	(1, 38, 9),
	(1, 38, 435),
	(1, 38, 436),
	(1, 38, 437),
	(1, 38, 438),
	(1, 38, 439),
	(1, 38, 294),
	(1, 38, 440),
	(1, 38, 441),
	(1, 38, 442),
	(1, 38, 443),
	(1, 39, 444),
	(1, 39, 445),
	(1, 39, 446),
	(1, 39, 447),
	(1, 39, 253),
	(1, 39, 448),
	(1, 39, 449),
	(1, 39, 450),
	(1, 39, 451),
	(1, 39, 226),
	(1, 39, 439),
	(1, 40, 452),
	(1, 40, 310),
	(1, 40, 453),
	(1, 40, 454),
	(1, 40, 306),
	(1, 40, 455),
	(1, 40, 23),
	(1, 40, 456),
	(1, 40, 25),
	(1, 40, 457),
	(1, 40, 458),
	(1, 40, 459),
	(1, 40, 460),
	(1, 40, 253),
	(1, 40, 36),
	(1, 40, 202),
	(1, 40, 461),
	(1, 40, 462),
	(1, 40, 37),
	(1, 40, 150),
	(1, 40, 144),
	(1, 40, 463),
	(1, 40, 279),
	(1, 40, 464),
	(1, 41, 219),
	(1, 41, 465),
	(1, 41, 466),
	(1, 41, 467),
	(1, 41, 468),
	(1, 41, 469),
	(1, 41, 470),
	(1, 42, 471),
	(1, 42, 472),
	(1, 42, 473),
	(1, 42, 474),
	(1, 42, 475),
	(1, 42, 476),
	(1, 42, 477),
	(1, 43, 478),
	(1, 43, 479),
	(1, 43, 480),
	(1, 43, 267),
	(1, 43, 202),
	(1, 43, 206),
	(1, 43, 481),
	(1, 43, 482),
	(1, 43, 483),
	(1, 44, 484),
	(1, 44, 485),
	(1, 44, 486),
	(1, 44, 305),
	(1, 44, 487),
	(1, 44, 488),
	(1, 44, 489),
	(1, 44, 490),
	(1, 44, 491),
	(1, 44, 492),
	(1, 45, 257),
	(1, 45, 382),
	(1, 45, 440),
	(1, 45, 493),
	(1, 45, 494),
	(1, 45, 495),
	(1, 45, 270),
	(1, 45, 496),
	(1, 46, 497),
	(1, 46, 498),
	(1, 46, 499),
	(1, 46, 500),
	(1, 46, 230),
	(1, 46, 501),
	(1, 46, 502),
	(1, 46, 503),
	(1, 46, 504),
	(1, 47, 505),
	(1, 47, 506),
	(1, 47, 507),
	(1, 47, 508),
	(1, 47, 509),
	(1, 47, 307),
	(1, 47, 427),
	(1, 47, 510),
	(1, 47, 511),
	(1, 47, 512),
	(1, 47, 513),
	(1, 47, 514),
	(1, 47, 515),
	(1, 47, 516),
	(1, 47, 517),
	(1, 47, 518),
	(1, 48, 519),
	(1, 49, 520),
	(1, 49, 215),
	(1, 49, 521),
	(1, 49, 522),
	(1, 49, 523),
	(1, 49, 524),
	(1, 49, 525),
	(1, 49, 526),
	(1, 49, 527),
	(1, 49, 528),
	(1, 49, 529),
	(1, 49, 530),
	(1, 49, 531);
/*!40000 ALTER TABLE `country_state_city_map` ENABLE KEYS */;

-- Dumping structure for table myretail_users.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) DEFAULT NULL,
  `temporary_password` varchar(50) DEFAULT '0',
  `user` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `FK_login_users` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.login: ~0 rows (approximately)
DELETE FROM `login`;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table myretail_users.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.roles: ~0 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `code`, `name`) VALUES
	(1, 'ADMIN', 'Admin'),
	(2, 'CUSTOMER', 'Customer'),
	(3, 'EMPLOYEE', 'Employee'),
	(4, 'SUPPLIER', 'Supplier');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table myretail_users.states
DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.states: ~0 rows (approximately)
DELETE FROM `states`;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `name`, `code`) VALUES
	(1, 'Rhode Island', NULL),
	(2, 'District of Columbia', NULL),
	(3, 'Arizona', NULL),
	(4, 'California', NULL),
	(5, 'Montana', NULL),
	(6, 'Michigan', NULL),
	(7, 'Minnesota', NULL),
	(8, 'Pennsylvania', NULL),
	(9, 'Delaware', NULL),
	(10, 'Iowa', NULL),
	(11, 'New Jersey', NULL),
	(12, 'Mississippi', NULL),
	(13, 'New Mexico', NULL),
	(14, 'Connecticut', NULL),
	(15, 'Louisiana', NULL),
	(16, 'Virginia', NULL),
	(17, 'Idaho', NULL),
	(18, 'Tennessee', NULL),
	(19, 'Vermont', NULL),
	(20, 'Maine', NULL),
	(21, 'North Carolina', NULL),
	(22, 'Wyoming', NULL),
	(23, 'Indiana', NULL),
	(24, 'South Carolina', NULL),
	(25, 'Nebraska', NULL),
	(26, 'Washington', NULL),
	(27, 'West Virginia', NULL),
	(28, 'Massachusetts', NULL),
	(29, 'Missouri', NULL),
	(30, 'Nevada', NULL),
	(31, 'Kentucky', NULL),
	(32, 'New York', NULL),
	(33, 'South Dakota', NULL),
	(34, 'Kansas', NULL),
	(35, 'Florida', NULL),
	(36, 'New Hampshire', NULL),
	(37, 'Texas', NULL),
	(38, 'Illinois', NULL),
	(39, 'Georgia', NULL),
	(40, 'Ohio', NULL),
	(41, 'Maryland', NULL),
	(42, 'Oklahoma', NULL),
	(43, 'Oregon', NULL),
	(44, 'Utah', NULL),
	(45, 'Alabama', NULL),
	(46, 'Arkansas', NULL),
	(47, 'Colorado', NULL),
	(48, 'North Dakota', NULL),
	(49, 'Wisconsin', NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;

-- Dumping structure for table myretail_users.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `public_id` varchar(200) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `creation_time` datetime DEFAULT NULL,
  `updation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `id` (`id`),
  KEY `FK_users_roles` (`role`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table myretail_users.user_contact
DROP TABLE IF EXISTS `user_contact`;
CREATE TABLE IF NOT EXISTS `user_contact` (
  `user` int(11) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  KEY `FK__users_map` (`user`),
  KEY `FK__contact_details` (`contact`),
  CONSTRAINT `user_contact_ibfk_1` FOREIGN KEY (`contact`) REFERENCES `contact_details` (`id`),
  CONSTRAINT `user_contact_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table myretail_users.user_contact: ~0 rows (approximately)
DELETE FROM `user_contact`;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
