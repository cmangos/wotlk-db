-- Westfall Brigade Encampment - Grizzly Hills
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (516521,518473);
DELETE FROM creature_movement WHERE id IN (516521,518473);
DELETE FROM game_event_creature WHERE guid IN (516521,518473);
DELETE FROM game_event_creature_data WHERE guid IN (516521,518473);
DELETE FROM creature_battleground WHERE guid IN (516521,518473);
DELETE FROM creature_linking WHERE guid IN (516521,518473)
 OR master_guid IN (516521,518473);
DELETE FROM creature WHERE guid IN (516521,518473);

-- Westfall Brigade Scout 29285
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (524052,524053);

-- Captain Gryan Stoutmantle 26212
UPDATE creature SET position_x = 4606.641, position_y = -4229.929, position_z = 178.7377, orientation = 1.623156 WHERE id = 26212;
 -- gossip corrections
UPDATE gossip_menu SET condition_id = 20276 WHERE text_id = 12982; -- q.12 or q.65 not completed yet
UPDATE gossip_menu SET condition_id = 20281 WHERE text_id = 13510; -- q.12 or q.65 completed and q.166 not completed!
UPDATE gossip_menu SET condition_id = 20285 WHERE text_id = 13511; -- q.14 & q 166 completed
UPDATE gossip_menu SET condition_id = 20283 WHERE text_id = 13512; -- q.14 completed & q 166 not completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20274 AND 20285;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20274, 8, 12, 0, 1),
(20275, 8, 65, 0, 1),
(20276, -2, 20275, 20274, 0),
(20277, 8, 12, 0, 0),
(20278, 8, 65, 0, 0),
(20279, -2, 20278, 20277, 0),
(20280, 8, 166, 0, 1),
(20281, -1, 20279, 20280, 0),
(20282, 8, 14, 0, 0),
(20283, -1, 20282, 20280, 0),
(20284, 8, 166, 0, 0),
(20285, -1, 20284, 20282, 0);

-- Squire Walter 26371
UPDATE creature SET position_x = 4589.843, position_y = -4212.007, position_z = 178.6654, orientation = 3.857178, MovementType = 0, spawndist = 0 WHERE id = 26371;
DELETE FROM creature_movement_template WHERE entry IN (26371);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26371,1,4589.843,-4212.007,178.6654,3.857178,5000,2637101),
(26371,2,4591.646,-4210.116,179.6954,0.8726646,5000,2637102),
(26371,3,4593.296,-4211.938,178.9495,100,0,0),
(26371,4,4596.1,-4212.866,178.9495,100,0,0),
(26371,5,4597.85,-4214.075,178.6654,100,0,0),
(26371,6,4599.053,-4216.979,178.6654,100,0,0),
(26371,7,4601.088,-4216.894,178.7672,100,0,0),
(26371,8,4600.729,-4214.721,179.6024,100,5000,2637103),
(26371,9,4600.315,-4215.984,178.6863,100,0,0),
(26371,10,4599.499,-4219.589,178.6654,100,0,0),
(26371,11,4597.102,-4221.927,178.6654,100,0,0),
(26371,12,4592.944,-4221.343,178.6654,100,0,0),
(26371,13,4590.791,-4217.641,178.6654,100,0,0),
(26371,14,4589.843,-4212.007,178.6654,3.857178,2000,2637104);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2637101 AND 2637104;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2637101,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2637101,200,0,0,0,0,0,0,0x04,2000020804,0,0,0,0,0,0,0,''),
(2637102,1000,0,0,0,0,0,0,0x04,2000020805,0,0,0,0,0,0,0,''),
(2637102,4500,0,0,0,0,0,0,0x04,2000020806,0,0,0,0,0,0,0,''),
(2637103,1000,0,0,0,0,0,0,0x04,2000020807,0,0,0,0,0,0,0,''),
(2637104,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2637104,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020804 AND 2000020807;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020804,'What\'s that, girl? You\'re hungry already? Don\'t worry, I\'ll get the oats.',0,0,7,1,NULL),
(2000020805,'Now, where do they keep those oats?',0,0,7,1,NULL),
(2000020806,'Hmm... maybe over there.',0,0,7,6,NULL),
(2000020807,'No... no oats here, either.',0,0,7,1,NULL);

-- "Buckets" Cleary 26205
UPDATE creature SET position_x = 4555.565, position_y = -4215.476, position_z = 170.5834, orientation = 2.23425, MovementType = 2, spawndist = 0 WHERE id = 26205;
DELETE FROM creature_movement_template WHERE entry IN (26205);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26205,0,1,4555.565,-4215.476,170.5834,2.23425,120000,0),
(26205,0,2,4555.565,-4215.476,170.5834,2.23425,2000,2620501),
(26205,1,1,4558.015,-4218.612,170.7166,5.44245,10000,2620502),
(26205,1,2,4560.26,-4217.02,170.8083,5.44245,10000,2620502),
(26205,1,3,4558.015,-4218.612,170.7166,5.44245,10000,2620502),
(26205,1,4,4555.565,-4215.476,170.5834,2.23425,1000,2620503),
(26205,2,1,4555.565,-4215.476,170.5834,2.23425,55000,2620504);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2620501 AND 2620504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2620501,0,45,0,20226,0,0,0,0x04,0,0,0,0,0,0,0,0,'start random script'),
(2620502,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620502,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote reset'),
(2620503,0,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'default wp'),
(2620504,10,31,26392,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26392'),
(2620504,100,21,1,0,0,26392,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2620504,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2620504,200,0,0,0,0,26392,50,7,2000020808,0,0,0,0,0,0,0,''),
(2620504,3000,0,0,0,0,26392,50,7,2000020809,0,0,0,0,0,0,0,''),
(2620504,7000,0,0,0,0,0,0,0x04,2000020810,0,0,0,0,0,0,0,''),
(2620504,12000,0,0,0,0,26392,50,7,2000020811,0,0,0,0,0,0,0,''),
(2620504,14000,0,0,0,0,26392,50,7,2000020812,0,0,0,0,0,0,0,''),
(2620504,19000,0,0,0,0,26392,50,7,2000020813,0,0,0,0,0,0,0,''),
(2620504,23000,0,0,0,0,0,0,0x04,2000020814,0,0,0,0,0,0,0,''),
(2620504,28000,0,0,0,0,26392,50,7,2000020815,0,0,0,0,0,0,0,''),
(2620504,31000,1,25,0,0,26392,50,7,0,0,0,0,0,0,0,0,''),
(2620504,33000,0,0,0,0,26392,50,7,2000020816,0,0,0,0,0,0,0,''),
(2620504,38000,0,0,0,0,0,0,0x04,2000020817,0,0,0,0,0,0,0,''),
(2620504,40000,15,46963,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 46963'),
(2620504,43000,0,0,0,0,26392,50,7,2000020818,0,0,0,0,0,0,0,''),
(2620504,47000,0,0,0,0,0,0,0x04,2000020819,0,0,0,0,0,0,0,''),
(2620504,50000,0,0,0,0,26392,50,7,2000020820,0,0,0,0,0,0,0,''),
(2620504,51000,21,0,0,0,26392,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2620504,51100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'default wp'),
(2620504,101,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_random_templates WHERE id = 20226;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20226,1,20550,80,'"Buckets" Cleary 26205 - Random Script - 1-1'),
(20226,1,20551,20,'"Buckets" Cleary 26205 - Random Script - 1-2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20550 AND 20551;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20550,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'"Buckets" Cleary 26205 - Random Script - 1-1 - set wp 1'),
(20551,0,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'"Buckets" Cleary 26205 - Random Script - 1-2 - set wp 2');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020808 AND 2000020820;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020808,'Brrrr... It\'s cold up here.',0,0,7,1,NULL),
(2000020809,'Buckets! Where\'s my laundry?',0,0,7,6,NULL),
(2000020810,'I\'m working on it, Molsen. If you want it done faster, do it yourself.',0,0,7,25,NULL),
(2000020811,'No way.',0,0,7,274,NULL),
(2000020812,'I\'m a soldier, Buckets. You know, a fighting man... You\'re the laundry boy.',0,0,7,1,NULL),
(2000020813,'And not a very good one! Remember what you did to my tabard?',0,0,7,6,NULL),
(2000020814,'That was entirely your own fault, Molsen. Maybe you\'ll know to separate your colors from now on...',0,0,7,1,NULL),
(2000020815,'The tabard was pink when I got it back, Buckets. Pink! Think about that...',0,0,7,1,NULL),
(2000020816,'The whole squad laughed at me for a week! Don\'t let it happen again!',0,0,7,25,NULL),
(2000020817,'Fine. Have it your way.',0,0,7,66,NULL),
(2000020818,'What\'s wrong with you? That was dinner!',0,0,7,6,NULL),
(2000020819,'Now it\'s laundry.',0,0,7,11,NULL),
(2000020820,'You\'re dead, Buckets! You hear me? Dead!',0,0,7,5,NULL);

-- Private Jansen 26236 & Private Furlbrow 26235
UPDATE creature_template SET EquipmentTemplateid = 0 WHERE Entry = 26235;
DELETE FROM creature_movement_template WHERE entry = 26236;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26236,1,4559.23,-4190.13,173.567,0.663225,300000,2623601);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2623601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2623601,10,31,26235,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26235'),
(2623601,100,21,1,0,0,26235,40,7,0,0,0,0,0,0,0,0,'buddy active'),
(2623601,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2623601,201,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2623601,1000,0,0,0,0,0,0,0x04,2000020821,0,0,0,0,0,0,0,''),
(2623601,6000,0,0,0,0,0,0,0x04,2000020822,0,0,0,0,0,0,0,''),
(2623601,10000,0,0,0,0,26235,50,7,2000020823,0,0,0,0,0,0,0,''),
(2623601,13000,0,0,0,0,0,0,0x04,2000020824,0,0,0,0,0,0,0,''),
(2623601,16000,0,0,0,0,26235,50,7,2000020825,0,0,0,0,0,0,0,''),
(2623601,21000,0,0,0,0,0,0,0x04,2000020826,0,0,0,0,0,0,0,''),
(2623601,25000,0,0,0,0,26235,50,7,2000020827,0,0,0,0,0,0,0,''),
(2623601,29000,0,0,0,0,0,0,0x04,2000020828,0,0,0,0,0,0,0,''),
(2623601,32000,22,1994,0x01|0x02|0x04,0,26235,50,7,0,0,0,0,0,0,0,0,''),
(2623601,32010,22,1993,0x01|0x02|0x04,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2623601,32500,26,0,0,0,26235,50,3,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id = 20552;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20552,1000,0,0,0,0,26236,50,7,2000020829,0,0,0,0,0,0,0,''),
(20552,5000,0,0,0,0,0,0,0x04,2000020830,0,0,0,0,0,0,0,''),
(20552,5001,21,0,0,0,26236,40,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(20552,5005,18,0,0,0,26236,40,7,0,0,0,0,0,0,0,0,'buddy desp'),
(20552,5010,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020821 AND 2000020830;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020821,'Boy, what I wouldn\'t give for a bowl of old Salma Saldean\'s Westfall stew right about now.',0,0,7,1,NULL),
(2000020822,'Gruel and hardtack are no way to survive.',0,0,7,1,NULL),
(2000020823,'Y\'know, it\'s not really Saldean\'s recipe.',0,0,7,1,NULL),
(2000020824,'What?',0,0,7,6,NULL),
(2000020825,'It\'s not Salma Saldean\'s recipe. It\'s my Ma\'s. She asked some passerby to deliver it to Salma right before she and Pa left Westfall with Old Blanchy.',0,0,7,1,NULL),
(2000020826,'Yeah? Well, at least the Saldeans didn\'t flee Westfall when things got tough.',0,0,7,1,NULL),
(2000020827,'No one insults Ma and Pa! Take it back!',0,0,7,25,NULL),
(2000020828,'You heard what I said! Your parents are cowards, and so are you, Furlbrow!',0,0,7,5,NULL),
(2000020829,'OK, I take it back! Your Ma and Pa weren\'t cowards!',0,0,7,1,NULL),
(2000020830,'Glad you decided to see things my way...',0,0,7,1,NULL);

-- Westfall Brigade Footman 26217
-- missing added
DELETE FROM creature_addon WHERE guid = 516521;
DELETE FROM creature_movement WHERE id = 516521;
DELETE FROM game_event_creature WHERE guid = 516521;
DELETE FROM game_event_creature_data WHERE guid = 516521;
DELETE FROM creature_battleground WHERE guid = 516521;
DELETE FROM creature_linking WHERE guid = 516521
OR master_guid = 516521;
DELETE FROM creature WHERE guid = 516521;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(516521,26217,571,1,1,0,0,4593.638,-4212.936,179.0291,5.131268,300,300,0,0,42540,3561,0,0);
-- Updates
UPDATE creature SET position_x = 4523.097, position_y = -4161.472, position_z = 171.6209, orientation = 1.815142 WHERE guid = 512526;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (512508,512511,512513,512518,512519,512520,512521,512524,512528,512531,516521);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(512508,0,0,1,1,0,0,46769),
(512511,0,0,1,1,0,0,46581),
(512513,0,0,1,1,0,0,46769),
(512518,0,0,1,1,0,0,46769),
(512519,0,0,1,1,0,0,46769),
(512520,0,1,1,1,0,0,NULL),
(512521,0,1,1,1,0,0,NULL),
(512524,0,0,1,1,0,0,NULL),
(512528,0,1,1,1,0,0,NULL),
(512531,0,0,1,1,0,0,46769),
(516521,0,0,1,1,0,0,46581);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (512512,512524,512525,512530);
DELETE FROM creature_movement WHERE id IN (512512,512524,512525,512530);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 512512
(512512,1,4533.77,-4221.92,170.491,100,0,0),
(512512,2,4528.99,-4225.94,170.164,100,0,0),
(512512,3,4524.63,-4231.51,169.505,100,0,0),
(512512,4,4526.15,-4237.86,170.2,100,0,0),
(512512,5,4529.68,-4242.56,170.374,100,0,0),
(512512,6,4526.39,-4238.32,170.215,100,0,0),
(512512,7,4524.73,-4231.82,169.535,100,0,0),
(512512,8,4528.58,-4226.22,170.099,100,0,0),
(512512,9,4533.7,-4222.17,170.488,100,0,0),
(512512,10,4536.16,-4218,170.602,100,0,0),
-- 512524
(512524,1,4563.557,-4186.4,173.6098,5.72468,10000,2620502),
(512524,2,4560.47,-4180,173.484,100,0,0),
(512524,3,4561.14,-4173.36,173.486,0.174959,10000,2621701),
(512524,4,4561.12,-4175.7,173.4864,100,0,0),
(512524,5,4566.638,-4177.693,173.6098,0.2792527,10000,2620502),
-- 512525
(512525,1,4555.29,-4226.4,170.666,100,0,0),
(512525,2,4564.25,-4222.53,171.472,100,0,0),
(512525,3,4571.78,-4219.31,173.602,100,0,0),
(512525,4,4577.62,-4218.65,175.886,100,0,0),
(512525,5,4587.03,-4221.24,178.199,100,0,0),
(512525,6,4589.76,-4226.93,178.651,100,0,0),
(512525,7,4587.42,-4234.69,178.807,100,0,0),
(512525,8,4585.85,-4241.95,180.366,100,0,0),
(512525,9,4582.7,-4246.91,181.864,100,0,0),
(512525,10,4585.87,-4242.41,180.45,100,0,0),
(512525,11,4587.4,-4235.11,178.855,100,0,0),
(512525,12,4589.81,-4227.39,178.652,100,0,0),
(512525,13,4587.46,-4221.42,178.289,100,0,0),
(512525,14,4577.97,-4218.64,176.002,100,0,0),
(512525,15,4572.11,-4219.13,173.746,100,0,0),
(512525,16,4564.69,-4222.41,171.564,100,0,0),
(512525,17,4555.84,-4226.3,170.666,100,0,0),
(512525,18,4548.77,-4228.74,170.493,100,0,0),
-- 512530
(512530,1,4541.6,-4180.5,173.483,100,0,0),
(512530,2,4541.32,-4164.06,173.531,100,0,0),
(512530,3,4541.61,-4180.06,173.484,100,0,0),
(512530,4,4542.27,-4196.1,173.148,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2621701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2621701,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2621701,7000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');

-- Mother of Bambina 27460
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE id=27460;
UPDATE creature_template SET MovementType=2 WHERE entry=27460;
DELETE FROM creature_movement_template WHERE entry = 27460;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27460,1,4458.84,-4146.95,169.495,100,0,0),
(27460,2,4444.75,-4146.5,170.18,100,0,0),
(27460,3,4438.5,-4130.04,170.893,100,0,0),
(27460,4,4434.22,-4116.71,170.893,100,0,0),
(27460,5,4429.64,-4100.69,171.901,100,0,0),
(27460,6,4435.08,-4091.04,172.007,100,0,0),
(27460,7,4441.12,-4082.46,172.086,100,0,0),
(27460,8,4448.56,-4072,173.436,100,0,0),
(27460,9,4459.78,-4061.31,174.93,100,0,0),
(27460,10,4464.92,-4051.86,175.671,100,0,0),
(27460,11,4469.37,-4040.87,177.536,100,0,0),
(27460,12,4483.07,-4042.71,177.178,100,0,0),
(27460,13,4502.01,-4052.64,175.696,100,0,0),
(27460,14,4508.68,-4060.77,175.352,100,0,0),
(27460,15,4516.9,-4068.06,176.024,100,0,0),
(27460,16,4528.69,-4075.76,175.902,100,0,0),
(27460,17,4535.22,-4094.03,175.742,100,0,0),
(27460,18,4530.51,-4101.59,174.914,100,0,0),
(27460,19,4527.66,-4111.75,174.316,100,0,0),
(27460,20,4517.12,-4122.53,173.225,100,0,0),
(27460,21,4506.82,-4126.84,172.102,100,0,0),
(27460,22,4491.68,-4127.23,172.511,100,0,0),
(27460,23,4485.25,-4134.77,171.924,100,0,0),
(27460,24,4475.67,-4148.11,170.116,100,0,0),
(27460,25,4464.38,-4147.79,170.755,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20553;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20553,0,10,27462,60000,0,0,0,0,0,0,0,0,4477.54,-4095.95,172.038,5.24451,'Part of Mother of Bambina 27460 EAI: summon Westfall Brigade Hunter 27462');
-- links
DELETE FROM creature_linking WHERE master_guid = 518471;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(518472, 518471, 512+1),
(518470, 518471, 512),
(518469, 518471, 512);

-- Flora 27558
UPDATE creature SET position_x = 4469.071777, position_y = -4148.178223, position_z = 170.967361, orientation = 3.074673, MovementType = 0, spawndist = 0 WHERE guid = 518469;
-- Bambina 27461
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 27461;
-- Thudder 27459
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 27459;
-- Vengeful Bambina 27485
UPDATE creature_template SET Faction = 2000 WHERE entry = 27485;
