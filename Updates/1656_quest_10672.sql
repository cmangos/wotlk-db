-- Add SQL needed for addition to spell_script_targets logic
-- Also fixes Frankly It Makes No Sense quest q.10672
DELETE FROM creature_template_spells WHERE entry = 21909;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(21909,37851,37917,37918,37919); -- missing Arcano-Scorp spells

DELETE FROM creature_addon WHERE guid IN (78202,78203);
DELETE FROM creature_movement WHERE id IN (78202,78203);
DELETE FROM game_event_creature WHERE guid IN (78202,78203);
DELETE FROM game_event_creature_data WHERE guid IN (78202,78203);
DELETE FROM creature_battleground WHERE guid IN (78202,78203);
DELETE FROM creature_linking WHERE guid IN (78202,78203)
OR master_guid IN (78202,78203);
DELETE FROM creature WHERE guid IN (78202,78203);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(78202,21909,530,1,0,0,-3405.107,795.0214,-30.93845,6.270359,300,300,0,0,2445,0,0,0),
(78203,21909,530,1,0,0,-3411.07,813.365,-31.05121,1.244753,300,300,0,0,2445,0,0,0);

DELETE FROM spell_script_target WHERE entry IN(37918,37919,37868,37893,37895);
INSERT INTO spell_script_target VALUES
(37918,1,21909,0),
(37919,1,21909,0),
(37868,3,78202,0), -- need to target specific guids
(37893,3,78203,0),
(37895,3,76655,0);

DELETE FROM spell_script_target WHERE entry IN(39218);
INSERT INTO spell_script_target VALUES
(39218,3,151346,2+4),
(39218,3,151347,1+4),
(39218,3,151348,1+2); -- each effect targets different guid

-- add missing Baelmon Channel targets
DELETE FROM creature_addon WHERE guid IN (151346,151347,151348);
DELETE FROM creature_movement WHERE id IN (151346,151347,151348);
DELETE FROM game_event_creature WHERE guid IN (151346,151347,151348);
DELETE FROM game_event_creature_data WHERE guid IN (151346,151347,151348);
DELETE FROM creature_battleground WHERE guid IN (151346,151347,151348);
DELETE FROM creature_linking WHERE guid IN (151346,151347,151348)
OR master_guid IN (151346,151347,151348);
DELETE FROM creature WHERE guid IN (151346,151347,151348);
REPLACE INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(151346,20736,530,1,0,0,2283.024,5373.553,151.9812,2.042035,300,300,0,0,42,0,0,0),
(151347,20736,530,1,0,0,2285.74,5377.637,158.9395,2.356194,300,300,0,0,42,0,0,0),
(151348,20736,530,1,0,0,2290.115,5380.565,151.8909,2.617994,300,300,0,0,42,0,0,0);
