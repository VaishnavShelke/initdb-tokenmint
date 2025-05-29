CREATE DATABASE IF NOT EXISTS `tokenmint_global`;


CREATE TABLE IF NOT EXISTS `tokenmint_global`.`config_resource` (
  `GROUP_NAME` varchar(25) NOT NULL,
  `CONFIG_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(25) NOT NULL,
  `VALUE` longtext NOT NULL,
  `TYPE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`GROUP_NAME`,`CONFIG_NAME`,`PRODUCT_CODE`)
) ;


INSERT INTO `tokenmint_global`.`config_resource` (
  GROUP_NAME,
  CONFIG_NAME,
  PRODUCT_CODE,
  VALUE,
  TYPE
) VALUES (
  'TokenMint',
  'REDIS_CONFIG',
  '1001',
  '{\"clusterNodes\":[\"localhost:6379\"],\"hostname\" : \"localhost\",\"port\":\"6379\",\"maxRedirects\":\"3\",\"password\":\"mysecretpassword\"}',
  'CONFIG'
)
ON DUPLICATE KEY UPDATE
  VALUE = VALUES(VALUE),
  TYPE = VALUES(TYPE);
