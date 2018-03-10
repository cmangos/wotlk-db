-- q.11969 'Springing the Trap'
-- q. item must be removed after complete
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11969;

-- TEMP Unlit Signal Fire
-- range corrected to match spell req.
UPDATE gameobject_template SET data1 = 20 WHERE entry = 300242;

-- Signal Fire
-- positions corrected
UPDATE gameobject SET position_x = 4061.978, position_y = 7109.135, position_z = 170.0001, orientation = 0, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 1, spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 194151;
UPDATE gameobject SET position_x = 4061.797, position_y = 7109.155, position_z = 169.9995, orientation = 0, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 1, spawntimesecsmin = -120, spawntimesecsmax = -120 WHERE id = 194152;

-- Signal Fire Invisman
UPDATE creature SET phaseMask = 1 WHERE guid = 88467;

-- Corpse of Saragosa
UPDATE creature_template_addon SET auras = '29266' WHERE entry = 26299;
-- static spawn removed
DELETE FROM creature WHERE guid=138973;
DELETE FROM creature_addon WHERE guid=138973;
DELETE FROM creature_movement WHERE id=138973;
DELETE FROM game_event_creature WHERE guid=138973;
DELETE FROM game_event_creature_data WHERE guid=138973;
DELETE FROM creature_battleground WHERE guid=138973;
DELETE FROM creature_linking WHERE guid=138973
 OR master_guid=138973;

-- Keristrasza 26237
DELETE FROM creature_template_addon WHERE entry = 26237;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26237,0,50331648,0,0,0,0,NULL);
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 26237;
DELETE FROM creature_movement_template WHERE entry = 26237;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- PathId = 1
(26237,1,1,4208.379,6928.523,280.5008,0,0,100),
(26237,1,2,4202.904,6934.56,286.2961,0,0,100),
(26237,1,3,4199.623,6938.177,289.7693,0,0,100),
(26237,1,4,4190.086,6975.19,287.7692,0,0,100),
(26237,1,5,4163.62,7011.255,260.5475,0,0,100),
(26237,1,6,4135.352,7043.223,227.103,0,0,100),
(26237,1,7,4098.674,7064.292,198.7698,0,0,100),
(26237,1,8,4098.674,7064.292,198.7698,0,0,100),
(26237,1,9,4092.68,7067.481,193.5758,0,0,100),
(26237,1,10,4079.43,7074.231,176.5758,0,0,3.1584),
(26237,1,11,4063.685,7083.67,167.8817,300000,2623701,3.1584),
-- PathId = 2
(26237,2,1,3908.273,6578.861,170.511,300000,2623701,0.5235988);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2623701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2623701,0,39,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Fly OFF');

-- Keristrasza 34310
DELETE FROM creature_template_addon WHERE entry = 34310;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(34310,0,50331648,0,0,0,0,NULL);
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 151200, MaxLevelHealth = 151200, MinLevelMana = 31952, MaxLevelMana = 31952, Armor = 9706, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 608, MinMeleeDmg = 417, MaxMeleeDmg = 582, InhabitType = 4, MovementType = 2, VehicleTemplateId = 405, SpeedRun = 3 WHERE entry = 34310;
DELETE FROM creature_movement_template WHERE entry = 34310;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(34310,1,4042.93,7097.24,171.0833,1000,5,100),
(34310,2,4025.29,7119.911,175.2971,0,0,100),
(34310,3,4010.043,7128.967,214.9082,0,0,100),
(34310,4,3994.148,7135.969,247.3804,0,0,100),
(34310,5,3958.112,7147.205,294.38,0,0,100),
(34310,6,3922.322,7156.729,350.4078,0,0,100),
(34310,7,3888.125,7163.127,393.8244,0,0,100),
(34310,8,3837.986,7159.281,462.7131,0,0,100),
(34310,9,3778.996,7123.27,540.0183,0,0,100),
(34310,10,3720.626,7066.214,594.6576,0,0,100),
(34310,11,3691.526,6999.978,592.0184,0,0,100),
(34310,12,3677.553,6887.122,561.7679,0,0,100),
(34310,13,3735.067,6779.483,541.5752,0,0,100),
(34310,14,3884.929,6772.919,597.7415,0,0,100),
(34310,15,3992.2,6886.192,617.8243,0,0,100),
(34310,16,3965.72,7038.364,608.4637,0,0,100),
(34310,17,3898.994,7084.34,618.6295,0,0,100),
(34310,18,3801.681,7087.854,614.4357,0,0,100),
(34310,19,3718.856,7060.543,598.3805,0,0,100),
(34310,20,3666.904,6975.042,598.3805,0,0,100),
(34310,21,3677.161,6848.757,548.0193,0,0,100),
(34310,22,3713.648,6772.952,526.2135,0,0,100),
(34310,23,3745.926,6742.162,458.325,0,0,100),
(34310,24,3761.394,6720.499,412.4911,0,0,100),
(34310,25,3796.058,6692.446,345.9361,0,0,100),
(34310,26,3837.042,6659.633,281.3808,0,0,100),
(34310,27,3902.849,6610.444,184.0475,0,0,100),
(34310,28,3914.783,6600.746,168.5198,0,0,100),
(34310,29,3914.783,6600.746,168.5198,5000,1,100);

-- Malygos
DELETE FROM creature_template_addon WHERE entry = 26310;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26310,0,50331648,0,0,0,0,65137);
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 26310;
DELETE FROM creature_movement_template WHERE entry = 26310;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26310,1,3767.673,6843.96,544.4875,185000,0,4.066617),
(26310,2,3736.729,6813.358,533.4736,0,0,100),
(26310,3,3732.188,6794.312,487.0847,0,0,100),
(26310,4,3730.688,6769.336,444.0849,0,0,100),
(26310,5,3726.533,6750.502,398.3348,0,0,100),
(26310,6,3725.144,6735.662,351.0848,0,0,100),
(26310,7,3733.896,6705.199,312.0294,0,0,100),
(26310,8,3735.563,6692.039,264.474,0,0,100),
(26310,9,3739.076,6675.249,218.3628,0,0,100),
(26310,10,3746.836,6657.269,186.8073,0,0,100),
(26310,11,3751.5,6635.882,186.8073,0,0,100),
(26310,12,3766.236,6622.118,186.8073,0,0,100),
(26310,13,3794.761,6612.983,186.8073,0,0,100),
(26310,14,3826.566,6605.694,195.7795,0,0,100),
(26310,15,3838.386,6601.479,199.7516,30000,2631001,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2631001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2631001,5,0,0,0,0,0,0,0,2000001581,0,0,0,0,0,0,0,''),
(2631001,9,0,0,0,0,26237,100,7,2000001582,0,0,0,0,0,0,0,''),
(2631001,14,15,12980,0,0,26237,100,7,0,0,0,0,0,0,0,0,''),
(2631001,15,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Red Dragon Soldier
DELETE FROM creature_template_addon WHERE entry = 24769;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24769,0,50331648,0,0,0,0,'36630 65185');
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 24769;
DELETE FROM creature_movement_template WHERE entry = 24769;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- PathId = 1
(24769,1,1,3788.726,6952.882,619.7848,0,0,100),
(24769,1,2,3809.698,6939.206,609.7292,0,0,100),
(24769,1,3,3829.648,6917.982,597.0071,0,0,100),
(24769,1,4,3845.798,6899.093,586.6738,0,0,100),
(24769,1,5,3864.757,6857.222,572.757,0,0,100),
(24769,1,6,3862.349,6824.601,561.4517,0,0,100),
(24769,1,7,3850.486,6797.143,559.7294,0,0,100),
(24769,1,8,3828.732,6772.135,562.8682,0,0,100),
(24769,1,9,3795.058,6761.407,568.9792,0,0,100),
(24769,1,10,3760.513,6774.492,581.5349,0,0,100),
(24769,1,11,3720.332,6799.233,597.9792,0,0,100),
(24769,1,12,3697.16,6835.938,619.7848,0,0,100),
(24769,1,13,3681.756,6872.03,619.7848,0,0,100),
(24769,1,14,3672.802,6901.496,619.7848,0,0,100),
(24769,1,15,3672.081,6921.473,619.7848,0,0,100),
(24769,1,16,3675.869,6947.217,619.7848,0,0,100),
(24769,1,17,3696.144,6973.719,619.7848,0,0,100),
(24769,1,18,3723.596,6980.155,619.7848,0,0,100),
(24769,1,19,3761.115,6971.517,619.7848,0,0,100),
-- PathId = 2
(24769,2,1,3715.599,6790.909,576.1764,0,0,100),
(24769,2,2,3733.311,6795.495,575.6484,0,0,100),
(24769,2,3,3746.552,6797.681,571.1484,0,0,100),
(24769,2,4,3758.14,6796.333,567.8428,0,0,100),
(24769,2,5,3769.744,6788.941,566.5097,0,0,100),
(24769,2,6,3774.698,6775.426,565.4541,0,0,100),
(24769,2,7,3772.478,6758.345,564.0373,0,0,100),
(24769,2,8,3761.064,6744.284,561.3151,0,0,100),
(24769,2,9,3742.062,6734.352,558.0375,0,0,100),
(24769,2,10,3722.155,6732.545,558.4818,0,0,100),
(24769,2,11,3710.604,6738.485,558.4818,0,0,100),
(24769,2,12,3702.351,6755.943,553.5372,0,0,100),
(24769,2,13,3702.623,6781.31,558.315,0,0,100),
(24769,2,14,3710.322,6803.959,558.4818,0,0,100),
(24769,2,15,3707.133,6828.621,558.4818,0,0,100),
(24769,2,16,3694.577,6842.447,558.4818,0,0,100),
(24769,2,17,3677.345,6846.772,558.4818,0,0,100),
(24769,2,18,3658.489,6838.999,562.2039,0,0,100),
(24769,2,19,3643.681,6818.719,570.5095,0,0,100),
(24769,2,20,3640.345,6800.429,574.6765,0,0,100),
(24769,2,21,3649.234,6780.53,576.1764,0,0,100),
(24769,2,22,3662.512,6771.815,576.1764,0,0,100),
(24769,2,23,3689.853,6776.469,576.1764,0,0,100),
-- PathId = 3
(24769,3,1,3689.077,6901.22,601.1439,0,0,100),
(24769,3,2,3687.71,6887.773,599.449,0,0,100),
(24769,3,3,3681.292,6860.081,599.449,0,0,100),
(24769,3,4,3684.588,6828.854,601.2267,0,0,100),
(24769,3,5,3702.324,6800.028,602.0601,0,0,100),
(24769,3,6,3742.879,6774.088,612.5878,0,0,100),
(24769,3,7,3786.845,6777.308,626.338,0,0,100),
(24769,3,8,3803.426,6793.12,641.338,0,0,100),
(24769,3,9,3818.26,6820.016,651.0602,0,0,100),
(24769,3,10,3824.966,6848.016,656.3936,0,0,100),
(24769,3,11,3813.837,6884.006,649.3936,0,0,100),
(24769,3,12,3787.394,6910.689,636.1436,0,0,100),
(24769,3,13,3762.704,6925.763,628.9214,0,0,100),
(24769,3,14,3741.792,6934.354,621.9214,0,0,100),
(24769,3,15,3720.52,6935.709,615.1437,0,0,100),
(24769,3,16,3702.77,6929.314,607.838,0,0,100),
(24769,3,17,3692.661,6917.933,604.2271,0,0,100);

-- spells
DELETE FROM spell_script_target WHERE entry IN (65140,65162);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(65140, 1, 34310, 0),
(65162, 1, 26237, 0);
DELETE FROM spell_target_position WHERE id = 65138;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(65138, 571, 4042.93,7097.24,171.0833,2.232042);

-- Event
DELETE FROM dbscripts_on_event WHERE id = 17491;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17491,0,31,26237,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if buddy found'), -- only one can be summoned in same time
(17491,1,10,26237,120000,1,0,0,8,1,0,0,0,4191.093,6972.996,288.5493,1.97508,'summon Keristrasza 26237 - pathId 1'),
(17491,1,10,26299,120000,0,0,0,8,0,0,0,0,4032.4,7086.208,166.6852,4.328416,'summon Corpse of Saragosa'),
(17491,1,10,26310,305000,0,0,0,8,0,0,0,0,3767.673,6843.96,544.4875,4.066617,'summon Malygos'),
(17491,1,9,92627,120,0,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(17491,2,40,0,0,0,194151,32133,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(17491,4,10,24769,180000,1,0,0,8,0,0,0,0,3788.726,6952.882,619.7848,5.55047,'summon Red Dragon Soldier'),
(17491,4,10,24769,180000,2,0,0,8,0,0,0,0,3715.599,6790.909,576.1764,0.231757,'summon Red Dragon Soldier'),
(17491,4,10,24769,180000,3,0,0,8,0,0,0,0,3689.077,6901.22,601.1439,2.62565,'summon Red Dragon Soldier'),
(17491,20,36,0,0,0,26237,100,3,0,0,0,0,0,0,0,0,'face Player'),
(17491,21,0,0,0,0,26237,100,3,2000001575,0,0,0,0,0,0,0,''),
(17491,29,0,0,0,0,26237,100,7,2000001576,0,0,0,0,0,0,0,''),
(17491,33,3,0,0,0,26237,100,7,0,0,0,0,4040.892,7083.875,168.0854,100,''),
(17491,41,0,0,0,0,26237,100,7,2000001577,0,0,0,0,0,0,0,''),
(17491,45,15,45852,0,0,26237,100,7,0,0,0,0,0,0,0,0,''),
(17491,50,15,42726,1,0,26299,100,7,0,0,0,0,0,0,0,0,''),
(17491,50,0,0,0,0,26237,100,7,2000001578,0,0,0,0,0,0,0,''),
(17491,61,15,46853,0,0,26237,100,7,0,0,0,0,0,0,0,0,''),
(17491,66,36,0,0,0,26237,100,3,0,0,0,0,0,0,0,0,'face Player'),
(17491,66,0,0,0,0,26237,100,3,2000001579,0,0,0,0,0,0,0,''),
(17491,69,15,37712,0,0,26237,100,1,0,0,0,0,0,0,0,0,''),
(17491,70,15,65138,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(17491,71,15,65140,0,0,34310,200,1,0,0,0,0,0,0,0,0,''),
(17491,71,18,0,0,0,26237,100,7,0,0,0,0,0,0,0,0,'desp'),
(17491,73,0,0,0,0,29655,200,7,2000001580,0,0,0,0,0,0,0,''),
(17491,186,10,26237,143000,2,0,0,8,0,0,0,0,3908.273,6578.861,170.511,0.5235988,'summon Keristrasza 26237 - pathId 2');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001575 AND 2000001582;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001575,'Stay close to me, $n. I could not bear for any harm to come to you.',0,0,0,1,NULL),
(2000001576,'MALYGOS!!',7274,1,0,15,NULL),
(2000001577,'Come, Lord of Magic, and recover your precious consort....',0,1,0,1,NULL),
(2000001578,'...what remains of her!',0,1,0,1,NULL),
(2000001579,'Come, $n. Let us see the fruits of our efforts.',0,0,0,1,NULL),
(2000001580,'Saragosa! What has become of you?',0,1,0,0,NULL),
(2000001581,'Keristrasza! You\'ve bested my consort... and now YOU shall take her place!',0,1,0,0,NULL),
(2000001582,'Never!',0,1,0,0,NULL);
