-- 11310
ALTER TABLE db_version CHANGE COLUMN required_11234_01_mangos_command required_11310_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Need restart server before command will can used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11312
ALTER TABLE db_version CHANGE COLUMN required_11310_01_mangos_mangos_string required_11312_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Server restart are required before command can be used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11335
ALTER TABLE db_version CHANGE COLUMN required_11312_01_mangos_mangos_string required_11335_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1170);

INSERT INTO mangos_string VALUES
(1170,'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nBase Entry: %u, Spawned Entry %u (Difficulty %u).\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_11335_01_mangos_mangos_string required_11335_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (503);

INSERT INTO mangos_string VALUES
(503,'The distance is: (3D) %f (2D) %f - (3D, point-to-point) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11337
ALTER TABLE db_version CHANGE COLUMN required_11335_02_mangos_mangos_string required_11337_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Server restart is required before command can be used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11348
ALTER TABLE db_version CHANGE COLUMN required_11337_01_mangos_mangos_string required_11348_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 43733;
INSERT INTO spell_bonus_data VALUES
(43733, 0,      0,       0,     0,     'Item - Lightning Zap');
