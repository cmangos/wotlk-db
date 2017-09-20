-- q.11711 'Coward Delivery... Under 30 Minutes or it's Free'

-- Warden Nork Bloodfrenzy
-- gossip & gossip menu corrected
UPDATE creature_template SET GossipMenuId = 9184 WHERE Entry = 25379;
DELETE FROM gossip_menu WHERE entry = 20002; -- temp. not req. anymore
DELETE FROM gossip_menu WHERE entry = 9184;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9184, 12472, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 20002; -- temp. not req. anymore
DELETE FROM gossip_menu_option WHERE menu_id = 9184;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(9184, 0, 0, 'I am embarassed to say it, Nork, but my deserter has gone missing.', 1, 1, -1, 0, 918401, 0, 0, NULL, 1214);
DELETE FROM dbscripts_on_gossip WHERE id = 20002; -- temp. not req. anymore
DELETE FROM dbscripts_on_gossip WHERE id = 918401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(918401,0,14,45963,0,0,0,0,2,0,0,0,0,0,0,0,0,'remove from player in case if he has one already'),
(918401,1,15,45963,0,0,0,0,2,0,0,0,0,0,0,0,0,'cast on player');
DELETE FROM conditions WHERE condition_entry BETWEEN 1213 AND 1214;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- only if q.11711 is active and player missing aura 45963
-- (349, 9, 11711, 0), -- already in DB
(1213, 11, 45963, 0),
(1214, -1, 1213, 349);

-- Q script
DELETE FROM dbscripts_on_quest_start WHERE id = 11711;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11711,0,14,45963,0,0,0,0,2,0,0,0,0,0,0,0,0,'remove from player in case if he has one already'),
(11711,1,15,45963,0,0,0,0,2,0,0,0,0,0,0,0,0,'cast on player');
UPDATE quest_template SET StartScript = 11711 WHERE entry = 11711;
-- spell xyz corrected
DELETE FROM spell_target_position WHERE id IN (45956,45963);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(45956, 571, 2912.682,5345.781,61.89919,1.025856),
(45963, 571, 2808.36,6060.34,75.6802,4.67341);
DELETE FROM dbscripts_on_spell WHERE id = 45958;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45958,15,0,0,0,0,25759,100,0,2000000193,0,0,0,0,0,0,0,''),
(45958,16,18,0,0,0,25761,100,7 | 0x20,0,0,0,0,0,0,0,0,''),
(45958,17,15,45981,1,0,0,0,2,0,0,0,0,0,0,0,0,'q. credit'),
(45958,17,14,45963,0,0,0,0,2,0,0,0,0,0,0,0,0,'remove aura from player');
-- emote added
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000193;
-- Alliance Deserter
-- stats corrected 
UPDATE creature_template SET UnitFlags = 33544, MinLevel = 70, MaxLevel = 70, Expansion = 2, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 25761;
-- Valiance Keep Officer
UPDATE creature_template SET FactionAlliance = 534, FactionHorde = 534, UnitFlags = 33536, MovementType = 2, MinLevel = 70, MaxLevel = 70, Expansion = 2, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 25759;
DELETE FROM creature_template_addon WHERE entry = 25759;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25759, 14584, 0, 0, 0, 0, 0, NULL);
DELETE FROM creature_movement_template WHERE entry = 25759;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25759,1,2912.682,5345.781,61.89919,1000,2575901,1.025856),
(25759,2,2938.67,5375.27,60.6324,15000,2575902,1.04893),
(25759,3,2944.58,5354.34,63.2588,0,0,4.34211),
(25759,4,2935.64,5330.28,62.0491,0,0,4.24591),
(25759,5,2924.49,5313.41,60.2935,1000,1,4.11632);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2575900; -- old script removed
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2575901,2575902);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2575901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2575902,3,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2575902,12,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
