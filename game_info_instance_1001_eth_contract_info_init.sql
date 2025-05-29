CREATE DATABASE  IF NOT EXISTS `game_info_instance_1001`;


CREATE TABLE IF NOT EXISTS `game_info_instance_1001`.`eth_contract_info` (
  `eth_contract_id` varchar(25) NOT NULL,
  `chain` varchar(50) NOT NULL,
  `chain_id` varchar(10) DEFAULT NULL,
  `contract_name` varchar(100) DEFAULT NULL,
  `operator_id` varchar(25) DEFAULT NULL,
  `provider_id` varchar(20) NOT NULL,
  `contract_address` varchar(100) NOT NULL,
  `etherscan_contract_url` varchar(200) NOT NULL,
  `contract_abi` longtext,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  UNIQUE KEY `eth_contract_id` (`eth_contract_id`)
);


INSERT INTO `game_info_instance_1001`.`eth_contract_info` (
  `eth_contract_id`,
  `chain`,
  `chain_id`,
  `contract_name`,
  `operator_id`,
  `provider_id`,
  `contract_address`,
  `etherscan_contract_url`,
  `contract_abi`,
  `updated_by`,
  `updated_on`
) VALUES (
  '1001_50001',
  'Sepolia',
  '11155111',
  'Pubg Inventory Zero One',
  '1001_50001_001',
  '11155111_001',
  '0xaA942F73B4D05aE58fd51Ae74B971D461D7Cb6D4',
  'https://sepolia.etherscan.io/address/0xaA942F73B4D05aE58fd51Ae74B971D461D7Cb6D4',
  'https://token-mint-trade.s3.ap-south-1.amazonaws.com/eth-contract-abi/1001/1001_ABI_GOERLI.json',
  'vaishnav',
  '2023-08-20 12:09:36'
) ON DUPLICATE KEY UPDATE
  `chain` = VALUES(`chain`),
  `chain_id` = VALUES(`chain_id`),
  `contract_name` = VALUES(`contract_name`),
  `operator_id` = VALUES(`operator_id`),
  `provider_id` = VALUES(`provider_id`),
  `contract_address` = VALUES(`contract_address`),
  `etherscan_contract_url` = VALUES(`etherscan_contract_url`),
  `contract_abi` = VALUES(`contract_abi`),
  `updated_by` = VALUES(`updated_by`),
  `updated_on` = VALUES(`updated_on`);
