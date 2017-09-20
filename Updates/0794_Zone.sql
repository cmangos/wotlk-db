-- Utgarde Catacombs - Howling Fjord

-- Dragonllayer Fleshripper
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (88758,88761,105689);
DELETE FROM creature_addon WHERE guid IN (88758,88761,105689);
DELETE FROM creature_movement WHERE id IN (88758,88761,105689);
DELETE FROM game_event_creature WHERE guid IN (88758,88761,105689);
DELETE FROM game_event_creature_data WHERE guid IN (88758,88761,105689);
DELETE FROM creature_battleground WHERE guid IN (88758,88761,105689);
DELETE FROM creature_linking WHERE guid IN (88758,88761,105689) OR master_guid IN (88758,88761,105689);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(88758,24250,571,1,1,0,0,1016.34,-4810.92,-70.5378,0.5934119,300,0,0,7984,0,0,0),
(88761,24250,571,1,1,0,0,990.303,-4826,-72.4367,2.05758,300,0,0,6986,0,0,0),
(105689,24250,571,1,1,0,0,865.565,-4876.08,-72.4411,2.56573,300,0,0,7984,0,0,0);
-- Updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 113533;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 113532;
UPDATE creature SET position_x = 888.743530, position_y = -4836.852539, position_z = -72.441536, orientation = 5.026225 WHERE guid = 113530;
DELETE FROM creature_addon WHERE guid = 113533;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(113533,0,8,1,0,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (88761,113526,113528,113529,113530,113532);
DELETE FROM creature_movement WHERE id IN (88761,113526,113528,113529,113530,113532);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #88761
(88761,1,982.926,-4805.97,-72.4416,300000,0,5.04838),
(88761,2,990.303,-4826,-72.4367,300000,0,2.05758),
-- #113526
(113526,1,829.337,-4870.16,-72.4214,0,0,1.87633),
(113526,2,821.826,-4858.08,-72.4188,45000,2425001,2.22191),
(113526,3,828.811,-4868.09,-72.4186,0,0,5.23391),
(113526,4,830.355,-4874.1,-72.4281,0,0,4.52687),
(113526,5,829.348,-4878.43,-72.4351,45000,2425001,3.9968),
-- #113528
(113528,1,862.833,-4955.37,-72.4414,300000,0,0.24281),
(113528,2,880.207,-4949.45,-72.3585,300000,0,3.35103),
-- #113529
(113529,1,871.725,-4922.62,-72.4415,300000,0,3.33414),
(113529,2,854.353,-4928.18,-72.3585,300000,0,0.471239),
-- #113530
(113530,1,894.279,-4853.81,-72.4415,300000,0,2.042035),
(113530,2,888.743530,-4836.852539,-72.441536,300000,0,5.03),
-- #113532
(113532,1,909.738,-4820.7,-72.442,300000,2425001,2.40855),
(113532,2,917.445,-4848.85,-72.4416,300000,2425001,4.24491);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2425001;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2425001,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2425001,42,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Dragonflayer Soulreaver
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24249);
DELETE FROM creature_template_addon WHERE entry = 24249;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24249,0,0,1,0,0,0,'43170 43395');
-- individual
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(113439,0,8,1,0,0,0,'43170 43395');

-- Spotlight
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 105691;
DELETE FROM creature_addon WHERE guid = 105691;
DELETE FROM creature_movement WHERE id = 105691;
DELETE FROM game_event_creature WHERE guid = 105691;
DELETE FROM game_event_creature_data WHERE guid = 105691;
DELETE FROM creature_battleground WHERE guid = 105691;
DELETE FROM creature_linking WHERE guid = 105691 OR master_guid = 105691;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(105691,15631,571,1,1,0,0,962.563,-4822.56,-116.158,4.08407,300,0,0,4120,0,0,0);

-- Dragonflayer Berserker
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24216);
DELETE FROM creature_template_addon WHERE entry = 24216;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24216,0,0,1,0,27,0,'');

-- Val'kyr Overseer
UPDATE creature SET position_x = 820.7194, position_y = -4732.687, position_z = -84.69994 WHERE guid = 114183;
UPDATE creature SET position_x = 795.8828, position_y = -4708.047, position_z = -73.64442, orientation = 6.12532 WHERE guid = 114191;
UPDATE creature SET position_x = 788.4036, position_y = -4704.089, position_z = -73.61664, orientation = 0.0604655 WHERE guid = 114192;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (114183,114191,114192);
DELETE FROM creature_movement WHERE id IN (114183,114191,114192);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #114183
(114183,1,820.7194,-4732.687,-84.69994,0,0,250),
(114183,2,819.9661,-4713.885,-82.53329,0,0,250),
(114183,3,809.4178,-4704.249,-83.28329,0,0,250),
(114183,4,794.2107,-4704.679,-78.50551,0,0,250),
(114183,5,781.2782,-4710.818,-84.64439,0,0,250),
(114183,6,780.4466,-4742.383,-82.83884,0,0,250),
(114183,7,801.2428,-4748.294,-79.56106,0,0,250),
-- #114191
(114191,1,795.8828,-4708.047,-73.64442,0,0,250),
(114191,2,814.5335,-4707.928,-72.67219,0,0,250),
(114191,3,819.3694,-4734.119,-73.94997,0,0,250),
(114191,4,814.3889,-4744.631,-70.1722,0,0,250),
(114191,5,794.3046,-4746.817,-73.53331,0,0,250),
(114191,6,779.2559,-4732.826,-70.1722,0,0,250),
(114191,7,778.0256,-4713.221,-67.42218,0,0,250),
-- #114192
(114192,1,788.4036,-4704.089,-73.61664,0,0,250),
(114192,2,801.8325,-4702.211,-73.97776,0,0,250),
(114192,3,815.7599,-4716.915,-71.25553,0,0,250),
(114192,4,816.8605,-4741.882,-73.00555,0,0,250),
(114192,5,795.744,-4748.135,-71.9222,0,0,250),
(114192,6,778.3672,-4739.311,-69.28331,0,0,250),
(114192,7,775.7975,-4717.895,-73.11665,0,0,250);
