-- q.11705 'Foolish Endeavors'
DELETE FROM dbscripts_on_quest_start WHERE id = 11705;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11705,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Getry - active'),
(11705,0,21,1,0,25618,100875,7 | 0x10,0,0,0,0,0,0,0,0,'Varidus - active'),
(11705,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'Getry - npcFlags removed'),
(11705,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'Getry - STATE_STAND'),
(11705,1,15,45924,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player'),
(11705,1,15,45924,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast on Getry'),
(11705,2,22,1980,0x01,0,0,0,0,0,0,0,0,0,0,0,'Getry - temp faction'),
(11705,3,0,0,0,0,0,0,2000000903,0,0,0,0,0,0,0,''),
(11705,6,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11705,7,0,0,0,0,0,0,2000000904,0,0,0,0,0,0,0,''),
(11705,8,32,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unpause'),
(11705,16,20,0,0,25618,100875,7 | 0x10,0,0,0,0,0,0,0,0,'Varidus - movement chenged to 0:idle'),
(11705,17,3,0,0,25618,100875,3 | 0x08 | 0x10,0,0,0,0,3119.97,6539.04,80.118,3.93636,'Varidus - move'),
(11705,34,15,34189,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11705,34,3,0,0,0,0,0,0,0,0,0,3122.21,6549.25,79.4814,4.63905,''),
(11705,43,3,0,0,25618,100875,3 | 0x10,0,0,0,0,0,0,0,1.30878,'Varidus - move'),
(11705,44,0,0,0,25618,100875,0x10,2000000905,0,0,0,0,0,0,0,''),
(11705,48,0,0,0,25618,100875,0x10,2000000906,0,0,0,0,0,0,0,''),
(11705,50,14,34189,0,0,0,0x04,0,0,0,0,0,0,0,0,'spell removed from Getry'),
(11705,51,15,45922,0,0,0,0x04,0,0,0,0,0,0,0,0,'spell on Getry'),
(11705,51,15,45922,0,0,0,6,0,0,0,0,0,0,0,0,'spell on player'),
(11705,52,10,25730,900000,0,0,0,0,0,0,0,3137.638,6532.397,80.40455,2.280419,''),
(11705,59,0,0,0,25618,100875,0x10,2000000907,0,0,0,0,0,0,0,''),
(11705,63,0,0,0,25618,100875,0x10,2000000908,0,0,0,0,0,0,0,''),
(11705,67,0,0,0,25618,100875,0x10,2000000909,0,0,0,0,0,0,0,''),
(11705,71,0,0,0,25618,100875,0x10,2000000910,0,0,0,0,0,0,0,''),
(11705,78,0,0,0,25618,100875,0x10,2000000911,0,0,0,0,0,0,0,''),
(11705,83,44,25751,1,25730,200,7,0,0,0,0,0,0,0,0,''),
(11705,84,3,0,0,25751,200,7,0,0,0,0,0,0,0,4.46881,'Saurfang - move'),
(11705,85,0,0,0,25751,200,0,2000000912,0,0,0,0,0,0,0,''),
(11705,88,0,0,0,25618,100875,0x10,2000000913,0,0,0,0,0,0,0,''),
(11705,89,36,0,0,25751,200,0,0,0,0,0,0,0,0,0,''),
(11705,91,0,0,0,25751,200,0,2000000914,0,0,0,0,0,0,0,''),
(11705,94,3,0,0,25751,200,7,0,0,0,0,0,0,0,4.46881,'Saurfang - move'),
(11705,91,0,0,0,25751,200,0,2000000915,0,0,0,0,0,0,0,''),
(11705,96,0,0,0,25751,200,0,2000000916,0,0,0,0,0,0,0,''),
(11705,99,1,1,0,25751,200,7,0,0,0,0,0,0,0,0,''),
(11705,103,1,1,0,25751,200,7,0,0,0,0,0,0,0,0,''),
(11705,107,0,0,0,25618,100875,0x10,2000000917,0,0,0,0,0,0,0,''),
(11705,111,0,0,0,25751,200,0,2000000918,0,0,0,0,0,0,0,''),
(11705,114,1,5,0,25751,200,7,0,0,0,0,0,0,0,0,''),
(11705,114,1,11,0,25618,100875,0x10,0,0,0,0,0,0,0,0,''),
(11705,117,0,0,0,25618,100875,0x10,2000000919,0,0,0,0,0,0,0,''),
(11705,118,15,45950,0,25751,200,7,0,0,0,0,0,0,0,0,''),
(11705,118,0,0,0,25618,100875,0x10,2000000920,0,0,0,0,0,0,0,''),
(11705,119,15,45949,0,25618,100875,0x10,0,0,0,0,0,0,0,0,''),
(11705,119,44,25749,1,25751,200,7,0,0,0,0,0,0,0,0,''),
(11705,120,14,45908,0,25618,100875,7 | 0x10,0,0,0,0,0,0,0,0,''),
(11705,121,22,1982,0x01 | 0x10 | 0x20,25618,100875,7 | 0x10,0,0,0,0,0,0,0,0,''),
(11705,125,26,0,0,25618,100875,1 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11705 WHERE entry = 11705;
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000903 AND 2000000925;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000903,'This is it, $n. The start of the end of the world. And you\'re here to see it off...',0,0,0,1,NULL),
(2000000904,'Let\'s go...',0,0,0,0,NULL),
(2000000905,'Is this it? Is this all the mighty Horde could muster?',0,0,0,6,NULL),
(2000000906,'Pathetic.',0,0,0,11,NULL),
(2000000907,'I\'ve never understood your type. The hero...',0,0,0,1,NULL),
(2000000908,'Why won\'t you just let go? Why do you fight the inevitable?',0,0,0,6,NULL),
(2000000909,'The Lich King cannot be stopped. Accept it.',0,0,0,274,NULL),
(2000000910,'This world is coming to an end. Let. It. Burn.',0,0,0,397,NULL),
(2000000911,'Take $g him:her; away and prepare $g him:her; for reanimation.',0,0,0,1,NULL),
(2000000912,'I\'ll rip your shriveled heart out with my bare hands before any harm comes to $n, necromancer.',0,0,0,5,NULL),
(2000000913,'What\'s this now?',0,0,0,1,NULL),
(2000000914,'You were never alone, $n.',0,0,0,1,NULL),
(2000000915,'This world that you seek to destroy is our home.',0,0,0,1,NULL),
(2000000916,'We will fight you with every fiber of our being - until we are nothing more than dust and debris. We will fight until the end.',0,0,0,1,NULL),
(2000000917,'Then you are a fool.',0,0,0,25,NULL),
(2000000918,'A fool who is about to end you, necrolord. There will be nothing left of you for the Lich King to reanimate!',0,0,0,397,NULL),
(2000000919,'You? A lone orc? Against me and...',0,0,0,397,NULL),
(2000000920,'RISE!',0,1,0,0,NULL),
(2000000921,'I... I can\'t believe it... Saurfang... I... I am honored... honored to have fought along side you, sir.',0,0,0,2,NULL),
(2000000922,'You should return to Warsong Hold now, friend. Hellscream will surely want to hear of what just happened here... of Saurfang...',0,0,0,1,NULL),
(2000000923,'You\'ll make no mention of me. Either of you!',0,0,0,397,NULL),
(2000000924,'%s nods.',0,2,0,0,NULL),
(2000000925,'Farewell...',0,0,0,3,NULL);

-- target for spell
DELETE FROM spell_script_target WHERE entry = 45949;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(45949, 1, 25624, 0);
-- aura should be removed from its targets
DELETE FROM dbscripts_on_spell WHERE id = 45950; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45950,0,14,45922,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- links
DELETE FROM creature_linking_template WHERE entry = 25749;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(25749,530,25729,3,500);

-- En'kilah Necrolord
UPDATE creature_template SET Expansion = 2, UnitClass = 1, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 1796400, MaxLevelHealth = 1796400, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 290, MaxMeleeDmg = 436, Armor = 6719, FactionAlliance = 14, FactionHorde = 14, UnitFlags = 33536, ExtraFlags = 4096, MovementType = 2 WHERE entry = 25730;
DELETE FROM creature_movement_template WHERE entry = 25730;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25730,1,3120.88,6543,79.9563,5000,2573001,1.69637,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2573001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2573001,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
-- High Overlord Saurfang
UPDATE creature_template SET Expansion = 2, UnitClass = 1, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 1796400, MaxLevelHealth = 1796400, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 290, MaxMeleeDmg = 436, Armor = 6719, FactionAlliance = 1980, FactionHorde = 1980, UnitFlags = 33536, ExtraFlags = 4096, MovementType = 0 WHERE entry = 25751;
-- High Overlord Saurfang
UPDATE creature_template SET Expansion = 2, UnitClass = 1, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 1796400, MaxLevelHealth = 1796400, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 290, MaxMeleeDmg = 436, Armor = 6719, FactionAlliance = 1980, FactionHorde = 1980, UnitFlags = 32768, EquipmentTemplateId = 366, ExtraFlags = 4096, MovementType = 0 WHERE entry = 25749;
-- Infested Prisoner
DELETE FROM dbscripts_on_creature_death WHERE id = 25624; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25624,1,15,45802,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Warsong Aberration
UPDATE creature_template SET Expansion = 2, UnitClass = 1, MinLevel = 69, MaxLevel = 69, MinLevelHealth = 7984, MaxLevelHealth = 7984, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 244, MaxMeleeDmg = 366, Armor = 6423, FactionAlliance = 1982, FactionHorde = 1982, MovementType = 2, MechanicImmuneMask = 8388624 WHERE entry = 25625;
DELETE FROM creature_movement_template WHERE entry = 25625;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25625,1,3121.4,6542.89,79.9604,30000,0,100,0,0);
-- Varidus the Flenser
UPDATE creature SET position_x = 3119.97, position_y = 6539.04, position_z = 80.118, orientation = 3.93636, spawndist = 0, movementType = 2, spawntimesecs = 120 WHERE guid = 100875;
UPDATE creature_template SET Expansion = 2, UnitClass = 2, MovementType = 0 WHERE entry = 25618;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 25618;
UPDATE creature SET spawndist = 0, movementType = 2 WHERE guid = 100875;
DELETE FROM creature_movement WHERE id = 100875;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(100875,1,3111.75,6545.38,80.0892,0,0,1.92575,0,0),
(100875,2,3134.68,6525.83,79.954,0,0,5.50716,0,0);
DELETE FROM dbscripts_on_creature_death WHERE id = 25618; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25618,1,32,0,0,25729,200,0x04,0,0,0,0,0,0,0,0,'unpause'),
(25618,2,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(25618,3,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- Shadownstalker Getry
UPDATE creature SET orientation = 4.694936 WHERE guid = 84070;
UPDATE creature_template SET FactionAlliance = 1981, FactionHorde = 1981, EquipmentTemplateId = 586, MovementType = 0 WHERE Entry = 25729;
DELETE FROM creature_template_addon WHERE entry = 25729;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25729,0,0,0,1,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 25729;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84070;
DELETE FROM creature_movement WHERE id = 84070;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(84070,1,3113.34,6576.97,97.0205,5000,2572901,4.69494,0,0),
(84070,2,3122.25,6549.42,79.4674,0,0,4.50203,0,0),
(84070,3,3122.208,6549.245,79.64079,10000,2572902,4.1559,0,0),
(84070,4,3122.208,6549.245,79.64079,20000,2572903,4.1559,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2572901,2572902,2572903); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2572901,0,28,8,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2572901,1,32,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'pause'),
(2572902,1,32,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'pause'),
(2572903,2,0,0,0,0,0,0,2000000921,0,0,0,0,0,0,0,''),
(2572903,7,0,0,0,0,0,0,2000000922,0,0,0,0,0,0,0,''),
(2572903,11,0,0,0,25749,200,7,2000000923,0,0,0,0,0,0,0,''),
(2572903,12,25,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2572903,14,3,0,700,25749,200,7,0,0,0,0,3145.63,6511.7,80.1667,4.99345,'Saurfang - move'),
(2572903,14,0,0,0,0,0,0,2000000924,0,0,0,0,0,0,0,''),
(2572903,17,0,0,0,0,0,0,2000000925,0,0,0,0,0,0,0,''),
(2572903,17,3,0,700,25749,200,7,0,0,0,0,3160.8,6426.61,85.4359,4.83245,'Saurfang - move'),
(2572903,21,18,0,0,25749,300,7,0,0,0,0,0,0,0,0,'despawn'),
(2572903,50,25,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(2572903,50,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'Getry - npcFlags added'),
(2572903,51,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Getry - unactive');

