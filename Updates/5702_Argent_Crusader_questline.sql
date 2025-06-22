-- V - Crusader chain
-- this daily chain opens after player gets achievement Exalted Argent Champion of the Alliance as Alliance (2817), or Exalted Argent Champion of the Horde (2816) as Horde.
UPDATE quest_template SET RequiredCondition = 675 WHERE entry IN (14105,14101,14102,14104,14107,14108);

-- q.14101 'Drottinn Hrothgar'
-- Drottinn Hrothgar 34980
UPDATE creature_template SET Faction = 1885, UnitFlags = 33536, EquipmentTemplateId = 853 WHERE Entry = 34980;
-- event
DELETE FROM dbscripts_on_event WHERE id IN (21998);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21998,1,31,34980,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 34980 - terminate if alive'),
(21998,100,10,34980,300000,0,0,0,0,0,0,0,0,10407.38,980.6268,162.1004,4.502949,'summon Drottinn Hrothgar');
DELETE FROM dbscripts_on_relay WHERE id = 21226;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(21226,500,0,20,15,0,0,0,0,0x04,0,0,0,0,7,10406.5,949.172,123.402,100,25,0,'Part of Drottinn Hrothgar 34980 EAI: jump'),
(21226,3000,0,0,0,0,0,0,0,0,35227,0,0,0,0,0,0,0,0,0,0,'Part of Drottinn Hrothgar 34980 EAI: yell'),
(21226,3001,0,1,375,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Drottinn Hrothgar 34980 EAI: emote'),
(21226,3100,0,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Drottinn Hrothgar 34980 EAI: remove unitFlags');

-- q.14102 'Mistcaller Yngvar'
-- event
DELETE FROM dbscripts_on_event WHERE id IN (21997);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21997,1,31,34965,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 34965 - terminate if alive'),
(21997,100,10,34965,300000,0,0,0,0,0,0,0,0,10182,1183.42,76.1212,5.93412,'summon yngvar');

-- q.14104 'Ornolf The Scarred'
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2546);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2546, 40540, 40435, 0);
-- Ornolf the Scarred 35012
UPDATE creature_template SET EquipmentTemplateId = 2546 WHERE Entry = 35012;
DELETE FROM dbscripts_on_event WHERE id IN (22030);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(22030,1,31,35012,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 35012 - terminate if alive'),
(22030,100,10,35012,300000,0,0,0,0,0,0,0,0,10005.8,645.445,10.2231,4.54462,'summon ornolf');

-- q.14107 'The Fate Of The Fallen'
DELETE FROM dbscripts_on_relay WHERE id IN (21227);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21227,0,20,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Fallen Hero\'s Spirit 32149 EAI: idle'),
(21227,100,0,20385,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Fallen Hero\'s Spirit 32149 EAI: random say'),
(21227,101,1,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Fallen Hero\'s Spirit 32149 EAI: emote'),
(21227,4000,1,16,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Fallen Hero\'s Spirit 32149 EAI: emote'),
(21227,4001,18,3000,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Fallen Hero\'s Spirit 32149 EAI: despawn');
DELETE FROM dbscript_random_templates WHERE id = 20385;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20385, 0, 35291, 0, 'Fallen Hero\'s Spirit 32149 - Say Text 1(q.14107)'),
(20385, 0, 35292, 0, 'Fallen Hero\'s Spirit 32149 - Say Text 2(q.14107)'),
(20385, 0, 35293, 0, 'Fallen Hero\'s Spirit 32149 - Say Text 3(q.14107)'),
(20385, 0, 35294, 0, 'Fallen Hero\'s Spirit 32149 - Say Text 4(q.14107)'),
(20385, 0, 35295, 0, 'Fallen Hero\'s Spirit 32149 - Say Text 5(q.14107)');

-- q.14108 'Get Kraken!'
DELETE FROM gossip_menu_option WHERE menu_id IN (10616);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10616,0,0,'Mount the Hippogryph and prepare for battle!',35345,1,1,-1,0,1061601,0,0,NULL,0,21000);
DELETE FROM dbscripts_on_gossip WHERE id = 1061601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1061601,0,15,66777,0,0,0,0,0,0,0,0,0,0,0,0,0,'taxi');
DELETE FROM conditions WHERE condition_entry = 21000;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(21000,9,14108,0,0,0);
