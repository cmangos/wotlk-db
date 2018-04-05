-- q.11965 'Call to Arms!'
DELETE FROM dbscripts_on_go_template_use WHERE id = 188163;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188163,1,16,6594,2,0,0,0,0,0,0,0,0,0,0,0,0,'play bell sound'),
(188163,2,9,6858,120,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(188163,2,9,4862,120,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(188163,2,9,6865,120,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(188163,2,9,5348,120,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(188163,2,9,5051,120,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(188163,3,31,25238,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 25238 - terminate if exist'),
(188163,4,10,25238,120000,0,0,0,0x08,0,0,0,0,2609.81,5276.45,37.0576,2.85075,'summon Gamlen'),
(188163,4,16,6594,2,0,0,0,0,0,0,0,0,0,0,0,0,'play bell sound'),
(188163,7,16,6594,2,0,0,0,0,0,0,0,0,0,0,0,0,'play bell sound');

-- Weapon Rack
UPDATE gameobject SET spawntimesecsmin = -120, spawntimesecsmax = -120 WHERE id = 188426;

-- Gamlen
-- temp spawn
DELETE FROM creature_template_addon WHERE entry = 25238;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25238,0,0,0,1,0,0,NULL);
-- static spawn
DELETE FROM creature_addon WHERE guid = 109985;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(109985,0,0,1,1,233,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 109985; -- for static spawn
UPDATE creature_template SET MovementType = 2 WHERE entry = 25238; -- for temp spawn
DELETE FROM creature_movement_template WHERE entry = 25238;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25238,1,2606.59,5277.47,36.9774,300000,2523801,2.92608);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2523801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2523801,2,0,0,0,0,0,0,0,2000001610,0,0,0,0,0,0,0,''),
(2523801,3,10,25617,180000,1,0,0,0x08,1,0,0,0,2587.29,5299.83,37.3007,5.3601,'summon Farshire Militia #1'),
(2523801,3,10,25617,180000,2,0,0,0x08,1,0,0,0,2585.71,5299.75,37.3397,5.39343,'summon Farshire Militia #2'),
(2523801,3,10,25617,180000,3,0,0,0x08,1,0,0,0,2577.23,5291.08,35.7001,5.79477,'summon Farshire Militia #3'),
(2523801,3,10,25617,180000,4,0,0,0x08,1,0,0,0,2576.49,5289.9,35.6477,5.80263,'summon Farshire Militia #4'),
(2523801,8,10,25617,180000,1,0,0,0x08,1,0,0,0,2587.29,5299.83,37.3007,5.3601,'summon Farshire Militia #1'),
(2523801,8,10,25617,180000,2,0,0,0x08,1,0,0,0,2585.71,5299.75,37.3397,5.39343,'summon Farshire Militia #2'),
(2523801,9,10,25617,180000,3,0,0,0x08,1,0,0,0,2577.23,5291.08,35.7001,5.79477,'summon Farshire Militia #3'),
(2523801,9,10,25617,180000,4,0,0,0x08,1,0,0,0,2576.49,5289.9,35.6477,5.80263,'summon Farshire Militia #4');
DELETE FROM dbscript_string WHERE entry = 2000001610;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001610,'To the town hall, everyone!  We\'ve brought you weapons!  Arm yourselves and beat the Scourge back!',0,1,0,5,NULL);

-- Farshire Militia
UPDATE creature SET position_x = 2529.844971, position_y = 5268.186035, position_z = 34.908451, orientation = 1.545917 WHERE guid = 97896;
UPDATE creature SET position_x = 2528.984131, position_y = 5309.823730, position_z = 33.117649, orientation = 0.524881 WHERE guid = 97868;
DELETE FROM creature_template_addon WHERE entry = 25617;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25617,0,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE entry = 25617;
DELETE FROM creature_movement_template WHERE entry = 25617;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Path 1
(25617,1,1,2601.97,5284.87,36.814,0,0,5.40914),
(25617,1,2,2607.66,5273.88,37.2081,0,0,5.22928),
(25617,1,3,2610.82,5269.34,39.4159,0,0,5.26462),
(25617,1,4,2613.9,5260.38,39.4096,5000,2561701,4.98581),
(25617,1,5,2610.96,5268.83,39.4341,0,0,2.15602),
(25617,1,6,2607.21,5273.38,37.1897,0,0,2.18587),
(25617,1,7,2602.37,5284.61,36.8159,0,0,1.61645),
(25617,1,8,2608.74,5304.26,35.8338,0,0,1.27323),
(25617,1,9,2611.34,5309.56,31.4079,0,0,1.27716),
(25617,1,10,2615.25,5328,31.0074,0,0,1.28076),
(25617,1,11,2616.64,5335.05,32.2994,0,0,1.40643),
(25617,1,12,2620.31,5346.08,32.8633,0,0,1.49853),
(25617,1,13,2619.18,5368.12,32.8639,300000,2561703,1.52994),
-- Path 2
(25617,2,1,2607.52,5274.05,37.2289,0,0,5.36269),
(25617,2,2,2610.97,5269.54,39.4136,0,0,5.31949),
(25617,2,3,2614.72,5259.97,39.41,5000,2561702,4.93059),
(25617,2,4,2610.45,5268.62,39.4328,0,0,2.26043),
(25617,2,5,2602.87,5281.58,36.822,0,0,1.71065),
(25617,2,6,2602.66,5313.51,35.2899,0,0,1.53394),
(25617,2,7,2602.88,5318.23,31.0188,0,0,1.5575),
(25617,2,8,2602.34,5331.77,31.0183,0,0,1.62033),
(25617,2,9,2602.41,5338.08,32.7999,0,0,1.60627),
(25617,2,10,2605.13,5369.28,32.8626,300000,2561703,1.46882),
-- Path 3
(25617,3,1,2606.11,5272.86,37.2,0,0,5.65891),
(25617,3,2,2610.34,5269.09,39.4056,0,0,5.54503),
(25617,3,3,2623.03,5256.25,38.28,5000,2561701,5.49005),
(25617,3,4,2610.96,5268.83,39.4341,0,0,2.15602),
(25617,3,5,2607.21,5273.38,37.1897,0,0,2.18587),
(25617,3,6,2602.37,5284.61,36.8159,0,0,1.61645),
(25617,3,7,2608.74,5304.26,35.8338,0,0,1.27323),
(25617,3,8,2611.34,5309.56,31.4079,0,0,1.27716),
(25617,3,9,2615.25,5328,31.0074,0,0,1.28076),
(25617,3,10,2616.64,5335.05,32.2994,0,0,1.40643),
(25617,3,11,2620.31,5346.08,32.8633,0,0,1.49853),
(25617,3,12,2619.18,5368.12,32.8639,300000,2561703,1.52994),
-- Path 4
(25617,4,1,2606.22,5272.47,37.1799,0,0,5.56356),
(25617,4,2,2610.18,5268.75,39.4147,0,0,5.57927),
(25617,4,3,2618.77,5260.22,39.3873,0,0,5.53607),
(25617,4,4,2622.72,5255.85,38.2797,5000,2561702,5.52429),
(25617,4,5,2610.45,5268.62,39.4328,0,0,2.26043),
(25617,4,6,2602.87,5281.58,36.822,0,0,1.71065),
(25617,4,7,2602.66,5313.51,35.2899,0,0,1.53394),
(25617,4,8,2602.88,5318.23,31.0188,0,0,1.5575),
(25617,4,9,2602.34,5331.77,31.0183,0,0,1.62033),
(25617,4,10,2602.41,5338.08,32.7999,0,0,1.60627),
(25617,4,11,2605.13,5369.28,32.8626,300000,2561703,1.46882);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2561701 AND 2561703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2561701,2,42,0,0,0,0,0,0,13160,0,0,0,0,0,0,0,'change equipment'),
(2561702,2,42,0,0,0,0,0,0,25228,0,0,0,0,0,0,0,'change equipment'),
(2561703,1,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Reckless Scavenger - summoned only
-- wrong spawns removed
DELETE FROM creature WHERE guid IN (99159,99158);
DELETE FROM creature_addon WHERE guid IN (99159,99158);
DELETE FROM creature_movement WHERE id IN (99159,99158);
DELETE FROM game_event_creature WHERE guid IN (99159,99158);
DELETE FROM game_event_creature_data WHERE guid IN (99159,99158);
DELETE FROM creature_battleground WHERE guid IN (99159,99158);
DELETE FROM creature_linking WHERE guid IN (99159,99158)
 OR master_guid IN (99159,99158);

-- Plagued Scavenger
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (99159,99158);
DELETE FROM creature_movement WHERE id IN (99159,99158);
DELETE FROM game_event_creature WHERE guid IN (99159,99158);
DELETE FROM game_event_creature_data WHERE guid IN (99159,99158);
DELETE FROM creature_battleground WHERE guid IN (99159,99158);
DELETE FROM creature_linking WHERE guid IN (99159,99158)
OR master_guid IN (99159,99158);
DELETE FROM creature WHERE guid IN (99159,99158);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(99159,25650,571,1,1,0,0,2543.9,5268.49,31.0185,1.86007,120,120,7,0,6986,0,0,1),
(99158,25650,571,1,1,0,0,2672.24,5308.25,31.0133,4.30266,120,120,7,0,6986,0,0,1);
-- Updates
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 25650;
UPDATE creature SET position_x = 2507.341553, position_y = 5313.238770, position_z = 33.075111, orientation = 5.743868 WHERE guid = 100584;
