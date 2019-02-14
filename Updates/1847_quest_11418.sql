-- q.11418 'We Call Him Steelfeather'

-- Spotted Hippogryph Hatchling
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (114324,114325);

-- Hippogryph Meal
UPDATE gameobject SET spawntimesecsmin = -30, spawntimesecsmax = -30 WHERE guid = 26639;

-- Steelfeather
UPDATE creature SET position_x = 2477.783, position_y = -5167.505, position_z = 338.1654, orientation = 1.60637 WHERE guid = 114238;
DELETE FROM creature_movement_template WHERE entry = 24514;
insert into creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) values
(24514,0,1,2477.783,-5167.505,338.1654,100,0,2451401),
(24514,0,2,2453.174,-5200.553,335.7767,100,0,5),
(24514,0,3,2441.898,-5228.26,335.7768,100,0,5),
(24514,0,4,2446.598,-5258.514,335.7768,100,0,5),
(24514,0,5,2461.548,-5279.109,330.8322,100,0,5),
(24514,0,6,2469.492,-5265.773,328.7492,100,0,5),
(24514,0,7,2483.937,-5239.713,328.7492,100,0,5),
(24514,0,8,2489.816,-5214.609,328.7492,100,0,5),
(24514,0,9,2472.942,-5187.097,328.7492,100,0,5),
(24514,0,10,2447.427,-5154.01,328.7492,100,0,5),
(24514,0,11,2448.527,-5117.297,328.7492,100,0,5),
(24514,0,12,2457.746,-5075.976,328.7492,100,0,5),
(24514,0,13,2475.151,-5037.405,328.7492,100,0,5),
(24514,0,14,2494.721,-5013.08,328.7492,100,0,5),
(24514,0,15,2517.286,-4991.738,328.7492,100,0,5),
(24514,0,16,2545.912,-4996.194,328.7492,100,0,5),
(24514,0,17,2561.845,-5038.04,344.6377,100,0,5),
(24514,0,18,2562.655,-5085.555,352.6371,100,0,5),
(24514,0,19,2542.082,-5106.718,352.6371,100,0,5),
(24514,0,20,2505.118,-5137.163,345.4429,100,0,2451402),
-- For quest
(24514,1,1,2574.65,-5219.3,375.375,0,100,2451401),
(24514,1,2,2574.65,-5219.3,375.375,4.33504,20000,2451403);
-- Script
UPDATE creature_template SET SpeedWalk = (5 / 2.5), SpeedRun = (16 / 7) WHERE Entry = 24514;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2451401,2451402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2451401,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2451401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2451402,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2451403,3,9,26639,30,0,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(2451403,14,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Part of Steelfeather 24514 EAI
DELETE FROM dbscripts_on_relay WHERE id  = 20149;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20149,23,34,20015,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Steelfeather 24514 EAI'),
(20149,25,15,43984,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Steelfeather 24514 EAI');
DELETE FROM conditions WHERE condition_entry = 20015;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20015, 1, 43969, 0);

-- End script
DELETE FROM dbscripts_on_quest_end WHERE id = 11418;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11418,0,31,24131,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24131'),
(11418,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11418,1,21,1,0,0,24131,50,7,0,0,0,0,0,0,0,0,'buddy: active'),
(11418,1,0,0,0,0,0,0,0,2000001838,0,0,0,0,0,0,0,''),
(11418,6,0,0,0,0,24131,50,7,2000001839,0,0,0,0,0,0,0,'buddy: say'),
(11418,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.061455,''),
(11418,10,0,0,0,0,0,0,0,2000001840,0,0,0,0,0,0,0,''),
(11418,13,0,0,0,0,24131,50,7,2000001841,0,0,0,0,0,0,0,'buddy: say'),
(11418,17,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.248279,''),
(11418,18,1,274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11418,19,21,0,0,0,24131,50,7,0,0,0,0,0,0,0,0,'buddy: unactive'),
(11418,20,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11418 WHERE entry = 11418;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001838 AND 2000001841;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001838,'Y\'hear that, Jethan? You\'re not getting that Steelfeather trophy now that we know she\'s a mother.',0,0,0,1,NULL),
(2000001839,'Why not? Just think how much better it\'ll look with the hatchlings to either side --',0,0,0,6,NULL),
(2000001840,'Jethan!',0,0,0,25,NULL),
(2000001841,'What? I\'m just sayin\' that\'s how we do things in Grizzly Hills.',0,0,0,1,NULL);