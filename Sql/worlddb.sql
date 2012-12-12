/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2012-12-10 06:13:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `creature_data`
-- ----------------------------
DROP TABLE IF EXISTS `creature_data`;
CREATE TABLE `creature_data` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subName` varchar(100) DEFAULT NULL,
  `iconName` varchar(100) DEFAULT NULL,
  `health` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `displayId` int(10) unsigned NOT NULL,
  `class` int(11) NOT NULL,
  `faction` int(11) unsigned NOT NULL,
  `scale` float NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `flags2` int(11) NOT NULL,
  `npcFlags` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of creature_data
-- ----------------------------

-- ----------------------------
-- Table structure for `creature_spawns`
-- ----------------------------
DROP TABLE IF EXISTS `creature_spawns`;
CREATE TABLE `creature_spawns` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `o` float NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `creatureId` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of creature_spawns
-- ----------------------------

-- ----------------------------
-- Table structure for `teleport_locations`
-- ----------------------------
DROP TABLE IF EXISTS `teleport_locations`;
CREATE TABLE `teleport_locations` (
  `location` varchar(255) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `o` float NOT NULL,
  `map` int(10) unsigned NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teleport_locations
-- ----------------------------
INSERT INTO `teleport_locations` (`location`, `x`, `y`, `z`, `o`, `map`) VALUES
  ('Bloodelf', 10349.6, -6357.29, 33.4026, 5.31605, 530),
	('Draenei', -3961.64, -13931.2, 100.615, 2.08364, 530),
	('Dwarf', -6230, 330, 384.566, 0.00785446, 0),
	('Gnome', -4983.42, 877.7, 274.31, 3.06393, 0),
	('Goblin', -8423.81, 1361.3, 104.671, 4.76185, 648),
	('Goldshire', -9462.14, 62.2535, 55.8374, 3.00729, 0),
	('Human', -8913.01, -134.388, 80.5029, 2.11508, 0),
	('Nightelf', 10311.3, 831.463, 1326.57, 5.48033, 1),
	('orc', -618.518, -4251.67, 38.718, 4.72222, 1),
	('Orgrimmar', 1545.78, -4406.25, 18.2386, 0.232887, 1),
	('OrgrimmarGate', 1388.11, -4370.46, 25.4821, 3.26845, 1),
	('Pandaren', 1471.67, 3466.25, 181.675, 2.77359, 860),
	('Stormwind', -8839.45, 615.575, 92.9731, 3.83589, 0),
	('StormwindGate', -9061.24, 436.867, 93.0571, 3.80055, 0),
	('Tauren', -2915.55, -257.347, 59.2693, 0.302378, 1),
	('Troll', -1171.45, -5263.65, 0.847728, 5.78945, 1),
	('Undead', 1699.85, 1706.56, 135.928, 4.88839, 0),
	('Worgen', -1449.17, 1404.12, 35.5561, 0.0683824, 654);
