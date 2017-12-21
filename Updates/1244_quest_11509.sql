-- q.11509 'Street "Cred"'
-- alternative conoe transport added
-- Pirate squad - redone

-- Grezzix Spindlesnap
UPDATE creature SET position_x = 590.604675, position_y = -2793.394043, position_z = 0.170127, orientation = 3.630285 WHERE guid = 88293;

-- "Tiny" Jimb
UPDATE creature SET position_x = 592.102173, position_y = -2792.125977, position_z = 0.159579, orientation = 3.508112 WHERE guid = 88294;
DELETE FROM creature_template_addon WHERE entry = 24897;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24897,0,1,1,0,0,0,'');

-- Lou the Cabin Boy
UPDATE creature SET position_x = 594.016785, position_y = -2794.662109, position_z = 0.185591, orientation = 3.787364 WHERE guid = 88295;
DELETE FROM creature_template_addon WHERE entry = 24896;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24896,0,1,1,0,0,0,'');
-- gossip corrected
UPDATE gossip_menu_option SET action_script_id = 904501, condition_id = 1399 WHERE menu_id = 9045 AND id = 0;
DELETE FROM conditions WHERE condition_entry = 1399;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1399,9,11509,0);
DELETE FROM dbscripts_on_gossip WHERE id = 904501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(904501,0,15,50004,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Molly
UPDATE creature SET position_x = 592.353516, position_y = -2790.722900, position_z = 3.000764, orientation = 4.802923, spawndist = 0, MovementType = 2 WHERE guid = 88296;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 24767;
DELETE FROM creature_movement WHERE id = 88296;
DELETE FROM creature_movement_template WHERE entry = 24767;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24767,1,592.394,-2796.4,3.66742,0,5,3.62168),
(24767,2,589.258,-2797.27,3.62788,0,0,3.10332),
(24767,3,586.885,-2796.76,3.50077,0,0,2.79544),
(24767,4,584.509,-2794.41,3.57046,0,0,1.90323),
(24767,5,584.138,-2791.53,3.11189,0,0,0.951329),
(24767,6,586.872,-2788.1,3.3131,0,0,0.200488),
(24767,7,592.354,-2790.72,3.00076,0,0,4.802923);

DELETE FROM dbscripts_on_relay WHERE id IN (20003,20004,20005);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20003,0,45,0,20010,0,0,0,0,0,0,0,0,0,0,0,0,'Molly - Start Random Script'),
-- 1st
(20004,1,0,0,0,0,0,0,0,2000001476,2000001477,0,0,0,0,0,0,''),
(20004,4,31,24643,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 24643'),
(20004,5,0,0,0,0,24643,15,0,2000001479,0,0,0,0,0,0,0,'force 24643 to: say text'),
-- 2nd
(20005,1,0,0,0,0,0,0,0,2000001478,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001476 AND 2000001479;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001476,'*Squawk!*  Ahoy!  Look at me pirate disguise!  Yarrrr!  *Sqwak!*',0,0,0,0,NULL),
(2000001477,'*Caw!*  Talk like a pirate!  Yarrr! *Sqwaaaaak!*',0,0,0,0,NULL),
(2000001478,'*Sqwaaak!*  Shut up, stupid bird!  You\'ll get us all killed!  *Cawwwww!*',0,0,0,0,NULL),
(2000001479,'Shut your trap, you feathered idiot!  These pirates will cut you open and wear you for a hat!',0,0,0,0,NULL);

DELETE FROM dbscript_random_templates WHERE id = 20010;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(20010,1,20004,0,'Molly - START_RELAY_SCRIPT 1'),
(20010,1,20005,0,'Molly - START_RELAY_SCRIPT 2');

-- Lou the Cabin Boy - summoned
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69, MinLevelHealth = 7984, MaxLevelHealth = 7984, Armor = 64232, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 298, MinMeleeDmg = 271, MaxMeleeDmg = 385, InhabitType = 7, SpeedRun = 1.6, MovementType = 2 WHERE Entry = 27923;
DELETE FROM creature_movement WHERE id = 88296;
DELETE FROM creature_movement_template WHERE entry = 27923;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27923,1,592.174,-2798.24,0.00120432,0,5,3.48992),
(27923,2,585.101,-2800.96,0.00106163,0,9,0),
(27923,3,557.59,-2811.22,0.00110765,0,0,0),
(27923,4,482.092,-2834.29,0.00117649,0,0,0),
(27923,5,444.601,-2890.47,0.00120624,0,0,0),
(27923,6,389.127,-2918.54,0.00120624,0,0,0),
(27923,7,350.713,-2938.99,0.00112049,0,0,0),
(27923,8,263.272,-3016.49,0.000992667,0,0,0),
(27923,9,193.463,-3117.36,0.00124185,0,0,0),
(27923,10,147.458,-3175.78,0.00101072,0,0,0),
(27923,11,80.7313,-3234.74,0.00135896,0,0,0),
(27923,12,-63.2804,-3255.51,0.00135896,0,0,0),
(27923,13,-144.172,-3290,0.00113848,0,0,0),
(27923,14,-178.239,-3323.53,0.00111425,0,0,0),
(27923,15,-195.555,-3369.02,0.00111425,0,0,0),
(27923,16,-261.281,-3496.74,0.00123536,0,0,0),
(27923,17,-261.113,-3523.87,0.00132899,0,0,0),
(27923,18,-252.585,-3540.34,0.00132899,0,0,0),
(27923,19,-239.352,-3555.58,0.00107466,0,0,0),
(27923,20,-227.808,-3564.96,0.00104253,0,10,0),
(27923,21,-200.721,-3549.41,-0.212018,5000,2792301,0);
DELETE FROM dbscript_string WHERE entry = 2000001480;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001480,'YAAARRRRR! Here we be, matey! Scalawag Point!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2792301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2792301,0,0,0,0,0,0,0,0,2000001480,0,0,0,0,0,0,0,''),
(2792301,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
