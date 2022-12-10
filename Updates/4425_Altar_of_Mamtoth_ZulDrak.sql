-- Altar of Mam'toth - Zul'Drak

-- Dead Mam'toth Disciple 28852
-- missing added
DELETE FROM creature_addon WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM creature_movement WHERE id IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM game_event_creature WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM game_event_creature_data WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM creature_battleground WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM creature_linking WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246)
OR master_guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
DELETE FROM creature WHERE guid IN (523241,523242,523243,523466,535243,535244,535245,535246);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(523241,28852,571,1,1,0,0,6211.541,-4102.393,458.9419,4.014257,300,300,0,0,0,0,0,0),
(523242,28852,571,1,1,0,0,6231.491,-4089.552,459.0097,6.143559,300,300,0,0,0,0,0,0),
(523243,28852,571,1,1,0,0,6246.322,-4128.1,448.5968,5.375614,300,300,0,0,0,0,0,0),
(523466,28852,571,1,1,0,0,6283.344,-4082.969,458.972,2.268928,300,300,0,0,0,0,0,0),
(535243,28852,571,1,1,0,0,6174.453,-4047.8,461.5631,2.076942,300,300,0,0,0,0,0,0),
(535244,28852,571,1,1,0,0,6151.447,-4070.649,461.438,2.530727,300,300,0,0,0,0,0,0),
(535245,28852,571,1,1,0,0,6227.249,-4024.72,456.7284,4.502949,300,300,0,0,0,0,0,0),
(535246,28852,571,1,1,0,0,6258.5,-4048.687,460.5769,4.328416,300,300,0,0,0,0,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28852);
DELETE FROM `creature_template_addon` WHERE `entry` = 28852;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28852,0,0,1,0,0,0,'52574 29266');

-- Enraged Mammoth 28851
-- missing added
DELETE FROM creature_addon WHERE guid IN (535247,535248,535249,535250);
DELETE FROM creature_movement WHERE id IN (535247,535248,535249,535250);
DELETE FROM game_event_creature WHERE guid IN (535247,535248,535249,535250);
DELETE FROM game_event_creature_data WHERE guid IN (535247,535248,535249,535250);
DELETE FROM creature_battleground WHERE guid IN (535247,535248,535249,535250);
DELETE FROM creature_linking WHERE guid IN (535247,535248,535249,535250)
OR master_guid IN (535247,535248,535249,535250);
DELETE FROM creature WHERE guid IN (535247,535248,535249,535250);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535247,28851,571,1,1,0,0,6309.282,-4192.809,447.5807,5.925073,300,300,0,0,0,0,0,0),
(535248,28851,571,1,1,0,0,6237.672,-4081.429,459.0136,3.813206,300,300,0,0,0,0,0,0),
(535249,28851,571,1,1,0,0,6308.333,-4108.334,458.9318,5.80016,300,300,0,0,0,0,0,0),
(535250,28851,571,1,1,0,0,6190.171,-4070.607,459.0224,4.439991,300,300,0,0,0,0,0,0);
-- Updates
UPDATE creature SET position_x = 6230.710449, position_y = -4211.138672, position_z = 436.859894 WHERE guid = 523617;
UPDATE creature SET position_x = 6256.301758, position_y = -4145.294922, position_z = 447.456451 WHERE guid = 523615;
UPDATE creature SET position_x = 6300.786621, position_y = -4233.654785, position_z = 447.473511 WHERE guid = 523613;
UPDATE creature SET position_x = 6319.381348, position_y = -4310.383301, position_z = 448.189056 WHERE guid = 523607;
UPDATE creature SET position_x = 6325.619629, position_y = -4361.949707, position_z = 452.656067 WHERE guid = 523616;
UPDATE creature SET position_x = 6366.611328, position_y = -4265.891602, position_z = 458.889313 WHERE guid = 523614;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 28851;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28851);
DELETE FROM `creature_template_addon` WHERE `entry` = 28851;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28851,0,0,0,0,0,0,32423);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(28851);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(28851,52600,1,12707,1,12707,0);
UPDATE creature_template SET SpellList=0 WHERE entry=28851;
DELETE FROM creature_spell_list_entry WHERE Id = 2885100;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2885100, 'ZulDrak - Enraged Mammoth - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2885100;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2885100,0,52601,0,0,0,100,0,0,0,0,0,'Enraged Mammoth - Rushing Charge'),
(2885100,1,52603,0,0,0,100,0,0,0,0,0,'Enraged Mammoth - Trample');
DELETE FROM dbscripts_on_relay WHERE id IN (20677);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20677,10,34,20524,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Enraged Mammoth 28851 EAI: area check'),
(20677,100,0,0,0,0,0,0,0,28990,0,0,0,0,0,0,0,'Part of Enraged Mammoth 28851 EAI: warning'),
(20677,10000,34,20524,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Enraged Mammoth 28851 EAI: area check'),
(20677,10100,14,52600,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Enraged Mammoth 28851 EAI: Player Drop');
DELETE FROM conditions WHERE condition_entry = 20524;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20524,4,4329,0,0,0);
UPDATE `broadcast_text` SET `ChatTypeID`= 5 WHERE `Id` IN (28990);

-- Mam'toth Disciple 28861
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535251 AND 535261;
DELETE FROM creature_movement WHERE id BETWEEN 535251 AND 535261;
DELETE FROM game_event_creature WHERE guid BETWEEN 535251 AND 535261;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535251 AND 535261;
DELETE FROM creature_battleground WHERE guid BETWEEN 535251 AND 535261;
DELETE FROM creature_linking WHERE guid BETWEEN 535251 AND 535261
OR master_guid BETWEEN 535251 AND 535261;
DELETE FROM creature WHERE guid BETWEEN 535251 AND 535261;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535251,28861,571,1,1,0,0,6211.39,-4116.57,453.036,1.54657,300,300,10,0,0,0,0,1),
(535252,28861,571,1,1,0,0,6307.093,-4154.058,450.627,4.24115,300,300,0,0,0,0,0,0),
(535253,28861,571,1,1,0,0,6241.338,-4120.21,449.1887,4.939282,300,300,0,0,0,0,0,0),
(535254,28861,571,1,1,0,0,6267.456,-4097.877,459.1223,1.902409,300,300,0,0,0,0,0,0),
(535255,28861,571,1,1,0,0,6273.992,-4126.234,448.9081,4.39823,300,300,0,0,0,0,0,0),
(535256,28861,571,1,1,0,0,6167.43,-4050.309,461.2988,5.602507,300,300,0,0,0,0,0,0),
(535257,28861,571,1,1,0,0,6271.72,-4045.61,463.356,4.24162,300,300,10,0,0,0,0,1),
(535258,28861,571,1,1,0,0,6388.676,-4300.947,464.1013,2.426008,300,300,0,0,0,0,0,0),
(535259,28861,571,1,1,0,0,6387.771,-4257.59,461.6208,3.246312,300,300,0,0,0,0,0,0),
(535260,28861,571,1,1,0,0,6326.899,-4241.208,449.3165,2.792527,300,300,0,0,0,0,0,0),
(535261,28861,571,1,1,0,0,6174.816,-4074.354,459.1386,0,300,300,0,0,0,0,0,4);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28861);
DELETE FROM `creature_template_addon` WHERE `entry` = 28861;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28861,0,0,1,0,431,0,52574);
UPDATE `creature_model_info` SET `modelid_alternative` = 25734 WHERE `modelid` = 25735;
UPDATE `creature_model_info` SET `modelid_alternative` = 25735 WHERE `modelid` = 25734;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 523707;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (523693,523691);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 523700;
UPDATE creature SET position_x = 6224.726562, position_y = -4189.380859, position_z = 439.498138 WHERE guid = 523684;
UPDATE creature SET position_x = 6329.977, position_y = -4189.232, position_z = 450.456, orientation = 3.001966 WHERE guid = 523701;
UPDATE creature SET position_x = 6158.221680, position_y = -4167.112793, position_z = 440.948914, spawndist = 7, MovementType = 1 WHERE guid = 523708;
UPDATE creature SET position_x = 6354.919434, position_y = -4354.633301, position_z = 457.857849, spawndist = 7, MovementType = 1 WHERE guid = 523688;
UPDATE creature SET position_x = 6169.169922, position_y = -4317.221680, position_z = 435.543762, spawndist = 7, MovementType = 1 WHERE guid = 523705;
UPDATE creature SET position_x = 6329.437012, position_y = -4263.114746, position_z = 453.571747, spawndist = 7, MovementType = 1 WHERE guid = 523692;
UPDATE creature SET position_x = 6204.915527, position_y = -4384.591797, position_z = 448.628571, spawndist = 7, MovementType = 1 WHERE guid = 523702;
UPDATE creature SET position_x = 6270.162109, position_y = -4384.634766, position_z = 448.628387, spawndist = 7, MovementType = 1 WHERE guid = 523685;
-- waypoints
DELETE FROM creature_movement WHERE id IN (535261,523700);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 535261
(535261,1,6174.816,-4074.354,459.1386,100,1,5),
(535261,2,6190.383,-4078.323,459.0136,100,0,0),
(535261,3,6215.262,-4070.717,459.0136,100,0,0),
(535261,4,6237.833,-4079.906,459.0136,100,0,0),
(535261,5,6275.148,-4083.311,458.9212,100,0,0),
(535261,6,6303.191,-4100.656,458.9318,100,0,0),
(535261,7,6320.923,-4130.368,458.9318,100,0,0),
(535261,8,6343.796,-4155.267,458.9308,100,0,0),
(535261,9,6366.03,-4156.727,459.0558,100,0,0),
-- 523700
(523700,1,6407.58,-4286.44,455.584,100,1,5),
(523700,2,6415.04,-4258.92,455.011,100,0,0),
(523700,3,6412.33,-4233.13,456.306,100,0,0),
(523700,4,6407.01,-4207.069,461.7815,100,0,0),
(523700,5,6385.251,-4191.354,460.3886,100,0,0),
(523700,6,6367.858,-4193.421,459.0136,100,0,0),
(523700,7,6367.621,-4216.292,458.9676,100,0,0),
(523700,8,6359.056,-4238.381,458.9309,100,0,0),
(523700,9,6368.265,-4261.602,458.9691,100,0,0),
(523700,10,6368.305,-4284.628,458.8995,100,0,0),
(523700,11,6390.221,-4289.859,461.7745,100,0,0);
-- target for spell
DELETE FROM `spell_script_target` WHERE `entry` IN (52603);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(52603, 1, 28861);
