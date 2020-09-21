-- q.12274 'A Fall From Grace'
DELETE FROM dbscripts_on_quest_end WHERE id = 12274;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12274,0,14,48763,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12274 WHERE entry = 12274;

-- New Hearthglen Ballista 188673
DELETE FROM dbscripts_on_go_template_use WHERE id = 188713;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188713,0,16,6594,0,0,0,0,0,0,0,0,0,0,0,0,0,'play sound'),
(188713,2000,16,6594,0,0,0,0,0,0,0,0,0,0,0,0,0,'play sound'),
(188713,2001,20,2,1,0,27247,517188,7 | 0x10,0,0,0,0,0,0,0,0,''),
(188713,2002,20,2,2,0,27247,517189,7 | 0x10,0,0,0,0,0,0,0,0,''),
(188713,2500,31,27202,20,0,0,0,0,0,0,0,0,0,0,0,0,''),
(188713,2502,0,0,0,0,27202,25,7,2000020483,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000020483;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020483,'Gah! What are you doing?',0,0,0,0,NULL);

-- Devout Bodyguard 27247
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27247;
DELETE FROM creature_movement_template WHERE entry = 27247;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 517188
(27247,1,1,2799.498,-494.4532,119.6998,100,5000,2724701),
(27247,1,2,2794.628,-489.4069,119.6581,100,0,0),
(27247,1,3,2792.759,-483.8605,119.6165,100,0,0),
(27247,1,4,2800.546,-479.0514,119.6165,100,0,0),
(27247,1,5,2807.308,-472.3653,119.6164,100,0,0),
(27247,1,6,2814.062,-467.8903,120.0993,100,0,0),
(27247,1,7,2819.562,-469.8903,121.0993,100,0,0),
(27247,1,8,2825.13,-472.1094,126.5822,100,0,0),
(27247,1,9,2832.39,-471.8458,132.8095,100,0,0),
(27247,1,10,2839.87,-465.8025,135.3623,100,0,0),
(27247,1,11,2838.396,-456.2943,135.3634,100,0,0),
(27247,1,12,2832.59,-449.9131,135.3631,100,0,0),
(27247,1,13,2824.15,-448.8483,135.3634,100,0,0),
(27247,1,14,2816.173,-453.4372,135.3625,100,0,0),
(27247,1,15,2814.064,-462.9299,135.3626,100,0,0),
(27247,1,16,2818.287,-470.2093,135.3556,100,0,0),
(27247,1,17,2825.177,-472.4875,142.5374,100,0,0),
(27247,1,18,2831.982,-471.6238,148.7495,100,0,0),
(27247,1,19,2835.626,-468.3345,151.1253,100,0,0),
(27247,1,20,2834.948,-464.7195,150.8355,100,0,0),
(27247,1,21,2834.948,-464.7195,150.8355,100,20000,2724702),
-- 517189
(27247,2,1,2794.616,-492.7662,119.6998,100,5000,2724703),
(27247,2,2,2792.831,-483.9089,119.9081,100,0,0),
(27247,2,3,2800.546,-479.0516,119.6165,100,0,0),
(27247,2,4,2807.773,-471.9484,119.6164,100,0,0),
(27247,2,5,2814.522,-465.9013,119.6147,100,0,0),
(27247,2,6,2821.489,-471.2979,123.1107,100,0,0),
(27247,2,7,2827.377,-472.4555,128.3404,100,0,0),
(27247,2,8,2833.602,-470.6969,134.0635,100,0,0),
(27247,2,9,2839.728,-464.8862,135.3624,100,0,0),
(27247,2,10,2837.857,-452.8187,135.3632,100,0,0),
(27247,2,11,2827.626,-447.1747,135.3629,100,0,0),
(27247,2,12,2816.31,-452.6234,135.3625,100,0,0),
(27247,2,13,2814.476,-463.5507,135.3627,100,0,0),
(27247,2,14,2819.273,-470.7868,136.6809,100,0,0),
(27247,2,15,2827.964,-473.3304,144.9159,100,0,0),
(27247,2,16,2834.427,-470.3724,150.7986,100,0,0),
(27247,2,17,2837.861,-466.93,150.8365,100,0,0),
(27247,2,18,2833.355,-463.5104,150.8349,100,20000,2724704);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2724701 AND 2724704;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2724701,8,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2724701,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2724701,100,31,27202,20,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2724701,101,0,0,0,0,27202,25,7,2000020484,0,0,0,0,0,0,0,''),
(2724701,3000,0,0,0,0,0,0,0,2000020485,0,0,0,0,0,0,0,''),
(2724702,18000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2724702,19000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(2724703,8,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2724703,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2724704,1000,0,0,0,0,0,0,0,2000020486,0,0,0,0,0,0,0,''),
(2724704,3000,0,0,0,0,0,0,0,2000020487,0,0,0,0,0,0,0,''),
(2724704,18000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2724704,19000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020484 AND 2000020487;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020484,'Boys, go see who\'s doing that.',0,0,1,0,NULL),
(2000020485,'Yes, your eminence. Come on!',0,0,2,0,NULL),
(2000020486,'Hey, who rang the bell?',0,0,6,0,NULL),
(2000020487,'The bodyguard grunts.',0,2,0,0,NULL);

-- High Abbot Landgren 27245
DELETE FROM npc_gossip WHERE npc_guid = 517186;
UPDATE creature_template SET GossipMenuId = 9532 WHERE Entry = 27245;
DELETE FROM gossip_menu WHERE entry IN (9532,9535,9536);
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9532, 12846, 0, 0),
(9535, 12849, 0, 0), -- final
(9536, 12848, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN(9532,9536);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9532,0,0,'Your eminence, may I have a word in private?',1,1,9536,0,0,0,0,NULL,20084),
(9536,0,0,'I am ready, your grace. <kiss the ring>',1,1,9535,0,953601,0,0,NULL,0);
DELETE FROM dbscripts_on_gossip WHERE id = 953601; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(953601,0,15,48756,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 48756 on Player'),
(953601,5000,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(953601,6000,29,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry BETWEEN 20082 AND 20084;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20082,37,27247,20,0,0,1),
(20083,1,48753,0,0,0,0),
(20084,-1,20083,20082,0,0,0);

-- High Abbot Landgren 27439
UPDATE creature_template SET SpeedWalk=5/2.5,SpeedRun=8/7, UnitFlags = 33032, UnitClass = 8, Expansion = 2, MinLevel = 73, MaxLevel = 73, MinLevelHealth = 39760, MaxLevelHealth = 39760, MinLevelMana = 38270, MaxLevelMana = 38270, EquipmentTemplateId = 279 WHERE entry = 27439;
-- waypoints
DELETE FROM creature_movement_template WHERE entry = 27439;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27439,1,2827.02,-412.353,118.4255,100,0,9),
(27439,2,2818.757,-412.4554,118.2837,100,0,0),
(27439,3,2811.01,-412.4614,118.5246,100,0,0),
(27439,4,2786.264,-436.9674,118.2654,100,0,0),
(27439,5,2776.988,-464.7542,116.1404,100,0,0),
(27439,6,2765.816,-488.2148,114.0532,100,0,0),
(27439,7,2754.895,-502.3822,107.5249,100,0,0),
(27439,8,2748.895,-510.1322,104.7749,100,0,0),
(27439,9,2737.89,-524.4745,103.4953,100,0,0),
(27439,10,2737.89,-524.4745,103.4953,1.03264,40000,2743901);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2743901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2743901,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event');
-- Part of High Abbot Landgren EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20337);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20337,0,10,27446,10000,0,0,0,0,0,0,0,0,2715.55,-560.343,10.6656,0,'Part of High Abbot Landgren EAI: summon: High Abbot Landgren\'s Jump Vehicle'),
(20337,100,15,48773,0,0,27446,299,1,0,0,0,0,0,0,0,0,'Part of High Abbot Landgren EAI: cast A Fall from Grace: High Abbot Ride Vehicle'),
(20337,2000,15,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Abbot Landgren EAI: die'),
(20337,3900,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Abbot Landgren EAI: unactive'),
(20337,4000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Abbot Landgren EAI: desp');
-- vehicle control spell_template
DELETE FROM spell_script_target WHERE entry IN(48773);
INSERT INTO spell_script_target VALUES
(48773, 1, 27446, 0);
-- High Abbot Landgren's Jump Vehicle 27446
UPDATE creature_template SET VehicleTemplateId = 54 WHERE entry = 27446; -- this one is guessed - unknown value

-- ELM General Purpose Bunny 23837
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 503105;
DELETE FROM creature_movement WHERE id = 503105;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(503105,1,2827.85,-425.946,119.97,100,5000,2383702);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2383702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2383702,0,35,9,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event D'),
(2383702,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
-- Part of ELM General Purpose Bunny EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20338);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20338,0,34,20085,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of ELM General Purpose Bunny EAI: check for aura'),
(20338,100,15,48759,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of ELM General Purpose Bunny EAI: cast 48759 on Player'),
(20338,1000,14,48756,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- aura check
DELETE FROM conditions WHERE condition_entry = 20085;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20085,1,48756,0,0,0,0);
