-- Agmar's Hammer - Dragonblight

-- Objects
-- Archmage Sunreaver's Rune 188342
UPDATE gameobject SET guid = 5710925 WHERE guid = 60062;

-- Purple aura, tall 188344
UPDATE gameobject SET guid = 5710926 WHERE guid = 60078;

-- Wanted!
UPDATE gameobject SET guid = 5710927 WHERE guid = 55001;
DELETE FROM gossip_menu WHERE entry = 9414;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9414, 12657, 0, 0);

-- Creatures
-- Overlord Agmar 26379
UPDATE creature SET guid = 5713424 WHERE guid = 97430;
UPDATE creature SET position_x = 3842.386, position_y = 1486.616, position_z = 92.06059, orientation = 1.570796 WHERE guid = 5713424;
UPDATE creature_template SET ExtraFlags = 256, MechanicImmuneMask = 1024+2048 WHERE entry = 26379;
UPDATE creature_template_addon SET bytes1 = 6 WHERE entry = 26379;

-- Lak'tuk 26380
UPDATE creature SET guid = 5713425 WHERE guid = 97506;

-- Gar'mak 26381
UPDATE creature SET guid = 5713426 WHERE guid = 97574;

-- Image of Archmage Aethas Sunreaver 26471
UPDATE creature SET guid = 5713427 WHERE guid = 105160;

-- Barracks Master Harga 26985
UPDATE creature SET guid = 5713428 WHERE guid = 105361;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26985;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713428;
DELETE FROM creature_movement_template WHERE entry = 26985;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26985,1,3835.926,1482.789,92.31059,100,0,0),
(26985,2,3835.676,1475.789,92.31059,100,0,0),
(26985,3,3830.176,1475.039,92.31059,100,0,0),
(26985,4,3823.926,1472.039,92.31059,100,0,0),
(26985,5,3819.426,1468.789,92.31059,100,0,0),
(26985,6,3817.926,1463.539,92.31059,100,0,0),
(26985,7,3819.676,1459.289,92.31059,100,0,0),
(26985,8,3825.176,1455.789,92.31059,100,0,0),
(26985,9,3841.426,1456.039,92.31059,100,0,0),
(26985,10,3855.676,1454.789,92.06059,100,0,0),
(26985,11,3863.926,1459.289,92.31059,100,0,0),
(26985,12,3865.176,1463.039,92.31059,100,0,0),
(26985,13,3864.676,1467.789,92.31059,100,0,0),
(26985,14,3856.926,1474.289,92.31059,100,0,0),
(26985,15,3851.926,1474.289,92.31059,100,0,0),
(26985,16,3851.926,1484.789,92.31059,100,0,0),
(26985,17,3854.978,1485.085,92.06059,2.146755,120000,0),
(26985,18,3853.176,1485.289,92.31059,100,0,0),
(26985,19,3850.676,1481.289,92.31059,100,0,0),
(26985,20,3847.926,1472.039,92.31059,100,0,0),
(26985,21,3847.676,1470.539,93.06059,100,0,0),
(26985,22,3847.426,1454.039,102.0606,100,0,0),
(26985,23,3846.176,1450.539,102.0606,100,0,0),
(26985,24,3836.676,1450.539,102.0606,100,0,0),
(26985,25,3836.676,1453.789,102.0606,100,0,0),
(26985,26,3835.926,1471.289,92.56059,100,0,0),
(26985,27,3833.426,1483.039,92.31059,100,0,0),
(26985,28,3830.374,1485.493,92.06059,0.837758,120000,0);

-- Orphan Matron Twinbreeze 26485
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 26485;
UPDATE creature SET guid = 5713429 WHERE guid = 106837;
UPDATE creature_template SET GossipMenuId = 9318, MovementType = 2 WHERE Entry = 26485;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713429;
DELETE FROM gossip_menu WHERE entry = 9318;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9318, 12628, 0, 0);
DELETE FROM `npc_text` WHERE `ID` =12628;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(12628,'','These infants will live. With love and affection they will grow to be strong members of the Horde, and with time the horrible reminders of their shattered lives will fade.', 0, 1, 396, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_movement_template WHERE entry = 26485;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26485,0,1,3839.976,1477.323,137.2314,5.969026,90000,2648501),
(26485,0,2,3839.976,1477.323,137.2314,5.969026,3000,2648502),
-- alternatives
(26485,1,1,3847.284,1482.123,137.2314,100,20000,2648503),
(26485,2,1,3847.237,1471.023,137.2314,100,20000,2648503),
(26485,3,1,3838.987,1469.376,137.2314,100,20000,2648503),
(26485,4,1,3849.738,1474.489,137.2314,100,20000,2648503),
(26485,5,1,3850.103,1478.925,137.2314,100,20000,2648503),
(26485,6,1,3844.269,1485.7,137.2314,100,20000,2648503),
(26485,7,1,3843.57,1469.4,137.2314,100,20000,2648503);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2648501 AND 2648503;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2648501,3000,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648501,87000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648502,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648502,100,45,0,20131,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648503,3000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648503,6000,45,0,20132,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648503,17000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2648503,19000,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'back to default waypoints');
DELETE FROM dbscript_random_templates WHERE id IN (20131,20132);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20131,1,20244,0,'26485 - Random Script - 1-1'),
(20131,1,20245,0,'26485 - Random Script - 1-2'),
(20131,1,20246,0,'26485 - Random Script - 1-3'),
(20131,1,20247,0,'26485 - Random Script - 1-4'),
(20131,1,20248,0,'26485 - Random Script - 1-5'),
(20131,1,20249,0,'26485 - Random Script - 1-6'),
(20131,1,20250,0,'26485 - Random Script - 1-7'),
(20132,1,20251,0,'26485 - Random Script - 2-1'),
(20132,1,20252,0,'26485 - Random Script - 2-2'),
(20132,1,20253,0,'26485 - Random Script - 2-3'),
(20132,1,20254,0,'26485 - Random Script - 2-4'),
(20132,1,20255,0,'26485 - Random Script - 2-5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20244 AND 20255;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20244,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-1: set wp 1'),
(20245,0,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-2: set wp 2'),
(20246,0,20,2,3,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-3: set wp 3'),
(20247,0,20,2,4,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-4: set wp 4'),
(20248,0,20,2,5,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-5: set wp 5'),
(20249,0,20,2,6,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-6: set wp 6'),
(20250,0,20,2,7,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 1-7: set wp 7'),
(20251,100,0,0,0,0,0,0,0,2000020325,0,0,0,0,0,0,0,'26485 - Random Script - 2-1: text 1'),
(20252,100,0,0,0,0,0,0,0,2000020326,0,0,0,0,0,0,0,'26485 - Random Script - 2-2: text 2'),
(20253,100,0,0,0,0,0,0,0,2000020327,0,0,0,0,0,0,0,'26485 - Random Script - 2-3: text 3'),
(20254,100,0,0,0,0,0,0,0,2000020328,0,0,0,0,0,0,0,'26485 - Random Script - 2-4: text 4'),
(20255,100,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'26485 - Random Script - 2-5: emote - no text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020325 AND 2000020328;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020325,'There, there, sweetheart. Everything is going to be ok.',0,0,0,1,NULL),
(2000020326,'My little angel. Are you hungry? Will you eat for auntie Twinbreeze? Just a little?',0,0,0,1,NULL),
(2000020327,'This one will grow to be a great warrior. Won\'t you, darling?',0,0,0,1,NULL),
(2000020328,'Maybe you will be a shaman like your auntie Twinbreeze?',0,0,0,1,NULL);

-- Taunka Orphan 26365
UPDATE creature SET guid = 5713430 WHERE guid = 120335;
UPDATE creature SET guid = 5713431 WHERE guid = 120336;
UPDATE creature SET guid = 5713432 WHERE guid = 120337;
UPDATE creature SET guid = 5713433 WHERE guid = 120338;
UPDATE creature SET guid = 5713434 WHERE guid = 120339;
UPDATE creature SET guid = 5713435 WHERE guid = 120357;
UPDATE creature SET guid = 5713436 WHERE guid = 120358;

-- Kor'kron War Rider 26572
UPDATE creature SET guid = 5713437 WHERE guid = 115065;
UPDATE creature SET guid = 5713438 WHERE guid = 115066;
UPDATE creature SET guid = 5713439 WHERE guid = 115067;
UPDATE creature SET guid = 5713440 WHERE guid = 115068;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 26572;
-- Waypoints - set by script
DELETE FROM creature_movement_template WHERE entry = 26572;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Path 1
(26572,1,1,3843.18,1544.618,98.4467,100,0,0),
(26572,1,2,3820.083,1543.136,99.9467,100,0,0),
(26572,1,3,3806.306,1550.474,102.3634,100,0,0),
(26572,1,4,3792.066,1574.747,106.6412,100,0,0),
(26572,1,5,3798.549,1604.761,110.9745,100,0,0),
(26572,1,6,3818.483,1623.336,119.2245,100,0,0),
(26572,1,7,3838.271,1659.809,137.1134,100,0,0),
(26572,1,8,3867.526,1695.83,144.5022,100,0,0),
(26572,1,9,3876.507,1743.209,160.3911,100,5000,2657201),
-- Path 2
(26572,2,1,3839.633,1543.168,96.94671,100,0,0),
(26572,2,2,3820.297,1542.64,103.3356,100,0,0),
(26572,2,3,3800.505,1553.712,107.3356,100,0,0),
(26572,2,4,3798.664,1580.443,107.3356,100,0,0),
(26572,2,5,3822.665,1603.722,107.3356,100,0,0),
(26572,2,6,3888.425,1634.526,107.3356,100,0,0),
(26572,2,7,3936.568,1665.267,134.6359,100,0,0),
(26572,2,8,3983.093,1669.395,158.5803,100,0,0),
(26572,2,9,4014.916,1661.88,179.9692,100,0,0),
(26572,2,10,4056.221,1647.465,197.0247,100,5000,2657201),
-- Path 3
(26572,3,1,3839.633,1543.168,96.94671,100,0,0),
(26572,3,2,3820.297,1542.64,103.3356,100,0,0),
(26572,3,3,3800.505,1553.712,107.3356,100,0,0),
(26572,3,4,3798.664,1580.443,107.3356,100,0,0),
(26572,3,5,3822.665,1603.722,107.3356,100,0,0),
(26572,3,6,3888.425,1634.526,107.3356,100,0,0),
(26572,3,7,3936.568,1665.267,134.6359,100,0,0),
(26572,3,8,3983.093,1669.395,158.5803,100,0,0),
(26572,3,9,4014.916,1661.88,179.9692,100,0,0),
(26572,3,10,4056.221,1647.465,197.0247,100,5000,2657201),
-- Path 4
(26572,4,1,3850.65,1542.323,95.97448,100,0,0),
(26572,4,2,3817.844,1542.625,98.80782,100,0,0),
(26572,4,3,3797.82,1557.012,102.7523,100,0,0),
(26572,4,4,3775.804,1569.296,109.1967,100,0,0),
(26572,4,5,3728.532,1585.828,116.3356,100,0,0),
(26572,4,6,3703.389,1591.87,120.2245,100,5000,2657201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2657201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2657201,100,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2657201,500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2657201,600,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- Part of Kor'kron War Rider EAI:
DELETE FROM dbscript_random_templates WHERE id = 20137;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20137,1,20262,0,'26572 - Random Script 1'),
(20137,1,20263,0,'26572 - Random Script 2'),
(20137,1,20264,0,'26572 - Random Script 3'),
(20137,1,20265,0,'26572 - Random Script 4');
-- Part of Kor'kron War Rider EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20256,20257); -- ooc script
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20262 AND 20265; -- flying event
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20256,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly OFF'),
(20257,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly ON'),
--
(20262,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: active - Script 1'),
(20262,500,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly ON - Script 1'),
(20262,700,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: RUN ON - Script 1'),
(20262,1000,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Set Fly Path 1 - Script 1'),
(20263,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: active - Script 2'),
(20263,500,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly ON - Script 2'),
(20263,700,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: RUN ON - Script 2'),
(20263,1000,20,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Set Fly Path 2 - Script 2'),
(20264,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: active - Script 3'),
(20264,500,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly ON - Script 3'),
(20264,700,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: RUN ON - Script 3'),
(20264,1000,20,2,3,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Set Fly Path 3 - Script 3'),
(20265,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: active - Script 4'),
(20265,500,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Fly ON - Script 4'),
(20265,700,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: RUN ON - Script 4'),
(20265,1000,20,2,4,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kor\'kron War Rider EAI: Set Fly Path 4 - Script 4');

-- Valnok Windrager 26574
UPDATE creature SET guid = 5713441 WHERE guid = 115167;

-- Narzun Skybreaker 26566
UPDATE creature SET guid = 5713442 WHERE guid = 114665;

-- Koltira Deathweaver 26581
UPDATE creature SET guid = 5713443 WHERE guid = 115919;
UPDATE creature_template SET GossipMenuId = 9456, MovementType = 2 WHERE Entry = 26581;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713443;
DELETE FROM gossip_menu WHERE entry = 9456;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9456, 12715, 0, 0);
DELETE FROM creature_movement_template WHERE entry = 26581;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26581,1,3836.24,1552.96,89.3393,1.62183,0,0),
(26581,2,3835.79,1568.7,86.6986,1.55115,0,0),
(26581,3,3838.84,1577.45,86.6986,1.30375,0,0),
(26581,4,3839.13,1586.75,86.6986,1.1019,0,0),
(26581,5,3842.55,1589.89,86.9819,0.501071,0,0),
(26581,6,3854.41,1595.11,89.5688,0.56783,0,0),
(26581,7,3856.75,1601.01,89.7248,1.54387,0,0),
(26581,8,3855.02,1606.41,89.7248,2.23895,0,0),
(26581,9,3845.96,1614.11,89.7248,2.80286,0,0),
(26581,10,3837.35,1615.88,89.7248,3.01075,0,0),
(26581,11,3828.01,1615.69,89.7248,3.31313,0,0),
(26581,12,3813.22,1611.36,89.7276,3.48199,0,0),
(26581,13,3803.36,1605.62,89.7792,3.77652,0,0),
(26581,14,3798.73,1601.69,89.725,4.18571,0,0),
(26581,15,3794.46,1589.98,89.7234,4.60511,0,0),
(26581,16,3793.92,1581.13,89.7234,4.74648,0,0),
(26581,17,3795.52,1570.5,89.7234,4.98602,0,0),
(26581,18,3799.55,1561.33,89.7234,5.28839,0,0),
(26581,19,3806.17,1552.89,89.7234,5.60569,0,0),
(26581,20,3814.35,1547.95,89.7234,6.08949,0,0),
(26581,21,3825.27,1546.19,89.7234,6.18766,0,0),
(26581,22,3833.51,1545.9,89.7234,6.27401,0,0);

-- Messenger Torvus 26649
UPDATE creature SET guid = 5713444 WHERE guid = 98172;

-- Senior Sergeant Juktok 26415
DELETE FROM npc_gossip WHERE npc_guid = 100370;
UPDATE creature SET guid = 5713445 WHERE guid = 100370;

-- Quartermaster Gakzug 26580
UPDATE creature SET guid = 5713446 WHERE guid = 115884;
-- Part of Quartermaster Gakzug EAI:
DELETE FROM dbscript_random_templates WHERE id = 20138;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20138,1,20266,0,'26580 - OOC Random Script - 1-1'),
(20138,1,20267,0,'26580 - OOC Random Script - 1-2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20266 AND 20267;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20266,100,10,26437,90000,1,0,0,0x08,1,0,0,0,3836.959,1727.105,123.3469,4.21268,'Part of Quartermaster Gakzug EAI: summon buddy 1'),
(20267,100,10,26437,90000,2,0,0,0x08,1,0,0,0,3902.354,1731.05,117.1501,4.818093,'Part of Quartermaster Gakzug EAI: summon buddy 2');

-- Siegesmith Gulda 27019
UPDATE creature SET guid = 5713447 WHERE guid = 108507;

-- Tradesman Kontor 27021
UPDATE creature SET guid = 5713448 WHERE guid = 108848;

-- Alys Vol'tyr 26569
UPDATE creature SET guid = 5713449 WHERE guid = 114827;
DELETE FROM creature_template_addon WHERE entry = 26569;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26569,0,1,1,0,0,0,NULL);

-- Zebu'tan 26568
UPDATE creature SET guid = 5713450 WHERE guid = 114778;
-- Waypoints - activated by script
DELETE FROM creature_movement_template WHERE entry = 26568;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26568,1,3823.746,1596.662,86.75525,4.817109,2000,2656801),
(26568,2,3833.554,1596.822,86.69843,100,10000,2656802),
(26568,3,3823.746,1596.662,86.75525,4.817109,10000,2656803);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2656801 AND 2656803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2656801,100,42,0,0,0,0,0,0,6232,0,0,0,0,0,0,0,''),
(2656802,100,0,0,0,0,0,0,0,2000020329,0,0,0,0,0,0,0,''),
(2656802,4000,31,26569,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26569'),
(2656802,4100,0,0,0,0,26569,25,7,2000020334,0,0,0,0,0,0,0,''),
(2656802,7000,0,0,0,0,0,0,0,2000020330,0,0,0,0,0,0,0,''),
(2656803,100,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset equip'),
(2656803,200,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2656803,200,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Part of Zebu'tan EAI:
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20133 AND 20134;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20133,1,20258,35,'26568 - OOC Random Script - 1-1'),
(20133,1,20259,65,'26568 - OOC Random Script - 1-2'),
(20134,1,20260,0,'26568 - OOC Random Script - 2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20258 AND 20260;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20258,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: self active'),
(20258,200,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: waypoints'),
(20259,50,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: self active'),
(20259,100,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.24746,'Part of Zebu\'tan EAI: face target'),
(20259,2000,0,0,0,0,0,0,0,2000020331,2000020332,2000020333,0,0,0,0,0,'Part of Zebu\'tan EAI: random text'),
(20259,5000,45,0,20134,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: random script 2-x'),
(20259,8000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.817109,'Part of Zebu\'tan EAI: face target'),
(20259,8100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: self unactive'),
(20260,0,31,26569,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Zebu\'tan EAI: search for 26569'),
(20260,100,0,0,0,0,26569,25,7,2000020335,2000020336,2000020337,2000020338,0,0,0,0,'buddy random text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020329 AND 2000020338;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020329,'Lookie what Zebu\'tan got for you! Roses for da rose!',0,0,0,20,NULL),
(2000020330,'%s grumbles.',0,2,0,0,NULL),
(2000020331,'Hey pretty lady, Zebu\'tan got two rugs over here! Why don\'t you come on over and keep he warm, eh?',0,0,0,23,NULL),
(2000020332,'Dis troll tink you got a crush on he! Come on over!',0,0,0,23,NULL),
(2000020333,'Don\'t be shy, elfy. Don\'t you feel dis burnin\' love formin\' between us?',0,0,0,22,NULL),
(2000020334,'Ewwww!',0,0,0,274,NULL),
(2000020335,'Not if you were the last troll on Azeroth!',0,0,0,274,NULL),
(2000020336,'Never!',0,0,0,274,NULL),
(2000020337,'Get lost, creep!',0,0,0,274,NULL),
(2000020338,'I\'ve got a man! Now take a hike!',0,0,0,274,NULL);

-- Afha 27022
UPDATE creature SET guid = 5713451 WHERE guid = 108919;

-- Aegalas 26567
UPDATE creature SET guid = 5713452 WHERE guid = 114729;

-- Borus Ironbender 26564
DELETE FROM npc_gossip WHERE npc_guid = 114374;
UPDATE creature SET guid = 5713453 WHERE guid = 114374;
UPDATE creature_template SET GossipMenuId = 9459 WHERE entry = 26564;
DELETE FROM gossip_menu WHERE entry = 9459;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9459,12718,0,0);

-- Agmar's Siegesmith 26565
-- Duplicate Removed
DELETE FROM creature_addon WHERE guid=114608;
DELETE FROM creature_movement WHERE id=114608;
DELETE FROM game_event_creature WHERE guid=114608;
DELETE FROM game_event_creature_data WHERE guid=114608;
DELETE FROM creature_battleground WHERE guid=114608;
DELETE FROM creature_linking WHERE guid=114608
 OR master_guid=114608;
DELETE FROM creature WHERE guid=114608;
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5713454 WHERE guid = 114485;
UPDATE creature SET guid = 5713455 WHERE guid = 114486;
UPDATE creature SET guid = 5713456 WHERE guid = 114487;
UPDATE creature SET guid = 5713457 WHERE guid = 114488;
UPDATE creature SET modelid = 23905 WHERE guid = 5713454; -- must use orc model
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid BETWEEN 5713454 AND 5713457;
DELETE FROM creature_movement WHERE id BETWEEN 5713454 AND 5713457;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713454
(5713454,1,3815.19,1568.75,86.7818,4.27606,36000,2656501),
(5713454,2,3815.19,1568.75,86.7818,4.27606,7000,2656503),
-- 5713455
(5713455,1,3817.2,1567.22,86.7818,3.87463,7000,2656503),
(5713455,2,3817.2,1567.22,86.7818,3.87463,36000,2656501),
-- 5713456
(5713456,1,3826.625,1562.803,86.69843,4.747295,36000,2656501),
(5713456,2,3822.514,1563.434,86.77885,4.677482,26000,2656502),
-- 5713457
(5713457,1,3818.99,1565.11,86.7818,3.90954,30000,2656504),
(5713457,2,3818.99,1565.11,86.7818,3.90954,7000,2656503);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2656501 AND 2656504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2656501,3000,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656501,33000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656502,3000,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656502,23000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656503,2000,15,46400,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656504,3000,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2656504,27000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Soar Hawkfury 26504
UPDATE creature SET guid = 5713458 WHERE guid = 108098;
UPDATE creature_template SET GossipMenuId = 9437 WHERE entry = 26504;
DELETE FROM gossip_menu WHERE entry = 9437;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9437,12703,0,0);

-- Bloodmist 26585
UPDATE creature SET guid = 5713459 WHERE guid = 116667;

-- Earthwarden Grife 26854
UPDATE creature SET guid = 5713460 WHERE guid = 117816;
DELETE FROM creature_template_addon WHERE entry = 26854;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26854,0,0,0,1,0,0,NULL);

-- Captain Gort 26618
DELETE FROM npc_gossip WHERE npc_guid = 119570;
UPDATE creature SET guid = 5713461 WHERE guid = 119570;

-- Jennings 26506
UPDATE creature SET guid = 5713462 WHERE guid = 108199;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26506;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713462;
DELETE FROM creature_movement_template WHERE entry = 26506;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26506,1,3764.31,1591.49,87.03,5.48076,0,0),
(26506,2,3766.66,1586.62,87.03,4.86973,0,0),
(26506,3,3765.48,1582.32,87.03,4.07098,0,0),
(26506,4,3763.33,1580.19,87.03,3.44266,0,0),
(26506,5,3756.99,1582.7,87.03,2.28429,0,0),
(26506,6,3756.11,1587.46,87.03,1.32925,0,0),
(26506,7,3759.8,1591.61,87.03,0.510862,0,0);
-- Part of Jennings EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20261;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20261,100,31,26525,5,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jennings EAI: search for 26525'),
(20261,200,0,0,0,0,0,0,0,2000020339,0,0,0,0,0,0,0,'Part of Jennings EAI: Yell'),
(20261,900,31,26525,7,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jennings EAI: search for 26525'),
(20261,1000,15,46598,0,0,26525,7,1,0,0,0,0,0,0,0,0,'Part of Jennings EAI: cast 46598');
DELETE FROM dbscript_string WHERE entry = 2000020339;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020339,'LUNCH!',0,1,0,0,NULL);

-- Cockroach 26525
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26525);
DELETE FROM creature_template_addon WHERE entry = 26525;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26525,0,0,1,0,0,0,NULL);
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5713463 WHERE guid = 110615;
UPDATE creature SET guid = 5713464 WHERE guid = 110617;
UPDATE creature SET guid = 5713465 WHERE guid = 110618;
UPDATE creature SET guid = 5713466 WHERE guid = 110619;
UPDATE creature SET guid = 5713467 WHERE guid = 110620;
UPDATE creature SET guid = 5713468 WHERE guid = 110621;
UPDATE creature SET guid = 5713469 WHERE guid = 110622;
UPDATE creature SET guid = 5713470 WHERE guid = 110623;
UPDATE creature SET guid = 5713471 WHERE guid = 110624;
UPDATE creature SET guid = 5713472 WHERE guid = 110625;
UPDATE creature SET guid = 5713473 WHERE guid = 110626;
UPDATE creature SET guid = 5713474 WHERE guid = 110627;
UPDATE creature SET guid = 5713475 WHERE guid = 110628;
UPDATE creature SET guid = 5713476 WHERE guid = 110629;
UPDATE creature SET guid = 5713477 WHERE guid = 110630;
UPDATE creature SET guid = 5713478 WHERE guid = 110631;
UPDATE creature SET guid = 5713479 WHERE guid = 110632;
UPDATE creature SET guid = 5713480 WHERE guid = 110633;
UPDATE creature SET guid = 5713481 WHERE guid = 110634;
UPDATE creature SET guid = 5713482 WHERE guid = 123326;
UPDATE creature SET guid = 5713483 WHERE guid = 123327;
UPDATE creature SET guid = 5713484 WHERE guid = 123328;
UPDATE creature SET guid = 5713485 WHERE guid = 123329;
UPDATE creature SET guid = 5713486 WHERE guid = 123330;
UPDATE creature SET guid = 5713487 WHERE guid = 123331;
UPDATE creature SET guid = 5713488 WHERE guid = 123332;
UPDATE creature SET guid = 5713489 WHERE guid = 123333;
UPDATE creature SET guid = 5713490 WHERE guid = 123334;
UPDATE creature SET guid = 5713491 WHERE guid = 123335;
UPDATE creature SET guid = 5713492 WHERE guid = 123336;
UPDATE creature SET guid = 5713493 WHERE guid = 123337;
UPDATE creature SET guid = 5713494 WHERE guid = 123338;
UPDATE creature SET guid = 5713495 WHERE guid = 123339;
UPDATE creature SET guid = 5713496 WHERE guid = 123340;
UPDATE creature SET guid = 5713497 WHERE guid = 123341;
UPDATE creature SET guid = 5713498 WHERE guid = 123342;
UPDATE creature SET guid = 5713499 WHERE guid = 123343;
UPDATE creature SET guid = 5713500 WHERE guid = 123344;
UPDATE creature SET guid = 5713501 WHERE guid = 123345;
UPDATE creature SET guid = 5713502 WHERE guid = 123346;
UPDATE creature SET guid = 5713503 WHERE guid = 123347;
UPDATE creature SET guid = 5713504 WHERE guid = 123348;
UPDATE creature SET guid = 5713505 WHERE guid = 123349;
UPDATE creature SET guid = 5713506 WHERE guid = 123350;
UPDATE creature SET guid = 5713507 WHERE guid = 123351;
UPDATE creature SET guid = 5713508 WHERE guid = 123352;
UPDATE creature SET guid = 5713509 WHERE guid = 123353;
UPDATE creature SET guid = 5713510 WHERE guid = 123354;
UPDATE creature SET guid = 5713511 WHERE guid = 123355;
UPDATE creature SET guid = 5713512 WHERE guid = 123356;
UPDATE creature SET guid = 5713513 WHERE guid = 123357;
UPDATE creature SET guid = 5713514 WHERE guid = 123358;
UPDATE creature SET guid = 5713515 WHERE guid = 123359;
UPDATE creature SET guid = 5713516 WHERE guid = 123360;
UPDATE creature SET guid = 5713517 WHERE guid = 123361;
UPDATE creature SET guid = 5713518 WHERE guid = 123362;
UPDATE creature SET guid = 5713519 WHERE guid = 123363;
UPDATE creature SET guid = 5713520 WHERE guid = 123364;
UPDATE creature SET guid = 5713521 WHERE guid = 123365;
UPDATE creature SET guid = 5713522 WHERE guid = 123366;
UPDATE creature SET guid = 5713523 WHERE guid = 123367;
UPDATE creature SET guid = 5713524 WHERE guid = 123368;
UPDATE creature SET guid = 5713525 WHERE guid = 123369;
UPDATE creature SET guid = 5713526 WHERE guid = 123370;
UPDATE creature SET guid = 5713527 WHERE guid = 123371;
UPDATE creature SET guid = 5713528 WHERE guid = 123372;
UPDATE creature SET guid = 5713529 WHERE guid = 123373;
UPDATE creature SET guid = 5713530 WHERE guid = 123374;
UPDATE creature SET guid = 5713531 WHERE guid = 123375;
UPDATE creature SET guid = 5713532 WHERE guid = 123376;
UPDATE creature SET guid = 5713533 WHERE guid = 123377;
UPDATE creature SET guid = 5713534 WHERE guid = 123378;
UPDATE creature SET guid = 5713535 WHERE guid = 123379;
UPDATE creature SET guid = 5713536 WHERE guid = 123380;
UPDATE creature SET guid = 5713537 WHERE guid = 123381;
UPDATE creature SET guid = 5713538 WHERE guid = 123382;
UPDATE creature SET guid = 5713539 WHERE guid = 123383;
UPDATE creature SET guid = 5713540 WHERE guid = 123384;
UPDATE creature SET guid = 5713541 WHERE guid = 123385;
UPDATE creature SET guid = 5713542 WHERE guid = 123386;
UPDATE creature SET guid = 5713543 WHERE guid = 123387;
UPDATE creature SET guid = 5713544 WHERE guid = 123388;
UPDATE creature SET guid = 5713545 WHERE guid = 123389;
UPDATE creature SET guid = 5713546 WHERE guid = 123390;
UPDATE creature SET guid = 5713547 WHERE guid = 123391;
UPDATE creature SET guid = 5713548 WHERE guid = 123392;
UPDATE creature SET guid = 5713549 WHERE guid = 123393;
UPDATE creature SET guid = 5713550 WHERE guid = 123394;
UPDATE creature SET guid = 5713551 WHERE guid = 123395;
UPDATE creature SET guid = 5713552 WHERE guid = 123396;
UPDATE creature SET guid = 5713553 WHERE guid = 123397;
UPDATE creature SET guid = 5713554 WHERE guid = 123398;
UPDATE creature SET guid = 5713555 WHERE guid = 123399;
UPDATE creature SET guid = 5713556 WHERE guid = 123400;
UPDATE creature SET guid = 5713557 WHERE guid = 123401;
UPDATE creature SET guid = 5713558 WHERE guid = 123402;
UPDATE creature SET guid = 5713559 WHERE guid = 123403;
UPDATE creature SET guid = 5713560 WHERE guid = 123404;
UPDATE creature SET guid = 5713561 WHERE guid = 123405;
UPDATE creature SET guid = 5713562 WHERE guid = 123406;
UPDATE creature SET guid = 5713563 WHERE guid = 123407;
UPDATE creature SET guid = 5713564 WHERE guid = 123408;
UPDATE creature SET guid = 5713565 WHERE guid = 123409;
UPDATE creature SET guid = 5713566 WHERE guid = 123410;
UPDATE creature SET guid = 5713567 WHERE guid = 123411;
UPDATE creature SET guid = 5713568 WHERE guid = 123412;
UPDATE creature SET guid = 5713569 WHERE guid = 123413;
UPDATE creature SET guid = 5713570 WHERE guid = 123414;
UPDATE creature SET guid = 5713571 WHERE guid = 123415;
UPDATE creature SET guid = 5713572 WHERE guid = 123416;
UPDATE creature SET guid = 5713573 WHERE guid = 123417;
UPDATE creature SET guid = 5713574 WHERE guid = 123418;
UPDATE creature SET guid = 5713575 WHERE guid = 123419;
UPDATE creature SET guid = 5713576 WHERE guid = 123420;
UPDATE creature SET guid = 5713577 WHERE guid = 123421;
UPDATE creature SET guid = 5713578 WHERE guid = 123422;
UPDATE creature SET guid = 5713579 WHERE guid = 123423;
UPDATE creature SET guid = 5713580 WHERE guid = 123424;
UPDATE creature SET guid = 5713581 WHERE guid = 123425;
UPDATE creature SET guid = 5713582 WHERE guid = 123426;
UPDATE creature SET guid = 5713583 WHERE guid = 123427;
UPDATE creature SET guid = 5713584 WHERE guid = 123428;
UPDATE creature SET guid = 5713585 WHERE guid = 123429;
UPDATE creature SET guid = 5713586 WHERE guid = 123430;
UPDATE creature SET guid = 5713587 WHERE guid = 123431;
UPDATE creature SET guid = 5713588 WHERE guid = 123432;
UPDATE creature SET guid = 5713589 WHERE guid = 123433;
UPDATE creature SET guid = 5713590 WHERE guid = 123434;
UPDATE creature SET guid = 5713591 WHERE guid = 123435;
UPDATE creature SET guid = 5713592 WHERE guid = 123436;
UPDATE creature SET guid = 5713593 WHERE guid = 123437;
UPDATE creature SET guid = 5713594 WHERE guid = 123438;
UPDATE creature SET guid = 5713595 WHERE guid = 123439;
UPDATE creature SET guid = 5713596 WHERE guid = 123440;
UPDATE creature SET guid = 5713597 WHERE guid = 123441;
UPDATE creature SET guid = 5713598 WHERE guid = 123442;
UPDATE creature SET guid = 5713599 WHERE guid = 123443;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 26525;
UPDATE creature SET position_x = 3768.164795, position_y = 1586.577515, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713479;
UPDATE creature SET position_x = 3765.272217, position_y = 1591.173950, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713471;
UPDATE creature SET position_x = 3760.266602, position_y = 1593.825195, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713469;
UPDATE creature SET position_x = 3755.284180, position_y = 1590.334595, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713470;
UPDATE creature SET position_x = 3766.828857, position_y = 1584.358032, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713467;
UPDATE creature SET position_x = 3757.209473, position_y = 1586.443848, position_z = 87.029999, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 5713480;

-- Lucid Test Subject 26509
UPDATE creature SET guid = 5713600 WHERE guid = 108845;

-- Apothecary Bressa 27023
UPDATE creature SET guid = 5713601 WHERE guid = 109003;

-- Doctor Sintar Malefious 26505
DELETE FROM npc_gossip WHERE npc_guid = 108123;
UPDATE creature SET guid = 5713602 WHERE guid = 108123;
DELETE FROM creature_template_addon WHERE entry = 26505;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26505,0,0,1,0,133,0,NULL);

-- Forsaken Chemist 26507
UPDATE creature SET guid = 5713603 WHERE guid = 108504;
UPDATE creature SET guid = 5713604 WHERE guid = 108506;
UPDATE creature SET guid = 5713605 WHERE guid = 108519;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26507);
DELETE FROM creature_template_addon WHERE entry = 26507;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26507,0,0,1,0,0,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (5713603,5713604);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(5713603,0,0,1,0,133,0,NULL),
(5713604,0,0,1,0,133,0,NULL);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713605;
DELETE FROM creature_movement WHERE id = 5713605;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713605,1,3759.41,1603.594,86.94956,0.7504916,30000,2650701),
(5713605,2,3764.828,1597.145,87.23975,100,0,0),
(5713605,3,3770.328,1590.145,87.23975,100,0,0),
(5713605,4,3774.745,1581.196,87.02995,6.073746,30000,2650701),
(5713605,5,3763.986,1572.529,87.02992,5.078908,10000,2650702),
(5713605,6,3761.839,1574.775,87.27984,100,0,0),
(5713605,7,3744.191,1579.02,87.0297,2.949606,30000,2650701),
(5713605,8,3750.307,1582.4,87.27982,100,0,0),
(5713605,9,3753.807,1585.65,87.27982,100,0,0),
(5713605,10,3752.423,1588.279,87.02989,3.508112,30000,2650701);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2650701 AND 2650702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2650701,3000,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2650701,27000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2650702,2000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2650702,8000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

-- Kor'kron Windrager 26603
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5713606 WHERE guid = 118132;
UPDATE creature SET guid = 5713607 WHERE guid = 118133;
UPDATE creature SET guid = 5713608 WHERE guid = 118134;
UPDATE creature SET guid = 5713609 WHERE guid = 118135;
UPDATE creature SET position_x = 3822.853027, position_y = 1532.475952, position_z = 89.724831, orientation = 1.361257 WHERE guid = 5713606;
UPDATE creature SET position_x = 3879.689941, position_y = 1570.824951, position_z = 90.403061, orientation = 3.618256 WHERE guid = 5713608;
UPDATE creature SET position_x = 3832.895020, position_y = 1507.671997, position_z = 92.060654, orientation = 0.206730 WHERE guid = 5713607;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 120 WHERE id = 26603;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid BETWEEN 5713606 AND 5713609;
DELETE FROM creature_movement WHERE id BETWEEN 5713606 AND 5713609;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713609
(5713609,1,3879.448,1520.033,90.16063,2.137915,1000,2660301),
(5713609,2,3875.778,1525.917,90.30232,100,0,0),
(5713609,3,3868.528,1528.167,90.05232,100,0,0),
(5713609,4,3862.366,1538.432,89.86582,0.485777,10000,2660302),
(5713609,5,3859.546,1547.881,89.72312,0.270865,4000,2660303),
-- 5713606
(5713606,1,3822.853,1532.476,89.725,1.361257,1000,2660301),
(5713606,2,3824.171,1535.594,89.80638,100,0,0),
(5713606,3,3861.489,1540.711,89.80495,6.11657,10000,2660302),
(5713606,4,3859.955,1546.776,89.72867,100,4000,2660303),
-- 5713608
(5713608,1,3879.689,1570.825,90.403,3.618256,1000,2660301),
(5713608,2,3871.978,1569.986,90.12453,100,0,0),
(5713608,3,3858.728,1557.986,90.12453,100,0,0),
(5713608,4,3862.762,1540.735,89.846,6.01918,10000,2660302),
(5713608,5,3860.965,1554.172,89.72446,100,4000,2660303),
-- 5713607
(5713607,1,3832.895,1507.6727,92.061,0.206730,1000,2660301),
(5713607,2,3841.365,1509.154,92.24496,100,0,0),
(5713607,3,3848.36,1532.4,89.7246,0.427831,0,0),
(5713607,4,3861.66,1538.08,89.846,0.481238,10000,2660302),
(5713607,5,3860.776,1548.677,89.72304,100,4000,2660303);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2660301 AND 2660303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2660301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2660301,100,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2660302,1000,0,0,0,0,0,0,0,2000020340,0,0,0,0,0,0,0,''),
(2660302,3000,31,26574,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26574'),
(2660302,3100,0,20136,0,0,26574,15,7,0,0,0,0,0,0,0,0,'26574 say'),
(2660302,7000,0,0,0,0,0,0,0,2000020341,2000020342,2000020343,2000020344,0,0,0,0,''),
(2660303,1000,31,26572,15,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26572'),
(2660303,1100,15,46598,0,0,26572,20,1,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE id = 20136;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20136,0,2000020345,0,'26603 - Random texts'),
(20136,0,2000020346,0,'26603 - Random texts'),
(20136,0,2000020347,0,'26603 - Random texts'),
(20136,0,2000020348,0,'26603 - Random texts'),
(20136,0,2000020349,0,'26603 - Random texts'),
(20136,0,2000020350,0,'26603 - Random texts');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020340 AND 2000020350;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020340,'Orders, sir?',0,0,1,66,NULL),
(2000020341,'Sir, yes, sir!',0,0,1,66,NULL),
(2000020342,'Right away, sir!',0,0,1,66,NULL),
(2000020343,'I\'m on the way, sir!',0,0,1,66,NULL),
(2000020344,'For the Horde!',0,0,1,66,NULL),
(2000020345,'Air raid on Icemist! Let the Anub\'ar feel the power of our air strikes!',0,0,1,0,NULL),
(2000020346,'Take this message to Lord Hellscream at once!',0,0,1,0,NULL),
(2000020347,'Supply drop at the Wrathgate! Ride with caution!',0,0,1,0,NULL),
(2000020348,'Aerial recon of New Hearthglen! Observe Scarlet Crusade activity!',0,0,1,0,NULL),
(2000020349,'Strange activity has been reported at Frostmourne Cave. Scout it out!',0,0,1,0,NULL),
(2000020350,'To the front lines! The Kor\'kron Vanguard needs air support!',0,0,1,0,NULL);
DELETE FROM dbscripts_on_creature_death WHERE id = 26603;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26603,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(26603,10,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Pool
DELETE FROM pool_template WHERE entry = 16470;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(16470,1,'Dragonblight - Kor\'kron Windrager');
DELETE FROM pool_creature_template WHERE pool_entry = 16470;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(26603, 16470, 0, 'Dragonblight - Kor\'kron Windrager - 26603');

-- Taunka Pack Kodo 26488
UPDATE creature SET guid = 5713610 WHERE guid = 107025;
UPDATE creature SET guid = 5713611 WHERE guid = 107027;
UPDATE creature SET guid = 5713612 WHERE guid = 107103;
UPDATE creature SET guid = 5713613 WHERE guid = 107104;

-- Roanauk Icemist 26810
DELETE FROM npc_gossip WHERE npc_guid = 113476;
UPDATE creature SET guid = 5713614 WHERE guid = 113476;
DELETE FROM creature_template_addon WHERE entry = 26810;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26810,0,0,1,0,0,0,47395);


-- Taunka Soldier 26437
-- Duplicate removed
DELETE FROM creature_addon WHERE guid = 102363;
DELETE FROM creature_movement WHERE id = 102363;
DELETE FROM game_event_creature WHERE guid = 102363;
DELETE FROM game_event_creature_data WHERE guid = 102363;
DELETE FROM creature_battleground WHERE guid = 102363;
DELETE FROM creature_linking WHERE guid = 102363
 OR master_guid = 102363;
DELETE FROM creature WHERE guid = 102363;
DELETE FROM creature_template_addon WHERE entry = 26437;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26437,0,0,1,1,0,0,47417);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26437);
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5713615 WHERE guid = 102326;
UPDATE creature SET guid = 5713616 WHERE guid = 102327;
UPDATE creature SET guid = 5713617 WHERE guid = 102328;
UPDATE creature SET guid = 5713618 WHERE guid = 102329;
UPDATE creature SET guid = 5713619 WHERE guid = 102330;
UPDATE creature SET guid = 5713620 WHERE guid = 102331;
UPDATE creature SET guid = 5713621 WHERE guid = 102332;
UPDATE creature SET guid = 5713622 WHERE guid = 102333;
UPDATE creature SET guid = 5713623 WHERE guid = 102337;
UPDATE creature SET guid = 5713624 WHERE guid = 102338;
UPDATE creature SET guid = 5713625 WHERE guid = 102340;
UPDATE creature SET guid = 5713626 WHERE guid = 102341;
DELETE FROM creature_addon WHERE guid IN (5713615,5713616,5713617,5713618,5713619,5713620,5713621,5713622,5713623,5713624,5713625,5713626);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(5713615,0,1,0,1,0,0,47417),
(5713616,0,0,0,1,69,0,47417),
(5713617,0,0,0,1,0,0,47417),
(5713618,0,0,0,1,0,0,'16093 47417'),
(5713619,0,0,0,1,0,0,47417),
(5713620,0,0,0,1,0,0,'16093 47417'),
(5713621,0,0,0,1,0,0,'16093 47417'),
(5713622,0,1,0,1,0,0,47417),
(5713623,0,0,0,1,69,0,47417),
(5713624,0,0,0,1,69,0,47417),
(5713625,0,1,0,1,0,0,47417),
(5713626,0,0,0,1,0,0,'16093 47417');
-- Waypoints
UPDATE creature_template SET MovementType = 2 WHERE entry = 26437;
DELETE FROM creature_movement_template WHERE entry = 26437;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Path 1
(26437,1,1,3837.066,1727.849,123.5402,100,0,5),
(26437,1,2,3836.507,1728.678,123.5402,100,0,0),
(26437,1,3,3837.487,1728.073,123.4177,100,0,0),
(26437,1,4,3831.697,1717.466,122.6417,100,0,0),
(26437,1,5,3811.055,1692.234,119.9294,100,0,0),
(26437,1,6,3801.344,1675.228,115.3289,100,0,0),
(26437,1,7,3798.135,1664.914,110.1696,100,0,0),
(26437,1,8,3791.372,1657.727,105.2988,100,0,0),
(26437,1,9,3787.276,1647.216,99.86002,100,0,0),
(26437,1,10,3786.757,1629.603,91.55258,100,0,0),
(26437,1,11,3786.028,1614.852,87.38036,100,0,0),
(26437,1,12,3784.485,1607.884,87.13813,100,0,0),
(26437,1,13,3794.971,1596.336,89.71661,100,0,0),
(26437,1,14,3791.618,1583.912,89.72446,100,0,0),
(26437,1,15,3794.007,1566.146,89.72446,100,0,0),
(26437,1,16,3802.081,1553.474,89.72446,100,0,0),
(26437,1,17,3810.335,1545.727,89.72446,100,0,0),
(26437,1,18,3821.871,1542.521,89.72446,100,0,0),
(26437,1,19,3836.414,1541.143,89.72446,100,0,0),
(26437,1,20,3842.159,1533.385,89.72446,100,0,0),
(26437,1,21,3841.816,1511.303,91.79301,100,0,0),
(26437,1,22,3840.115,1492.716,91.71698,100,0,0),
(26437,1,23,3840.115,1492.716,91.71698,4.96579,5000,2643701),
(26437,1,24,3837.803,1492.647,92.06483,100,0,0),
(26437,1,25,3833.803,1492.897,92.06483,100,0,0),
(26437,1,26,3831.553,1480.647,92.56483,100,0,0),
(26437,1,27,3831.053,1475.147,92.56483,100,0,0),
(26437,1,28,3836.303,1471.147,92.81483,100,0,0),
(26437,1,29,3836.553,1460.147,99.06483,100,0,0),
(26437,1,30,3837.49,1451.078,101.9127,100,100,1),
(26437,1,31,3837.49,1451.078,101.9127,100,1000,1),
-- Path 2
(26437,2,1,3901.974,1734.643,117.6856,100,0,5),
(26437,2,2,3902.078,1733.648,117.6856,100,0,0),
(26437,2,3,3902.395,1730.666,117.0708,100,0,0),
(26437,2,4,3902.509,1729.582,116.9458,100,0,0),
(26437,2,5,3902.978,1725.609,116.3208,100,0,0),
(26437,2,6,3903.329,1722.63,115.6958,100,0,0),
(26437,2,7,3903.798,1718.657,115.0708,100,0,0),
(26437,2,8,3904.267,1714.685,114.4458,100,0,0),
(26437,2,9,3904.267,1714.685,114.4458,100,0,0),
(26437,2,10,3904.59,1699.88,112.046,100,0,0),
(26437,2,11,3904.15,1685.28,109.867,100,0,0),
(26437,2,12,3901.9,1666.74,106.049,100,0,0),
(26437,2,13,3898.22,1653.23,101.99,100,0,0),
(26437,2,14,3887.67,1640.17,96.2745,100,0,0),
(26437,2,15,3873.3,1624.86,91.7749,100,0,0),
(26437,2,16,3864.87,1608.63,89.7474,100,0,0),
(26437,2,17,3864.82,1600.05,89.7253,100,0,0),
(26437,2,18,3868.33,1583.62,89.7582,100,0,0),
(26437,2,19,3867.69,1573.96,89.7248,100,0,0),
(26437,2,20,3864.98,1565.55,89.7248,100,0,0),
(26437,2,21,3854.29,1552.01,89.7248,100,0,0),
(26437,2,22,3846.03,1546.02,89.7248,100,0,0),
(26437,2,23,3843.87,1543.28,89.7248,100,0,0),
(26437,2,24,3842.27,1516.7,91.9172,100,0,0),
(26437,2,25,3841.96,1493.31,91.717,4.70488,5000,2643701),
(26437,2,26,3845.97,1495.4,91.717,100,0,0),
(26437,2,27,3850.93,1495.48,91.717,100,0,0),
(26437,2,28,3852.55,1476.35,92.0474,100,0,0),
(26437,2,29,3849.09,1470.59,92.5348,100,0,0),
(26437,2,30,3847.33,1462.86,96.7088,100,0,0),
(26437,2,31,3847.58,1453.66,101.85,100,100,10),
(26437,2,32,3847.58,1453.66,101.85,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2643701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2643701,1000,0,0,0,0,0,0,0,2000020351,2000020352,2000020353,2000020354,0,0,0,0,'random text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020351 AND 2000020354;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020351,'I am taunka of the Horde and I have come to drive the Scourge from this world!',0,0,1,113,NULL),
(2000020352,'Amidst the tragedy and chaos, this place stands defiantly against the Scourge! It is good to be Horde.',0,0,1,113,NULL),
(2000020353,'I have come to kill or be killed!',0,0,1,113,NULL),
(2000020354,'Nothing will stand in the way of vengeance!',0,0,1,113,NULL);

-- Greatmother Icemist 26652
DELETE FROM creature_template_addon WHERE entry = 26652;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26652,0,0,1,1,0,0,47417);
UPDATE creature SET guid = 5713627 WHERE guid = 98402;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713627;
UPDATE creature_template SET MovementType = 2 WHERE entry = 26652;
DELETE FROM creature_movement_template WHERE entry = 26652;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26652,1,3836.5,1622.51,89.72,6.22197,7000,2665201),
(26652,2,3841.32,1622.44,89.7015,6.24455,0,0),
(26652,3,3855.4,1622.41,90.0845,6.02857,0,0),
(26652,4,3863,1619.1,90.1974,5.67514,0,0),
(26652,5,3873.96,1606.35,90.1939,5.34528,0,0),
(26652,6,3880.11,1597.97,90.8139,5.35706,0,0),
(26652,7,3883.99,1592.57,90.9201,4.95101,0,0),
(26652,8,3884.79,1586.65,90.9031,4.64873,7000,2665202),
(26652,9,3883.56,1582.27,90.9122,4.03298,0,0),
(26652,10,3880.98,1578.34,90.697,3.94973,0,0),
(26652,11,3875.69,1574.49,90.0101,3.51854,7000,2665203),
(26652,12,3880.9,1578.42,90.6928,1.09088,0,0),
(26652,13,3884.91,1586.57,90.9065,1.3705,0,0),
(26652,14,3882.78,1594.85,90.8799,1.90848,7000,2665204),
(26652,15,3874.72,1605.53,90.2575,2.26583,0,0),
(26652,16,3867.81,1613.92,90.2101,2.29725,0,0),
(26652,17,3861.22,1619.9,90.128,2.46218,0,0),
(26652,18,3855.06,1622.89,90.1197,2.82739,7000,2665205),
(26652,19,3848.87,1623.02,89.7624,3.28292,0,0),
(26652,20,3837.2,1622.66,89.7145,3.11406,0,0),
(26652,21,3826.09,1620.54,89.723,3.41252,0,0),
(26652,22,3821.95,1619.31,89.723,3.33398,7000,2665206),
(26652,23,3820.54,1619.19,89.7223,3.09993,0,0),
(26652,24,3815.59,1617.81,89.7087,3.41644,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2665201 AND 2665206;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2665201,0,45,0,20139,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 1'),
(2665202,0,45,0,20140,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 2'),
(2665203,0,45,0,20141,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 3'),
(2665204,0,45,0,20142,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 4'),
(2665205,0,45,0,20143,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 5'),
(2665206,0,45,0,20144,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script 6');
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20139 AND 20144;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20139,1,20268,0,'26652 - Random Script - Base'),
(20139,1,20269,0,'26652 - Random Script - 1'),
(20140,1,20268,0,'26652 - Random Script - Base'),
(20140,1,20270,0,'26652 - Random Script - 2'),
(20141,1,20268,0,'26652 - Random Script - Base'),
(20141,1,20271,0,'26652 - Random Script - 3'),
(20142,1,20268,0,'26652 - Random Script - Base'),
(20142,1,20272,0,'26652 - Random Script - 4'),
(20143,1,20268,0,'26652 - Random Script - Base'),
(20143,1,20273,0,'26652 - Random Script - 5'),
(20144,1,20268,0,'26652 - Random Script - Base'),
(20144,1,20274,0,'26652 - Random Script - 6');
-- Part of Greatmother Icemist EAI:
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20268 AND 20274;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20268,0,31,26437,1,0,0,0,0,-7000,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - Base - must fail'),
(20269,100,3,0,0,0,0,0,0,0,0,0,0,3837.8,1626.23,89.7134,1.27298,'Part of Greatmother Icemist EAI: Random Script - 1'),
(20269,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 1'),
(20270,100,3,0,0,0,0,0,0,0,0,0,0,3886.07,1583.24,90.9203,5.3116,'Part of Greatmother Icemist EAI: Random Script - 2'),
(20270,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 2'),
(20271,100,3,0,0,0,0,0,0,0,0,0,0,3879.09,1571.23,90.3856,0.276419,'Part of Greatmother Icemist EAI: Random Script - 3'),
(20271,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 3'),
(20272,100,3,0,0,0,0,0,0,0,0,0,0,3884.48,1597.73,90.9243,0.911019,'Part of Greatmother Icemist EAI: Random Script - 4'),
(20272,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 4'),
(20273,100,3,0,0,0,0,0,0,0,0,0,0,3849.36,1627.96,89.9733,2.73707,'Part of Greatmother Icemist EAI: Random Script - 5'),
(20273,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 5'),
(20274,100,3,0,0,0,0,0,0,0,0,0,0,3820.72,1622.54,89.723,1.89277,'Part of Greatmother Icemist EAI: Random Script - 6'),
(20274,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Greatmother Icemist EAI: Random Script - 6');

-- Arctic Grizzly
UPDATE creature SET position_x = 3451.047607, position_y = 1715.917969, position_z = 79.477509, spawndist = 10, MovementType = 1 WHERE guid = 106550;
UPDATE creature SET position_x = 3505.367920, position_y = 1590.994507, position_z = 75.873367, spawndist = 10, MovementType = 1 WHERE guid = 106539;
