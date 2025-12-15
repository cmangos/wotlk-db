-- Storm Peaks: Hibernal Cavern - Phase 2
-- Injured Icemaw Matriarch 29563
UPDATE creature_template SET NpcFlags = 0, UnitFlags = 0 WHERE entry IN (29563);
UPDATE creature SET position_x = 7335.3813, position_y = -2055.097, position_z = 764.35846, orientation = 3.368485450744628906, spawndist = 0, MovementType = 0 WHERE guid = 525593;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29563);
DELETE FROM creature_template_addon WHERE entry IN (29563);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29563,0,7,0,0,0,0,NULL);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (29563);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(29563,56795,12983,1,12983,3,0);
-- Icemaw Bear 29562
-- missing added
DELETE FROM creature_addon WHERE guid IN (525036);
DELETE FROM creature_movement WHERE id IN (525036);
DELETE FROM game_event_creature WHERE guid IN (525036);
DELETE FROM game_event_creature_data WHERE guid IN (525036);
DELETE FROM creature_battleground WHERE guid IN (525036);
DELETE FROM creature_linking WHERE guid IN (525036);
DELETE FROM creature WHERE guid IN (525036);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525036,29562,571,1,2,7194.68,-2046.15,763.286,4.44049,300,300,7,1);
UPDATE creature SET position_x = 7266.191895, position_y = -2128.620850, position_z = 778.581116, spawndist = 3, MovementType = 1 WHERE guid = 525591;
UPDATE creature SET position_x = 7170.105957, position_y = -2130.868408, position_z = 762.181152, spawndist = 3, MovementType = 1 WHERE guid = 525592;
-- Ravenous Jormungar 29605
-- missing added
DELETE FROM creature_addon WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM creature_movement WHERE id IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM game_event_creature WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM game_event_creature_data WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM creature_battleground WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM creature_linking WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
DELETE FROM creature WHERE guid IN (525037,525368,525369,525370,526418,526419,526420,526421,526422,526423,526424,527079,533322);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525037,29605,571,1,2,7192.1562,-2068.9067,766.6277,0,300,300,0,4), -- linear
(525368,29605,571,1,2,7183.82,-2032.85,765.823,0,300,300,3,1),
(525369,29605,571,1,2,7205.88,-2010.01,766.306,0,300,300,3,1),
(525370,29605,571,1,2,7230.592,-2087.6062,764.5053,0,300,300,0,4), -- linear
(526418,29605,571,1,2,7219.3237,-2042.1381,768.6952,0,300,300,3,1),
(526419,29605,571,1,2,7252.8115,-2097.6638,775.6064,2.9627268,300,300,3,1),
(526420,29605,571,1,2,7290.02,-2071.3147,761.8083,4.3467669,300,300,3,1),
(526421,29605,571,1,2,7333.23,-2091.61,771.84924,5.473,300,300,3,1),
(526422,29605,571,1,2,7320.904,-2072.2793,764.0848,3.5457,300,300,3,1),
(526423,29605,571,1,2,7275.5386,-2016.5591,768.1683,2.36665,300,300,3,1),
(526424,29605,571,1,2,7311.678,-2016.5878,764.27374,2.3941,300,300,3,1),
(527079,29605,571,1,2,7224.17,-1979.8533,766.6799,5.244161,300,300,3,1),
(533322,29605,571,1,2,7259.898,-1969.1987,769.3984,0.674959,300,300,3,1);
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE guid = 525650;
UPDATE creature SET position_x = 7160.374023, position_y = -2134.917236, position_z = 762.887085, spawndist = 3, MovementType = 1 WHERE guid = 525648;
UPDATE creature SET position_x = 7189.800293, position_y = -2115.569580, position_z = 764.410828, spawndist = 3, MovementType = 1 WHERE guid = 525649;
UPDATE creature SET position_x = 7249.0283, position_y = -2123.1504, position_z = 778.76697, spawndist = 0, MovementType = 4 WHERE guid = 525647; -- linear
DELETE FROM creature_movement WHERE id IN (525037,525647,525370);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 525037
(525037,1,7192.1562,-2068.9067,766.6277,100,1000,0),
(525037,2,7190.2695,-2076.3015,766.40216,100,0,0),
(525037,3,7191.014,-2083.0854,765.6665,100,0,0),
(525037,4,7194.249,-2089.5144,765.17163,100,0,0),
(525037,5,7195.478,-2100.0396,765.21466,100,1000,0),
-- 525647
(525647,1,7249.0283,-2123.1504,778.76697,100,1000,0),
(525647,2,7239.999,-2119.225,777.62714,100,0,0),
(525647,3,7229.2085,-2117.316,777.70123,100,0,0),
(525647,4,7217.573,-2116.2354,775.2465,100,1000,0),
-- 525370
(525370,1,7230.592,-2087.6062,764.5053,100,1000,0),
(525370,2,7237.0337,-2080.0938,763.8347,100,0,0),
(525370,3,7247.612,-2070.4153,762.8509,100,0,0),
(525370,4,7257.9556,-2073.3406,763.96063,100,0,0),
(525370,5,7267.347,-2075.6372,764.4049,100,1000,0);
