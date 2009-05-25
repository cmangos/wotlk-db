-- 7802
ALTER TABLE character_db_version CHANGE COLUMN required_7644_01_characters_character_pet required_7802_01_characters_character_achievement bit;
ALTER TABLE character_achievement
  CHANGE COLUMN guid guid int(11) unsigned NOT NULL,
  CHANGE COLUMN achievement achievement int(11) unsigned NOT NULL,
  CHANGE COLUMN date date bigint(11) unsigned NOT NULL default '0';
ALTER TABLE character_db_version CHANGE COLUMN required_7802_01_characters_character_achievement required_7802_02_characters_character_achievement_progress bit;
ALTER TABLE character_achievement_progress
  CHANGE COLUMN guid guid int(11) unsigned NOT NULL,
  CHANGE COLUMN criteria criteria int(11) unsigned NOT NULL,
  CHANGE COLUMN counter counter int(11) unsigned NOT NULL,
  CHANGE COLUMN date date bigint(11) unsigned NOT NULL default '0';
  
-- 7884
ALTER TABLE character_db_version CHANGE COLUMN required_7802_02_characters_character_achievement_progress required_7884_03_characters_character_spell bit;
DELETE FROM character_spell WHERE spell = '28734';
ALTER TABLE character_db_version CHANGE COLUMN required_7884_03_characters_character_spell required_7884_04_characters_character_aura bit;
DELETE FROM character_aura WHERE spell = '28734';
ALTER TABLE character_db_version CHANGE COLUMN required_7884_04_characters_character_aura required_7884_05_characters_character_action bit;
DELETE FROM  character_action WHERE action = '28734' AND type = '0';

-- 7887
ALTER TABLE character_db_version CHANGE COLUMN required_7884_05_characters_character_action required_7887_01_characters_character_pet bit;
ALTER TABLE `character_pet`
  DROP TeachSpelldata;
