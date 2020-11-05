-- q.12301 'The Truth Shall Set Us Free'

-- Orik's Crystalline Orb 189305
UPDATE gameobject SET spawntimesecsmin = -130, spawntimesecsmax = -130 WHERE guid = 501768;

-- event
DELETE FROM dbscripts_on_event WHERE id = 18014;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18014,0,9,501768,130,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object'),
(18014,1,31,27476,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27476 - terminate if alive'),
(18014,2,10,27476,180000,0,0,0,0x08,0,0,0,0,3097.308,-1251.329,11.07708,1.745329,'Summon: Captain Luc Valonforth - active'),
(18014,3,10,27225,180000,0,0,0,0x08,0,35,0,0,3089.025,-1245.378,10.42508,5.67232,'Summon: Forgotten Rifleman - active'),
(18014,4,10,27226,180000,0,0,0,0x08,0,35,0,0,3089.19,-1241.913,10.41335,5.637414,'Summon: Forgotten Peasant - active'),
(18014,5,10,27226,180000,0,0,0,0x08,0,35,0,0,3097.617,-1235.252,10.13568,4.328416,'Summon: Forgotten Peasant - active'),
(18014,6,10,27226,180000,0,0,0,0x08,0,35,0,0,3104.077,-1238.337,10.74409,4.310963,'Summon: Forgotten Peasant - active'),
(18014,7,10,27225,180000,0,0,0,0x08,0,35,0,0,3101.551,-1239.164,10.55376,4.276057,'Summon: Forgotten Rifleman - active'),
(18014,8,10,27224,180000,0,0,0,0x08,0,35,0,0,3091.373,-1239.308,10.37994,5.113815,'Summon: Forgotten Knight - active'),
(18014,9,10,27224,180000,0,0,0,0x08,0,35,0,0,3099.288,-1237.375,10.30481,4.677482,'Summon: Forgotten Knight - active'),
(18014,10,10,27220,180000,0,0,0,0x08,0,35,0,0,3087.431,-1238.021,12.4401,5.51524,'Summon: Forgotten Captain - active'),
(18014,11,10,27220,180000,0,0,0,0x08,0,35,0,0,3103.105,-1233.314,13.09822,4.34587,'Summon: Forgotten Captain - active'),
(18014,12,10,27229,65000,0,0,0,0x08,0,35,0,0,3085.638,-1242.134,10.40521,0.1570796,'Summon: Forgotten Footman - active'),
(18014,13,10,27229,65000,0,0,0,0x08,0,35,0,0,3086.35,-1244.955,10.34551,0.2792527,'Summon: Forgotten Footman - active'),
(18014,14,10,27229,65000,0,0,0,0x08,0,35,0,0,3087.02,-1247.921,10.37507,0.3316126,'Summon: Forgotten Footman - active'),
(18014,15,10,27229,65000,0,0,0,0x08,0,35,0,0,3087.844,-1250.99,10.51806,0.4886922,'Summon: Forgotten Footman - active'),
(18014,16,10,27229,65000,0,0,0,0x08,0,35,0,0,3088.816,-1253.966,10.81302,0.5061455,'Summon: Forgotten Footman - active'),
(18014,17,10,27229,65000,0,0,0,0x08,0,35,0,0,3083.773,-1243.839,10.31918,0.1745329,'Summon: Forgotten Footman - active'),
(18014,18,10,27229,65000,0,0,0,0x08,0,35,0,0,3084.683,-1246.427,10.25505,0.1745329,'Summon: Forgotten Footman - active'),
(18014,19,10,27229,65000,0,0,0,0x08,0,35,0,0,3085.478,-1249.82,10.2827,0.296706,'Summon: Forgotten Footman - active'),
(18014,20,10,27229,65000,0,0,0,0x08,0,35,0,0,3086.57,-1253.057,10.40884,0.3141593,'Summon: Forgotten Footman - active'),
(18014,21,10,27229,65000,0,0,0,0x08,0,35,0,0,3087.501,-1256.79,10.67052,0.3141593,'Summon: Forgotten Footman - active'),
(18014,22,10,27492,65000,0,0,0,0x08,0,0,0,0,3090.944,-1217.943,11.77404,4.950091,'Summon: Alliance Emissary - active'),
(18014,100,0,0,0,0,27220,50,7,2000020629,0,0,0,0,0,0,0,''), -- 04:21:55.000
(18014,10000,0,0,0,0,27220,50,7,2000020630,0,0,0,0,0,0,0,''), -- 04:22:00.000
(18014,52000,35,5,15,0,27476,50,7,0,0,0,0,0,0,0,0,'buddy send event AI'), -- 04:22:47.000
(18014,55000,10,27455,65000,1,0,0,0x08,1,0,0,0,3136.446,-1217.963,20.13025,3.692765,'Summon: Prince Arthas - active'), -- 04:22:49.000
(18014,55001,10,27480,65000,1,0,0,0x08,1,0,0,0,3139.811,-1219.013,21.23158,3.71985,'Summon: Muradin - active'); -- 04:22:49.000

-- Prince Arthas 27455
UPDATE creature_template SET MovementType = 2 WHERE entry = 27455;
DELETE FROM creature_movement_template WHERE entry = 27455 AND pathId = 1;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27455,1,1,3099.527,-1246.265,10.90147,100,0,0),
(27455,1,2,3099.527,-1246.265,10.90147,100,65000,2745501);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2745501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2745501,1000,36,0,0,0,27476,30,1,0,0,0,0,0,0,0,0,'face buddy'), -- 04:22:56.000
(2745501,2000,0,0,0,0,0,0,0x04,2000020636,0,0,0,0,0,0,0,''), -- 04:22:58.000
(2745501,4000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:23:00.000
(2745501,8000,36,0,0,0,27476,30,3,0,0,0,0,0,0,0,0,'face source'), -- 04:23:03.000
(2745501,9000,0,0,0,0,27476,50,7,2000020637,0,0,0,0,0,0,0,''), -- 04:23:04.000
(2745501,13000,1,6,0,0,27476,50,7,0,0,0,0,0,0,0,0,''), -- 04:23:08.000
(2745501,15000,0,0,0,0,0,0,0x04,2000020638,0,0,0,0,0,0,0,''), -- 04:23:10.000
(2745501,19000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:23:14.000
(2745501,23000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:23:18.000
(2745501,28000,0,0,0,0,27480,50,7,2000020639,0,0,0,0,0,0,0,''), -- 04:23:23.000
(2745501,32000,0,0,0,0,0,0,0x04,2000020640,0,0,0,0,0,0,0,''), -- 04:23:27.000
(2745501,38000,0,0,0,0,27480,50,7,2000020641,0,0,0,0,0,0,0,''), -- 04:23:33.000
(2745501,48000,0,0,0,0,0,0,0x04,2000020642,0,0,0,0,0,0,0,''), -- 04:23:43.000
-- q. credit
(2745501,55000,15,48882,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:23:50.000
(2745501,57000,0,20199,0,0,27226,40,7,0,0,0,0,0,0,0,0,''),
(2745501,58000,0,20199,0,0,27220,40,7,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020629 AND 2000020650;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020629,'What\'s this now? Perhaps Prince Arthas returns to us today!\n',0,0,0,0,NULL),
(2000020630,'Look alive, lads! Today might be the day we leave this cursed land! O\' sweet Ironforge, how I missed ya!\n',0,0,0,5,NULL),
(2000020631,'I apologize, emissary, but the prince is away on an errand. What brings you to this desolate place?\n',12719,0,0,1,NULL),
(2000020632,'By royal edict, you men are to return to Lordaeron immediately. Lord Uther has convinced the king to recall this expedition.\n',12723,0,0,1,NULL),
(2000020633,'We\'re to just pick up and leave?',12720,0,0,1,NULL),
(2000020634,'That\'s correct. My men report that the roads from here to the shore are held by the undead. You\'ll need to find an alternate route back to your ships.\n',12724,0,0,1,NULL),
(2000020635,'To hell with the undead! We\'ll cut our way through the woods, men!\n',12721,0,0,5,NULL),
(2000020636,'Captain, why are the guards not at their posts?',12725,0,0,397,NULL),
(2000020637,'Well, milord, your father had our troops recalled at Lord Uther\'s request.\n',12722,0,0,1,NULL),
(2000020638,'Uther had my troops recalled? Damn it! If my warriors abandon me, I\'ll never defeat Mal\'Ganis. The ships must be burned before the men reach the shore!\n',12726,0,0,6,NULL),
(2000020639,'Isn\'t that a bit much, lad?\n',12733,0,0,6,NULL),
(2000020640,'Burned down to their frames! No one goes home until our job here is done!\n',12727,0,0,15,NULL),
(2000020641,'You lied to your men and betrayed the mercenaries who fought for you. What\'s happening to you, Arthas? Is vengeance all that\'s important to you?\n',12734,0,0,1,NULL),
(2000020642,'Spare me, Muradin. You weren\'t there to see what Mal\'Ganis did to my homeland.\n',12728,0,0,1,NULL),
-- Random
(2000020643,'NOOOOOOO!!!!',0,0,0,0,NULL),
(2000020644,'You lying wretch, Arthas! You doomed us all!',0,0,0,0,NULL),
(2000020645,'Our prince has forsaken us! All is lost!',0,0,0,0,NULL),
(2000020646,'You gave us your word, betrayer!',0,0,0,0,NULL),
(2000020647,'Our lives were worth far more than your blood feud...',0,0,0,0,NULL),
(2000020648,'But why?',0,0,0,0,NULL),
(2000020649,'It was all lies...',0,0,0,0,NULL),
(2000020650,'May your soul be torn asunder by the very thing you hate most, young prince.',0,0,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20199;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20199,0,2000020643,0,'q.12301 - Random Text 1'),
(20199,0,2000020644,0,'q.12301 - Random Text 2'),
(20199,0,2000020645,0,'q.12301 - Random Text 3'),
(20199,0,2000020646,0,'q.12301 - Random Text 4'),
(20199,0,2000020647,0,'q.12301 - Random Text 5'),
(20199,0,2000020648,0,'q.12301 - Random Text 6'),
(20199,0,2000020649,0,'q.12301 - Random Text 7'),
(20199,0,2000020650,0,'q.12301 - Random Text 8');

-- Alliance Emissary 27492
UPDATE creature_template SET MovementType = 2 WHERE entry = 27492;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27492;
DELETE FROM creature_movement_template WHERE entry = 27492;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27492,1,3090.944,-1217.943,11.77404,100,0,0),
(27492,2,3096.126,-1245.591,10.64695,100,40000,2749201),
(27492,3,3091.113,-1218.285,11.66248,100,1000,1); -- 04:22:48.000
DELETE FROM dbscripts_on_creature_movement WHERE id = 2749201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2749201,2000,0,0,0,0,27476,50,7,2000020631,0,0,0,0,0,0,0,''), 
(2749201,5000,1,6,0,0,27476,50,7,0,0,0,0,0,0,0,0,''), -- 04:22:15.000
(2749201,9000,0,0,0,0,0,0,0x04,2000020632,0,0,0,0,0,0,0,''), -- 04:22:19.000
(2749201,12000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:22:22.000
(2749201,18000,0,0,0,0,27476,50,7,2000020633,0,0,0,0,0,0,0,''), -- 04:22:27.000
(2749201,21000,1,6,0,0,27476,50,7,0,0,0,0,0,0,0,0,''), -- 04:22:30.000
(2749201,23000,0,0,0,0,0,0,0x04,2000020634,0,0,0,0,0,0,0,''), -- 04:22:32.000
(2749201,26000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 04:22:35.000
(2749201,33000,3,0,0,0,27476,50,7,0,0,0,0,0,0,0,2.932153,''), -- 04:22:42.000
(2749201,35000,0,0,0,0,27476,50,7,2000020635,0,0,0,0,0,0,0,''); -- 04:22:44.000

-- Forgotten Footman 27229
DELETE FROM dbscripts_on_relay WHERE id = 20400;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20400,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Footman EAI: RUN ON'),
(20400,100,3,0,0,0,0,0,0,0,0,0,0,3006.3,-1245.62,1.59085,100,'Part of Forgotten Footman EAI: move'),
(20400,6000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Footman EAI: Despawn self');

-- Forgotten Soul 27465
UPDATE creature_template_addon SET auras = NULL WHERE entry = 27465;
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 27465;

-- Muradin 27480
UPDATE creature_template SET MovementType = 2 WHERE entry = 27480;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27480;
DELETE FROM creature_movement_template WHERE entry = 27480 AND pathId = 1;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27480,1,1,3100.15,-1250.058,11.46371,100,65000,0);

-- Forgotten Knight 27224
DELETE FROM dbscripts_on_relay WHERE id IN (20401,20402);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20401,10,24,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Knight EAI: unmount'),
(20401,100,23,27465,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Knight EAI: Morph'),
(20401,5000,15,29266,0,0,0,0,0,0,0,0,0x04,0,0,0,0,'Part of Forgotten Knight EAI: Cast 29266'),
(20401,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Knight EAI: Despawn self'),
(20402,1,23,27465,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Knight EAI: Morph'),
(20402,2,15,29266,0,0,0,0,0,0,0,0,0x04,0,0,0,0,'Part of Forgotten Knight EAI: Cast 29266'),
(20402,10000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Forgotten Knight EAI: Despawn self');

-- Forgotten Rifleman 27225
UPDATE creature_template_addon SET emote = 0 WHERE entry = 27225;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27225);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(514513,0,0,2,0,385,0,48143),(514514,0,0,2,0,385,0,48143),(516949,0,0,2,0,385,0,48143),(516944,0,0,2,0,385,0,48143),
(516945,0,0,2,0,385,0,48143),(516930,0,0,2,0,385,0,48143),(516943,0,0,2,0,385,0,48143),(516933,0,0,2,0,385,0,48143),
(516936,0,0,2,0,385,0,48143),(516928,0,0,2,0,385,0,48143),(516920,0,0,2,0,385,0,48143),(516925,0,0,2,0,385,0,48143),
(516922,0,0,2,0,385,0,48143),(516938,0,0,2,0,385,0,48143),(516935,0,0,2,0,385,0,48143),(516932,0,0,2,0,385,0,48143),
(516926,0,0,2,0,385,0,48143),(516927,0,0,2,0,385,0,48143),(516940,0,0,2,0,385,0,48143),(516946,0,0,2,0,385,0,48143),
(516947,0,0,2,0,385,0,48143),(516952,0,0,2,0,385,0,48143),(516951,0,0,2,0,385,0,48143),(516948,0,0,2,0,385,0,48143),
(516934,0,0,2,0,385,0,48143),(516923,0,0,2,0,385,0,48143),(516917,0,0,2,0,385,0,48143),(516918,0,0,2,0,385,0,48143),
(516929,0,0,2,0,385,0,48143),(516931,0,0,2,0,385,0,48143),(516950,0,0,2,0,385,0,48143),(516937,0,0,2,0,385,0,48143),
(516939,0,0,2,0,385,0,48143),(516941,0,0,2,0,385,0,48143),(516942,0,0,2,0,385,0,48143),(516953,0,0,2,0,385,0,48143),
(516921,0,0,2,0,385,0,48143),(516916,0,0,2,0,385,0,48143),(516915,0,0,2,0,385,0,48143),(516919,0,0,2,0,385,0,48143),
(516924,0,0,2,0,385,0,48143),(514550,0,0,2,0,385,0,48143),(514535,0,0,2,0,385,0,48143),(514533,0,0,2,0,385,0,48143),
(514510,0,0,2,0,385,0,48143),(514532,0,0,2,0,385,0,48143),(514521,0,0,2,0,385,0,48143),(514546,0,0,2,0,385,0,48143),
(514545,0,0,2,0,385,0,48143),(514549,0,0,2,0,385,0,48143),(516892,0,0,2,0,385,0,48143),(516890,0,0,2,0,385,0,48143),
(514551,0,0,2,0,385,0,48143);

-- Forgotten Peasant 27226
UPDATE creature_template_addon SET emote = 0 WHERE entry = 27226;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27226);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(519234,0,0,2,0,234,0,48143),(519233,0,0,2,0,234,0,48143),(519232,0,0,2,0,234,0,48143),(519231,0,0,2,0,234,0,48143),
(519230,0,0,2,0,234,0,48143),(516911,0,0,2,0,234,0,48143),(519371,0,0,2,0,234,0,48143),(519370,0,0,2,0,234,0,48143),
(519369,0,0,2,0,234,0,48143),(519235,0,0,2,0,234,0,48143),(516961,0,0,2,0,234,0,48143),(516960,0,0,2,0,234,0,48143),
(516957,0,0,2,0,234,0,48143),(516969,0,0,2,0,234,0,48143),(516970,0,0,2,0,234,0,48143),(516979,0,0,2,0,234,0,48143),
(516982,0,0,2,0,234,0,48143),(516978,0,0,2,0,234,0,48143),(516975,0,0,2,0,234,0,48143),(516958,0,0,2,0,234,0,48143),
(516959,0,0,2,0,234,0,48143),(516971,0,0,2,0,234,0,48143),(516962,0,0,2,0,234,0,48143),(516965,0,0,2,0,234,0,48143),
(516967,0,0,2,0,234,0,48143),(516968,0,0,2,0,234,0,48143),(516973,0,0,2,0,234,0,48143),(516974,0,0,2,0,234,0,48143),
(516981,0,0,2,0,234,0,48143),(516987,0,0,2,0,234,0,48143),(516997,0,0,2,0,234,0,48143),(516984,0,0,2,0,234,0,48143),
(516983,0,0,2,0,234,0,48143),(516977,0,0,2,0,234,0,48143),(516993,0,0,2,0,234,0,48143),(516955,0,0,2,0,234,0,48143),
(516956,0,0,2,0,234,0,48143),(516963,0,0,2,0,234,0,48143),(516996,0,0,2,0,234,0,48143),(516985,0,0,2,0,234,0,48143),
(516986,0,0,2,0,234,0,48143),(516988,0,0,2,0,234,0,48143),(516994,0,0,2,0,234,0,48143),(516972,0,0,2,0,234,0,48143),
(516991,0,0,2,0,234,0,48143),(516995,0,0,2,0,234,0,48143),(516992,0,0,2,0,234,0,48143),(516976,0,0,2,0,234,0,48143),
(516954,0,0,2,0,234,0,48143),(516964,0,0,2,0,234,0,48143),(516966,0,0,2,0,234,0,48143),(516990,0,0,2,0,234,0,48143),
(516989,0,0,2,0,234,0,48143),(517000,0,0,2,0,234,0,48143),(517001,0,0,2,0,234,0,48143),(517002,0,0,2,0,234,0,48143),
(516999,0,0,2,0,234,0,48143),(516998,0,0,2,0,234,0,48143),(516980,0,0,2,0,234,0,48143);
