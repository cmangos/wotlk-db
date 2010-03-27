-- 9611
ALTER TABLE character_db_version CHANGE COLUMN required_9375_01_characters_character_glyphs required_9611_01_characters bit;

ALTER TABLE `group_member`            ADD INDEX `Idx_memberGuid`(`memberGuid`);
ALTER TABLE `guild_eventlog`          ADD INDEX `Idx_PlayerGuid1`(`PlayerGuid1`);
ALTER TABLE `guild_eventlog`          ADD INDEX `Idx_PlayerGuid2`(`PlayerGuid2`);
ALTER TABLE `guild_bank_eventlog`     ADD INDEX `Idx_PlayerGuid`(`PlayerGuid`);
ALTER TABLE `petition_sign`           ADD INDEX `Idx_playerguid`(`playerguid`);
ALTER TABLE `petition_sign`           ADD INDEX `Idx_ownerguid`(`ownerguid`);
ALTER TABLE `guild_eventlog`          ADD INDEX `Idx_LogGuid`(`LogGuid`);
ALTER TABLE `guild_bank_eventlog`     ADD INDEX `Idx_LogGuid`(`LogGuid`);
ALTER TABLE `guild_bank_item`         ADD INDEX `Idx_item_guid`(`item_guid`);
ALTER TABLE `corpse`                  ADD INDEX `Idx_player`(`player`);
ALTER TABLE `corpse`                  ADD INDEX `Idx_time`(`time`);
ALTER TABLE `guild_rank`              ADD INDEX `Idx_rid`(`rid`);
ALTER TABLE `character_equipmentsets` ADD INDEX `Idx_setindex` (`setindex`);

-- 9630
ALTER TABLE character_db_version CHANGE COLUMN required_9611_01_characters required_9630_01_characters_characters bit;

ALTER TABLE characters
  ADD COLUMN `exploredZones` longtext AFTER activeSpec,
  ADD COLUMN `equipmentCache` longtext AFTER exploredZones,
  ADD COLUMN `ammoId` int(10) UNSIGNED NOT NULL default '0' AFTER equipmentCache;

UPDATE characters SET
exploredZones = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 1041))+2,
length(SUBSTRING_INDEX(data, ' ', 1168+1))- length(SUBSTRING_INDEX(data, ' ', 1041)) - 1),
equipmentCache = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 283))+2,
length(SUBSTRING_INDEX(data, ' ', 320+1))- length(SUBSTRING_INDEX(data, ' ', 283)) - 1),
ammoId = SUBSTRING(data,
length(SUBSTRING_INDEX(data, ' ', 1198))+2,
length(SUBSTRING_INDEX(data, ' ', 1198+1))- length(SUBSTRING_INDEX(data, ' ', 1198)) - 1);

CREATE TABLE `data_backup` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `data` longtext,
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO data_backup (guid, data)  (SELECT guid, data FROM characters);


ALTER TABLE characters
  DROP COLUMN data;
