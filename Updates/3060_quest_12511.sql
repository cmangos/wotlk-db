-- q.12511 'The Hills Have Us'
DELETE FROM dbscripts_on_quest_start WHERE id = 12511;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12511,0,15,50629,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Gryphon to Amberpine Lodge');
UPDATE quest_template SET StartScript = 12511 WHERE entry = 12511;

-- Wintergarde Gryphon 28061
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75 WHERE entry = 28061;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28061;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28061,0,28065,'Wintergarde Gryphon');
DELETE FROM dbscripts_on_relay WHERE id IN (20446,20447);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20446,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: ACTIVE'),
(20446,100,0,0,0,0,28065,5,7,2000020709,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: buddy say'),
(20446,1000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: RUN ON'),
(20446,1100,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: FLY ON'),
(20446,1200,15,49303,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Cast Flight + Speed'),
(20446,5000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: set waypoints'),
(20447,0,15,49261,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Dismount Passenger');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020709 AND 2000020713;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020709,'I\'ll have you at Amberpine Lodge in no time, ally! We just have to make one brief stop first...',0,0,7,0,NULL),
(2000020710,'We\'re gonna do a quick fly by Conquest Hold to see what those filthy, no good, Horde are up to. Keep your eyes peeled for their wind riders. Not that they\'d ever catch me!',0,0,7,0,NULL),
(2000020711,'What in the name of Bronzebeard is goin\' on here? Look at this place! I think...',0,0,7,0,NULL),
(2000020712,'Uh-oh. We\'ve got company! HOLD ON TIGHT! I\'m gonna try and lose \'em!',0,0,7,0,NULL),
(2000020713,'I think we lost \'em! That was a close one! Welp, as promised, Amberpine Lodge in one piece! Keep your feet on the ground, friend!',0,0,7,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 28061;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(28061,1,3699.6936,-721.9221,219.29805,100,0,0),
(28061,2,3716.3372,-744.8086,219.29805,100,0,0),
(28061,3,3754.6975,-766.4142,219.29805,100,0,0),
(28061,4,3823.4036,-778.20447,229.43698,100,0,0),
(28061,5,3855.0312,-824.1102,240.18695,100,0,0),
(28061,6,3851.9,-919.974,232.915,100,0,0),
(28061,7,3840.59,-1008.1,222.547,100,0,0),
(28061,8,3815.77,-1064.68,215.691,100,0,0),
(28061,9,3710.14,-1181.88,177.59,100,0,0),
(28061,10,3674.9307,-1234.0061,169.63153,100,0,0),
(28061,11,3580.33,-1364.59,173.699,100,0,0),
(28061,12,3562.7188,-1421.7626,169.63153,100,0,0),
(28061,13,3549.2375,-1556.2838,169.63153,100,1,2806101), -- first script
(28061,14,3494.7446,-1667.5358,166.7296,100,0,0),
(28061,15,3480.24,-1702.44,165.619,100,0,0),
(28061,16,3469.591,-1731.115,160.06296,100,0,0),
(28061,17,3417.67,-1805.82,160.542,100,0,0),
(28061,18,3398.6677,-1834.3002,160.06296,100,0,0),
(28061,19,3347.64,-1919.14,166.158,100,0,0),
(28061,20,3326.5435,-1956.757,160.06296,100,0,0),
(28061,21,3302.69,-2025.37,161.235,100,0,0),
(28061,22,3302.4072,-2047.635,160.06296,100,0,0),
(28061,23,3309.66,-2136.96,174.01,100,0,0),
(28061,24,3321.5894,-2172.2275,169.86847,100,0,0),
(28061,25,3340.22,-2232.7,171.876,100,0,0),
(28061,26,3352.4548,-2278.8647,174.61842,100,0,0),
(28061,27,3349.7534,-2368.1155,174.61842,100,0,0),
(28061,28,3325.15,-2391.65,173.418,100,0,0),
(28061,29,3273.5618,-2401.9539,174.61842,100,0,0),
(28061,30,3231.99,-2326.16,170.61842,100,0,0),
(28061,31,3241.56,-2302.83,170.61842,100,0,0),
(28061,32,3286.93,-2268.76,170.61842,100,0,0),
(28061,33,3353.9648,-2232.0115,170.36844,100,4000,2806102), -- 2nd script
(28061,34,3406.751,-2232.2563,159.57182,100,0,0),
(28061,35,3484.2961,-2251.2778,147.90515,100,0,0),
(28061,36,3687.5261,-2328.181,188.268,100,0,0),
(28061,37,3739.8252,-2392.6477,199.38365,100,0,0),
(28061,38,3800.0535,-2478.2786,214.51729,100,0,0),
(28061,39,3769.2024,-2553.0325,213.62839,100,0,0),
(28061,40,3628.03,-2676.02,214.404,100,0,0),
(28061,41,3558.7239,-2723.1643,213.62839,100,0,0),
(28061,42,3439.4553,-2757.1624,223.79466,100,5000,2806103), -- 3rd script
(28061,43,3406.0881,-2755.1821,227.184,100,0,0),
(28061,44,3390.089,-2773.591,227.184,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2806101 AND 2806103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2806101,0,0,0,0,0,28065,30,7,2000020710,0,0,0,0,0,0,0,'buddy say'),
(2806102,0,0,0,0,0,28065,30,7,2000020711,0,0,0,0,0,0,0,'buddy say'),
(2806102,3810,15,50560,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Summon Conquest War Rider - 1'),
(2806102,3820,15,50560,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Summon Conquest War Rider - 2'),
(2806102,3830,15,50560,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Summon Conquest War Rider - 3'),
(2806102,3900,15,44423,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast Soar'),
(2806102,4000,0,0,0,0,28065,40,7,2000020712,0,0,0,0,0,0,0,'buddy say'),
(2806103,0,0,0,0,0,28065,40,7,2000020713,0,0,0,0,0,0,0,'buddy say'),
(2806103,2999,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UNACTIVE'),
(2806103,3000,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI 5');
DELETE FROM dbscripts_on_spell WHERE id = 49261;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49261,100,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(49261,1000,15,44795,0,0,0,0,0,0,0,0,0,0,0,0,0,'Parachute');

-- Conquest Hold Windrager 28063
DELETE FROM creature_template_addon WHERE entry = 28063;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28063,24891,0,1,1,0,0,50593);
DELETE FROM spell_script_target WHERE entry IN(50592);
INSERT INTO spell_script_target VALUES
(50592,1,28061,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20448,20449);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20448,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: ACTIVE'),
(20448,2,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: FLY ON'),
(20448,3,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: RUN ON'),
(20448,15000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: UNACTIVE'),
(20448,15001,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: Despawn self'),
(20449,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: follow target'),
(20449,2000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: follow target'),
(20449,3000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Conquest Hold Windrager EAI: follow target');
