CREATE DATABASE /*!32312 IF NOT EXISTS*/   `ace_custom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ace_custom`;

DROP TABLE IF EXISTS `custom_player`;

CREATE TABLE `custom_player` (
  `player_id` int unsigned NOT NULL,
  `player_real_name` varchar(255) NOT NULL,
  `player_modified_name` varchar(255) DEFAULT NULL,
  `last_login_timestamp` double NOT NULL,
  `login_count` int unsigned DEFAULT NULL,
  `use_name_allegiance` tinyint DEFAULT '0',
  `use_name_fellowship` tinyint DEFAULT '0',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `custom_friend`;

CREATE TABLE `custom_friend` (
  `character_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `friend_real_name` varchar(255) DEFAULT NULL,
  `friend_modified_name` varchar(255) DEFAULT NULL,
  `is_real_name` tinyint DEFAULT NULL,
  PRIMARY KEY (`character_id`,`friend_id`),
  CONSTRAINT `player_id` FOREIGN KEY (`character_id`) REFERENCES `custom_player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `custom_squelch`;

CREATE TABLE `custom_squelch` (
  `character_id` int unsigned NOT NULL,
  `squelch_character_id` int unsigned NOT NULL,
  `squelch_account_id` int unsigned NOT NULL,
  `squelch_real_name` varchar(255) DEFAULT NULL,
  `squelch_modified_name` varchar(255) DEFAULT NULL,
  `type` int unsigned NOT NULL,
  PRIMARY KEY (`character_id`,`squelch_character_id`),
  CONSTRAINT `squelch_id` FOREIGN KEY (`character_id`) REFERENCES `custom_player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

