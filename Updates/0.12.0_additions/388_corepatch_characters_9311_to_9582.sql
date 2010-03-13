-- 9339
ALTER TABLE character_db_version CHANGE COLUMN required_9250_01_characters_character required_9339_01_characters_group bit;
ALTER TABLE groups
  ADD COLUMN `groupId` int(11) unsigned NOT NULL FIRST;
UPDATE groups
  SET `groupId` = `leaderGuid`;
ALTER TABLE groups
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`groupId`),
  ADD UNIQUE KEY (`leaderGuid`);
ALTER TABLE group_member
  CHANGE COLUMN `leaderGuid` `groupId` int(11) unsigned NOT NULL;

-- 9349
ALTER TABLE character_db_version CHANGE COLUMN required_9339_01_characters_group required_9349_01_characters_character_action bit;
ALTER TABLE `character_action` ADD `spec` tinyint(3) unsigned NOT NULL default 0 AFTER `guid`;

-- 9354
ALTER TABLE character_db_version CHANGE COLUMN required_9349_01_characters_character_action required_9354_01_characters_character_action bit;
ALTER TABLE `character_action` DROP PRIMARY KEY, ADD PRIMARY KEY(`guid`,`spec`,`button`);

-- 9359
ALTER TABLE character_db_version CHANGE COLUMN required_9354_01_characters_character_action required_9359_01_characters_characters bit;
ALTER TABLE `characters` ADD `specCount` tinyint(3) unsigned NOT NULL default 1 AFTER `power7`;
ALTER TABLE `characters` ADD `activeSpec` tinyint(3) unsigned NOT NULL default 0 AFTER `specCount`;

-- 9374
ALTER TABLE character_db_version CHANGE COLUMN required_9359_01_characters_characters required_9374_01_characters_character_glyphs bit;

-- 9375
ALTER TABLE character_db_version CHANGE COLUMN required_9374_01_characters_character_glyphs required_9375_01_characters_character_glyphs bit;
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(11) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Extract values from data blob fields and insert them into character_glyphs
INSERT INTO `character_glyphs` SELECT `guid`, 0, 0, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1319),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
INSERT INTO `character_glyphs` SELECT `guid`, 0, 1, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1320),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
INSERT INTO `character_glyphs` SELECT `guid`, 0, 2, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1321),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
INSERT INTO `character_glyphs` SELECT `guid`, 0, 3, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1322),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
INSERT INTO `character_glyphs` SELECT `guid`, 0, 4, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1323),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
INSERT INTO `character_glyphs` SELECT `guid`, 0, 5, (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1324),  ' ', -1) AS UNSIGNED)) AS `glyph` FROM `characters`;
DELETE FROM character_glyphs WHERE glyph = 0;
