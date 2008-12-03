-- 7.11

DROP TABLE IF EXISTS `realmd_db_version`;
CREATE TABLE `realmd_db_version` (
  `required_2008_11_07_02_realmd_realmd_db_version` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';
LOCK TABLES `realmd_db_version` WRITE;
/*!40000 ALTER TABLE `realmd_db_version` DISABLE KEYS */;
INSERT INTO `realmd_db_version` VALUES
(NULL);
/*!40000 ALTER TABLE `realmd_db_version` ENABLE KEYS */;
UNLOCK TABLES;

ALTER TABLE realmd_db_version CHANGE COLUMN required_2008_11_07_02_realmd_realmd_db_version required_2008_11_07_04_realmd_account bit;
ALTER TABLE `account`
  CHANGE COLUMN  `email` `email` text;

