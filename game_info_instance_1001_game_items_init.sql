CREATE DATABASE  IF NOT EXISTS `game_info_instance_1001`;


CREATE TABLE IF NOT EXISTS `game_info_instance_1001`.`game_items` (
  `item_id` varchar(20) NOT NULL,
  `item_category` varchar(20) NOT NULL,
  `item_title` varchar(50) NOT NULL,
  `item_description` longtext,
  `item_img_url` longtext,
  PRIMARY KEY (`item_id`)
);

INSERT INTO `game_info_instance_1001`.`game_items` (
  `item_id`,
  `item_category`,
  `item_title`,
  `item_description`,
  `item_img_url`
) VALUES
('1001_10001','OUTFIT','PGC 2019 Sneakers','"PGC 2019 Sneakers" are one of the limited-time cosmetic items that were introduced during the PUBG Global Championship event in 2019. This item is designed to commemorate the event and allow players to show their support or participation in the esports tournament.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10001.png'),
('1001_10002','WEAPON','Silver Plate - Tommy Gun','The "Silver Plate - Tommy Gun" is a cosmetic skin for the Tommy Gun weapon in the game PlayerUnknown\'s Battlegrounds (PUBG). The Tommy Gun is a submachine gun that\'s available in the game, and players can find and use it as a weapon during matches.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10002.png'),
('1001_10003','OUTFIT','BLUE SCHOOL UNIFORM SET (FEMALE)','The "Blue School Uniform Set (Female)" is a set of clothing items designed to give female characters in the game the appearance of wearing a school uniform with a blue color scheme. The cosmetic items don\'t have any impact on gameplay mechanics but allow players to personalize their characters and express their individual style.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10003.png'),
('1001_10004','WEAPON','The Olive Branch - Pan','"The Olive Branch - Pan" is a cosmetic skin for the melee weapon "Pan" in the game PlayerUnknown\'s Battlegrounds (PUBG). The pan is a melee weapon that players can find and use in the game to defend themselves against opponents.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10004.png'),
('1001_10005','COMMUTE','PCS3 Tagged Out Parachute','PCS3 Tagged Out Parachute','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10005.png'),
('1001_10006','WEAPON','PCS3 Blue Bullion - SLR','"PCS3 Blue Bullion - SLR" is a cosmetic skin for the SLR weapon in the game PlayerUnknown\'s Battlegrounds (PUBG). The SLR is a designated marksman rifle that players can use to engage enemies at medium to long distances.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10006.png'),
('1001_10007','GEAR','PCS2 GEAR SET','The PCS2 Gear Set would include a collection of cosmetic items such as clothing, accessories, and possibly weapon skins, all designed with a specific theme related to the PCS2 event. These items are cosmetic in nature and do not affect the gameplay mechanics of the game.','https://raw.githubusercontent.com/VaishnavShelke/WibmoPersonalContent/refs/heads/main/Images/1001_10007.png')
ON DUPLICATE KEY UPDATE
  `item_category` = VALUES(`item_category`),
  `item_title` = VALUES(`item_title`),
  `item_description` = VALUES(`item_description`),
  `item_img_url` = VALUES(`item_img_url`);
