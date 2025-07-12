CREATE DATABASE  IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`game_items_on_chain_info` (
  `item_id` varchar(20) NOT NULL,
  `item_contract_id` varchar(20) NOT NULL,
  `token_issuer_address` varchar(100) NOT NULL,
  `item_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
);


INSERT INTO `tokenmint_global`.`game_items_on_chain_info` (
  `item_id`,
  `item_contract_id`,
  `token_issuer_address`,
  `item_creation_date`
) VALUES 
('1001_10001','1','0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3','2023-10-03 12:09:36'),
('1001_10002','2','0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3','2023-10-03 12:09:36'),
('1001_10003','3','0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3','2023-10-03 12:09:36'),
('1001_10004','4','0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3','2023-10-03 12:09:36'),
('1001_10005','5','0x17a8dD0d3199ae2c59dC96578a6B5bEFAF963db3','2023-10-03 12:09:36')
ON DUPLICATE KEY UPDATE
  `item_contract_id` = VALUES(`item_contract_id`),
  `token_issuer_address` = VALUES(`token_issuer_address`),
  `item_creation_date` = VALUES(`item_creation_date`);

