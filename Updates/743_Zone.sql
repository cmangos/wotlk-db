-- Ring of Observance - Entrance to Auchenai Crypts

-- Horvon the Armorer <Armorsmith>
UPDATE creature_template SET UnitFlags = 33536, GossipMenuId = 8047 WHERE entry = 19879;
DELETE FROM creature_template_addon WHERE entry = 19879;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(19879,0,0,1,0,0,0,32648);
-- Gossip
DELETE FROM gossip_menu WHERE entry = 8047;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8047, 9936, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8047;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8047, 0, 1, 'Please repair my items.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- Ancient Draenei Spirit
UPDATE creature_template SET MinLevel = 1, MaxLevel = 70, FactionAlliance = 1194, FactionHorde = 1194, UnitFlags = 33587968, MinLevelHealth = 42, MaxLevelHealth = 6986, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 1, MaxMeleeDmg = 357 WHERE entry = 19416;
DELETE FROM creature_template_addon WHERE entry = 19416;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(19416,0,0,1,0,0,0,32648);
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 77860 AND 77864;
DELETE FROM creature_addon WHERE guid BETWEEN 77860 AND 77864;
DELETE FROM creature_movement WHERE id BETWEEN 77860 AND 77864;
DELETE FROM game_event_creature WHERE guid BETWEEN 77860 AND 77864;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 77860 AND 77864;
DELETE FROM creature_battleground WHERE guid BETWEEN 77860 AND 77864;
DELETE FROM creature_linking WHERE guid BETWEEN 77860 AND 77864 OR master_guid BETWEEN 77860 AND 77864;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77860,19416,530,1,1,0,0,-3400.19,5185.94,-88.8128,0.01745329,300,0,0,6986,0,0,0),
(77861,19416,530,1,1,0,0,-3387.17,5177.65,-95.5558,1.396263,300,0,0,6986,0,0,0),
(77862,19416,530,1,1,0,0,-3383.71,5192.25,-97.2105,3.822271,300,0,0,6986,0,0,0),
(77863,19416,530,1,1,0,0,-3330.14,5182.81,-89.3602,1.58825,300,0,0,6986,0,0,0),
(77864,19416,530,1,1,0,0,-3330.1,5185.82,-88.5626,4.39823,300,0,0,6986,0,0,0);

-- Greatfather Aldrimus
UPDATE creature SET MovementType = 2 WHERE guid = 77859;
DELETE FROM creature_movement WHERE id = 77859;
UPDATE creature_template SET UnitFlags = 33536, MovementType = 2 WHERE Entry = 19698;
DELETE FROM creature_movement_template WHERE entry = 19698;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19698, 1, -3345.28, 5189.06, -100.966, 9000, 1969801, 5.77704);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1969801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1969801,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'),
(1969801,4,1,1,0,0,0,0,0,0,0,0,0,0,0,0,');
DELETE FROM creature_template_addon WHERE entry = 19698;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(19698,0,0,1,0,0,0,32648);

-- Ha'lei
UPDATE creature SET MovementType = 2 WHERE guid = 70257;
DELETE FROM creature_movement WHERE id = 70257;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 19697;
DELETE FROM creature_movement_template WHERE entry = 19697;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19697, 1, -3343.13, 5188.37, -100.966, 85000, 1969701, 2.89725),
(19697, 2, -3343.13, 5188.37, -100.966, 300000, 0, 2.89725);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1969701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1969701,0,31,19693,100,0,0,0,-80000,0,0,0,0,0,0,0,'search for buddy'),
(1969701,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1969701,1,21,1,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(1969701,2,0,0,0,0,0,0,2000001080,2000001081,2000001082,2000001083,0,0,0,0,''),
(1969701,4,0,0,0,0,0,0,2000001084,2000001085,2000001086,2000001087,0,0,0,0,''),
(1969701,9,0,0,0,0,0,0,2000001088,0,0,0,0,0,0,0,''),
(1969701,11,0,0,0,0,0,0,2000001089,2000001090,2000001091,0,0,0,0,0,''),
(1969701,16,0,0,0,19693,70255,7 | 0x10,2000001092,0,0,0,0,0,0,0,''),
(1969701,19,0,0,0,19693,70255,7 | 0x10,2000001093,2000001094,2000001095,2000001096,0,0,0,0,''),
(1969701,79,0,0,0,19693,70255,7 | 0x10,2000001097,2000001098,2000001099,0,0,0,0,0,''),
(1969701,80,21,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - unactive'),
(1969701,81,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000001080 AND 2000001099;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001080,'%s giggles.',0,2,0,0,NULL),
(2000001081,'%s nods.',0,2,0,0,NULL),
(2000001082,'%s smiles.',0,2,0,0,NULL),
(2000001083,'%s laughs.',0,2,0,0,NULL),
(2000001084,'I\'ll tell her, Greatfather.',0,0,0,1,NULL),
(2000001085,'You promise?',0,0,0,5,NULL),
(2000001086,'Ok!',0,0,0,0,NULL),
(2000001087,'I will, Greatfather.',0,0,0,1,NULL),
(2000001088,'%s tugs on Clarissa\'s robe.',0,2,0,0,NULL),
(2000001089,'Mommy, Greatfather says everything will be ok.',0,0,0,1,NULL),
(2000001090,'Don\'t cry, Mommy. Greatfather says not to worry.',0,0,0,1,NULL),
(2000001091,'Mommy, Greatfather told me that he will watch over us and make sure we\'re ok.',0,0,0,1,NULL),
(2000001092,'%s wipes the tears away.',0,2,0,0,NULL),
(2000001093,'Oh sweetheart, grandpoppy has passed. It will be ok.',0,0,0,0,NULL),
(2000001094,'In the end, we will all be together, sweetheart.',0,0,0,0,NULL),
(2000001095,'Mommy is going to make sure you\'re ok, baby.',0,0,0,0,NULL),
(2000001096,'Mommy won\'t let anyone harm you, sweetheart.',0,0,0,0,NULL),
(2000001097,'Father, give me strength to go on.',0,0,0,1,NULL),
(2000001098,'Give me a sign... anything...',0,0,0,1,NULL),
(2000001099,'Please, father, I do not have your strength. I cannot do this on my own. Please help me...',0,0,0,1,NULL);
