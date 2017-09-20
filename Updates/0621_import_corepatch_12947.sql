ALTER TABLE db_version CHANGE COLUMN required_12946_01_mangos_spell_template required_12947_01_mangos_game_event bit;

-- ----------------------------
-- Table structure for game_event
-- ----------------------------
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `linkedTo` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'This event starts only if defined LinkedTo event is started',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event
-- ----------------------------
INSERT INTO `game_event` VALUES ('1', '2007-06-20 21:00:00', '2020-12-30 22:00:00', '525600', '20160', '341', '0', 'Midsummer Fire Festival');
INSERT INTO `game_event` VALUES ('2', '2010-12-15 06:00:00', '2020-12-30 22:00:00', '525600', '25920', '141', '0', 'Winter Veil');
INSERT INTO `game_event` VALUES ('3', '2010-10-30 23:01:00', '2020-12-30 22:00:00', '131040', '8639', '376', '0', 'Darkmoon Faire (Terokkar Forest)');
INSERT INTO `game_event` VALUES ('4', '2010-12-04 23:01:00', '2020-12-30 22:00:00', '131040', '8639', '374', '0', 'Darkmoon Faire (Elwynn Forest)');
INSERT INTO `game_event` VALUES ('5', '2011-01-08 23:01:00', '2020-12-30 22:00:00', '131040', '8639', '375', '0', 'Darkmoon Faire (Mulgore)');
INSERT INTO `game_event` VALUES ('6', '2010-12-31 11:00:00', '2020-12-30 22:00:00', '525600', '1080', '0', '0', 'New Year\'s Eve');
INSERT INTO `game_event` VALUES ('7', '2011-01-22 23:01:00', '2020-12-29 22:00:00', '525600', '30240', '327', '0', 'Lunar Festival');
INSERT INTO `game_event` VALUES ('8', '2011-02-05 23:01:00', '2020-12-30 22:00:00', '525600', '20160', '335', '0', 'Love is in the Air');
INSERT INTO `game_event` VALUES ('10', '2011-05-01 00:00:00', '2020-12-30 22:00:00', '525600', '10080', '201', '0', 'Children\'s Week ');
INSERT INTO `game_event` VALUES ('11', '2011-09-06 00:00:00', '2020-12-30 22:00:00', '525600', '10080', '321', '0', 'Harvest Festival');
INSERT INTO `game_event` VALUES ('12', '2007-10-17 21:00:00', '2020-12-30 22:00:00', '525600', '20160', '324', '0', 'Hallow\'s End');
INSERT INTO `game_event` VALUES ('22', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '525600', '1', '0', '0', 'AQ War Effort');
INSERT INTO `game_event` VALUES ('17', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '525600', '1', '0', '0', 'Scourge Invasion');
INSERT INTO `game_event` VALUES ('13', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '525600', '1', '0', '0', 'Elemental Invasions');
INSERT INTO `game_event` VALUES ('14', '2009-01-04 09:00:00', '2020-12-30 22:00:00', '10080', '240', '0', '0', 'Fishing Extravaganza Announce');
INSERT INTO `game_event` VALUES ('16', '2007-08-04 21:00:00', '2020-12-30 22:00:00', '180', '120', '0', '0', 'Gurubashi Arena Booty Run');
INSERT INTO `game_event` VALUES ('15', '2009-01-04 13:00:00', '2020-12-30 22:00:00', '10080', '120', '301', '0', 'Fishing Extravaganza');
INSERT INTO `game_event` VALUES ('18', '2009-12-31 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '283', '0', 'Call to Arms: Alterac Valley!');
INSERT INTO `game_event` VALUES ('19', '2010-01-07 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '284', '0', 'Call to Arms: Warsong Gulch!');
INSERT INTO `game_event` VALUES ('20', '2010-01-28 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '285', '0', 'Call to Arms: Arathi Basin!');
INSERT INTO `game_event` VALUES ('21', '2010-02-04 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '353', '0', 'Call to Arms: Eye of the Storm!');
INSERT INTO `game_event` VALUES ('23', '2010-12-02 23:01:00', '2020-12-30 22:00:00', '131040', '2880', '0', '0', 'Darkmoon Faire Building 2 (Elwynn Forest)');
INSERT INTO `game_event` VALUES ('24', '2010-01-02 13:00:00', '2020-12-30 22:00:00', '10080', '60', '424', '0', 'Kalu\'ak Fishing Derby');
INSERT INTO `game_event` VALUES ('25', '2010-01-14 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '400', '0', 'Call to Arms: Strand of the Ancients!');
INSERT INTO `game_event` VALUES ('26', '2007-10-02 21:00:00', '2020-12-30 22:00:00', '525600', '20160', '372', '0', 'Brewfest');
INSERT INTO `game_event` VALUES ('27', '2010-01-01 20:00:00', '2020-12-30 22:00:00', '1440', '510', '0', '0', 'Nights');
INSERT INTO `game_event` VALUES ('29', '2010-12-27 20:00:00', '2020-12-30 22:00:00', '80640', '20160', '0', '0', 'Edge of Madness, Gri\'lek');
INSERT INTO `game_event` VALUES ('30', '2011-01-10 20:00:00', '2020-12-30 22:00:00', '80640', '20160', '0', '0', 'Edge of Madness, Hazza\'rah');
INSERT INTO `game_event` VALUES ('31', '2011-01-24 20:00:00', '2020-12-30 22:00:00', '80640', '20160', '0', '0', 'Edge of Madness, Renataki');
INSERT INTO `game_event` VALUES ('32', '2010-12-13 20:00:00', '2020-12-30 22:00:00', '80640', '20160', '0', '0', 'Edge of Madness, Wushoolay');
INSERT INTO `game_event` VALUES ('28', '2011-04-23 23:01:00', '2020-12-30 22:00:00', '525600', '10078', '181', '0', 'Noblegarden');
INSERT INTO `game_event` VALUES ('33', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '5184000', '2592000', '0', '0', 'Arena Tournament');
INSERT INTO `game_event` VALUES ('34', '2008-05-15 13:00:00', '2008-05-22 13:00:00', '10080', '5', '0', '0', 'L70ETC Concert');
INSERT INTO `game_event` VALUES ('35', '2010-10-31 23:00:00', '2020-12-30 22:00:00', '525600', '2880', '409', '0', 'Day of the Dead');
INSERT INTO `game_event` VALUES ('36', '2009-01-04 13:00:00', '2020-12-30 22:00:00', '10080', '180', '0', '0', 'Fishing Extravaganza Turn-in');
INSERT INTO `game_event` VALUES ('37', '2010-11-21 00:00:00', '2020-12-30 22:00:00', '525600', '9300', '404', '0', 'Pilgrim\'s Bounty');
INSERT INTO `game_event` VALUES ('38', '2010-01-21 23:01:00', '2020-12-30 22:00:00', '60480', '5758', '420', '0', 'Call to Arms: Isle of Conquest!');
INSERT INTO `game_event` VALUES ('39', '2010-01-02 12:00:00', '2020-12-30 22:00:00', '10080', '60', '0', '0', 'Kalu\'ak Fishing Derby (Pre)');
INSERT INTO `game_event` VALUES ('40', '2010-01-02 14:00:00', '2020-12-30 22:00:00', '10080', '60', '0', '0', 'Kalu\'ak Fishing Derby (Post)');
INSERT INTO `game_event` VALUES ('41', '2010-12-05 23:10:00', '2020-12-30 22:00:00', '30', '10', '0', '0', 'Leader of Jin\'Alai, Kutube\'sa');
INSERT INTO `game_event` VALUES ('42', '2010-12-05 23:20:00', '2020-12-30 22:00:00', '30', '10', '0', '0', 'Leader of Jin\'Alai, Gawanil');
INSERT INTO `game_event` VALUES ('43', '2010-12-05 23:30:00', '2020-12-30 22:00:00', '30', '10', '0', '0', 'Leader of Jin\'Alai, Chulo');
INSERT INTO `game_event` VALUES ('9', '2010-12-25 08:00:00', '2020-12-31 08:00:00', '525600', '11520', '0', '0', 'Feast of Winter Veil - Presents');
INSERT INTO `game_event` VALUES ('45', '2010-12-31 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, January');
INSERT INTO `game_event` VALUES ('46', '2011-01-31 23:00:00', '2020-12-30 22:00:00', '525600', '40320', '0', '0', 'Brew of the Month, February');
INSERT INTO `game_event` VALUES ('47', '2011-02-28 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, March');
INSERT INTO `game_event` VALUES ('48', '2011-03-31 23:00:00', '2020-12-30 22:00:00', '525600', '43200', '0', '0', 'Brew of the Month, April');
INSERT INTO `game_event` VALUES ('49', '2011-04-30 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, May');
INSERT INTO `game_event` VALUES ('50', '2011-05-31 23:00:00', '2020-12-30 22:00:00', '525600', '43200', '0', '0', 'Brew of the Month, June');
INSERT INTO `game_event` VALUES ('51', '2011-06-30 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, July');
INSERT INTO `game_event` VALUES ('52', '2011-07-31 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, August');
INSERT INTO `game_event` VALUES ('53', '2011-08-31 23:00:00', '2020-12-30 22:00:00', '525600', '43200', '0', '0', 'Brew of the Month, September');
INSERT INTO `game_event` VALUES ('54', '2011-09-30 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, October');
INSERT INTO `game_event` VALUES ('55', '2011-10-31 23:00:00', '2020-12-30 22:00:00', '525600', '43200', '0', '0', 'Brew of the Month, November');
INSERT INTO `game_event` VALUES ('56', '2011-11-30 23:00:00', '2020-12-30 22:00:00', '525600', '44640', '0', '0', 'Brew of the Month, December');
INSERT INTO `game_event` VALUES ('61', '2010-12-31 23:58:00', '2020-12-30 23:00:00', '30', '10', '0', '0', 'Stormwind City - Stockades Jail Break');
INSERT INTO `game_event` VALUES ('64', '2011-01-05 23:01:00', '2020-12-30 22:00:00', '131040', '4320', '0', '0', 'Darkmoon Faire Building 1 (Mulgore)');
INSERT INTO `game_event` VALUES ('65', '2011-01-06 23:01:00', '2020-12-30 22:00:00', '131040', '2880', '0', '0', 'Darkmoon Faire Building 2 (Mulgore)');
INSERT INTO `game_event` VALUES ('66', '2010-12-01 23:01:00', '2020-12-30 22:00:00', '131040', '4320', '0', '0', 'Darkmoon Faire Building 1 (Elwynn Forest)');
INSERT INTO `game_event` VALUES ('62', '2010-10-27 23:01:00', '2020-12-30 22:00:00', '131040', '4320', '0', '0', 'Darkmoon Faire Building 1 (Terokkar Forest)');
INSERT INTO `game_event` VALUES ('63', '2010-10-28 23:01:00', '2020-12-30 22:00:00', '131040', '2880', '0', '0', 'Darkmoon Faire Building 2 (Terokkar Forest)');
INSERT INTO `game_event` VALUES ('57', '2011-01-01 01:48:00', '2020-12-30 23:00:00', '180', '24', '0', '0', 'World\'s End Tavern - Perry Gatner Announce');
INSERT INTO `game_event` VALUES ('58', '2011-01-01 02:00:00', '2020-12-30 23:00:00', '180', '5', '0', '0', 'World\'s End Tavern - Perry Gatner Standup Comedy');
INSERT INTO `game_event` VALUES ('59', '2011-01-01 02:48:00', '2020-12-30 23:00:00', '180', '24', '0', '0', 'World\'s End Tavern - L70ETC Concert Announce');
INSERT INTO `game_event` VALUES ('60', '2011-01-01 03:00:00', '2020-12-30 23:00:00', '180', '5', '0', '0', 'World\'s End Tavern - L70ETC Concert');
INSERT INTO `game_event` VALUES ('67', '2016-10-18 20:01:07', '2020-12-31 22:59:59', '1440', '600', '0', '12', 'Hallow\'s End - Wickerman Ember\'s');
INSERT INTO `game_event` VALUES ('68', '2016-10-18 19:30:00', '2020-12-31 22:59:59', '1440', '45', '0', '12', 'Hallow\'s End - Banshee Queen');
