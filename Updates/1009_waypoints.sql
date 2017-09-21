UPDATE creature SET MovementType = 2 WHERE guid = 69110;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19378;

-- Pathing for  Entry: 19378 'UDB FORMAT' 
DELETE FROM `creature_movement_template` WHERE `entry` = 19378;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- (19378,1,-1729.164,5813.11,148.6575,500,1937801,0,0,0,0,0,0,0,2.740167,0,0),
(19378,1,-1729.164,5813.11,148.6575,500,1937801,1.082104),
(19378,2,-1727.88,5816.611,148.9074,0,0,100),
(19378,3,-1727.38,5818.111,148.9074,0,0,100),
(19378,4,-1725.88,5823.611,148.9074,0,0,100),
(19378,5,-1724.219,5829.706,148.9074,0,0,100),
(19378,6,-1727.014,5833.12,148.6574,500,1937802,4.206244),
(19378,7,-1726.713,5822.525,148.9074,0,0,100),
(19378,8,-1726.463,5819.025,148.9074,0,0,100),
(19378,9,-1726.463,5817.525,148.9074,0,0,100),
(19378,10,-1727.788,5815.021,148.9075,0,0,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1937801,1937802);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1937801,0,32,1,0,0,0,0,0,'Anchorite Nindumen - Pause Waypoints'),
(1937802,0,32,1,0,0,0,0,0,'Anchorite Nindumen - Pause Waypoints'),
(1937802,0,0,0,0,2000001266,0,0,0,'Anchorite Nindumen - My friends, please join me in humble supplication to the Light.'), -- 02:05:20.273
(1937802,4,28,8,0,0,19346,10,0,'Harbinger Erothem - Kneel'), -- 02:05:24.610
(1937802,5,28,8,0,0,0,0,0,'Anchorite Nindumen - Kneel'), -- 02:05:25.826
(1937802,5,28,8,0,0,19138,68443,16,'Anchorite Attendant - Kneel'),
(1937802,5,28,8,0,0,19138,68442,16,'Anchorite Attendant - Kneel'),
(1937802,5,28,8,0,0,19142,68462,16,'Aldor Anchorite - Kneel'),
(1937802,5,28,8,0,0,19142,68463,16,'Aldor Anchorite - Kneel'),
(1937802,5,28,8,0,0,19138,68441,16,'Anchorite Attendant - Kneel'),
(1937802,6,28,8,0,0,19142,68460,16,'Aldor Anchorite - Kneel'),
(1937802,6,28,8,0,0,19138,68438,16,'Anchorite Attendant - Kneel'),
(1937802,6,28,8,0,0,19138,68440,16,'Anchorite Attendant - Kneel'),
(1937802,7,28,8,0,0,19138,68437,16,'Anchorite Attendant - Kneel'),
(1937802,7,28,8,0,0,19138,68439,16,'Anchorite Attendant - Kneel'),
(1937802,16,0,0,0,2000001267,0,0,0,'Anchorite Nindumen - Light that we embrace, we beseech thee...'), -- 02:05:36.840
(1937802,27,0,0,0,2000001268,0,0,0,'Anchorite Nindumen - Into our struggle against the darkness we have sent our children.'), -- 02:05:47.807
(1937802,38,0,0,0,2000001269,0,0,0,'Anchorite Nindumen - Please bless and protect them, and grant them success over those who seek to do us harm...'), -- 02:05:58.758
(1937802,49,0,0,0,2000001270,0,0,0,'Anchorite Nindumen - Continue to bless this, our ancient home, we beg.'), -- 02:06:09.710
(1937802,60,0,0,0,2000001271,0,0,0,'Anchorite Nindumen - Bless us with tolerance for our elven visitors.'), -- 02:06:20.630
(1937802,71,0,0,0,2000001272,0,0,0,'Anchorite Nindumen - By the Naaru, may it be so.'), -- 02:06:31.628
(1937802,75,28,0,0,0,19346,10,0,'Harbinger Erothem - Stand'), -- 02:06:35.153
(1937802,75,0,0,0,2000001273,19346,10,0,'Harbinger Erothem - May it be so.'), -- 02:06:35.262
(1937802,77,28,0,0,0,19138,68443,16,'Anchorite Attendant - Stand'), -- 02:06:36.495
(1937802,77,28,0,0,0,19138,68442,16,'Anchorite Attendant - Stand'),
(1937802,77,28,0,0,0,19142,68462,16,'Aldor Anchorite - Stand'),
(1937802,77,28,0,0,0,19142,68463,16,'Aldor Anchorite - Stand'),
(1937802,77,28,0,0,0,19138,68441,16,'Anchorite Attendant - Stand'),
(1937802,77,0,0,0,2000001273,19142,68463,16,'Aldor Anchorite - May it be so.'),
(1937802,77,0,0,0,2000001273,19138,68441,16,'Anchorite Attendant - May it be so.'),
(1937802,79,28,0,0,0,19142,68460,16,'Aldor Anchorite - Stand'),
(1937802,79,28,0,0,0,19138,68438,16,'Anchorite Attendant - Stand'),
(1937802,79,28,0,0,0,19138,68440,16,'Anchorite Attendant - Stand'),
(1937802,79,0,0,0,2000001273,19138,68438,16,'Anchorite Attendant - May it be so.'),
(1937802,80,32,0,0,0,19346,10,0,'Harbinger Erothem - Resume Waypoints'),
(1937802,81,28,0,0,0,19138,68437,16,'Anchorite Attendant - Stand'),
(1937802,81,28,0,0,0,19138,68439,16,'Anchorite Attendant - Stand'),
(1937802,81,0,0,0,2000001273,19138,68437,16,'Anchorite Attendant - May it be so.'),
(1937802,81,0,0,0,2000001273,19138,68439,16,'Anchorite Attendant - May it be so.'),
(1937802,82,28,0,0,0,0,0,0,'Anchorite Nindumen - Stand'), -- 02:06:42.439
(1937802,86,32,0,0,0,0,0,0,'Anchorite Nindumen - Resume Waypoints'); -- 02:06:46.073

-- Harbinger Erothem 
-- Pathing for  Entry: 19346 'UDB FORMAT' 
UPDATE creature SET MovementType = 2 WHERE guid = 68962;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19346;
DELETE FROM `creature_movement_template` WHERE `entry` = 19346;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19346,1,-1764.842,5726.246,126.5379,500,1934604,4.276057),
(19346,2,-1764.842,5726.246,126.5379,500,1934601,4.276057),
(19346,3,-1764.842,5726.246,126.5379,500,1934602,2.443461),
(19346,4,-1753.877,5758.066,136.9177,0,0,100),
(19346,5,-1752.697,5761.038,138.7543,0,0,100),
(19346,6,-1741.911,5794.957,146.5123,0,0,100),
(19346,7,-1734.54,5812.544,148.7986,0,0,100),
(19346,8,-1733.764,5814.145,148.6574,500,1934603,5.934119),
(19346,9,-1727.996,5824.952,148.6574,500,1934604,100),
(19346,10,-1741.497,5795.166,146.7986,0,0,100),
(19346,11,-1744.342,5788.361,146.6898,0,0,100),
(19346,12,-1749.211,5773.418,145.0416,0,0,100),
(19346,13,-1757.145,5750.438,132.9883,0,0,100),
(19346,14,-1763.291,5730.82,127.6633,0,0,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1934601 AND 1934604;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1934601,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934601,0,1,113,0,0,19337,68926,16,'Aldor Marksman - OneShotSaluteNoSheath'), -- 01:52:24.779
(1934601,0,1,113,0,0,19337,68927,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19337,68928,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19337,68929,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68495,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68496,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68497,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68498,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,66,0,0,19390,69136,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69137,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69138,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69139,16,'Mounted Neophyte - ONESHOT_SALUTE'), -- 01:52:24.779
(1934601,9,0,0,0,2000001253,0,0,0,'Harbinger Erothem - Listen up, soldiers!'), -- 01:52:35.683
(1934601,12,1,1,0,0,0,0,0,'Harbinger Erothem - Talk Emote'), -- 01:52:38.086
(1934601,13,0,0,0,2000001254,0,0,0,'Harbinger Erothem - You are here because you displayed exceptional aptitude and ability throughout your training period.'), -- 01:52:39.318
(1934601,23,0,0,0,2000001255,0,0,0,'Harbinger Erothem - You are now to be dispatched directly into a hostile environment on a treacherous mission.'), -- 01:52:49.162
(1934601,35,0,0,0,2000001256,0,0,0,'Harbinger Erothem - Nagrand, the land to the west, has recently become littered with enemy forge camps that threaten our security.'), -- 01:53:01.049
(1934601,46,0,0,0,2000001257,0,0,0,'Harbinger Erothem - With the bulk of our forces focused on Illidan, the task of cleansing these lands falls to you.'), -- 01:53:11.049
(1934601,57,0,0,0,2000001258,0,0,0,'Harbinger Erothem - You are to return in a week''s time with a detailed report of your actions.'), -- 01:53:21.937
(1934601,68,1,113,0,0,19337,68926,16,'Aldor Marksman - OneShotSaluteNoSheath'), -- 01:53:32.982
(1934601,68,1,113,0,0,19337,68927,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19337,68928,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19337,68929,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68495,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68496,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68497,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68498,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,66,0,0,19390,69136,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69137,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69138,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69139,16,'Mounted Neophyte - ONESHOT_SALUTE'), -- 01:53:32.982
(1934601,69,0,0,0,2000001259,0,0,0,'Harbinger Erothem - May the Light be with you... Dismissed!'), -- 01:53:34.417
(1934601,70,32,0,0,0,19337,68926,16,'Aldor Marksman - Unpause Waypoints'), -- 01:53:35.197
(1934601,70,32,0,0,0,19337,68927,16,'Aldor Marksman - Unpause Waypoints'),
(1934601,70,32,0,0,0,19337,68928,16,'Aldor Marksman - Unpause Waypoints'),
(1934601,70,32,0,0,0,19337,68929,16,'Aldor Marksman - Unpause Waypoints'), -- 01:53:35.197
(1934601,76,32,0,0,0,19153,68495,16,'Aldor Neophyte - Unpause Waypoints'), -- 01:53:41.297
(1934601,76,32,0,0,0,19153,68496,16,'Aldor Neophyte - Unpause Waypoints'),
(1934601,76,32,0,0,0,19153,68497,16,'Aldor Neophyte - Unpause Waypoints'),
(1934601,76,32,0,0,0,19153,68498,16,'Aldor Neophyte - Unpause Waypoints'), -- 01:53:41.297
(1934601,82,32,0,0,0,19390,69139,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:47.350
(1934601,83,32,0,0,0,19390,69138,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:49.768
(1934601,84,32,0,0,0,19390,69137,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:52.186
(1934601,85,32,0,0,0,19390,69136,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:53.418
(1934601,85,21,1,0,0,19390,69136,16,'Mounted Neophyte - Set Active Object'),
-- next sniff 02:02:03.088
(1934601,136,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:03:54.706
(1934602,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934602,0,21,1,0,0,19377,69109,16,'Neophyte Nemarn - Set Active Object'),
(1934602,0,32,0,0,0,19377,69109,16,'Neophyte Nemarn - Resume Waypoints'),
(1934602,0,0,0,0,2000001260,0,0,0,'Harbinger Erothem - By your leave, sir, I have pressing matters to attend to.'), -- 02:03:54.815
(1934602,6,36,0,0,0,18537,15,3,'Adyen the Lightwarden - Face Harbinger Erothem'), -- 02:04:00.962
(1934602,6,0,0,0,2000001261,18537,15,3,'Adyen the Lightwarden - Of course, Harbinger. Dismissed.'), -- 02:04:00.962
(1934602,10,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:04:04.425
(1934602,11,36,1,0,0,18537,25,0,'Adyen the Lightwarden - Reset facing'), -- 02:04:05.595
(1934603,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934603,0,0,0,0,2000001262,0,0,0,'Harbinger Erothem - Anchorite Nindumen, I have a request to make of you.'), -- 02:04:43.800
(1934603,6,36,0,0,0,19378,5,3,'Anchorite Nindumen - Face Harbinger Erothem'), -- 02:04:49.509
(1934603,6,0,0,0,2000001263,19378,5,3,'Anchorite Nindumen - Of course, my friend. How can I be of service to you?'), -- 02:04:49.603
(1934603,14,0,0,0,2000001264,0,0,0,'Harbinger Erothem - We''ve just sent another inexperienced squad into Nagrand. Might you offer a prayer for them?'), -- 02:04:57.980
(1934603,24,0,0,0,2000001265,19378,5,3,'Anchorite Nindumen - A noble request. It would be an honor, Erothem.'), -- 02:05:07.699
(1934603,30,32,0,0,0,19378,5,0,'Anchorite Nindumen - Resume Waypoints'), -- 02:05:13.658
(1934603,31,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:05:14.875
(1934604,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints');

-- Delete duplicate creatures
DELETE FROM creature_addon WHERE guid IN (68492,68923,68494,68925,68493,68924);
DELETE FROM creature_movement WHERE id IN (68492,68923,68494,68925,68493,68924);
DELETE FROM game_event_creature WHERE guid IN (68492,68923,68494,68925,68493,68924);
DELETE FROM game_event_creature_data WHERE guid IN (68492,68923,68494,68925,68493,68924);
DELETE FROM creature_battleground WHERE guid IN (68492,68923,68494,68925,68493,68924);
DELETE FROM creature_linking WHERE guid IN (68492,68923,68494,68925,68493,68924)
 OR master_guid IN (68492,68923,68494,68925,68493,68924);
DELETE FROM creature WHERE guid IN (68492,68923,68494,68925,68493,68924);


-- Fix some incorrect models
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 18552; -- Anchorite Nindumen should always be male
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 18568; -- Aldor Neophytes should never have a blood elf model

-- Fix spawntime
UPDATE creature SET spawntimesecsmin = 240, spawntimesecsmax = 240 WHERE id IN (19337,19153,19390);
-- Update spawnpoints
-- Aldor Marksman (Entry: 19337)
UPDATE creature SET position_x = -1802.312, position_y = 5625.468, position_z = 130.8952, orientation = 1.223965, MovementType = 2 WHERE guid = 68927;
UPDATE creature SET position_x = -1805.615, position_y = 5617.316, position_z = 130.8952, orientation = 1.252924, MovementType = 2 WHERE guid = 68928;
UPDATE creature SET position_x = -1789.205, position_y = 5624.502, position_z = 130.8952, orientation = 1.89208, MovementType = 2 WHERE guid = 68926;
UPDATE creature SET position_x = -1801.109, position_y = 5631.858, position_z = 130.8952, orientation = 1.280214, MovementType = 2 WHERE guid = 68929;

-- Aldor Neophyte (Entry: 19153)
UPDATE creature SET position_x = -1794.191, position_y = 5612.863, position_z = 130.8952, orientation = 1.082882, MovementType = 2 WHERE guid = 68496;
UPDATE creature SET position_x = -1805.95, position_y = 5622.243, position_z = 130.8952, orientation = 1.180748, MovementType = 2 WHERE guid = 68497;
UPDATE creature SET position_x = -1799.056, position_y = 5611.717, position_z = 130.8952, orientation = 1.288655, MovementType = 2 WHERE guid = 68498;
UPDATE creature SET position_x = -1793.721, position_y = 5629.261, position_z = 130.8952, orientation = 1.290115, MovementType = 2 WHERE guid = 68495;

-- Mounted Neophyte (Entry: 19390)
UPDATE creature SET position_x = -1801.896, position_y = 5620.681, position_z = 130.8917, orientation = 1.370655, MovementType = 2 WHERE guid = 69139;
UPDATE creature SET position_x = -1803.715, position_y = 5612.847, position_z = 130.8732, orientation = 1.185027, MovementType = 2 WHERE guid = 69136;
UPDATE creature SET position_x = -1797.213, position_y = 5626.55, position_z = 130.8866, orientation = 1.334945, MovementType = 2 WHERE guid = 69137;
UPDATE creature SET position_x = -1793.791, position_y = 5622.994, position_z = 130.8904, orientation = 1.315446, MovementType = 2 WHERE guid = 69138;

-- Position and orientation for two Neophyte Combatants (Entry: 19161)
UPDATE creature SET position_x = -1915.987, position_y = 5842.37, position_z = 130.3535, orientation = 5.811946 WHERE guid = 68537;
UPDATE creature SET position_x = -1903.086, position_y = 5848.502, position_z = 130.355, orientation = 4.380776 WHERE guid = 68538;

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1933701,1933702);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,comments) VALUES
(1933701,0,32,1,'Aldor Rise Event - Pause Waypoint Movement'),
(1933702,0,18,500,'Aldor Rise Event - Despawn after 500ms');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1933703,1933704);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1933703,0,35,5,17,0,0,0,0,0,0,0,0,0,0,0,'Aldor Marksman - Throw AI Event A'),
(1933704,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Mounted Neophyte - Pause Waypoints'),
(1933704,20,32,0,0,19346,20,0,0,0,0,0,0,0,0,0,'Harbinger Erothem - Unpause Waypoints');

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID:=68926;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1778.192,5672.22,129.078,0,0,100),
(@GUID,2,-1766.971,5693.268,127.6051,0,0,100),
(@GUID,3,-1762.069,5702.74,126.6575,0,0,100),
(@GUID,4,-1760.947,5718.916,126.5379,500,1933701,1.256637),
(@GUID,5,-1805.025,5747.444,129.0192,0,0,100),
(@GUID,6,-1818.657,5751.554,130.3697,0,0,100),
(@GUID,7,-1847.988,5759.828,130.026,0,0,100),
(@GUID,8,-1877.931,5798.328,130.8274,0,0,100),
(@GUID,9,-1905.221,5838.242,129.3154,0,0,100),
(@GUID,10,-1919.433,5866.676,133.2731,0,0,100),
(@GUID,11,-1940.906,5910.238,146.1888,0,0,100),
(@GUID,12,-1953.396,5940.021,154.9521,0,0,100),
(@GUID,13,-1960.283,5957.376,159.7179,1000,1933702,100);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID:=68927;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1778.924,5684.255,128.6094,0,0,100),
(@GUID,2,-1774.905,5693.274,127.4006,0,0,100),
(@GUID,3,-1769.585,5705.978,126.5997,0,0,100),
(@GUID,4,-1764.969,5720.305,126.5379,500,1933701,100),
(@GUID,5,-1805.117,5747.341,129.0174,0,0,100),
(@GUID,6,-1818.58,5751.302,130.3988,0,0,100),
(@GUID,7,-1847.911,5759.562,129.9737,0,0,100),
(@GUID,8,-1877.834,5798.227,130.8274,0,0,100),
(@GUID,9,-1905.556,5838.596,130.067,0,0,100),
(@GUID,10,-1914.649,5856.992,130.6617,0,0,100),
(@GUID,11,-1927.649,5883.567,138.3701,0,0,100),
(@GUID,12,-1947.301,5926.932,150.9453,0,0,100),
(@GUID,13,-1959.64,5957.695,159.6718,1000,1933702,100);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID:=68928;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1793.88,5652.471,130.1004,0,0,100),
(@GUID,2,-1779.501,5695.789,127.6154,0,0,100),
(@GUID,3,-1776.145,5706.066,126.6637,0,0,100),
(@GUID,4,-1768.914,5721.589,126.5378,500,1933701,1.256637),
(@GUID,5,-1804.953,5747.503,129.0089,0,0,100),
(@GUID,6,-1818.504,5751.568,130.295,0,0,100),
(@GUID,7,-1847.755,5759.863,129.9951,0,0,100),
(@GUID,8,-1877.996,5798.19,130.8274,0,0,100),
(@GUID,9,-1905.705,5838.524,130.0669,0,0,100),
(@GUID,10,-1921.163,5870.436,134.4377,0,0,100),
(@GUID,11,-1938.998,5907.49,145.1379,0,0,100),
(@GUID,12,-1956.217,5947.585,157.6335,0,0,100),
(@GUID,13,-1961.288,5959.537,159.8465,1000,1933702,100);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID:=68929;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1792.861,5658.528,129.7847,0,0,100),
(@GUID,2,-1785.278,5700.292,127.6757,0,0,100),
(@GUID,3,-1783.773,5707.17,126.7904,0,0,100),
(@GUID,4,-1772.672,5722.908,126.5378,500,1933701,1.256637),
(@GUID,5,-1804.878,5747.761,129.0091,0,0,100),
(@GUID,6,-1818.485,5751.704,130.3592,0,0,100),
(@GUID,7,-1847.872,5759.825,130.013,0,0,100),
(@GUID,8,-1878.022,5798.293,130.8274,0,0,100),
(@GUID,9,-1905.003,5838.45,129.3144,0,0,100),
(@GUID,10,-1906.835,5840.901,130.032,0,1933703,100),
(@GUID,11,-1914.211,5855.933,130.7464,0,1933703,100),
(@GUID,12,-1925.211,5878.183,136.7464,0,1933703,100),
(@GUID,13,-1933.961,5895.683,141.9964,0,1933703,100),
(@GUID,14,-1942.158,5914.172,147.4706,0,1933703,100),
(@GUID,15,-1950.908,5934.672,153.4706,0,1933703,100),
(@GUID,16,-1961.223,5959.582,159.7202,1000,1933702,100);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID:=68495;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1784.805,5658.465,129.6731,0,0,100),
(@GUID,2,-1774.039,5693.126,127.7665,0,0,100),
(@GUID,3,-1771.261,5701.67,126.707,0,0,100),
(@GUID,4,-1761.789,5716.161,126.5379,500,1933701,1.256637),
(@GUID,5,-1799.694,5743.764,128.3671,0,0,100),
(@GUID,6,-1818.525,5751.929,130.4304,0,0,100),
(@GUID,7,-1847.91,5759.486,130.0354,0,0,100),
(@GUID,8,-1875.93,5798.658,130.8274,0,0,100),
(@GUID,9,-1905.644,5838.528,130.1044,0,0,100),
(@GUID,10,-1922.229,5872.448,135.1535,0,0,100),
(@GUID,11,-1936.446,5901.069,143.5479,0,0,100),
(@GUID,12,-1951.226,5934.46,153.33,0,0,100),
(@GUID,13,-1961.083,5959.479,159.836,1000,1933702,100);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID:=68496;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1778.234,5665.451,129.204,0,0,100),
(@GUID,2,-1768.006,5693.273,127.4803,0,0,100),
(@GUID,3,-1765.01,5701.094,126.6908,0,0,100),
(@GUID,4,-1765.721,5717.478,126.5379,500,1933701,1.256637),
(@GUID,5,-1805.354,5747.04,129.0013,0,0,100),
(@GUID,6,-1818.63,5751.352,130.3179,0,0,100),
(@GUID,7,-1847.956,5759.682,130.0179,0,0,100),
(@GUID,8,-1877.96,5798.33,130.8274,0,0,100),
(@GUID,9,-1905.211,5838.223,129.3155,0,0,100),
(@GUID,10,-1919.392,5866.708,133.2638,0,0,100),
(@GUID,11,-1935.306,5898.228,142.689,0,0,100),
(@GUID,12,-1951.051,5934.496,153.5496,0,0,100),
(@GUID,13,-1960.873,5959.505,159.7293,1000,1933702,100);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID:=68497;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1789.24,5662.555,129.5341,0,0,100),
(@GUID,2,-1780.067,5696.582,127.5762,0,0,100),
(@GUID,3,-1769.853,5718.849,126.5378,500,1933701,1.256637),
(@GUID,4,-1805.037,5747.24,129.0394,0,0,100),
(@GUID,5,-1818.508,5751.78,130.4208,0,0,100),
(@GUID,6,-1847.834,5759.917,129.9873,0,0,100),
(@GUID,7,-1878.02,5798.321,130.8274,0,0,100),
(@GUID,8,-1905.249,5838.511,129.3172,0,0,100),
(@GUID,9,-1925.208,5878.073,136.7362,0,0,100),
(@GUID,10,-1940.732,5910.264,146.1952,0,0,100),
(@GUID,11,-1953.372,5939.98,154.951,0,0,100),
(@GUID,12,-1961.003,5959.447,159.6558,1000,1933702,100);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID:=68498;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1781.275,5680.161,128.7741,0,0,100),
(@GUID,2,-1777.585,5694.561,127.4906,0,0,100),
(@GUID,3,-1774.258,5707.771,126.5959,0,0,100),
(@GUID,4,-1773.632,5720.067,126.5378,500,1933701,1.256637),
(@GUID,5,-1805.071,5747.335,129.0273,0,0,100),
(@GUID,6,-1818.452,5751.487,130.2789,0,0,100),
(@GUID,7,-1847.887,5759.892,129.9956,0,0,100),
(@GUID,8,-1878.064,5798.131,130.8274,0,0,100),
(@GUID,9,-1905.234,5838.334,129.3159,0,0,100),
(@GUID,10,-1919.258,5866.711,133.2353,0,0,100),
(@GUID,11,-1927.707,5883.394,138.2336,0,0,100),
(@GUID,12,-1942.684,5914.093,147.3178,0,0,100),
(@GUID,13,-1956.121,5947.675,157.485,0,0,100),
(@GUID,14,-1960.855,5959.668,159.7002,1000,1933702,100);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID:=69136;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1778.341,5667.918,129.2888,0,0,100),
(@GUID,2,-1775.337,5672.026,129.0581,0,0,100),
(@GUID,3,-1766.249,5693.59,127.4126,0,0,100),
(@GUID,4,-1763.865,5710.114,126.5379,500,1933704,1.256637),
(@GUID,5,-1805.013,5747.344,129.0313,0,0,100),
(@GUID,6,-1818.55,5751.653,130.3539,0,0,100),
(@GUID,7,-1847.982,5759.604,130.0266,0,0,100),
(@GUID,8,-1877.98,5798.273,130.8274,0,0,100),
(@GUID,9,-1905.126,5838.433,129.3155,0,0,100),
(@GUID,10,-1919.692,5866.61,133.3939,0,0,100),
(@GUID,11,-1927.87,5883.484,138.3213,0,0,100),
(@GUID,12,-1946.719,5923.85,149.9217,0,0,100),
(@GUID,13,-1956.332,5947.493,157.6469,0,0,100),
(@GUID,14,-1961.106,5959.487,159.758,1000,1933702,100);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID:=69137;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1785.906,5669.068,129.1966,0,0,100),
(@GUID,2,-1776.566,5693.338,127.6255,0,0,100),
(@GUID,3,-1775.374,5695.572,126.9875,0,0,100),
(@GUID,4,-1767.61,5711.361,126.5379,500,1933701,1.256637),
(@GUID,5,-1805.204,5747.251,129.044,0,0,100),
(@GUID,6,-1818.681,5751.421,130.3778,0,0,100),
(@GUID,7,-1847.774,5759.517,130.0284,0,0,100),
(@GUID,8,-1877.92,5798.194,130.8274,0,0,100),
(@GUID,9,-1905.113,5838.43,129.3176,0,0,100),
(@GUID,10,-1919.543,5866.666,133.4483,0,0,100),
(@GUID,11,-1936.283,5901.04,143.5694,0,0,100),
(@GUID,12,-1951.494,5934.388,153.4136,0,0,100),
(@GUID,13,-1960.96,5959.598,159.7436,1000,1933702,100);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID:=69138;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1777.945,5675.802,128.944,0,0,100),
(@GUID,2,-1773.947,5693.288,127.4558,0,0,100),
(@GUID,3,-1771.643,5712.873,126.5378,500,1933701,1.256637),
(@GUID,4,-1804.982,5747.594,129.0388,0,0,100),
(@GUID,5,-1818.473,5751.58,130.2556,0,0,100),
(@GUID,6,-1847.81,5759.847,129.9849,0,0,100),
(@GUID,7,-1877.841,5798.348,130.8274,0,0,100),
(@GUID,8,-1905.289,5838.466,129.3148,0,0,100),
(@GUID,9,-1919.597,5866.672,133.2798,0,0,100),
(@GUID,10,-1935.219,5898.25,142.5467,0,0,100),
(@GUID,11,-1953.283,5939.861,154.9822,0,0,100),
(@GUID,12,-1961.159,5959.6,159.8344,1000,1933702,100);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID:=69139;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,-1793.423,5661.188,129.6791,0,0,100),
(@GUID,2,-1779.951,5695.966,127.6695,0,0,100),
(@GUID,3,-1775.664,5713.868,126.5378,500,1933701,100),
(@GUID,4,-1805.241,5746.8,129.0061,0,0,100),
(@GUID,5,-1818.651,5751.343,130.2397,0,0,100),
(@GUID,6,-1847.748,5759.356,129.995,0,0,100),
(@GUID,7,-1877.981,5798.265,130.8274,0,0,100),
(@GUID,8,-1905.227,5838.397,129.3174,0,0,100),
(@GUID,9,-1919.316,5866.584,133.3087,0,0,100),
(@GUID,10,-1933.803,5896.036,141.8348,0,0,100),
(@GUID,11,-1947.612,5926.974,150.8345,0,0,100),
(@GUID,12,-1960.673,5959.615,159.679,1000,1933702,100);

-- Pathing for  Entry: 19377 'UDB FORMAT' 
DELETE FROM `creature` WHERE `guid` = 69108; -- Delete duplicate
UPDATE `creature` SET position_x = -1978.887, position_y = 5673.554, position_z = 117.6499, orientation = 3.752458, `MovementType` = 2 WHERE `guid` =  69109;
UPDATE `creature_template` SET `MovementType` = 2 WHERE entry = 19377;
DELETE FROM `creature_movement_template` WHERE `entry` = 19377;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19377,1,-1978.887,5673.554,117.6499,500,1937701,3.752458),
(19377,2,-1931.089,5720.728,124.5082,0,0,100),
(19377,3,-1922.898,5727.902,129.0465,0,0,100),
(19377,4,-1918.229,5731.971,129.3523,0,0,100),
(19377,5,-1913.227,5735.799,129.4535,0,0,100),
(19377,6,-1877.2,5754.718,129.6287,0,0,100),
(19377,7,-1848.056,5757.688,129.6179,0,0,100),
(19377,8,-1834.884,5756.401,131.1362,0,0,100),
(19377,9,-1811.401,5749.086,129.9691,0,0,100),
(19377,10,-1792.716,5736.938,128.5189,0,0,100),
(19377,11,-1779.978,5728.731,127.3369,0,0,100),
(19377,13,-1776.125,5726.785,126.5378,500,1937702,1.570796),
(19377,14,-1805.227,5746.896,128.9853,0,0,100),
(19377,15,-1818.763,5750.633,130.2381,0,0,100),
(19377,16,-1847.833,5759.405,129.9671,0,0,100),
(19377,17,-1895.131,5746.125,129.7035,0,0,100),
(19377,18,-1910.438,5738.782,129.5721,0,0,100),
(19377,19,-1911.448,5738.215,129.4891,0,0,100),
(19377,20,-1914.947,5735.202,129.4209,0,0,100),
(19377,21,-1916.99,5733.518,129.3232,0,0,100),
(19377,22,-1931.835,5721.791,124.5857,0,0,100),
(19377,23,-1961.703,5699.614,118.0866,0,0,100),
(19377,24,-1977.591,5675.536,117.9064,0,0,100);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1937701,1937702);
INSERT INTO dbscripts_on_creature_movement (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1937701,0,21,0,0,0,0,0,0,'Neophyte Nemarn - Active Object Off'),
(1937701,0,32,1,0,0,0,0,0,'Neophyte Nemarn - Pause Waypoints'),

(1937702,0,32,1,0,0,0,0,0,'Neophyte Nemarn - Pause Waypoints'),
(1937702,0,1,2,0,0,0,0,0,'Neophyte Nemarn - OneShotBow'), -- 02:14:01.935
(1937702,4,0,0,0,2000001274,0,0,0,'Neophyte Nemarn - Sir, I am here to deliver my report from the Scryer\'s Tier.'), -- 02:14:05.695
(1937702,12,0,0,0,2000001275,18537,10,3,'Adyen the Lightwarden - Well, out with it, neophyte...'), -- 02:14:13.152
(1937702,19,0,0,0,2000001276,0,0,0,'Neophyte Nemarn - Sir, it\'s impossible to read anything into their actions.'), -- 02:14:20.312
(1937702,26,0,0,0,2000001277,0,0,0,'Neophyte Nemarn - Their movements are totally chaotic, as if they themselves know not what they are about.'), -- 02:14:27.582
(1937702,33,0,0,0,2000001278,0,0,0,'Neophyte Nemarn - My apologies, sir. I wish I had more to report.'), -- 02:14:34.867
(1937702,41,0,0,0,2000001279,18537,10,3,'Adyen the Lightwarden - It is exactly as I expected, soldier. They know we watch them closely.'), -- 02:14:42.417
(1937702,48,0,0,0,2000001280,18537,10,3,'Adyen the Lightwarden - They mask their intentions with meaningless movements to confuse us.'), -- 02:14:49.640
(1937702,56,0,0,0,2000001281,18537,10,3,'Adyen the Lightwarden - In time, you may learn to see through their deceptions.'), -- 02:14:56.863
(1937702,63,0,0,0,2000001282,18537,10,3,'Adyen the Lightwarden - Until then, your presence at your post will keep them on their toes.'), -- 02:15:04.086
(1937702,70,0,0,0,2000001283,0,0,0,'Neophyte Nemarn - As you command, sir.'), -- 02:15:11.324
(1937702,73,1,2,0,0,0,0,0,'Neophyte Nemarn - OneShotBow'), -- 02:15:14.834
(1937702,73,32,0,0,0,0,0,0,'Neophyte Nemarn - Resume Waypoints'); -- 02:15:14.834

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001253 AND 2000001283;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001253, 'Listen up, soldiers!', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001254, 'You are here because you displayed exceptional aptitude and ability throughout your training period.', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001255, 'You are now to be dispatched directly into a hostile environment on a treacherous mission.', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001256, 'Nagrand, the land to the west, has recently become littered with enemy forge camps that threaten our security.', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001257, 'With the bulk of our forces focused on Illidan, the task of cleansing these lands falls to you.', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001258, 'You are to return in a week''s time with a detailed report of your actions.', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001259, 'May the Light be with you... Dismissed!', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001260, 'By your leave, sir, I have pressing matters to attend to.', 0, 0, 0, 1, 'Harbinger Erothem (Entry: 19346)'),
(2000001261, 'Of course, Harbinger. Dismissed.', 0, 0, 0, 273, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001262, 'Anchorite Nindumen, I have a request to make of you.', 0, 0, 0, 1, 'Harbinger Erothem (Entry: 19346)'),
(2000001263, 'Of course, my friend. How can I be of service to you?', 0, 0, 0, 6, 'Anchorite Nindumen (Entry: 19378)'),
(2000001264, 'We''ve just sent another inexperienced squad into Nagrand. Might you offer a prayer for them?', 0, 0, 0, 0, 'Harbinger Erothem (Entry: 19346)'),
(2000001265, 'A noble request. It would be an honor, Erothem.', 0, 0, 0, 1, 'Anchorite Nindumen (Entry: 19378)'),
(2000001266, 'My friends, please join me in humble supplication to the Light.', 0, 0, 0, 1, 'Anchorite Nindumen (Entry: 19378)'),
(2000001267, 'Light that we embrace, we beseech thee...', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001268, 'Into our struggle against the darkness we have sent our children.', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001269, 'Please bless and protect them, and grant them success over those who seek to do us harm...', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001270, 'Continue to bless this, our ancient home, we beg.', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001271, 'Bless us with tolerance for our elven visitors.', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001272, 'By the Naaru, may it be so.', 0, 0, 0, 0, 'Anchorite Nindumen (Entry: 19378)'),
(2000001273, 'May it be so.', 0, 0, 0, 0, 'Praying Aldor NPCs'),
(2000001274, 'Sir, I am here to deliver my report from the Scryer''s Tier.', 0, 0, 0, 0, 'Neophyte Nemarn (Entry: 19377)'),
(2000001275, 'Well, out with it, neophyte...', 0, 0, 0, 1, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001276, 'Sir, it''s impossible to read anything into their actions.', 0, 0, 0, 1, 'Neophyte Nemarn (Entry: 19377)'),
(2000001277, 'Their movements are totally chaotic, as if they themselves know not what they are about.', 0, 0, 0, 0, 'Neophyte Nemarn (Entry: 19377)'),
(2000001278, 'My apologies, sir. I wish I had more to report.', 0, 0, 0, 1, 'Neophyte Nemarn (Entry: 19377)'),
(2000001279, 'It is exactly as I expected, soldier. They know we watch them closely.', 0, 0, 0, 273, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001280, 'They mask their intentions with meaningless movements to confuse us.', 0, 0, 0, 1, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001281, 'In time, you may learn to see through their deceptions.', 0, 0, 0, 0, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001282, 'Until then, your presence at your post will keep them on their toes.', 0, 0, 0, 1, 'Adyen the Lightwarden (Entry: 18537)'),
(2000001283, 'As you command, sir.', 0, 0, 0, 273, 'Neophyte Nemarn (Entry: 19377)');
