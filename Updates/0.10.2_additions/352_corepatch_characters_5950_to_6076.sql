-- 5955
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log entry identificator',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time'
) ENGINE = InnoDB DEFAULT CHARSET = latin1 COMMENT 'Guild Eventlog';

-- 5977
DELETE FROM pet_aura           WHERE guid NOT IN (SELECT id FROM character_pet);
DELETE FROM pet_spell          WHERE guid NOT IN (SELECT id FROM character_pet);
DELETE FROM pet_spell_cooldown WHERE guid NOT IN (SELECT id FROM character_pet);

-- 6047
ALTER TABLE character_social
  CHANGE COLUMN `note` `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note';
ALTER TABLE guild_bank_tab 
  CHANGE COLUMN `TabText` `TabText` varchar(500) NOT NULL DEFAULT '';
  
-- 6061
ALTER TABLE mail
  ADD COLUMN `mailTemplateId` mediumint(8) unsigned NOT NULL default '0' AFTER `stationery`;
