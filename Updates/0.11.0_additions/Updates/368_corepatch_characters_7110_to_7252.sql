-- 7113
ALTER TABLE character_db_version CHANGE COLUMN required_7100_01_characters_character_spell required_7113_01_characters_character_achievement_progress bit;
DELETE FROM character_achievement_progress WHERE counter=0;

-- 7198
ALTER TABLE character_db_version CHANGE COLUMN required_7113_01_characters_character_achievement_progress required_7198_01_characters_characters bit;
UPDATE `characters`.`item_instance` AS `t1`
INNER JOIN `mangos`.`item_template` AS `t2` ON
`t2`.`entry` = SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',4),' ',-1)
SET `t1`.`data` = CONCAT(
  SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',16),' ',-16), ' ',
  IF (`t2`.`spellcharges_1` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',17),' ',-1) = 0, IF(`t2`.`spellcharges_1` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',17),' ',-1))), ' ',
  IF (`t2`.`spellcharges_2` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',18),' ',-1) = 0, IF(`t2`.`spellcharges_2` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',18),' ',-1))), ' ',
  IF (`t2`.`spellcharges_3` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',19),' ',-1) = 0, IF(`t2`.`spellcharges_3` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',19),' ',-1))), ' ',
  IF (`t2`.`spellcharges_4` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',20),' ',-1) = 0, IF(`t2`.`spellcharges_4` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',20),' ',-1))), ' ',
  IF (`t2`.`spellcharges_5` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',21),' ',-1) = 0, IF(`t2`.`spellcharges_5` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',21),' ',-1))), ' ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',64),' ',-64+21),' ')
WHERE (`t2`.`spellid_1` = 55884) AND (SUBSTRING_INDEX(data,' ',64) = data AND SUBSTRING_INDEX(data,' ',64-1) <> data);
UPDATE `characters`.`item_instance` AS `t1`
INNER JOIN `mangos`.`item_template` AS `t2` ON
`t2`.`entry` = SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',4),' ',-1)
SET `t1`.`data` = CONCAT(
  SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',16),' ',-16), ' ',
  IF (`t2`.`spellcharges_1` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',17),' ',-1) = 0, IF(`t2`.`spellcharges_1` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',17),' ',-1))), ' ',
  IF (`t2`.`spellcharges_2` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',18),' ',-1) = 0, IF(`t2`.`spellcharges_2` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',18),' ',-1))), ' ',
  IF (`t2`.`spellcharges_3` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',19),' ',-1) = 0, IF(`t2`.`spellcharges_3` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',19),' ',-1))), ' ',
  IF (`t2`.`spellcharges_4` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',20),' ',-1) = 0, IF(`t2`.`spellcharges_4` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',20),' ',-1))), ' ',
  IF (`t2`.`spellcharges_5` = 0, 0, IF (SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',21),' ',-1) = 0, IF(`t2`.`spellcharges_5` < 0, 4294967295, 1), SUBSTRING_INDEX(SUBSTRING_INDEX(`t1`.`data`,' ',21),' ',-1))), ' ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',138),' ',-138+21),' ')
WHERE (`t2`.`spellid_1` = 55884) AND (SUBSTRING_INDEX(data,' ',138) = data AND SUBSTRING_INDEX(data,' ',138-1) <> data);

-- 7207
ALTER TABLE character_db_version CHANGE COLUMN required_7198_01_characters_characters required_7207_03_characters_corpse bit;
ALTER TABLE corpse
  ADD COLUMN `phaseMask` smallint(5) unsigned NOT NULL default '1' AFTER `map`;

-- 7251
ALTER TABLE character_db_version CHANGE COLUMN required_7207_03_characters_corpse required_7251_02_characters_character_spell bit;
DELETE FROM `character_spell` WHERE `spell` IN (52375,47541);
