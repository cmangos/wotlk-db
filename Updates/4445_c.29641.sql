-- Theresa Wolf 29641 - RP

-- [DND] Cosmetic Book 32606
-- redo all
DELETE FROM creature_addon WHERE guid IN (532839,532840,535333,535334,535335);
DELETE FROM creature_movement WHERE id IN (532839,532840,535333,535334,535335);
DELETE FROM game_event_creature WHERE guid IN (532839,532840,535333,535334,535335);
DELETE FROM game_event_creature_data WHERE guid IN (532839,532840,535333,535334,535335);
DELETE FROM creature_battleground WHERE guid IN (532839,532840,535333,535334,535335);
DELETE FROM creature_linking WHERE guid IN (532839,532840,535333,535334,535335)
OR master_guid IN (532839,532840,535333,535334,535335);
DELETE FROM creature WHERE guid IN (532839,532840,535333,535334,535335);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(532839,32606,571,1,1,0,0,5866.848,701.1373,644.3697,2.146755,10,10,0,0,0,0,0,0),
(532840,32606,571,1,1,0,0,5870.337,707.4874,644.3663,3.211406,10,10,0,0,0,0,0,0),
(535333,32606,571,1,1,0,0,5868.302,702.5911,644.3726,2.024582,10,10,0,0,0,0,0,0),
(535334,32606,571,1,1,0,0,5864.684,698.9139,644.3663,2.513274,10,10,0,0,0,0,0,0),
(535335,32606,571,1,1,0,0,5859.623,711.3693,644.3686,6.056293,10,10,0,0,0,0,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 32606);
DELETE FROM creature_template_addon WHERE entry = 32606;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(32606,0,0,1,0,0,0,NULL);
UPDATE creature_template SET InhabitType = 4 WHERE entry = 32606;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (532839,532840,535333,535334,535335);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(532839,0,0,1,0,0,0,61378),
(532840,0,0,1,0,0,0,61403),
(535333,0,0,1,0,0,0,61404),
(535334,0,0,1,0,0,0,61405),
(535335,0,0,1,0,0,0,61406);
DELETE FROM `creature_movement_template` WHERE `entry` = 32606;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(32606,1,5863.389,706.2097,647.9373,100,0,0),
(32606,2,5863.349,706.192,662.4081,100,0,0),
(32606,3,5863.304,706.1628,677.4892,100,0,0),
(32606,4,5863.385,706.2151,690.1539,100,100,1);
DELETE FROM dbscript_random_templates WHERE `id` = 20303;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20303,1,20714,0,'Theresa Wolf 29641 - Random Script 1'),
(20303,1,20715,0,'Theresa Wolf 29641 - Random Script 2'),
(20303,1,20716,0,'Theresa Wolf 29641 - Random Script 3'),
(20303,1,20717,0,'Theresa Wolf 29641 - Random Script 4'),
(20303,1,20718,0,'Theresa Wolf 29641 - Random Script 5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20714 AND 20718;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20714,1,15,61397,0,0,32606,532839,1|0x10,0,0,0,0,0,0,0,0,'Part of Theresa Wolf 29641 EAI: cast spell 61397 on specific target'),
(20715,1,15,61397,0,0,32606,532840,1|0x10,0,0,0,0,0,0,0,0,'Part of Theresa Wolf 29641 EAI: cast spell 61397 on specific target'),
(20716,1,15,61397,0,0,32606,535333,1|0x10,0,0,0,0,0,0,0,0,'Part of Theresa Wolf 29641 EAI: cast spell 61397 on specific target'),
(20717,1,15,61397,0,0,32606,535334,1|0x10,0,0,0,0,0,0,0,0,'Part of Theresa Wolf 29641 EAI: cast spell 61397 on specific target'),
(20718,1,15,61397,0,0,32606,535335,1|0x10,0,0,0,0,0,0,0,0,'Part of Theresa Wolf 29641 EAI: cast spell 61397 on specific target');
