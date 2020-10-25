-- Prince Sandoval 14688
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 14688);
UPDATE creature_template_addon SET auras = '58930 61153 61150 61145' WHERE entry = 14688;

-- Forgotten Depths Ambusher 30204
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 30204);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 30204;

-- Fumblub Gearwind 32358
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 32358);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 32358;

-- Justicar Julia Celeste 25264
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25264);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 25264;

-- Quetz'lun Worshipper 28747
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28747);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 28747;

-- Ymirjar Warlord 37133
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 37133);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 37133;

-- Flame Warder 35143
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 35143);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 35143;

-- Skybreaker Hierophant 37027
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 37027);
UPDATE creature_template_addon SET auras = '70115 69898' WHERE entry = 37027;

-- creature_addon errors
UPDATE creature_addon SET auras = NULL WHERE guid IN (6000020,6000023,6000031,6000046);

