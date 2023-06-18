-- The Bonefields - Sholazar Basin

-- Goretalon Roc 28004
-- missing added - deleted guids reused
DELETE FROM creature_addon WHERE guid IN (519963);
DELETE FROM creature_movement WHERE Id IN (519963);
DELETE FROM game_event_creature WHERE guid IN (519963);
DELETE FROM game_event_creature_data WHERE guid IN (519963);
DELETE FROM creature_battleground WHERE guid IN (519963);
DELETE FROM creature_linking WHERE guid IN (519963)  
 OR master_guid IN (519963);
DELETE FROM creature WHERE guid IN (519963);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(519963,28004,571,1,1,6460.4116,4370.541,-26.333033,0,300,300,0,3); -- circle
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28004);
DELETE FROM creature_template_addon WHERE entry IN (28004);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28004,0,1,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (
520019,520005,520006,520022,520011,520021,520029,520031,520013,520007,520012,520014,520009,520016,520020,520025,520010);
UPDATE creature SET position_x = 6470.1396, position_y = 4565.8887, position_z = -43.24141, orientation = 2.49582, spawndist = 0, MovementType = 0 WHERE guid = 520015;
UPDATE creature SET position_x = 6578.1797, position_y = 4382.866, position_z = 4.530186, spawndist = 0, MovementType = 3 WHERE guid = 520026; -- circle
UPDATE creature SET position_x = 6436.89, position_y = 4576.826, position_z = -47.26251, spawndist = 0, MovementType = 3 WHERE guid = 520030; -- circle
UPDATE creature SET position_x = 6447.9297, position_y = 4442.076, position_z = -36.932606, spawndist = 0, MovementType = 3 WHERE guid = 520008; -- circle
UPDATE creature SET position_x = 6449.1035, position_y = 4341.325, position_z = -25.226255, spawndist = 0, MovementType = 3 WHERE guid = 520017; -- circle
UPDATE creature SET position_x = 6526.4243, position_y = 4560.686, position_z = -45.18946, spawndist = 0, MovementType = 3 WHERE guid = 520023; -- circle
UPDATE creature SET position_x = 6460.6333, position_y = 4517.9204, position_z = -23.216854, spawndist = 0, MovementType = 3 WHERE guid = 520027; -- circle
UPDATE creature SET position_x = 6418.564, position_y = 4270.0757, position_z = -27.262966, spawndist = 0, MovementType = 3 WHERE guid = 520018; -- circle
-- RP
DELETE FROM creature_spawn_data WHERE guid IN (520030,520026,520008,520017,520023,520027,519963,520018);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(520030,80),(520026,80),(520008,80),(520017,80),
(520023,80),(520027,80),(519963,80),(520018,80);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520030,520026,520008,520017,520023,520027,519963,520018);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520030
(520030,1,6436.89,4576.826,-47.26251,100,0,0),
(520030,2,6455.878,4514.622,-47.26251,100,0,0),
(520030,3,6514.061,4537.127,-47.26251,100,0,0),
(520030,4,6485.6035,4593.2827,-47.26251,100,0,0),
-- 520026
(520026,1,6578.1797,4382.866,4.530186,100,0,0),
(520026,2,6553.324,4442.518,-26.35871,100,0,0),
(520026,3,6510.9116,4459.379,-24.050287,100,0,0),
(520026,4,6504.8994,4409.2744,-18.966951,100,0,0),
-- 520008
(520008,1,6447.9297,4442.076,-36.932606,100,0,0),
(520008,2,6508.0366,4489.285,-36.932606,100,0,0),
(520008,3,6477.631,4531.2134,-36.932606,100,0,0),
(520008,4,6429.53,4497.86,-36.932606,100,0,0),
-- 520017
(520017,1,6449.1035,4341.325,-25.226255,100,0,0),
(520017,2,6516.0645,4377.7456,-18.642923,100,0,0),
(520017,3,6514.901,4457.3853,-25.226255,100,0,0),
(520017,4,6448.94,4465.155,-26.559591,100,0,0),
(520017,5,6391.9004,4358.7036,-25.226255,100,0,0),
-- 520023
(520023,1,6526.4243,4560.686,-45.18946,100,0,0),
(520023,2,6508.1426,4540.404,-45.18946,100,0,0),
(520023,3,6501.171,4488.0615,-41.411602,100,0,0),
(520023,4,6550.647,4450.7856,-36.05045,100,0,0),
(520023,5,6580.2183,4526.29,-30.772688,100,0,0),
(520023,6,6574.513,4560.8496,-43.74502,100,0,0),
-- 520027
(520027,1,6460.6333,4517.9204,-23.216854,100,0,0),
(520027,2,6533.214,4567.764,-23.216854,100,0,0),
(520027,3,6579.2275,4513.3735,-23.216854,100,0,0),
(520027,4,6568.1367,4475.961,-23.216854,100,0,0),
(520027,5,6521.111,4418.112,-23.216854,100,0,0),
(520027,6,6467.3267,4440.726,-23.216854,100,0,0),
-- 519963
(519963,1,6460.4116,4370.541,-26.333033,100,0,0),
(519963,2,6489.498,4423.408,-31.249702,100,0,0),
(519963,3,6427.6,4441.304,-30.194145,100,0,0),
(519963,4,6415.1597,4384.434,-27.721924,100,0,0),
-- 520018
(520018,1,6418.564,4270.0757,-27.262966,100,0,0),
(520018,2,6370.464,4250.389,-27.262966,100,0,0),
(520018,3,6364.2993,4306.8535,-27.262966,100,0,0),
(520018,4,6414.488,4321.1323,-27.262966,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20748);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20748,1,31,28380,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: search for 28380'),
(20748,200,37,0,0,0,28380,105,1,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: move to target'),
(20748,1000,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: pause WP'),
(20748,15000,15,52930,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: cast 52930'),
(20748,16000,15,52930,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: cast 52930'),
(20748,17000,15,52930,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: cast 52930'),
(20748,18000,15,52930,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: cast 52930'),
(20748,23000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Goretalon Roc 28004 EAI: unpause WP');

-- Shattertusk Bull 28380
-- individual addon
DELETE FROM creature_addon WHERE guid IN (522487,522497,522503,522488,522504,522501,522502);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(522487,0,0,1,0,0,0,29266),
(522497,0,0,1,0,0,0,29266),
(522503,0,0,1,0,0,0,29266),
(522488,0,0,1,0,0,0,29266),
(522504,0,0,1,0,0,0,29266),
(522501,0,0,1,0,0,0,29266),
(522502,0,0,1,0,0,0,29266);

