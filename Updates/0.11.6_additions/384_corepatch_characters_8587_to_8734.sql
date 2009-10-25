-- 8589
ALTER TABLE character_db_version CHANGE COLUMN required_8505_01_characters_character_spell required_8589_04_characters_groups bit;
alter table `groups`
    add column `raiddifficulty` int(11) UNSIGNED DEFAULT '0' NOT NULL after `difficulty`;
ALTER TABLE character_db_version CHANGE COLUMN required_8589_04_characters_groups required_8589_06_characters_bugreport bit;
ALTER TABLE `bugreport` CHANGE `content` `content` LONGTEXT;
ALTER TABLE `bugreport` CHANGE `type` `type` LONGTEXT;
ALTER TABLE character_db_version CHANGE COLUMN required_8589_06_characters_bugreport required_8589_11_characters_characters bit;
UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');
UPDATE `characters` SET `data` = CONCAT(
	SUBSTRING_INDEX(`data`, ' ', 1167 + 1), ' ',
	'0 0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1246 + 1), ' ', -1246 + 1168 - 1), ' ',
	'0 0 0 ',
	SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', 1294 + 1), ' ', -1294 + 1247 - 1), ' ',
	'0 '
	)
WHERE length(SUBSTRING_INDEX(data, ' ', 1294)) < length(data) and length(SUBSTRING_INDEX(data, ' ', 1294+1)) >= length(data);
UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');
ALTER TABLE character_db_version CHANGE COLUMN required_8589_11_characters_characters required_8596_01_characters_bugreport bit;
ALTER TABLE `bugreport` CHANGE `type` `type` LONGTEXT NOT NULL;
ALTER TABLE `bugreport` CHANGE `content` `content` LONGTEXT NOT NULL;

-- 8702
ALTER TABLE character_db_version CHANGE COLUMN required_8596_01_characters_bugreport required_8702_01_characters_character_reputation bit;
UPDATE character_reputation SET standing = 0 WHERE faction IN (729, 730) AND standing < 0;

-- 8721
ALTER TABLE character_db_version CHANGE COLUMN required_8702_01_characters_character_reputation required_8721_01_characters_guild bit;
UPDATE guild_rank SET BankMoneyPerDay = 4294967295 WHERE rid = 0;
