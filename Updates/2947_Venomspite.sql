-- Venomspite - Dragonblight

-- Surveyor Hansen 32599
UPDATE creature_template SET GossipMenuId = 10207 WHERE Entry = 32599;
DELETE FROM gossip_menu WHERE entry = 10207;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(10207, 14177, 0, 0);

-- Chief Plaguebringer Middleton 27172
UPDATE creature_template SET GossipMenuId = 9483 WHERE Entry = 27172;
DELETE FROM gossip_menu WHERE entry = 9483;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9483, 12751, 0, 0);

-- Deathguard Molder 27320
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27320;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 517605;
DELETE FROM creature_movement_template WHERE entry = 27320;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27320,1,3240.21,-677.826,166.864,100,0,0),
(27320,2,3234.66,-663.925,166.777,100,5000,0),
(27320,3,3239.58,-676.187,166.924,100,0,0),
(27320,4,3241.68,-682.57,166.852,100,0,0),
(27320,5,3245.34,-697.862,166.922,100,0,0),
(27320,6,3254.52,-715.236,167.581,100,0,0),
(27320,7,3260.49,-729.582,168.285,100,5000,0),
(27320,8,3255.35,-716.65,167.667,100,0,0),
(27320,9,3245.89,-699.306,166.916,100,0,0),
(27320,10,3241.16,-681.193,166.893,100,0,0);

-- Apothecary Wormwick 27029
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27029);
DELETE FROM creature_template_addon WHERE entry = 27029;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27029,0,0,1,0,133,0,NULL);

-- Fenrick Barlowe 27842
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27842;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 519782;
DELETE FROM creature_movement_template WHERE entry = 27842;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27842,1,3241.29,-645.67,165.458,100,0,0),
(27842,2,3240.62,-652.441,166.131,100,0,0),
(27842,3,3243.22,-655.018,166.579,100,0,0),
(27842,4,3244.28,-662.658,166.79,100,0,0),
(27842,5,3248.03,-666.802,166.79,100,0,0),
(27842,6,3252.71,-664.963,166.85,100,0,0),
(27842,7,3255.754,-661.2278,167.4078,1.20907,120000,2784201),
(27842,8,3252.651,-658.7704,167.1953,100,0,0),
(27842,9,3251.15,-653.037,166.517,100,0,0),
(27842,10,3251.51,-647.68,165.775,100,0,0),
(27842,11,3248.832,-646.6597,165.6578,4.223697,120000,2784201),
(27842,12,3246.65,-642.467,165.235,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2784201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2784201,2000,0,0,0,0,0,0,0,2000020460,2000020461,2000020462,2000020463,0,0,0,0,''),
(2784201,5000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2784201,118000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020460 AND 2000020463;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020460,'\'We like the trees, Fenrick. They provide cover.\' They won\'t let me chop them down, either.',0,0,0,1,NULL),
(2000020461,'What do they expect, making the bats come in at that angle? Broken necks and gamey bat stew, that\'s what they get.',0,0,0,1,NULL),
(2000020462,'I wonder how many reinforcements need to suffer injury before they allow us to chop down these idiotic trees. They\'re costing us a fortune in bats. Maybe I\'ll rig a harness or two...',0,0,33,1,NULL),
(2000020463,'Bat gizzards again for the gnomes tonight...',0,0,0,1,NULL);

-- Hansel Bauer 27028
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27028);
DELETE FROM creature_template_addon WHERE entry = 27028;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27028,10719,0,1,0,0,0,NULL);

-- Quartermaster Bartlett 27267
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27267);
DELETE FROM creature_template_addon WHERE entry = 27267;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27267,0,0,1,0,233,0,NULL);

-- Scarlet Onslaught Prisoner 27349
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27349);
DELETE FROM creature_template_addon WHERE entry = 27349;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27349,0,0,1,0,64,0,NULL);

-- Lovely Liddia 27032
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27032;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 516280;
DELETE FROM creature_movement_template WHERE entry = 27032;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27032,1,3217.295,-701.342,167.539,0.2443461,60000,0),
(27032,2,3217.47,-696.315,167.316,100,0,0),
(27032,3,3216.416,-695.8867,167.4084,2.788,20000,2703201),
(27032,4,3217.47,-696.315,167.316,100,0,0),
(27032,5,3217.295,-701.342,167.539,0.2443461,120000,0),
(27032,6,3218.237,-712.3607,167.414,4.271188,20000,2703201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2703201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2703201,2000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2703201,5000,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2703201,16000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2703201,18000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

-- Patchy 27849
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27849;
UPDATE creature SET position_x = 3242.388, position_y = -732.7768, position_z = 168.3155, orientation = 4.066617, spawndist = 0, MovementType = 2 WHERE guid = 519786;
DELETE FROM creature_movement_template WHERE entry = 27849;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27849,1,3242.388,-732.7768,168.3155,4.066617,60000,2784901),
(27849,2,3239.94,-737.353,168.063,100,0,0),
(27849,3,3242.106,-738.3301,168.2321,4.14563,60000,2784901),
(27849,4,3239.94,-737.353,168.063,100,0,0),
(27849,5,3235.76,-740.148,168.063,100,0,0),
(27849,6,3230.2,-739.317,168.063,100,0,0),
(27849,7,3226.61,-734.762,168.063,100,0,0),
(27849,8,3228.35,-729.641,167.894,100,0,0),
(27849,9,3233.28,-726.893,168.037,100,0,0),
(27849,10,3236.99,-726.96,168.062,100,0,0),
(27849,11,3240.41,-720.813,168.645,100,0,0),
(27849,12,3242.3,-715.991,167.339,100,0,0),
(27849,13,3241.55,-710.62,167.209,100,0,0),
(27849,14,3237.17,-707.017,167.179,100,0,0),
(27849,15,3232.33,-703.233,167.187,100,0,0),
(27849,16,3229.68,-697.307,167.143,100,0,0),
(27849,17,3229.65,-692.312,167.09,100,0,0),
(27849,18,3230.42,-681.949,167.577,100,0,0),
(27849,19,3228.53,-678.575,167.587,100,0,0),
(27849,20,3226.74,-677.67,167.565,100,0,0),
(27849,21,3225.816,-678.1149,168.4106,100,60000,2784902);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2784901,2784902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2784901,2000,28,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2784901,58000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2784902,2000,28,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2784902,3000,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
(2784902,58000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2784902,59000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
UPDATE creature SET spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 27849;

-- Junior Apothecary Lawrence 27846
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27846);
DELETE FROM creature_template_addon WHERE entry = 27846;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27846,0,0,1,0,133,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27846; -- activated by script
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 519785;
DELETE FROM creature_movement_template WHERE entry = 27846;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27846,1,3241.202,-737.7072,168.232,5.969026,1000,2784601),
(27846,2,3239.43,-732.081,167.894,100,0,0),
(27846,3,3237.68,-725.966,168.211,100,0,0),
(27846,4,3241.382,-719.4489,168.1335,1.028404,3000,2784602),
(27846,5,3242.73,-717.072,167.307,100,0,0),
(27846,6,3243.03,-713.681,167.278,100,0,0),
(27846,7,3240.42,-709.212,167.182,100,0,0),
(27846,8,3235.84,-706.497,167.219,100,0,0),
(27846,9,3233.02,-702.597,167.149,100,3000,2784603),
(27846,10,3231.13,-701.236,167.158,100,0,0),
(27846,11,3230.73,-694.877,167.101,100,0,0),
(27846,12,3232.9,-686.639,167.037,100,0,0),
(27846,13,3231.93,-679.726,167.374,100,0,0),
(27846,14,3228.53,-678.074,167.58,100,7000,2784604),
(27846,15,3231.11,-679.125,167.416,100,0,0),
(27846,16,3234.7,-683.895,167.086,100,0,0),
(27846,17,3238.55,-694.048,166.949,100,0,0),
(27846,18,3243.46,-705.909,167.059,100,0,0),
(27846,19,3243.13,-712.982,167.275,100,0,0),
(27846,20,3241.61,-718.482,167.46,100,0,0),
(27846,21,3238.14,-725.119,168.232,100,0,0),
(27846,22,3239,-736.29,167.996,100,0,0),
(27846,23,3241.202,-737.7072,168.232,5.969026,1000,2784605);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2784601 AND 2784605;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2784601,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2784601,500,0,0,0,0,0,0,0,2000020465,0,0,0,0,0,0,0,''),
(2784602,1000,0,0,0,0,0,0,0,2000020464,0,0,0,0,0,0,0,''),
(2784603,1000,0,0,0,0,0,0,0,2000020466,0,0,0,0,0,0,0,''),
(2784604,1000,0,0,0,0,0,0,0,2000020467,0,0,0,0,0,0,0,''),
(2784604,4000,0,0,0,0,0,0,0,2000020468,0,0,0,0,0,0,0,''),
(2784605,100,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2784605,500,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020464 AND 2000020468;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020464,'Where did that cat go?',0,0,0,6,NULL),
(2000020465,'Patchy?',0,0,0,6,NULL),
(2000020466,'There you are, you little miscreant.',0,0,0,25,NULL),
(2000020467,'%s sighs in irritation.',0,2,0,0,NULL),
(2000020468,'Time to make another Patchy.',0,0,0,1,NULL);

-- Brote 27198
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 516710;

-- Skrotee 27191
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 516706;

-- Duncan Fallers 27033
-- Part of Duncan Fallers 27033 EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20333;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20333,500,0,0,0,0,0,0,0,2000020469,0,0,0,0,0,0,0,''),
(20333,4000,31,27198,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Duncan Fallers 27033 EAI: search for 27198'),
(20333,4100,0,0,0,0,27198,22,7,2000020470,0,0,0,0,0,0,0,'Part of Duncan Fallers 27033 EAI: force to say');
DELETE FROM dbscript_string WHERE entry IN (2000020469,2000020470);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020469,'Get out there before I clock you. Clock. Get it?',0,0,0,25,NULL),
(2000020470,'If I ever get out of here, I will CRUSH every clock I come in contact with...',0,0,0,1,NULL);
