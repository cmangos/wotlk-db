-- 12487
ALTER TABLE character_db_version CHANGE COLUMN required_12339_02_characters_calendar_invites required_12487_01_characters_characters bit;

UPDATE characters SET drunk = (drunk / 256) & 0xFF;

ALTER TABLE characters CHANGE drunk drunk tinyint(3) unsigned NOT NULL DEFAULT '0';

-- 12562
ALTER TABLE character_db_version CHANGE COLUMN required_12487_01_characters_characters required_12562_01_characters_various_tables bit;

ALTER TABLE character_queststatus_daily DROP INDEX idx_guid;
ALTER TABLE character_queststatus_monthly DROP INDEX idx_guid;
ALTER TABLE character_queststatus_weekly DROP INDEX idx_guid;
ALTER TABLE character_social DROP INDEX friend;
ALTER TABLE character_social DROP INDEX guid;
ALTER TABLE character_talent DROP INDEX guid_key;
ALTER TABLE guild_bank_eventlog DROP INDEX guildid_key;
ALTER TABLE guild_bank_item DROP INDEX guildid_key;
ALTER TABLE guild_bank_right DROP INDEX guildid_key;
ALTER TABLE guild_bank_tab DROP INDEX guildid_key;
ALTER TABLE guild_member DROP INDEX guildid_key;
