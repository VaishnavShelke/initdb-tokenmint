CREATE DATABASE IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`chain_provider_info` (
  `provider_id` varchar(20) NOT NULL,
  `chain_id` varchar(20) NOT NULL,
  `chain_name` varchar(20) NOT NULL,
  `websocket_url` longtext,
  `http_url` longtext,
  `api_key` longtext,
  PRIMARY KEY (`provider_id`)
);


INSERT INTO `tokenmint_global`.`chain_provider_info` (
  provider_id,     
  chain_id,
  chain_name,
  websocket_url,
  http_url,
  api_key
) VALUES (
  '11155111_001',
  '11155111',
  'Sepolia',
  'wss://eth-sepolia.g.alchemy.com/v2/',
  'https://eth-sepolia.g.alchemy.com/v2/',
  'H6h0lVVkm5UOG8FxuVGpWxjaIolDH_F1'
)
ON DUPLICATE KEY UPDATE
  chain_id = VALUES(chain_id),
  chain_name = VALUES(chain_name),
  websocket_url = VALUES(websocket_url),
  http_url = VALUES(http_url),
  api_key = VALUES(api_key);
