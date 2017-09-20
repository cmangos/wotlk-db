-- q.11636 'Magic Carpet Ride'
-- Yanni - gossip corrected
DELETE FROM gossip_menu WHERE entry = 9162;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUE
(9162, 12756,0,0), -- default
(9162, 12417,0,1121); -- for q.11636 only
DELETE FROM conditions WHERE condition_entry = 1121;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1121,9,11636,0);
DELETE FROM gossip_menu_option WHERE menu_id = 9162;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9162, 0, 0, 'Send me to Garrosh\'s Landing, Yanni.', 1, 1, -1, 0, 916201, 0, 0, NULL, 1121);
DELETE FROM dbscripts_on_gossip WHERE id = 916201;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(916201,0,15,45600,0,0,0,x,0,0,0,0,0,0,0,0,'');
-- spell
DELETE FROM spell_target_position WHERE id = 45601;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(45601, 571, 2754.275, 6130.638, 210.4463, 100);
DELETE FROM spell_script_target WHERE entry = 45602;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(45602,1,25460,2);
-- Amazing Flying Carpet
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72, Expansion = 2, UnitFlags = 520, MinLevelHealth = 9610, MaxLevelHealth = 9610, Armor = 7318, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 314, MinMeleeDmg = 307, MaxMeleeDmg = 438, InhabitType = 4, MovementType = 2, VehicleTemplateId = 314 WHERE entry = 25460;
DELETE FROM creature_movement_template WHERE entry = 25460;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25460,1,2754.275,6130.638,210.4463,0,0,100),
(25460,2,2753.64,6131.41,210.4463,0,0,100),
(25460,3,2751.96,6133.514,214.3789,0,0,100),
(25460,4,2728.81,6146.472,213.5733,0,0,100),
(25460,5,2634.248,6188.829,185.9068,0,0,100),
(25460,6,2597.958,6255.91,159.7123,0,0,100),
(25460,7,2538.717,6307.643,138.9901,0,0,100),
(25460,8,2393.912,6321.946,85.79566,0,0,100),
(25460,9,2420.326,6461.604,89.3512,0,0,100),
(25460,10,2509.925,6477.248,78.76788,0,0,100),
(25460,11,2567.008,6550.509,79.90676,0,0,100),
(25460,12,2652.553,6572.071,58.54562,0,0,100),
(25460,13,2725.122,6642.299,41.57339,0,0,100),
(25460,14,2773.236,6694.341,25.49007,0,0,100),
(25460,15,2797.658,6718.523,9.212306,5000,2546001,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2546001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2546001,1,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,'Player - unboard hevicle'),
(2546001,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp self');
