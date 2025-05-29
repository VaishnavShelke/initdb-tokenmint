CREATE DATABASE IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`game_info` (
  `game_id` varchar(10) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `game_parent_company` varchar(100) DEFAULT NULL,
  `game_logo` longtext,
  PRIMARY KEY (`game_id`)
) ;


INSERT INTO `tokenmint_global`.`game_info` (
    `game_id`, `game_name`, `game_parent_company`, `game_logo`
)
VALUES (
    '1001', 'PUBG: BATTLEGROUNDS', 'Krafton.Inc', 'https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001.png'
)
ON DUPLICATE KEY UPDATE
    `game_name` = VALUES(`game_name`),
    `game_parent_company` = VALUES(`game_parent_company`),
    `game_logo` = VALUES(`game_logo`);