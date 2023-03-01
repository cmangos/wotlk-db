-- equipment in `creature` removed or relocated

-- Classic
-- Frostmane Hideskinner 1122 - one has unique eqip? (will keep it, but need to be checked in future)
-- Hammerfall Guardian 2621 - this one repairs roof on one of the buildings there (unique equip confirmed) - this guy didnt exist in Classic (not sure about TBC) 
UPDATE creature SET equipment_id = 0 WHERE guid IN (11210);
DELETE FROM `creature_spawn_data` WHERE guid IN (11210);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(11210,9990);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9990);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(9990,122);
UPDATE creature SET equipment_id = 0 WHERE guid IN (1007172);
DELETE FROM `creature_spawn_data` WHERE guid IN (1007172);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(1007172,9994);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9994);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(9994,694);
-- Peon 14901 - confirmed
-- Expedition Warden 17855 - confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9995);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(9995,7);
UPDATE creature SET equipment_id = 0 WHERE guid IN (13765,63553);
DELETE FROM `creature_spawn_data` WHERE guid IN (13765,63553);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(13765,9995),(63553,9995);


-- TBC
-- Nether Technician <B.O.O.M.> 20203 - some using hammers for repairs
-- Bor'gorok Peon 26112 - 2 using hammers for repairs
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19984);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19984,2);
UPDATE creature SET equipment_id = 0 WHERE guid IN (71807,71809,71816,71818,512074,512076);
DELETE FROM `creature_spawn_data` WHERE guid IN (71807,71809,71816,71818,512074,512076);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(71807,19984),(71809,19984),(71816,19984),(71818,19984),(512074,19984),(512076,19984);
-- Disobedient Dragonmaw Peon 23311 -- some using qunique equip
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19983);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19983,4);
UPDATE creature SET equipment_id = 0 WHERE guid IN (128593,128594,128595,128596,128597,128598,128599,128600,131748,131751,131752,131778);
DELETE FROM `creature_spawn_data` WHERE guid IN (128593,128594,128595,128596,128597,128598,128599,128600,131748,131751,131752,131778);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(128593,19983),(128594,19983),(128595,19983),(128596,19983),(128597,19983),(128598,19983),
(128599,19983),(128600,19983),(131748,19983),(131751,19983),(131752,19983),(131778,19983);
-- Thrallmar Grunt 16580 - RP confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19981);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19981,36);
UPDATE creature SET equipment_id = 0 WHERE guid IN (57541,57539);
DELETE FROM `creature_spawn_data` WHERE guid IN (57541,57539);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(57541,19983),
(57539,19981);
-- Skyguard Navigator 22982
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9991);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(9991,67);
UPDATE creature SET equipment_id = 0 WHERE guid IN (140990);
DELETE FROM `creature_spawn_data` WHERE guid IN (140990);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(140990,9991);
-- Thrallmar Marksman 16582
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19980);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19980,234);
UPDATE creature SET equipment_id = 0 WHERE guid IN (57542,57543);
DELETE FROM `creature_spawn_data` WHERE guid IN (57542,57543);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(57542,19980),(57543,19980);
-- Coilskar Myrmidon 19765
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19979);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19979,343);
UPDATE creature SET equipment_id = 0 WHERE guid IN (68003,68002);
DELETE FROM `creature_spawn_data` WHERE guid IN (68003,68002);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(68003,19979),(68002,19979);
-- Dragonmaw Ascendant 22253 -- 2 have diff (maybe random?)
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19978);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19978,343);
UPDATE creature SET equipment_id = 0 WHERE guid IN (52331,52330);
DELETE FROM `creature_spawn_data` WHERE guid IN (52331,52330);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(52331,19978),(52330,19978);
-- Dragonmaw Enforcer 23146 - they have random equipment (poss more?)
UPDATE creature SET equipment_id = 0 WHERE id IN (23146);
DELETE FROM `dbscript_random_templates` WHERE `id` = 19998;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(19998, 1, 17947, 0, 'Dragonmaw Enforcer 23146 - Random Script 1'),
(19998, 1, 17948, 0, 'Dragonmaw Enforcer 23146 - Random Script 2'),
(19998, 1, 17949, 0, 'Dragonmaw Enforcer 23146 - Random Script 3');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 17947 AND 17949;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17947,0,42,0,0,0,0,0,0x04,31600,31466,0,0,0,0,0,0,'Part of Dragonmaw Enforcer 23146 EAI: Set Eqipment set 1'),
(17948,0,42,0,0,0,0,0,0x04,31601,0,0,0,0,0,0,0,'Part of Dragonmaw Enforcer 23146 EAI: Set Eqipment set 2'),
(17949,0,42,0,0,0,0,0,0x04,31603,31466,0,0,0,0,0,0,'Part of Dragonmaw Enforcer 23146 EAI: Set Eqipment set 3');
-- Kor'kron Defender 19362 - they have random equipment (poss more?)
UPDATE creature SET equipment_id = 0 WHERE id IN (19362);
DELETE FROM `dbscript_random_templates` WHERE `id` = 19976;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(19976, 1, 17950, 0, 'Kor\'kron Defender 19362 - Random Script 1'),
(19976, 1, 17951, 0, 'Kor\'kron Defender 19362 - Random Script 2'),
(19976, 1, 17952, 0, 'Kor\'kron Defender 19362 - Random Script 3'),
(19976, 1, 17953, 0, 'Kor\'kron Defender 19362 - Random Script 4');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 17950 AND 17953;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17950,0,42,0,0,0,0,0,0x04,30178,0,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 1'),
(17951,0,42,0,0,0,0,0,0x04,30179,0,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 2'),
(17952,0,42,0,0,0,0,0,0x04,30180,30180,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 3'),
(17953,0,42,0,0,0,0,0,0x04,30181,21549,2507,0,0,0,0,0,'Part of Kor\'kron Defender 19362 EAI: Set Eqipment set 4');
-- Skyguard Windcharger 23257 - 3 have diff
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19973);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19973,50130);
UPDATE creature SET equipment_id = 0 WHERE guid IN (79021,79022,79024);
DELETE FROM `creature_spawn_data` WHERE guid IN (79021,79022,79024);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(79021,19973),(79022,19973),(79024,19973);
-- Skettis Soulcaller 21911 - 1 has diff
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19972);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19972,50161);
UPDATE creature SET equipment_id = 0 WHERE guid IN (242729);
DELETE FROM `creature_spawn_data` WHERE guid IN (242729);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(242729,19972);
-- Worker 18800 - 1 has diff
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (19971);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(19971,5);
UPDATE creature SET equipment_id = 0 WHERE guid IN (67155);
DELETE FROM `creature_spawn_data` WHERE guid IN (67155);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(67155,19971);


-- WoTLK
-- Taunka'le Refugee 26179 - confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20047);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20047,13);
UPDATE creature SET equipment_id = 0 WHERE guid IN (512238,512240,512251,512243,512270,512274,512265,512268);
DELETE FROM `creature_spawn_data` WHERE guid IN (512238,512240,512251,512243,512270,512274,512265,512268);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(512238,20047),(512240,20047),(512251,20047),(512243,20047),(512270,20047),(512274,20047),(512265,20047),(512268,20047);
-- Stormwind Dock Worker 29152
UPDATE creature SET equipment_id = 0 WHERE guid IN (88352);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20052); -- this one should have default
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20052,361);
UPDATE creature SET equipment_id = 0 WHERE guid IN (88350,88351,88353,88354,88355,88356,88357,88358,88359,88360);
DELETE FROM `creature_spawn_data` WHERE guid IN (88350,88351,88353,88354,88355,88356,88357,88358,88359,88360);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(88350,20052),(88351,20052),(88353,20052),(88354,20052),(88355,20052),
(88356,20052),(88357,20052),(88358,20052),(88359,20052),(88360,20052);
-- Civilian Recruit 25317 - confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20048);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20048,50);
UPDATE creature SET equipment_id = 0 WHERE guid IN (508544,508546);
DELETE FROM `creature_spawn_data` WHERE guid IN (508544,508546);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(508544,20048),(508546,20048);
-- Iron Rune Guardian 24212 - confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20049);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20049,53);
UPDATE creature SET equipment_id = 0 WHERE guid IN (505686,505691,505684,505690,505681,505678,505673,505663,505668,505669,505670,505671,505676,505677,505664,505666);
DELETE FROM `creature_spawn_data` WHERE guid IN (505686,505691,505684,505690,505681,505678,505673,505663,505668,505669,505670,505671,505676,505677,505664,505666);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(505686,20049),(505691,20049),(505684,20049),(505690,20049),(505681,20049),(505678,20049),(505673,20049),(505663,20049),
(505668,20049),(505669,20049),(505670,20049),(505671,20049),(505676,20049),(505677,20049),(505664,20049),(505666,20049);
-- Skadir Longboatsman 25521 - they have random equipment
UPDATE creature SET equipment_id = 0 WHERE id IN (25521);
DELETE FROM `dbscript_random_templates` WHERE `id` = 20304;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20304, 1, 20722, 0, 'Skadir Longboatsman 25521 - Random Script 1'),
(20304, 1, 20723, 0, 'Skadir Longboatsman 25521 - Random Script 2'),
(20304, 1, 20724, 0, 'Skadir Longboatsman 25521 - Random Script 3'),
(20304, 1, 20725, 0, 'Skadir Longboatsman 25521 - Random Script 4'),
(20304, 1, 20726, 0, 'Skadir Longboatsman 25521 - Random Script 5'),
(20304, 1, 20727, 0, 'Skadir Longboatsman 25521 - Random Script 6'),
(20304, 1, 20728, 0, 'Skadir Longboatsman 25521 - Random Script 7');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20722 AND 20728;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20722,0,42,0,0,0,0,0,0x04,5292,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 1'),
(20723,0,42,0,0,0,0,0,0x04,34816,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 2'),
(20724,0,42,0,0,0,0,0,0x04,34819,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 3'),
(20725,0,42,0,0,0,0,0,0x04,34820,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 4'),
(20726,0,42,0,0,0,0,0,0x04,34818,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 5'),
(20727,0,42,0,0,0,0,0,0x04,34819,33212,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 6'),
(20728,0,42,0,0,0,0,0,0x04,34821,0,0,0,0,0,0,0,'Part of Skadir Longboatsman 25521 EAI: Set Eqipment set 7');
-- Vengeance Bringer 23865 - confirmed
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20051);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20051,254);
UPDATE creature SET equipment_id = 0 WHERE guid IN (503392,503397,503398,503402);
DELETE FROM `creature_spawn_data` WHERE guid IN (503392,503397,503398,503402);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(503392,20051),(503397,20051),(503398,20051),(503402,20051);
-- Kvaldir Mist Lord 25496 - they have random equipment
UPDATE creature SET equipment_id = 0 WHERE id IN (25496);
DELETE FROM `dbscript_random_templates` WHERE `id` = 20305;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20305, 1, 20729, 0, 'Kvaldir Mist Lord 25496 - Random Script 1'),
(20305, 1, 20730, 0, 'Kvaldir Mist Lord 25496 - Random Script 2'),
(20305, 1, 20731, 0, 'Kvaldir Mist Lord 25496 - Random Script 3'),
(20305, 1, 20732, 0, 'Kvaldir Mist Lord 25496 - Random Script 4'),
(20305, 1, 20733, 0, 'Kvaldir Mist Lord 25496 - Random Script 5'),
(20305, 1, 20734, 0, 'Kvaldir Mist Lord 25496 - Random Script 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20729 AND 20734;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20729,0,42,0,0,0,0,0,0x04,34817,0,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 1'),
(20730,0,42,0,0,0,0,0,0x04,34816,34819,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 2'),
(20731,0,42,0,0,0,0,0,0x04,34818,0,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 3'),
(20732,0,42,0,0,0,0,0,0x04,34819,33212,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 4'),
(20733,0,42,0,0,0,0,0,0x04,34819,34819,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 5'),
(20734,0,42,0,0,0,0,0,0x04,34821,34816,0,0,0,0,0,0,'Part of Kvaldir Mist Lord 25496 EAI: Set Eqipment set 6');
-- Warsong Battleguard 25242
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20050,20053);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20050,575),
(20053,1591);
UPDATE creature SET equipment_id = 0 WHERE guid IN (508186,508236,508228,508225,508220,508215,508214,508177,508176,508175,508184,508207,508232);
DELETE FROM `creature_spawn_data` WHERE guid IN (508186,508236,508228,508225,508220,508215,508214,508177,508176,508175,508184,508207,508232);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(508186,20050),(508236,20053),(508228,20053),(508225,20053),
(508220,20053),(508215,20053),(508177,20053),(508176,20053),
(508175,20053),(508184,20053),(508207,20053),(508232,20053),
(508214,20053);
-- Drakkari Protector 26797
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20054);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20054,760);
UPDATE creature SET equipment_id = 0 WHERE guid IN (515709,515703,515697);
DELETE FROM `creature_spawn_data` WHERE guid IN (515709,515703,515697);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(515709,20054),(515703,20054),(515697,20054);
-- North Fleet Sailor 23866
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20055);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(20055,2518);
UPDATE creature SET equipment_id = 0 WHERE guid IN (503439,503438,503437,503436,503435,503432,503442,503455,503454);
DELETE FROM `creature_spawn_data` WHERE guid IN (503439,503438,503437,503436,503435,503432,503442,503455,503454);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(503439,20055),(503438,20055),(503437,20055),(503436,20055),(503435,20055),(503432,20055),(503442,20055),(503455,20055),(503454,20055);
