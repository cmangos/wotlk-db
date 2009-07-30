-- 8030
ALTER TABLE character_db_version CHANGE COLUMN required_7988_07_characters_characters required_8030_01_characters_character_spell bit;
UPDATE IGNORE character_spell
  SET spell = 64901
  WHERE spell = 64904;
DELETE FROM character_spell WHERE spell = 64904;
ALTER TABLE character_db_version CHANGE COLUMN required_8030_01_characters_character_spell required_8030_02_characters_character_action bit;
UPDATE character_action
  SET action = 64901
  WHERE action = 64904 AND type = '0';

-- 8072
ALTER TABLE character_db_version CHANGE COLUMN required_8030_02_characters_character_action required_8072_01_characters_characters bit;
ALTER TABLE characters
ADD gender TINYINT UNSIGNED NOT NULL default '0' AFTER class,
ADD level TINYINT UNSIGNED NOT NULL default '0' AFTER gender,
ADD xp INT UNSIGNED NOT NULL default '0' AFTER level,
ADD money INT UNSIGNED NOT NULL default '0' AFTER xp,
ADD playerBytes INT UNSIGNED NOT NULL default '0' AFTER money,
ADD playerBytes2 INT UNSIGNED NOT NULL default '0' AFTER playerBytes,
ADD playerFlags INT UNSIGNED NOT NULL default '0' AFTER playerBytes2;
ALTER TABLE character_db_version CHANGE COLUMN required_8072_01_characters_characters required_8072_02_characters_characters bit;
UPDATE characters SET
gender = (CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 23), ' ', -1) AS UNSIGNED) & 0xFF0000) >> 16,
level = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 54), ' ', -1) AS UNSIGNED),
xp = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 609), ' ', -1) AS UNSIGNED),
money = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 1145), ' ', -1) AS UNSIGNED),
playerBytes = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 154), ' ', -1) AS UNSIGNED),
playerBytes2 = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 155), ' ', -1) AS UNSIGNED),
playerFlags = CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(data, ' ', 151), ' ', -1) AS UNSIGNED)
WHERE LENGTH(SUBSTRING_INDEX(data, ' ', 1294)) < LENGTH(data) && LENGTH(data) <= LENGTH(SUBSTRING_INDEX(data, ' ', 1295));

-- 8098
ALTER TABLE character_db_version CHANGE COLUMN required_8072_02_characters_characters required_8098_01_characters_character_action bit;
ALTER TABLE character_action
  CHANGE COLUMN action action int(11) unsigned NOT NULL default '0';
UPDATE character_action
  SET action = action | ( misc << 16 );
ALTER TABLE character_action
    DROP COLUMN misc;
ALTER TABLE character_db_version CHANGE COLUMN required_8098_01_characters_character_action required_8098_03_characters_character_pet bit;
UPDATE character_pet
   SET abdata = CONCAT(
     (SUBSTRING(abdata, 1, length(SUBSTRING_INDEX(abdata, ' ', 1))) >> 8),' ',
     SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 1))+2, length(SUBSTRING_INDEX(abdata, ' ', 2))-length(SUBSTRING_INDEX(abdata, ' ', 1))-1),' ',
     (SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 2))+2, length(SUBSTRING_INDEX(abdata, ' ', 3))-length(SUBSTRING_INDEX(abdata, ' ', 2))-1) >> 8),' ',
     SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 3))+2, length(SUBSTRING_INDEX(abdata, ' ', 4))-length(SUBSTRING_INDEX(abdata, ' ', 3))-1),' ',
     (SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 4))+2, length(SUBSTRING_INDEX(abdata, ' ', 5))-length(SUBSTRING_INDEX(abdata, ' ', 4))-1) >> 8),' ',
     SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 5))+2, length(SUBSTRING_INDEX(abdata, ' ', 6))-length(SUBSTRING_INDEX(abdata, ' ', 5))-1),' ',
     (SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 6))+2, length(SUBSTRING_INDEX(abdata, ' ', 7))-length(SUBSTRING_INDEX(abdata, ' ', 6))-1) >> 8),' ',
     SUBSTRING(abdata, length(SUBSTRING_INDEX(abdata, ' ', 7))+2, length(SUBSTRING_INDEX(abdata, ' ', 8))-length(SUBSTRING_INDEX(abdata, ' ', 7))-1),' '
  );
ALTER TABLE character_db_version CHANGE COLUMN required_8098_03_characters_character_pet required_8098_04_characters_pet_spell bit;
UPDATE pet_spell
   SET active = ( active >> 8);

-- 8104
ALTER TABLE character_db_version CHANGE COLUMN required_8098_04_characters_pet_spell required_8104_01_characters bit;
ALTER TABLE character_achievement ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE character_achievement_progress ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE character_declinedname ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
ALTER TABLE character_pet_declinedname ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
ALTER TABLE guild_eventlog ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'Guild Eventlog';

