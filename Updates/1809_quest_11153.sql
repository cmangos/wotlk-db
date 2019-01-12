-- q.11153 'Break the Blockade'

-- Blockade Cannon 23771
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711473 AND 5711474;
DELETE FROM creature_movement WHERE id BETWEEN 5711473 AND 5711474;
DELETE FROM creature_linking WHERE guid BETWEEN 5711473 AND 5711474;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711473 AND 5711474;
DELETE FROM creature WHERE guid BETWEEN 5711473 AND 5711474;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711473,23771,571,1,1,0,0,1697.212,-2538.464,12.93638,2.740167,120,120,0,0,8982,0,0,0),
(5711474,23771,571,1,1,0,0,1704.689,-2528.733,13.06954,2.775074,120,120,0,0,8982,0,0,0);

-- Blockade Pirate 23755
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711475 AND 5711481;
DELETE FROM creature_movement WHERE id BETWEEN 5711475 AND 5711481;
DELETE FROM creature_linking WHERE guid BETWEEN 5711475 AND 5711481;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711475 AND 5711481;
DELETE FROM creature WHERE guid BETWEEN 5711475 AND 5711481;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711475,23755,571,1,1,0,0,1704.049,-2546.399,13.01447,5.462881,120,120,0,0,8982,0,0,0),
(5711476,23755,571,1,1,0,0,1723.040527,-2521.479980,13.634160,0.715789,120,120,6,0,8982,0,0,1),
(5711477,23755,571,1,1,0,0,1703.46,-2541.39,13.0874,3.97353,120,120,6,0,8982,0,0,1),
(5711478,23755,571,1,1,0,0,1699.953,-2539.66,13.03862,2.80998,120,120,0,0,8982,0,0,0),
(5711479,23755,571,1,1,0,0,1707.392,-2529.877,13.15357,2.792527,120,120,0,0,8982,0,0,0),
(5711480,23755,571,1,1,0,0,1713.526,-2538.519,13.12366,5.532694,120,120,0,0,8982,0,0,0),
(5711481,23755,571,1,1,0,0,1710.659668,-2534.123535,13.183924,4.179098,120,120,6,0,8982,0,0,1);
-- Updates
UPDATE creature SET position_x = 1439.994385, position_y = -2630.535400, position_z = 18.089767, spawndist = 6, MovementType = 1 WHERE guid = 85272;
UPDATE creature SET position_x = 1458.157715, position_y = -2636.536621, position_z = 13.016662, spawndist = 6, MovementType = 1 WHERE guid = 85278;
UPDATE creature SET position_x = 1471.021118, position_y = -2642.660889, position_z = 13.136705, spawndist = 6, MovementType = 1 WHERE guid = 85273;
UPDATE creature SET position_x = 1486.615479, position_y = -2646.778320, position_z = 13.597471, spawndist = 6, MovementType = 1 WHERE guid = 85259;
UPDATE creature SET position_x = 1687.986816, position_y = -2557.359863, position_z = 18.240585, spawndist = 6, MovementType = 1 WHERE guid = 138715;
UPDATE creature SET position_x = 1625.776001, position_y = -2292.432861, position_z = 18.206150, spawndist = 6, MovementType = 1 WHERE guid = 85280;
UPDATE creature SET position_x = 1609.482422, position_y = -2283.768555, position_z = 13.173045, spawndist = 6, MovementType = 1 WHERE guid = 85282;
UPDATE creature SET position_x = 1596.138184, position_y = -2276.239746, position_z = 13.338798, spawndist = 6, MovementType = 1 WHERE guid = 85286;
UPDATE creature SET position_x = 1582.869507, position_y = -2268.683838, position_z = 13.756673, spawndist = 6, MovementType = 1 WHERE guid = 85267;
UPDATE creature SET position_x = 1094.505005, position_y = -2313.336670, position_z = 18.067816, spawndist = 6, MovementType = 1 WHERE guid = 85288;
UPDATE creature SET position_x = 1076.874756, position_y = -2323.581055, position_z = 12.977704, spawndist = 6, MovementType = 1 WHERE guid = 85289;
UPDATE creature SET position_x = 1066.187378, position_y = -2329.751953, position_z = 13.095726, spawndist = 6, MovementType = 1 WHERE guid = 85264;
UPDATE creature SET position_x = 1051.073730, position_y = -2336.986816, position_z = 13.551332, spawndist = 6, MovementType = 1 WHERE guid = 85292;
UPDATE creature SET position_x = 1081.476807, position_y = -2313.121826, position_z = 7.537536, spawndist = 6, MovementType = 1 WHERE guid = 85291;
UPDATE creature SET position_x = 1200.754028, position_y = -2704.039307, position_z = 18.247084, spawndist = 6, MovementType = 1 WHERE guid = 85270;
UPDATE creature SET position_x = 1218.379883, position_y = -2693.185791, position_z = 13.085174, spawndist = 6, MovementType = 1 WHERE guid = 85275;
UPDATE creature SET position_x = 1228.842651, position_y = -2686.342529, position_z = 13.208489, spawndist = 6, MovementType = 1 WHERE guid = 85296;
UPDATE creature SET position_x = 1243.026001, position_y = -2676.917236, position_z = 13.663597, spawndist = 6, MovementType = 1 WHERE guid = 85294;
UPDATE creature SET position_x = 1682.042969, position_y = -2563.090088, position_z = 19.812025, orientation = 0.9075712, spawndist = 0, MovementType = 0 WHERE guid = 138714;
UPDATE creature SET position_x = 1474.999756, position_y = -2643.251221, position_z = 42.283039, orientation = 6.177848, spawndist = 0, MovementType = 0 WHERE guid = 85257;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (85257);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(85257,0,0,0,0,94,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (85258);
DELETE FROM creature_movement WHERE id IN (85258);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #85258
(85258,1,1622.429,-2289.979,55.65359,7000,2375501,2.513274);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2375501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2375501,3,1,14,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
