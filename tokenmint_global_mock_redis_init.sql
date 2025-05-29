CREATE DATABASE IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`mock_redis`  (
  `redis_key` varchar(50) NOT NULL,
  `redis_value` longtext,
  `latest_update` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`redis_key`)
) ;