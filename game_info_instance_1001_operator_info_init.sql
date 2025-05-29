CREATE DATABASE  IF NOT EXISTS `game_info_instance_1001`;


CREATE TABLE IF NOT EXISTS `game_info_instance_1001`.`operator_info`  (
  `operator_id` varchar(25) NOT NULL,
  `operator_name` varchar(100) DEFAULT NULL,
  `operator_address` varchar(100) NOT NULL,
  `eth_contract_id` varchar(25) NOT NULL,
  PRIMARY KEY (`operator_id`)
);


INSERT INTO `game_info_instance_1001`.`operator_info` (
  `operator_id`,
  `operator_name`,
  `operator_address`,
  `eth_contract_id`
) VALUES (
  '1001_50001_001',
  'Operator One Pubg 01',
  '0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3',
  '1001_50001'
)
ON DUPLICATE KEY UPDATE
  `operator_name` = VALUES(`operator_name`),
  `operator_address` = VALUES(`operator_address`),
  `eth_contract_id` = VALUES(`eth_contract_id`);
