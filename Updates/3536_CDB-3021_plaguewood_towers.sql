-- Improve NPCs in Plaguewood Zigurrats

SET @POOL := 15016;

-- Add alternate NPC 8555 (Crypt Fiend) and NPC 8551 (Dark Summoner) spawns to NPC 8553 (Necromancer) in the Plaguewood Zigurrats
DELETE FROM creature WHERE guid IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM creature_addon WHERE guid IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM creature_movement WHERE id IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM game_event_creature WHERE guid IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM game_event_creature_data WHERE guid IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM creature_battleground WHERE guid IN (684,769,984,1107,1115,1449,1528,1555);
DELETE FROM creature_linking WHERE guid IN (684,769,984,1107,1115,1449,1528,1555)
 OR master_guid IN (684,769,984,1107,1115,1449,1528,1555);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(684, 8555, 0, 0, 0, 2814.52, -3757.79, 122.507, 3.35103, 345, 345, 0, 0, 3189, 0, 0, 0),
(769, 8555, 0, 0, 0, 2855.31, -3232.34, 134.27, 6.26573, 345, 345, 0, 0, 3189, 0, 0, 0),
(984, 8555, 0, 0, 0, 3135.96, -3867.93, 135.447, 3.33358, 345, 345, 0, 0, 3189, 0, 0, 0),
(1107, 8555, 0, 0, 0, 3185.53, -3456.8, 165.529, 4.13643, 345, 345, 0, 0, 3189, 0, 0, 0),
(1115, 8551, 0, 0, 0, 2814.52, -3757.79, 122.507, 3.35103, 345, 345, 0, 0, 2470, 5013, 0, 0),
(1449, 8551, 0, 0, 0, 2855.31, -3232.34, 134.27, 6.26573, 345, 345, 0, 0, 2470, 5013, 0, 0),
(1528, 8551, 0, 0, 0, 3135.96, -3867.93, 135.447, 3.33358, 345, 345, 0, 0, 2470, 5013, 0, 0),
(1555, 8551, 0, 0, 0, 3185.53, -3456.8, 165.529, 4.13643, 345, 345, 0, 0, 2470, 5013, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 855301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(855301,5000,15,8734,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast Aura Blackfathom Channeling');

-- Keep correct orientation even when using static WP to trigger script
UPDATE creature_movement SET orientation=3.35103 WHERE id=91940;
UPDATE creature_movement SET orientation=6.26573 WHERE id=91946;
UPDATE creature_movement SET orientation=3.33358 WHERE id=92235;
UPDATE creature_movement SET orientation=4.13643 WHERE id=92264;

-- Add visual channeling aura through addon
DELETE FROM creature_addon WHERE guid IN (91940,91946,92235,92264,684,769,984,1107,1115,1449,1528,1555);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(91940, 0, 0, 1, 16, 0, 0, '8734'),
(91946, 0, 0, 1, 16, 0, 0, '8734'),
(92235, 0, 0, 1, 16, 0, 0, '8734'),
(92264, 0, 0, 1, 16, 0, 0, '8734'),
(684, 0, 0, 1, 16, 0, 0, '8734'),
(769, 0, 0, 1, 16, 0, 0, '8734'),
(984, 0, 0, 1, 16, 0, 0, '8734'),
(1107, 0, 0, 1, 16, 0, 0, '8734'),
(1115, 0, 0, 1, 16, 0, 0, '8734'),
(1449, 0, 0, 1, 16, 0, 0, '8734'),
(1528, 0, 0, 1, 16, 0, 0, '8734'),
(1555, 0, 0, 1, 16, 0, 0, '8734');

-- Create related pooling
DELETE FROM pool_creature WHERE guid IN (91940,91946,92235,92264,684,769,984,1107,1115,1449,1528,1555);
INSERT INTO pool_creature VALUES
(91940, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(684, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(1115, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(91946, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(769, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(1449, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(92235, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(984, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(1528, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(92264, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(1107, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(1555, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner');

DELETE FROM pool_template WHERE entry BETWEEN @POOL AND @POOL + 3;
INSERT INTO pool_template VALUES
(@POOL, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 1, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 2, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 3, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner');
