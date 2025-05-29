CREATE DATABASE IF NOT EXISTS `user_management_global`;



CREATE TABLE IF NOT EXISTS  `user_management_global`.`mock_redis` (
  `redis_key` varchar(50) NOT NULL,
  `redis_value` longtext,
  `latest_update` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`redis_key`)
) ;


CREATE TABLE IF NOT EXISTS  `user_management_global`.`player_credentials` (
  `player_name` varchar(50) NOT NULL,
  `player_password` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  PRIMARY KEY (`player_name`,`player_password`)
) ;

CREATE TABLE IF NOT EXISTS  `user_management_global`.`player_info` (
  `player_id` varchar(50) NOT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  `player_info` longtext,
  PRIMARY KEY (`player_id`)
) ;