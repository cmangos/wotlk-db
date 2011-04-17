-- 11169
ALTER TABLE db_version CHANGE COLUMN required_11117_01_mangos_world_template required_11169_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,1500,1501,1502);

INSERT INTO mangos_string VALUES
(376,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(377,"No pools found for map '%s' (Id:%u)",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(378,"You can't use this command at non-instanceable map '%s' (Id:%u). Use .lookup pool command instead.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(379,"You can't use this command without args at non-instanceable map '%s' (Id:%u).",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(380,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(381,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(382,'%d%s - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(383,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(384,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(385,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d Chance:%f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(386,'%d%s - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(387,'%d%s - [%s] X:%f Y:%f Z:%f MapId:%d %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(388,'Creatures with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(389,'Creatures with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(390,'Gameobjects with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(391,'Gameobjects with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(392,'Pool %u - Mother pool: %u |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(393,'Pool %u - Mother pool: %u [%s] AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(394,'Pool %u - Mother pool: none AutoSpawn: %u MaxLimit: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(395,'No pools found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(396,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(397,'Pools with explicitly chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(398,'Pools with equal chance:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(399,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u Chance: %f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1500,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u Chance: %f %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1501,'%u - |cffffffff|Hpool:%u|h[%s]|h|r AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1502,'%u - [%s] AutoSpawn: %u MaxLimit: %u Creatures: %u GameObjecs: %u Pools %u %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_11169_01_mangos_mangos_string required_11169_02_mangos_command bit;

DELETE FROM command WHERE name IN ('lookup pool','pool list','pool spawns','pool');

INSERT INTO command (name, security, help) VALUES
('lookup pool',2,'Syntax: .lookup pool $pooldescpart\r\n\r\nList of pools (anywhere) with substring in description.'),
('pool list',2,'Syntax: .pool list\r\n\r\nList of pools with spawn in current map (only work in instances. Non-instanceable maps share pool system state os useless attempt get all pols at all continents.'),
('pool spawns',2,'Syntax: .pool spawns #pool_id\r\n\r\nList current creatures/objects listed in pools (or in specific #pool_id) and spawned (added to grid data, not meaning show in world.'),
('pool',2,'Syntax: .pool #pool_id\r\n\r\nPool information and full list creatures/gameobjects included in pool.');

-- 11190
ALTER TABLE db_version CHANGE COLUMN required_11169_02_mangos_command required_11190_01_mangos_pool_creature_template bit;

DROP TABLE IF EXISTS `pool_creature_template`;
CREATE TABLE `pool_creature_template` (
  `id` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  INDEX `pool_idx` (pool_entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE db_version CHANGE COLUMN required_11190_01_mangos_pool_creature_template required_11190_01_mangos_pool_gameobject_template bit;

DROP TABLE IF EXISTS `pool_gameobject_template`;
CREATE TABLE `pool_gameobject_template` (
  `id` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  INDEX `pool_idx` (pool_entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 11200
ALTER TABLE db_version CHANGE COLUMN required_11190_01_mangos_pool_gameobject_template required_11200_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (1776, 8680, 13218);
INSERT INTO spell_bonus_data VALUES
(1776,  0, 0, 0.21, 0, 'Rogue - Gouge'),
(8680,  0, 0, 0.10, 0, 'Rogue - Instant Poison'),
(13218, 0, 0, 0.04, 0, 'Rogue - Wound Poison');

-- 11205
ALTER TABLE db_version CHANGE COLUMN required_11200_01_mangos_spell_bonus_data required_11205_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 48492;
INSERT INTO spell_proc_event VALUES
(48492, 0x00, 7, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000800, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0);

-- 11214
ALTER TABLE db_version CHANGE COLUMN required_11205_01_mangos_spell_proc_event required_11214_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1202,1203,1204,1205,1206);

INSERT INTO mangos_string VALUES
(1202,'Spell %u %s = %f (*1.88 = %f) DB = %f AP = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1203,'direct heal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1204,'direct damage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1205,'dot heal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1206,'dot damage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_11214_01_mangos_mangos_string required_11214_02_mangos_command bit;

DELETE FROM command WHERE name = 'debug spellcoefs';

INSERT INTO command (name, security, help) VALUES
('debug spellcoefs',3,'Syntax: .debug spellcoefs #pellid\r\n\r\nShow default calculated and DB stored coefficients for direct/dot heal/damage.');

-- 11217
ALTER TABLE db_version CHANGE COLUMN required_11214_02_mangos_command required_11217_01_mangos_creature_addon bit;

CREATE TABLE `temp_auras` (
  `spell` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER %%

CREATE FUNCTION `ConvertAuras`(`auras` varchar(1024))
RETURNS varchar(1024) CHARSET utf8
DETERMINISTIC
BEGIN
  DECLARE tmp VARCHAR(1024);
  DECLARE curr VARCHAR(10);
  DECLARE k INT;
  DECLARE pos INT;
  DECLARE startp INT;

  SET @k = 0;
  SET @tmp = '';
  SET @startp = 1;
  SET @pos = LOCATE(' ', auras);

  DELETE FROM temp_auras;

  WHILE @pos > 0 DO
    IF @k = 0 THEN
      SET @curr = SUBSTR(auras, @startp, @pos - @startp);

      IF NOT EXISTS(SELECT spell FROM temp_auras WHERE spell = @curr) THEN
        SET @tmp = CONCAT(@tmp, @curr, ' ');
        INSERT INTO temp_auras VALUES(@curr);
      END IF;
    END IF;

    SET @k = 1-@k;
    SET @startp = @pos+1;
    SET @pos = LOCATE(' ', auras, @startp);
  END WHILE;

  SET @tmp = RTRIM(@tmp);
  RETURN @tmp;
END%%

DELIMITER ;

UPDATE `creature_template_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_template_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_template_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;
UPDATE `creature_addon` SET `auras` = REPLACE(`auras`, '  ', ' ');
UPDATE `creature_addon` SET `auras` = TRIM(`auras`);
UPDATE `creature_addon` SET `auras` = NULL WHERE `auras` = '';
UPDATE `creature_addon` SET `auras` = ConvertAuras(`auras`) WHERE `auras` IS NOT NULL;

DROP FUNCTION `ConvertAuras`;
DROP TABLE `temp_auras`;

-- 11234
ALTER TABLE db_version CHANGE COLUMN required_11217_01_mangos_creature_addon required_11234_01_mangos_command bit;

DELETE FROM command WHERE name = 'debug spellcoefs';

INSERT INTO command (name, security, help) VALUES
('debug spellcoefs',3,'Syntax: .debug spellcoefs #spellid\r\n\r\nShow default calculated and DB stored coefficients for direct/dot heal/damage.');

