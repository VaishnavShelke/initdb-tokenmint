CREATE DATABASE IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`game_config` (
  `game_id` varchar(10) NOT NULL,
  `config_type` varchar(10) NOT NULL,
  `config_value` longtext NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  UNIQUE KEY `uk_game_config` (`game_id`, `config_type`)
);


INSERT INTO `tokenmint_global`.`game_config` (
  `game_id`,
  `config_type`,
  `config_value`,
  `updated_by`,
  `updated_on`
) VALUES
  ('1001', 'DATASOURCE', '{"schema":"game_info_instance_1001","minimumIdle":"1","password":"root","maximumPoolSize":"3","dbURL":"jdbc:mysql://tokenmint-mysql:3306/game_info_instance_1001?allowPublicKeyRetrieval=true&useSSL=false","username":"root"}', 'vaishnav', '2023-08-20 12:09:36'),
  ('1001', 'ENDPOINT', '{"submitVerifiedAddress":"http://game-server:8080/pubg/submitVerifiedAddress"}', 'vaishnav', '2023-09-15 12:59:00')
ON DUPLICATE KEY UPDATE
  `config_value` = VALUES(`config_value`),
  `updated_by` = VALUES(`updated_by`),
  `updated_on` = VALUES(`updated_on`);
