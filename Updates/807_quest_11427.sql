-- q.11427 'Meet Lieutenant Icehammer...'
-- Guard Captain Zorek will give us option to use Vehicle to get to Lieutenant Icehammer
-- *NOTE* correct waypoints for Valgarde Gryphon missing (need sniffed data)
DELETE FROM gossip_menu_option WHERE menu_id = 8984;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(8984, 0, 0, 'Take me to Lieutenant Icehammer, Zorek!', 1, 1, -1, 0, 898401, 0, 0, NULL, 1081);
DELETE FROM dbscripts_on_gossip WHERE id = 898401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(898401, 0, 15, 49845, 0, 0, 0, 0, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast - Call Valgarde Gryphon'),
(898401, 40, 15, 50553, 0, 0, 0, 0, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast - Parachute');
DELETE FROM conditions WHERE condition_entry = 1081;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1081, 9, 11427, 0);

-- Valgarde Gryphon
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68, Expansion = 1, MinLevelHealth = 6542, MaxLevelHealth = 6542, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6126, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 292, MinMeleeDmg = 229, MaxMeleeDmg = 323 WHERE entry = 27886;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 27886;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES 
(27886, 0, 27887,'Valgarde Gryphon');

-- Waypoints (correct waypoints missing)
UPDATE creature_template SET SpeedRun = 5, MovementType = 2 WHERE Entry = 27886;
DELETE FROM creature_movement_template WHERE entry = 27886;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27886,1,604.732,-5035.33,1.0515, 3000, 2788601,255),
(27886,2,611.001,-5051.3,17.7342,0,0,255),
(27886,3,628.766,-5068.01,26.6845,0,0,255),
(27886,4,670.603,-5083.77,39.8907,0,0,255),
(27886,5,731.831,-5081.3,39.1209,0,0,255),
(27886,6,778.857,-5076.75,40.1244,0,0,255),
(27886,7,829.556,-5056.81,38.0594,0,0,255),
(27886,8,888.255,-5022.94,39.4121,0,0,255),
(27886,9,931.477,-5005.18,38.6904,0,0,255),
(27886,10,987.183,-4978.99,38.2907,0,0,255),
(27886,11,1037.89,-4978.52,39.4257,0,0,255),
(27886,12,1111.72,-4981.53,36.8614,0,0,255),
(27886,13,1162.96,-4958.16,43.1958,0,0,255),
(27886,14,1182.57,-4947.41,44.3084,0,0,255),
(27886,15,1196.07,-4966.47,43.3425,0,0,255),
(27886,16,1218.1,-5024.57,43.3726,0,0,255),
(27886,17,1255.79,-5043.55,52.4901,0,0,255),
(27886,18,1286.46,-5069.99,69.0195,0,0,255),
(27886,19,1298.1,-5114.75,83.249,0,0,255),
(27886,20,1288.57,-5151.51,98.3757,0,0,255),
(27886,21,1269.72,-5173.17,113.092,0,0,255),
(27886,22,1232.87,-5189.44,136.523,0,0,255),
(27886,23,1212.21,-5206.38,156.428,0,0,255),
(27886,24,1219.69,-5229.02,171.151,0,0,255),
(27886,25,1231.96,-5243.2,179.594,0,0,255),
(27886,26,1266.72,-5276.73,201.32,0,0,255),
(27886,27,1249,-5320.19,221.54,3000,2788602,255);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2788601 AND 2788602;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2788601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2788601,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2788601,2,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'FLY ON'),
(2788601,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2788602,2,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');