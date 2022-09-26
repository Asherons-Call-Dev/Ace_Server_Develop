CREATE DATABASE `ace_custom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ace_custom`;

DROP TABLE IF EXISTS `custom_name_map`;

CREATE TABLE `custom_name_map` (
  `player_id` int unsigned NOT NULL,
  `player_real_name` varchar(255) NOT NULL,
  `player_modified_name` varchar(255) DEFAULT NULL,
  `last_login_timestamp` double NOT NULL,
  `login_count` int unsigned DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `custom_friend_list`;

CREATE TABLE `custom_friend_list` (
  `character_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `friend_real_name` varchar(255) DEFAULT NULL,
  `friend_modified_name` varchar(255) DEFAULT NULL,
  `is_real_name` tinyint DEFAULT NULL,
  PRIMARY KEY (`character_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
