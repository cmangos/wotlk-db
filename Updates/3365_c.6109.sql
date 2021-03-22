-- Azuregos 6109
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 15000, MovementType = 2 WHERE Entry = 6109;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 6109;
DELETE FROM creature_movement_template WHERE entry = 6109;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(6109,1,2623.38,-5977.86,100.642,3.86238,0,0),
(6109,2,2652.61,-6023.3,97.2364,4.28178,0,0),
(6109,3,2637.75,-6057.12,100.789,4.96744,0,0),
(6109,4,2650.16,-6101.06,99.105,4.99335,0,0),
(6109,5,2659.07,-6142.42,100.017,5.61225,0,0),
(6109,6,2699.18,-6169.74,97.2345,5.90834,0,0),
(6109,7,2748.81,-6216.27,102.323,5.52506,0,0),
(6109,8,2728.22,-6259.92,99.7664,1.50304,0,0),
(6109,9,2701.59,-6292.38,98.4016,1.01845,0,0),
(6109,10,2665.81,-6316.73,100.927,3.15866,0,0),
(6109,11,2639.08,-6319.14,93.82,3.16179,0,0),
(6109,12,2609.81,-6316.4,95.62,2.8822,0,0),
(6109,13,2593.02,-6298.9,103.16,2.55862,0,0),
(6109,14,2502.05,-6238.91,102.5,2.55862,0,0),
(6109,15,2484.14,-6233.41,101.99,3.24663,0,0),
(6109,16,2450.22,-6182.88,101.45,2.20912,0,0),
(6109,17,2411.61,-6157.76,101.92,3.54822,0,0),
(6109,18,2361.36,-6203.64,104.65,4.13334,0,0),
(6109,19,2336.04,-6248.55,106.4,4.62264,0,0),
(6109,20,2361.63,-6203.64,104.65,0.89043,0,0),
(6109,21,2406.65,-6164.8,100.57,0.92734,0,0),
(6109,22,2407.32,-6147.17,100.29,2.08345,0,0),
(6109,23,2352.5,-6106.48,110.44,2.66543,0,0),
(6109,24,2294.35,-6064.86,107.44,2.19419,0,0),
(6109,25,2352.5,-6106.48,110.44,2.66543,0,0),
(6109,26,2406.58,-6133.3,99.69,5.90284,0,0),
(6109,27,2439.64,-6126.91,105.12,0.38778,0,0),
(6109,28,2501.26,-6091.94,99.97,0.60926,0,0),
(6109,29,2535.65,-6010.9,99.62,1.07893,0,0),
(6109,30,2578.13,-5963.59,97.82,0.00136,0,0);
-- Spirit of Azuregos 15481
UPDATE creature_template SET GossipMenuId = 15013, MovementType = 2 WHERE Entry = 15481;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 15481;
DELETE FROM creature_movement_template WHERE entry = 15481;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(15481,1,2578.13,-5963.59,97.82,0.00136,0,0),
(15481,2,2535.65,-6010.9,99.62,1.07893,0,0),
(15481,3,2501.26,-6091.94,99.97,0.60926,0,0),
(15481,4,2439.64,-6126.91,105.12,0.38778,0,0),
(15481,5,2406.58,-6133.3,99.69,5.90284,0,0),
(15481,6,2352.5,-6106.48,110.44,2.66543,0,0),
(15481,7,2294.35,-6064.86,107.44,2.19419,0,0),
(15481,8,2352.5,-6106.48,110.44,2.66543,0,0),
(15481,9,2407.32,-6147.17,100.29,2.08345,0,0),
(15481,10,2406.65,-6164.8,100.57,0.92734,0,0),
(15481,11,2361.63,-6203.64,104.65,0.89043,0,0),
(15481,12,2336.04,-6248.55,106.4,4.62264,0,0),
(15481,13,2361.36,-6203.64,104.65,4.13334,0,0),
(15481,14,2411.61,-6157.76,101.92,3.54822,0,0),
(15481,15,2450.22,-6182.88,101.45,2.20912,0,0),
(15481,16,2484.14,-6233.41,101.99,3.24663,0,0),
(15481,17,2502.05,-6238.91,102.5,2.55862,0,0),
(15481,18,2593.02,-6298.9,103.16,2.55862,0,0),
(15481,19,2609.81,-6316.4,95.62,2.8822,0,0),
(15481,20,2639.08,-6319.14,93.82,3.16179,0,0),
(15481,21,2665.81,-6316.73,100.927,3.15866,0,0),
(15481,22,2701.59,-6292.38,98.4016,1.01845,0,0),
(15481,23,2728.22,-6259.92,99.7664,1.50304,0,0),
(15481,24,2748.81,-6216.27,102.323,5.52506,0,0),
(15481,25,2699.18,-6169.74,97.2345,5.90834,0,0),
(15481,26,2659.07,-6142.42,100.017,5.61225,0,0),
(15481,27,2650.16,-6101.06,99.105,4.99335,0,0),
(15481,28,2637.75,-6057.12,100.789,4.96744,0,0),
(15481,29,2652.61,-6023.3,97.2364,4.28178,0,0),
(15481,30,2623.38,-5977.86,100.642,3.86238,0,0);
-- missing gossip
DELETE FROM gossip_menu WHERE entry BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(15000, 7880, 0, 0),
(15000, 7885, 0, 20273),
(15000, 7901, 0, 20271),
(15001, 7886, 0, 0),
(15002, 7887, 0, 0),
(15003, 7888, 0, 0),
(15004, 7889, 0, 0),
(15005, 7890, 0, 0),
(15006, 7891, 0, 0),
(15007, 7892, 0, 0),
(15008, 7893, 0, 0),
(15009, 7894, 0, 0),
(15010, 7895, 0, 0),
(15011, 7896, 0, 0),
(15012, 7897, 1501201, 0), -- ClassicDB 15011
(15013, 7881, 0, 0),
(15013, 7885, 0, 20273),
(15013, 7901, 0, 20271);
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('15000','0','0','I am a treasure hunter in search of powerful artifacts. Give them to me and you will not be harmed.','11016','1','1','-1','0','1500001','0','0',NULL,'0','0'), -- ClassicDB 15000
('15000','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','20273'),
('15001','0','0','Alright. Where?','11036','1','1','15002','0','0','0','0',NULL,'0','0'),
('15002','0','0','By Bronzebeard\'s... um, beard! What are you talking about?','0','1','1','15003','0','0','0','0',NULL,'0','0'),
('15003','0','0','Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?','11040','1','1','15004','0','0','0','0',NULL,'0','0'),
('15004','0','0','A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!','0','1','1','15005','0','0','0','0',NULL,'0','0'),
('15005','0','0','...','11044','1','1','15006','0','0','0','0',NULL,'0','0'),
('15006','0','0','You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?','11046','1','1','15007','0','0','0','0',NULL,'0','0'),
('15007','0','0','You\'re insane.','11048','1','1','15008','0','0','0','0',NULL,'0','0'),
('15008','0','0','I\'m all ears.','0','1','1','15009','0','0','0','0',NULL,'0','0'),
('15009','0','0','Come again.','11052','1','1','15010','0','0','0','0',NULL,'0','0'),
('15010','0','0','Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?','0','1','1','15011','0','0','0','0',NULL,'0','0'),
('15011','0','0','FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?','11057','1','1','15012','0','0','0','0',NULL,'0','0'),
('15012','0','0','But...','0','1','1','-1','0','1501202','0','0',NULL,'0','0'), -- ClassicDB 15012 
('15013','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','20273');
DELETE FROM dbscripts_on_gossip WHERE id IN (1500001,1501201,1501202);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1500001,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Azuregos attacks player'),
(1501201,0,17,20949,1,0,0,0,0,0,0,0,0,0,0,0,0,'creates item Magical Ledger'),
(1501202,0,0,0,0,0,0,0,0,2000000246,0,0,0,0,0,0,0,'Azuregos says Good Day');
DELETE FROM conditions WHERE condition_entry BETWEEN 20270 AND 20273;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUES
(20270,8,8555,0,0,0,0), -- classicDB 59
(20271,2,20949,1,0,0,0), -- classicDB 60
(20272,23,20949,1,0,0,1), -- classicDB 61
(20273,-1,20272,20270,0,0,0); -- classicDB 62
DELETE FROM dbscript_string WHERE entry = 2000000246; -- classicDB 2000000163
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000246,'I SAID GOOD DAY!',0,1,0,0,NULL);
