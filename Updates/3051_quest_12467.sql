-- q.12467 'Chasing Icestorm: Thel'zan's Phylactery'

-- gossip available only during quest
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 960301, condition_id = 20169 WHERE menu_id = 9603;
DELETE FROM conditions WHERE condition_entry = 20169;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20169,9,12467,0);
DELETE FROM dbscripts_on_gossip WHERE id = 960301; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(960301,0,31,26287,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26287 - terminate if alive'),
(960301,9,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(960301,10,29,1,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcflag removed'),
(960301,11,0,0,0,0,0,0,0,2000020659,0,0,0,0,0,0,0,''),
(960301,12,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(960301,4998,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'FLY ON'),
(960301,4999,22,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Temp Faction'),
(960301,5000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'wp');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020659 AND 2000020661;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020659,'I\'ll flush her out, $n! You just be ready for her when she comes in!',0,0,7,1,NULL),
(2000020660,'FIRE! FIRE! BRING HER DOWN!',0,1,7,22,NULL),
(2000020661,'Thel\'zan\'s phylactery drops to the ground beneath Icestorm.',0,3,0,0,NULL);

-- "Wyrmbait" 27843
DELETE FROM creature_movement_template WHERE entry = 27843;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27843,1,4534.954,32.78271,88.17386,100,0,0),
(27843,2,4542.66,143.22,109.084,100,100,0),
(27843,3,4568.908,150.4734,113.5349,100,100,2784302),
(27843,4,4541.015,34.2519,88.31277,100,2000,0),
(27843,5,4548.401,3.602159,71.40673,100,1000,2784301),
(27843,6,4548.4,3.60216,70.4067,1.67552,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2784301,2784302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2784301,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'FLY OFF'),
(2784301,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnActive'),
(2784301,2,22,1974,0,0,0,0,0,0,0,0,0,0,0,0,0,'Faction back to default'),
(2784301,3,29,1,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcflag add'),
(2784302,0,10,26287,300000,0,0,0,0x08,1,0,0,0,4560.903,224.9135,135.4687,4.617902,'summon: Icestorm');

-- Icestorm 26287
UPDATE creature_template SET InhabitType = 4 WHERE entry = 26287;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26287);
DELETE FROM creature_template_addon WHERE entry = 26287;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26287,0,50331648,0,0,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE entry = 26287;
DELETE FROM creature_movement_template WHERE entry = 26287;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26287,1,4560.903,224.9135,135.4687,100,0,0),
(26287,2,4561.495,200.4222,139.8242,100,0,0),
(26287,3,4551.378,94.04321,127.0742,100,0,0),
(26287,4,4543.821,45.72195,104.5742,100,5000,2628701),
(26287,5,4543.41,41.0699,80.7806,4.56386,300000,2628702);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2628701,2628702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2628701,0,31,27844,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27844'),
(2628701,1,0,0,0,0,27844,110,7,2000020660,0,0,0,0,0,0,0,'buddy Yell'),
(2628702,0,39,0,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'FLY OFF'),
(2628702,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle'),
(2628702,10,35,6,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send event AI 6');
DELETE FROM dbscripts_on_creature_death WHERE id = 26287;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26287,0,0,0,0,0,0,0,0,2000020661,0,0,0,0,0,0,0,'');

-- 7th Legion Harpoon Gun 27839
UPDATE creature_template SET UnitFlags = 33555200 WHERE entry = 27839;
