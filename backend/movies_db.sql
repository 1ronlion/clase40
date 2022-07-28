-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.20-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para movies_db
CREATE DATABASE IF NOT EXISTS `movies_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `movies_db`;

-- Volcando estructura para tabla movies_db.actors
CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `favorite_movie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actors_favorite_movie_id_foreign` (`favorite_movie_id`),
  CONSTRAINT `actors_favorite_movie_id_foreign` FOREIGN KEY (`favorite_movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.actors: ~38 rows (aproximadamente)
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`, `rating`, `favorite_movie_id`) VALUES
	(3, NULL, NULL, 'Sigourney', 'Weaver', 9.7, NULL),
	(4, NULL, NULL, 'Leonardo', 'Di Caprio', 3.5, 4),
	(5, NULL, NULL, 'Kate', 'Winslet', 1.5, 5),
	(7, NULL, NULL, 'Mark', 'Hamill', 6.5, 7),
	(8, NULL, NULL, 'Harrison', 'Ford', 7.5, 8),
	(9, NULL, NULL, 'Carrie', 'Fisher', 7.5, 9),
	(10, NULL, NULL, 'Sam', 'Neill', 2.5, 10),
	(11, NULL, NULL, 'Laura', 'Dern', 7.5, 11),
	(12, NULL, NULL, 'Jeff', 'Goldblum', 4.5, NULL),
	(13, NULL, NULL, 'Daniel', 'Radcliffe', 7.5, 13),
	(14, NULL, NULL, 'Emma', 'Watson', 2.5, 14),
	(16, NULL, NULL, 'Shia', 'LaBeouf', 9.5, 16),
	(18, NULL, NULL, 'Matthew', 'Broderick', 6.1, 18),
	(19, NULL, NULL, 'James', 'Earl Jones', 7.5, 19),
	(20, NULL, NULL, 'Jeremy', 'Irons', 7.2, 20),
	(21, NULL, NULL, 'Johnny', 'Depp', 1.5, 21),
	(25, NULL, NULL, 'Ellen', 'DeGeneres', 2.6, 4),
	(26, NULL, NULL, 'Alexander', 'Gould', 7.5, 5),
	(28, NULL, NULL, 'Tim', 'Allen', 7.5, 7),
	(29, NULL, NULL, 'Sean', 'Penn', 9.2, 8),
	(30, NULL, NULL, 'Adam', 'Sandler', 3.1, 9),
	(31, NULL, NULL, 'Renee', 'Zellweger', 9.5, 10),
	(32, NULL, NULL, 'Emilia', 'Clarke', 8.2, 11),
	(33, NULL, NULL, 'Peter', 'Dinklage', 2.3, 12),
	(34, NULL, NULL, 'Kit', 'Harington', 2.4, NULL),
	(35, NULL, NULL, 'Jared', 'Padalecki', 2.8, 14),
	(37, NULL, NULL, 'Jim', 'Beaver', 2.6, 16),
	(39, NULL, NULL, 'Jon', 'Bernthal', 2.9, NULL),
	(40, NULL, NULL, 'Sarah', 'Callies', 2.4, 19),
	(41, NULL, NULL, 'Jim', 'Caviezel', 1.9, 20),
	(42, NULL, NULL, 'Taraji', 'Henson', 5.9, 21),
	(46, NULL, NULL, 'Kaley', 'Cuoco', 2.3, 4),
	(47, NULL, NULL, 'Bryan', 'Cranston', 7.9, NULL),
	(49, NULL, NULL, 'Anna', 'Gunn', 3.1, 7);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.actor_episode
CREATE TABLE IF NOT EXISTS `actor_episode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  `episode_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor_episode_actor_id_foreign` (`actor_id`),
  KEY `actor_episode_episode_id_foreign` (`episode_id`),
  CONSTRAINT `actor_episode_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `actor_episode_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.actor_episode: ~111 rows (aproximadamente)
/*!40000 ALTER TABLE `actor_episode` DISABLE KEYS */;
INSERT INTO `actor_episode` (`id`, `created_at`, `updated_at`, `actor_id`, `episode_id`) VALUES
	(1, NULL, NULL, 32, 1),
	(2, NULL, NULL, 32, 2),
	(3, NULL, NULL, 32, 3),
	(4, NULL, NULL, 32, 4),
	(5, NULL, NULL, 32, 5),
	(6, NULL, NULL, 33, 1),
	(7, NULL, NULL, 33, 2),
	(8, NULL, NULL, 33, 3),
	(9, NULL, NULL, 33, 4),
	(10, NULL, NULL, 33, 5),
	(11, NULL, NULL, 33, 6),
	(12, NULL, NULL, 34, 1),
	(13, NULL, NULL, 34, 2),
	(14, NULL, NULL, 34, 4),
	(15, NULL, NULL, 34, 5),
	(16, NULL, NULL, 34, 6),
	(17, NULL, NULL, 35, 7),
	(18, NULL, NULL, 35, 8),
	(19, NULL, NULL, 35, 9),
	(20, NULL, NULL, 35, 10),
	(21, NULL, NULL, 35, 11),
	(22, NULL, NULL, 35, 12),
	(23, NULL, NULL, 35, 13),
	(24, NULL, NULL, 35, 15),
	(25, NULL, NULL, 35, 16),
	(26, NULL, NULL, 35, 17),
	(36, NULL, NULL, 37, 7),
	(37, NULL, NULL, 37, 8),
	(38, NULL, NULL, 37, 9),
	(39, NULL, NULL, 37, 10),
	(40, NULL, NULL, 37, 11),
	(41, NULL, NULL, 37, 12),
	(42, NULL, NULL, 37, 13),
	(43, NULL, NULL, 37, 14),
	(44, NULL, NULL, 37, 15),
	(45, NULL, NULL, 37, 17),
	(51, NULL, NULL, 39, 18),
	(52, NULL, NULL, 39, 19),
	(53, NULL, NULL, 39, 20),
	(54, NULL, NULL, 39, 21),
	(55, NULL, NULL, 39, 22),
	(56, NULL, NULL, 39, 23),
	(57, NULL, NULL, 40, 19),
	(58, NULL, NULL, 40, 20),
	(59, NULL, NULL, 40, 21),
	(60, NULL, NULL, 40, 22),
	(61, NULL, NULL, 40, 23),
	(62, NULL, NULL, 41, 24),
	(63, NULL, NULL, 41, 25),
	(64, NULL, NULL, 41, 26),
	(65, NULL, NULL, 41, 27),
	(66, NULL, NULL, 41, 28),
	(67, NULL, NULL, 42, 24),
	(68, NULL, NULL, 42, 25),
	(69, NULL, NULL, 42, 26),
	(70, NULL, NULL, 42, 27),
	(71, NULL, NULL, 42, 28),
	(93, NULL, NULL, 46, 29),
	(94, NULL, NULL, 46, 30),
	(95, NULL, NULL, 46, 33),
	(96, NULL, NULL, 46, 35),
	(97, NULL, NULL, 46, 36),
	(98, NULL, NULL, 46, 37),
	(99, NULL, NULL, 47, 38),
	(100, NULL, NULL, 47, 39),
	(101, NULL, NULL, 47, 40),
	(102, NULL, NULL, 47, 41),
	(103, NULL, NULL, 47, 42),
	(104, NULL, NULL, 47, 45),
	(105, NULL, NULL, 47, 46),
	(106, NULL, NULL, 47, 47),
	(107, NULL, NULL, 47, 48),
	(108, NULL, NULL, 47, 49),
	(109, NULL, NULL, 47, 50),
	(110, NULL, NULL, 47, 51),
	(111, NULL, NULL, 47, 52),
	(112, NULL, NULL, 47, 53),
	(113, NULL, NULL, 47, 54),
	(114, NULL, NULL, 47, 55),
	(115, NULL, NULL, 47, 56),
	(132, NULL, NULL, 49, 38),
	(133, NULL, NULL, 49, 39),
	(134, NULL, NULL, 49, 40),
	(135, NULL, NULL, 49, 41),
	(136, NULL, NULL, 49, 42),
	(137, NULL, NULL, 49, 43),
	(138, NULL, NULL, 49, 44),
	(139, NULL, NULL, 49, 46),
	(140, NULL, NULL, 49, 47),
	(141, NULL, NULL, 49, 48),
	(142, NULL, NULL, 49, 49),
	(143, NULL, NULL, 49, 50),
	(144, NULL, NULL, 49, 51),
	(145, NULL, NULL, 49, 52),
	(146, NULL, NULL, 49, 54),
	(147, NULL, NULL, 49, 55),
	(148, NULL, NULL, 49, 57);
/*!40000 ALTER TABLE `actor_episode` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.actor_movie
CREATE TABLE IF NOT EXISTS `actor_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor_movie_actor_id_foreign` (`actor_id`),
  KEY `actor_movie_movie_id_foreign` (`movie_id`),
  CONSTRAINT `actor_movie_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `actor_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.actor_movie: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
INSERT INTO `actor_movie` (`id`, `created_at`, `updated_at`, `actor_id`, `movie_id`) VALUES
	(8, NULL, NULL, 7, 4),
	(10, NULL, NULL, 8, 4),
	(12, NULL, NULL, 9, 4),
	(13, NULL, NULL, 10, 5),
	(14, NULL, NULL, 11, 5),
	(15, NULL, NULL, 12, 5),
	(17, NULL, NULL, 13, 8),
	(18, NULL, NULL, 13, 9),
	(20, NULL, NULL, 14, 8),
	(21, NULL, NULL, 14, 9),
	(25, NULL, NULL, 16, 7),
	(27, NULL, NULL, 18, 7),
	(28, NULL, NULL, 19, 10),
	(29, NULL, NULL, 20, 10),
	(30, NULL, NULL, 21, 11),
	(35, NULL, NULL, 25, 12),
	(36, NULL, NULL, 26, 12),
	(40, NULL, NULL, 28, 13),
	(41, NULL, NULL, 28, 14),
	(42, NULL, NULL, 29, 20),
	(43, NULL, NULL, 30, 21);
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.episodes
CREATE TABLE IF NOT EXISTS `episodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `release_date` datetime NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `season_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episodes_season_id_foreign` (`season_id`),
  CONSTRAINT `episodes_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.episodes: ~57 rows (aproximadamente)
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
INSERT INTO `episodes` (`id`, `created_at`, `updated_at`, `title`, `number`, `release_date`, `rating`, `season_id`) VALUES
	(1, NULL, NULL, 'Winter Is Coming', 1, '2011-01-01 00:00:00', 7.3, 1),
	(2, NULL, NULL, 'The North Remembers', 1, '2012-01-01 00:00:00', 8.3, 2),
	(3, NULL, NULL, 'Valar Dohaeris', 1, '2013-01-01 00:00:00', 6.3, 3),
	(4, NULL, NULL, 'Two Swords', 1, '2014-01-01 00:00:00', 7.5, 4),
	(5, NULL, NULL, 'The Wars to Come', 1, '2015-01-01 00:00:00', 9.3, 5),
	(6, NULL, NULL, 'The Red Woman', 1, '2016-01-01 00:00:00', 7.7, 6),
	(7, NULL, NULL, 'Pilot', 1, '2005-01-01 00:00:00', 7.3, 8),
	(8, NULL, NULL, 'In My Time of Dying', 1, '2006-01-01 00:00:00', 8.3, 9),
	(9, NULL, NULL, 'The Magnificent Seven', 1, '2007-01-01 00:00:00', 6.3, 10),
	(10, NULL, NULL, 'Lazarus Rising', 1, '2008-01-01 00:00:00', 7.5, 11),
	(11, NULL, NULL, 'Sympathy for the Devil', 1, '2009-01-01 00:00:00', 9.3, 12),
	(12, NULL, NULL, 'Exile on Main St.', 1, '2010-01-01 00:00:00', 7.7, 13),
	(13, NULL, NULL, 'Meet the New Boss', 1, '2011-01-01 00:00:00', 7.3, 14),
	(14, NULL, NULL, 'We Need to Talk About Kevin', 1, '2012-01-01 00:00:00', 8.3, 15),
	(15, NULL, NULL, 'I Think Im Gonna Like It Here', 1, '2013-01-01 00:00:00', 6.3, 16),
	(16, NULL, NULL, 'A Very Special Supernatural Special', 1, '2014-01-01 00:00:00', 7.5, 17),
	(17, NULL, NULL, 'Out of the Darkness, Into the Fire', 1, '2015-01-01 00:00:00', 9.3, 18),
	(18, NULL, NULL, 'Days Gone Bye', 1, '2010-01-01 00:00:00', 7.3, 20),
	(19, NULL, NULL, 'What Lies Ahead', 1, '2011-01-01 00:00:00', 8.3, 21),
	(20, NULL, NULL, 'Seed', 1, '2012-01-01 00:00:00', 6.3, 22),
	(21, NULL, NULL, '30 Days Without an Accident', 1, '2013-01-01 00:00:00', 7.5, 23),
	(22, NULL, NULL, 'No Sanctuary', 1, '2014-01-01 00:00:00', 9.3, 24),
	(23, NULL, NULL, 'First Time Again', 1, '2015-01-01 00:00:00', 7.7, 25),
	(24, NULL, NULL, 'Pilot', 1, '2011-01-01 00:00:00', 7.3, 27),
	(25, NULL, NULL, 'The Contingency', 1, '2012-01-01 00:00:00', 8.3, 28),
	(26, NULL, NULL, 'Liberty', 1, '2013-01-01 00:00:00', 6.3, 29),
	(27, NULL, NULL, 'Panopticon', 1, '2015-01-01 00:00:00', 7.5, 30),
	(28, NULL, NULL, 'B.S.O.D.', 1, '2016-01-01 00:00:00', 9.3, 31),
	(29, NULL, NULL, 'Pilot', 1, '2005-01-01 00:00:00', 7.3, 32),
	(30, NULL, NULL, 'The Bad Fish Paradigm', 1, '2006-01-01 00:00:00', 8.3, 33),
	(31, NULL, NULL, 'The Electric Can Opener Fluctuation', 1, '2007-01-01 00:00:00', 6.3, 34),
	(32, NULL, NULL, 'The Robotic Manipulation', 1, '2008-01-01 00:00:00', 7.5, 35),
	(33, NULL, NULL, 'The Skank Reflex Analysis', 1, '2009-01-01 00:00:00', 9.3, 36),
	(34, NULL, NULL, 'The Date Night Variable', 1, '2010-01-01 00:00:00', 7.7, 37),
	(35, NULL, NULL, 'The Hofstadter Insufficiency', 1, '2011-01-01 00:00:00', 7.3, 38),
	(36, NULL, NULL, 'The Locomotion Interruption', 1, '2012-01-01 00:00:00', 8.3, 39),
	(37, NULL, NULL, 'The Matrimonial Momentum', 1, '2013-01-01 00:00:00', 6.3, 40),
	(38, NULL, NULL, 'Pilot', 1, '2009-01-01 00:00:00', 7.3, 42),
	(39, NULL, NULL, 'Seven Thirty-Seven', 1, '2010-01-01 00:00:00', 8.3, 43),
	(40, NULL, NULL, 'No Más', 1, '2011-01-01 00:00:00', 6.3, 44),
	(41, NULL, NULL, 'Box Cutter', 1, '2012-01-01 00:00:00', 7.5, 45),
	(42, NULL, NULL, 'Live Free or Die', 1, '2013-01-01 00:00:00', 9.3, 46),
	(43, NULL, NULL, 'Madrigal', 2, '2013-02-01 00:00:00', 9.3, 46),
	(44, NULL, NULL, 'Hazard Pay', 3, '2013-03-01 00:00:00', 9.3, 46),
	(45, NULL, NULL, 'Fifty-One', 4, '2013-04-01 00:00:00', 9.3, 46),
	(46, NULL, NULL, 'Dead Freight', 5, '2013-05-01 00:00:00', 9.3, 46),
	(47, NULL, NULL, 'Buyout', 6, '2013-06-01 00:00:00', 9.3, 46),
	(48, NULL, NULL, 'Say My Name', 7, '2013-06-01 00:00:00', 9.3, 46),
	(49, NULL, NULL, 'Gliding Over All', 8, '2013-07-01 00:00:00', 9.3, 46),
	(50, NULL, NULL, 'Blood Money', 9, '2013-07-01 00:00:00', 9.3, 46),
	(51, NULL, NULL, 'Buried', 10, '2013-07-01 00:00:00', 9.3, 46),
	(52, NULL, NULL, 'Confessions', 11, '2013-08-01 00:00:00', 9.3, 46),
	(53, NULL, NULL, 'Rabid Dog', 12, '2013-09-01 00:00:00', 9.3, 46),
	(54, NULL, NULL, 'To hajiilee', 13, '2013-10-01 00:00:00', 9.3, 46),
	(55, NULL, NULL, 'Ozymandias', 14, '2013-11-01 00:00:00', 9.3, 46),
	(56, NULL, NULL, 'Granite State', 15, '2013-12-01 00:00:00', 9.3, 46),
	(57, NULL, NULL, 'Felina', 16, '2013-12-01 00:00:00', 9.3, 46);
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.genres
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ranking` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genres_ranking_unique` (`ranking`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.genres: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` (`id`, `created_at`, `updated_at`, `name`, `ranking`, `active`) VALUES
	(1, '2016-07-04 00:00:00', NULL, 'Comedia', 1, 1),
	(2, '2014-07-04 00:00:00', NULL, 'Terror', 2, 1),
	(3, '2013-07-04 00:00:00', NULL, 'Drama', 3, 1),
	(4, '2011-07-04 00:00:00', NULL, 'Accion', 4, 1),
	(5, '2010-07-04 00:00:00', NULL, 'Ciencia Ficcion', 5, 1),
	(6, '2013-07-04 00:00:00', NULL, 'Suspenso', 6, 1),
	(7, '2005-07-04 00:00:00', NULL, 'Animacion', 7, 1),
	(8, '2003-07-04 00:00:00', NULL, 'Aventuras', 8, 1),
	(9, '2008-07-04 00:00:00', NULL, 'Documental', 9, 1),
	(10, '2013-07-04 00:00:00', NULL, 'Infantiles', 10, 1),
	(11, '2011-07-04 00:00:00', NULL, 'Fantasia', 11, 1),
	(12, '2013-07-04 00:00:00', NULL, 'Musical', 12, 1);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `movie_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla movies_db.images: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `url`, `movie_id`) VALUES
	(1, 'http://www.impawards.com/2015/posters/star_wars_episode_vii__the_force_awakens_ver3_xlg.jpg', 4),
	(2, 'http://www.impawards.com/1993/posters/jurassic_park_ver2.jpg', 5),
	(3, 'http://www.impawards.com/2011/posters/transformers_dark_of_the_moon.jpg', 7),
	(4, 'http://www.impawards.com/2001/posters/harry_potter_and_the_sorcerers_stone_ver5.jpg', 8),
	(5, 'http://www.impawards.com/2002/posters/harry_potter_and_the_chamber_of_secrets_ver2.jpg', 9),
	(6, 'http://www.impawards.com/1994/posters/lion_king_ver3.jpg', 10),
	(7, 'http://www.impawards.com/1951/posters/alice_in_wonderland.jpg', 11),
	(8, 'http://www.impawards.com/2003/posters/finding_nemo.jpg', 12),
	(9, 'http://www.impawards.com/1995/posters/toy_story_ver1.jpg', 13),
	(10, 'http://www.impawards.com/1999/posters/toy_story_two_xlg.jpg', 14),
	(11, 'http://www.impawards.com/1990/posters/home_alone_ver1.jpg', 16),
	(12, 'http://www.impawards.com/1981/posters/chariots_of_fire.jpg', 18),
	(13, 'http://www.impawards.com/1988/posters/big_ver4.jpg', 19),
	(14, 'http://www.impawards.com/2001/posters/i_am_sam_ver3.jpg', 20),
	(15, 'http://www.impawards.com/2012/posters/hotel_transylvania_xlg.jpg', 21);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.migrations: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_10_17_130820_create_genres_table', 1),
	(4, '2016_10_17_130829_create_movies_table', 1),
	(5, '2016_10_17_130842_create_series_table', 1),
	(6, '2016_10_17_130849_create_seasons_table', 1),
	(7, '2016_10_17_130903_create_episodes_table', 1),
	(8, '2016_10_17_130913_create_actors_table', 1),
	(9, '2016_10_17_130925_create_actor_movie_table', 1),
	(10, '2016_10_17_130938_create_actor_episode_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.movies
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `rating` decimal(3,1) unsigned NOT NULL,
  `awards` int(10) unsigned NOT NULL DEFAULT 0,
  `release_date` date NOT NULL,
  `length` int(10) unsigned DEFAULT NULL,
  `genre_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movies_genre_id_foreign` (`genre_id`),
  CONSTRAINT `movies_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.movies: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` (`id`, `created_at`, `updated_at`, `title`, `rating`, `awards`, `release_date`, `length`, `genre_id`) VALUES
	(4, NULL, NULL, 'La Guerra de las galaxias: Episodio VII', 9.0, 6, '2003-11-04', 180, 5),
	(5, NULL, NULL, 'Parque Jurasico', 8.3, 5, '1999-01-04', 270, 5),
	(7, NULL, NULL, 'Transformers: el lado oscuro de la luna', 0.9, 1, '2005-07-04', NULL, 5),
	(8, NULL, NULL, 'Harry Potter y la piedra filosofal', 10.0, 1, '2008-04-04', 120, 8),
	(9, NULL, NULL, 'Harry Potter y la cámara de los secretos', 3.5, 2, '2009-08-04', 200, 8),
	(10, NULL, NULL, 'El rey león', 9.1, 3, '2000-02-04', NULL, 10),
	(11, NULL, NULL, 'Alicia en el país de las maravillas', 5.7, 2, '2008-07-04', 120, NULL),
	(12, NULL, NULL, 'Buscando a Nemo', 8.3, 2, '2000-07-04', 110, 7),
	(13, NULL, NULL, 'Toy Story', 6.1, 0, '2008-03-04', 150, 7),
	(14, NULL, NULL, 'Toy Story 2', 3.2, 2, '2003-04-04', 120, 7),
	(16, NULL, NULL, 'Mi pobre angelito', 3.2, 1, '1989-01-04', 120, 1),
	(18, NULL, NULL, 'Carrozas de fuego', 9.9, 7, '1980-07-04', 180, NULL),
	(19, NULL, NULL, 'Big', 7.3, 2, '1988-02-04', 130, 8),
	(20, NULL, NULL, 'I am Sam', 9.0, 4, '1999-03-04', 130, 3),
	(21, NULL, NULL, 'Hotel Transylvania', 7.1, 1, '2012-05-04', 90, 10);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.seasons
CREATE TABLE IF NOT EXISTS `seasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `release_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `serie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seasons_serie_id_foreign` (`serie_id`),
  CONSTRAINT `seasons_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.seasons: ~46 rows (aproximadamente)
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` (`id`, `created_at`, `updated_at`, `title`, `number`, `release_date`, `end_date`, `serie_id`) VALUES
	(1, NULL, NULL, 'Primer Temporada', 1, '2011-01-01 00:00:00', '2011-01-01 00:00:00', 1),
	(2, NULL, NULL, 'Segunda Temporada', 2, '2012-01-01 00:00:00', '2012-01-01 00:00:00', 1),
	(3, NULL, NULL, 'Tercer Temporada', 3, '2013-01-01 00:00:00', '2013-01-01 00:00:00', 1),
	(4, NULL, NULL, 'Cuarta Temporada', 4, '2014-01-01 00:00:00', '2014-01-01 00:00:00', 1),
	(5, NULL, NULL, 'Quinta Temporada', 5, '2015-01-01 00:00:00', '2015-01-01 00:00:00', 1),
	(6, NULL, NULL, 'Sexta Temporada', 6, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 1),
	(7, NULL, NULL, 'Septima Temporada', 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00', 1),
	(8, NULL, NULL, 'Primer Temporada', 1, '2005-01-01 00:00:00', '2006-01-01 00:00:00', 2),
	(9, NULL, NULL, 'Segunda Temporada', 2, '2006-01-01 00:00:00', '2007-01-01 00:00:00', 2),
	(10, NULL, NULL, 'Tercer Temporada', 3, '2007-01-01 00:00:00', '2008-01-01 00:00:00', 2),
	(11, NULL, NULL, 'Cuarta Temporada', 4, '2008-01-01 00:00:00', '2009-01-01 00:00:00', 2),
	(12, NULL, NULL, 'Quinta Temporada', 5, '2009-01-01 00:00:00', '2010-01-01 00:00:00', 2),
	(13, NULL, NULL, 'Sexta Temporada', 6, '2010-01-01 00:00:00', '2011-01-01 00:00:00', 2),
	(14, NULL, NULL, 'Septima Temporada', 7, '2011-01-01 00:00:00', '2012-01-01 00:00:00', 2),
	(15, NULL, NULL, 'Octava Temporada', 8, '2012-01-01 00:00:00', '2013-01-01 00:00:00', 2),
	(16, NULL, NULL, 'Novena Temporada', 9, '2013-01-01 00:00:00', '2014-01-01 00:00:00', 2),
	(17, NULL, NULL, 'Decima Temporada', 10, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 2),
	(18, NULL, NULL, 'Undecima Temporada', 11, '2015-01-01 00:00:00', '2016-01-01 00:00:00', 2),
	(19, NULL, NULL, 'Duodecima Temporada', 12, '2016-01-01 00:00:00', '2017-01-01 00:00:00', 2),
	(20, NULL, NULL, 'Primer Temporada', 1, '2010-01-01 00:00:00', '2010-01-01 00:00:00', 3),
	(21, NULL, NULL, 'Segunda Temporada', 2, '2011-01-01 00:00:00', '2012-01-01 00:00:00', 3),
	(22, NULL, NULL, 'Tercer Temporada', 3, '2012-01-01 00:00:00', '2013-01-01 00:00:00', 3),
	(23, NULL, NULL, 'Cuarta Temporada', 4, '2013-01-01 00:00:00', '2014-01-01 00:00:00', 3),
	(24, NULL, NULL, 'Quinta Temporada', 5, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 3),
	(25, NULL, NULL, 'Sexta Temporada', 6, '2015-01-01 00:00:00', '2016-01-01 00:00:00', 3),
	(26, NULL, NULL, 'Septima Temporada', 7, '2016-01-01 00:00:00', '2017-01-01 00:00:00', 3),
	(27, NULL, NULL, 'Primer Temporada', 1, '2011-01-01 00:00:00', '2012-01-01 00:00:00', 4),
	(28, NULL, NULL, 'Segunda Temporada', 2, '2012-01-01 00:00:00', '2013-01-01 00:00:00', 4),
	(29, NULL, NULL, 'Tercer Temporada', 3, '2013-01-01 00:00:00', '2014-01-01 00:00:00', 4),
	(30, NULL, NULL, 'Cuarta Temporada', 4, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 4),
	(31, NULL, NULL, 'Quinta Temporada', 5, '2015-01-01 00:00:00', '2016-01-01 00:00:00', 4),
	(32, NULL, NULL, 'Primer Temporada', 1, '2006-01-01 00:00:00', '2008-01-01 00:00:00', 5),
	(33, NULL, NULL, 'Segunda Temporada', 2, '2008-01-01 00:00:00', '2009-01-01 00:00:00', 5),
	(34, NULL, NULL, 'Tercer Temporada', 3, '2009-01-01 00:00:00', '2010-01-01 00:00:00', 5),
	(35, NULL, NULL, 'Cuarta Temporada', 4, '2010-01-01 00:00:00', '2011-01-01 00:00:00', 5),
	(36, NULL, NULL, 'Quinta Temporada', 5, '2011-01-01 00:00:00', '2012-01-01 00:00:00', 5),
	(37, NULL, NULL, 'Sexta Temporada', 6, '2012-01-01 00:00:00', '2013-01-01 00:00:00', 5),
	(38, NULL, NULL, 'Septima Temporada', 7, '2013-01-01 00:00:00', '2014-01-01 00:00:00', 5),
	(39, NULL, NULL, 'Octava Temporada', 8, '2014-01-01 00:00:00', '2015-01-01 00:00:00', 5),
	(40, NULL, NULL, 'Novena Temporada', 9, '2015-01-01 00:00:00', '2016-01-01 00:00:00', 5),
	(41, NULL, NULL, 'Decima Temporada', 10, '2016-01-01 00:00:00', '2017-01-01 00:00:00', 5),
	(42, NULL, NULL, 'Primer Temporada', 1, '2008-01-01 00:00:00', '2008-01-01 00:00:00', 6),
	(43, NULL, NULL, 'Segunda Temporada', 2, '2009-01-01 00:00:00', '2009-01-01 00:00:00', 6),
	(44, NULL, NULL, 'Tercer Temporada', 3, '2010-01-01 00:00:00', '2010-01-01 00:00:00', 6),
	(45, NULL, NULL, 'Cuarta Temporada', 4, '2011-01-01 00:00:00', '2011-01-01 00:00:00', 6),
	(46, NULL, NULL, 'Quinta Temporada', 5, '2012-01-01 00:00:00', '2012-01-01 00:00:00', 6);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.series
CREATE TABLE IF NOT EXISTS `series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `release_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `genre_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `series_genre_id_foreign` (`genre_id`),
  CONSTRAINT `series_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.series: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` (`id`, `created_at`, `updated_at`, `title`, `release_date`, `end_date`, `genre_id`) VALUES
	(1, NULL, NULL, 'Game of Thrones', '2011-01-01 00:00:00', '2016-03-04 00:00:00', 11),
	(2, NULL, NULL, 'Supernatural', '2005-01-01 00:00:00', '2016-01-04 00:00:00', 6),
	(3, NULL, NULL, 'The Walking Dead', '2010-01-01 00:00:00', '2016-01-04 00:00:00', 2),
	(4, NULL, NULL, 'Person of Interest', '2011-01-01 00:00:00', '2015-01-04 00:00:00', 4),
	(5, NULL, NULL, 'The Big Bang Theory', '2007-01-01 00:00:00', '2016-01-04 00:00:00', 1),
	(6, NULL, NULL, 'Breaking Bad', '2008-01-01 00:00:00', '2013-01-04 00:00:00', 3);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;

-- Volcando estructura para tabla movies_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla movies_db.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
