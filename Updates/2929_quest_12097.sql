-- q.12097 'Sarathstra, Scourge of the North'

-- Rokhan 26859
-- gossip option added
DELETE FROM gossip_menu_option WHERE menu_id = 9434;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9434,0,0,'Get that frostwyrm on the ground and I\'ll finish her.', 1, 1, -1, 0, 943401, 0, 0, NULL, 20074);
DELETE FROM `conditions` WHERE `condition_entry` = 20074;
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
(20074, 9, 12097, 1);
DELETE FROM dbscripts_on_gossip WHERE id = 943401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(943401,100,31,26858,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if found'),
(943401,500,0,0,0,0,0,0,0,2000020450,0,0,0,0,0,0,0,''),
(943401,2000,1,22,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- correct spell missing
(943401,2001,21,1,0,0,26858,515948,7 | 0x10,0,0,0,0,0,0,0,0,''),
(943401,2002,25,1,0,0,26858,515948,7 | 0x10,0,0,0,0,0,0,0,0,''),
(943401,2003,20,2,1,0,26858,515948,7 | 0x10,0,0,0,0,0,0,0,0,'set quest waypoints');
DELETE FROM dbscript_string WHERE entry = 2000020450;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020450,'Don\'t ya worry, mon. Just leave it to Rokhan. She be comin\'.',0,0,0,1,NULL);
-- Sarathstra 26858
UPDATE creature_template SET InhabitType = 4, MovementType = 2, MechanicImmuneMask = 16+524288 WHERE Entry = 26858;
UPDATE creature SET position_x = 4350.223, position_y = 762.1683, position_z = 149.3593, orientation = 0, spawndist = 0, MovementType = 2, spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE guid = 515948;
DELETE FROM creature_movement_template WHERE entry = 26858;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26858,0,1,4350.223,762.1683,149.3593,100,0,5),
(26858,0,2,4381.501,783.0218,141.6648,100,0,0),
(26858,0,3,4405.483,803.9666,141.6648,100,0,0),
(26858,0,4,4421.787,830.6276,141.6648,100,0,0),
(26858,0,5,4431.182,856.7361,141.6648,100,0,0),
(26858,0,6,4439.5,899.4145,141.6648,100,0,0),
(26858,0,7,4435.174,931.3344,141.6648,100,0,0),
(26858,0,8,4408.628,965.5596,141.6648,100,0,0),
(26858,0,9,4387.117,990.8156,144.0537,100,0,0),
(26858,0,10,4333.133,1034.991,145.6648,100,0,0),
(26858,0,11,4285.146,1040.901,142.9426,100,0,0),
(26858,0,12,4259.393,1010.951,141.6648,100,0,0),
(26858,0,13,4227.129,990.3797,141.6648,100,0,0),
(26858,0,14,4175.166,967.8286,141.6648,100,0,0),
(26858,0,15,4103.907,921.6374,141.6648,100,0,0),
(26858,0,16,4116.188,821.6868,141.6648,100,0,0),
(26858,0,17,4203.835,755.3116,148.4704,100,0,0),
(26858,0,18,4291.248,758.4948,149.3593,100,0,0),
--
(26858,1,1,4400.307,913.1443,141.6648,2.26391,0,5),
(26858,1,2,4400.307,913.1443,86.03818,2.26391,1000,2685801),
(26858,1,3,4396.26,917.477,83.1363,100,0,0),
(26858,1,4,4384.42,931.647,81.0272,100,0,0),
(26858,1,5,4374.62,943.172,82.6706,2.26391,120000,0),
(26858,1,6,4374.62,943.172,82.6706,2.26391,1000,2685802);
-- Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2685801,2685802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2685801,0,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Fly OFF'),
(2685802,0,39,1,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'FLy ON'),
(2685802,3000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set default waypoints'),
(2685802,4000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscripts_on_creature_death WHERE id = 26858;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26858,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
