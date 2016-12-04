-- Gossips

-- Tally Zapnabbner
-- only when quest is active and item is mising
UPDATE gossip_menu_option SET action_script_id = 830301, condition_id = 1085 WHERE menu_id = 8303 AND id = 0;
DELETE FROM conditions WHERE condition_entry BETWEEN 1081 AND 1085;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1081, 9, 10710, 0),
(1082, 16, 30539, 1),
(1083, 16, 30540, 1),
(1084, -2, 1083, 1082),
(1085, -1, 1084, 1081);
-- create another item for player
DELETE FROM dbscripts_on_gossip WHERE id = 830301; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(830301,0,17,30540,1,0,0,0,0,0,0,0,0,0,0,0,'add item');

-- Rally Zapnabbner
DELETE FROM gossip_menu WHERE entry = 8304;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(8304,10360,0,0),
(8304,10537,0,31); -- only if player has debuff (WOTLKDB free cond.ENTRY used)
DELETE FROM conditions WHERE condition_entry IN (31,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(31, 1, 37108, 0),
(1086, 11, 37108, 0),
(1087, 9, 10557, 0),
(1088, -1, 1087, 1086),
(1089, -1, 1086, 1081),
(1090, -1, 1086, 480),
(1091, -1, 1086, 481),
(1092, -1, 1086, 482),
-- final
-- no bebuff and any of the above quests completed
(1093, 8, 10711, 0),
(1094, 8, 10712, 0),
(1095, 8, 10716, 0),
(1096, -2, 1093, 483),
(1097, -2, 1095, 1094),
(1098, -2, 1097, 1096),
(1099, -1, 1098, 1086),
-- Tally's Waiver (Signed) - req
(1100, 2, 30539, 1);
-- Gossip options updated
UPDATE gossip_menu_option SET action_script_id = 830401, condition_id = 1088 WHERE menu_id = 8304 AND id = 0; -- only if no debuff and q.10557 is active 
UPDATE gossip_menu_option SET condition_id = 1089 WHERE menu_id = 8304 AND id = 1; -- only if no debuff and q.10710 is active
UPDATE gossip_menu_option SET action_script_id = 830402, condition_id = 1090 WHERE menu_id = 8304 AND id = 2; -- only if no debuff and q.10711 is active
UPDATE gossip_menu_option SET action_script_id = 830403, condition_id = 1091 WHERE menu_id = 8304 AND id = 3; -- only if no debuff and q.10712 is active
UPDATE gossip_menu_option SET condition_id = 1092 WHERE menu_id = 8304 AND id = 4; -- only if no debuff and q.10716 is active (quest not active BETA only)
UPDATE gossip_menu_option SET condition_id = 1099 WHERE menu_id = 8304 AND id = 5; -- only if no debuff and any of the above completed
UPDATE gossip_menu_option SET action_script_id = 845401, condition_id = 1100 WHERE menu_id = 8454 AND id = 0; -- only if player has signed note
DELETE FROM gossip_menu_option WHERE menu_id = 8455 AND id IN (0, 1, 2);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id,  condition_id) VALUES
(8455, 0, 0, 'Send me back to the Singing Ridge.', 1, 1, -1, 845401, 483),
(8455, 1, 0, 'Send me back to the Razaan\'s Landing.', 1, 1, -1, 830402, 1093),
(8455, 2, 0, 'Send me back to the Ruuan Weald.', 1, 1, -1, 830403, 1094);

-- Quests
-- Cannon Channel Target - missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 80245;
DELETE FROM creature_addon WHERE guid = 80245;
DELETE FROM creature_movement WHERE id = 80245;
DELETE FROM game_event_creature WHERE guid = 80245;
DELETE FROM game_event_creature_data WHERE guid = 80245;
DELETE FROM creature_battleground WHERE guid = 80245;
DELETE FROM creature_linking WHERE guid = 80245 OR master_guid = 80245;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(80245,21394,530,1,1,0,0,1920.129517,5581.898926,272.143,5.269419,300,0,0,300,0,0,0);
-- InhabitType corrected for Cannon Channeler and Toshley Flying Machine
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE entry IN (21393,21394,21930,21935,21942,21944,22089);
UPDATE creature_template_addon SET auras = NULL WHERE entry IN (21394,21413,21930,21942,21944);
-- target corrected
DELETE FROM spell_script_target WHERE entry IN (36795,36811,37913,37954,37970);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36795,1,21394,0),
(36811,1,21413,0),
(37913,1,21930,0),
(37954,1,21942,0),
(37970,1,21944,0);
-- cords for teleport
DELETE FROM spell_target_position WHERE id = 36801;
INSERT INTO spell_target_position VALUES
(36801,530,1920.129517,5581.898926,270.426453,5.269419);

-- q.10557 'Test Flight: The Zephyrium Capacitorium'
DELETE FROM dbscripts_on_gossip WHERE id = 830401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(830401,1,15,37908,0,0,0,0,0,0,0,0,0,0,0,0,''),
(830401,2,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,''),
(830401,2,15,36795,0,21393,50,8,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon channel'),
(830401,5,15,36790,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 2'),
(830401,8,15,36792,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 3'),
(830401,11,15,36800,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 4'),
(830401,14,15,37910,0,21930,200,8,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Soaring'),
(830401,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging(platform)'),
(830401,14,14,36790,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 2'),
(830401,14,14,36792,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 3'),
(830401,14,14,36800,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 4'),
(830401,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon channel');

-- q.10710 'Test Flight: The Singing Ridge'
DELETE FROM dbscripts_on_gossip WHERE id = 845401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(845401,1,15,37908,0,0,0,0,0,0,0,0,0,0,0,0,''),
(845401,2,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,''),
(845401,2,15,36795,0,21393,50,8,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon channel'),
(845401,5,15,36790,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 2'),
(845401,8,15,36792,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 3'),
(845401,11,15,36800,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 4'),
(845401,14,15,37962,0,21942,200,8,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Soaring'),
(845401,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging(platform)'),
(845401,14,14,36790,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 2'),
(845401,14,14,36792,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 3'),
(845401,14,14,36800,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 4'),
(845401,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon channel');

-- q.10711 'Test Flight: Razaan's Landing'
DELETE FROM dbscripts_on_gossip WHERE id = 830402;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(830402,1,15,37908,0,0,0,0,0,0,0,0,0,0,0,0,''),
(830402,2,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,''),
(830402,2,15,36795,0,21393,50,8,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Cannon channel'),
(830402,5,15,36790,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Cannon charging State 2'),
(830402,8,15,36792,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Cannon charging State 3'),
(830402,11,15,36800,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Cannon charging State 4'),
(830402,12,15,36812,0,21413,200,8,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Soaring'),
(830402,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Remove Aura Cannon charging(platform)'),
(830402,14,14,36790,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Remove Aura Cannon charging State 2'),
(830402,14,14,36792,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Remove Aura Cannon charging State 3'),
(830402,14,14,36800,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Remove Aura Cannon charging State 4'),
(830402,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan\'s Landing - Remove Aura Cannon channel');

-- q.10712 'Test Flight: Ruuan Weald'
DELETE FROM dbscripts_on_gossip WHERE id = 830403;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(830403,1,15,37908,0,0,0,0,0,0,0,0,0,0,0,0,''),
(830403,2,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,''),
(830403,2,15,36795,0,21393,50,8,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon channel'),
(830403,5,15,36790,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 2'),
(830403,8,15,36792,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 3'),
(830403,11,15,36800,0,21394,50,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 4'),
(830403,14,15,37968,0,21944,200,8,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Soaring'),
(830403,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging(platform)'),
(830403,14,14,36790,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 2'),
(830403,14,14,36792,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 3'),
(830403,14,14,36800,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 4'),
(830403,14,14,36795,0,21394,50,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon channel');
