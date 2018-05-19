-- Implement and cleanup Forged Blade questline in SMV
DELETE FROM conditions WHERE condition_entry BETWEEN 1483 AND 1490;
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(1483,8,10621,0), -- taken
(1484,9,10621,0), -- rewarded
(1485,-2,1483,1484), -- taken or rewarded
(1486,-3,1485,0); -- not taken and not rewarded
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(1487,8,10623,0), -- taken
(1488,9,10623,0), -- rewarded
(1489,-2,1487,1488), -- taken or rewarded
(1490,-3,1489,0); -- not taken and not rewarded

UPDATE creature_loot_template SET condition_id=1490 WHERE entry=21499 AND item=30579;
UPDATE creature_loot_template SET condition_id=1486 WHERE entry=21499 AND item=30756;

--  add proper coords for anvil
UPDATE gameobject SET position_x = -3101.913, position_y = 2596.634, position_z = 62.9606, orientation = 0.6806787, rotation0 = 0, rotation1 = 0, rotation2 = 0.333807, rotation3 = 0.9426414 WHERE guid = 27854;
UPDATE gameobject SET position_x = -3094.117, position_y = 2595.894, position_z = 60.78701, orientation = 4.991644, rotation0 = 0, rotation1 = 0, rotation2 = -0.6018143, rotation3 = 0.7986361 WHERE guid = 27857;
UPDATE gameobject SET position_x = -3958.708, position_y = 2202.453, position_z = 101.7697, orientation = 3.47321, rotation0 = 0, rotation1 = 0, rotation2 = -0.9862852, rotation3 = 0.1650499 WHERE guid = 25117;
UPDATE gameobject SET position_x = -3963.257, position_y = 2201.801, position_z = 101.7743, orientation = 2.836158, rotation0 = 0, rotation1 = 0, rotation2 = 0, rotation3 = 0 WHERE guid = 25118;
UPDATE gameobject SET position_x = -2397.663, position_y = 2891.947, position_z = -55.93047, orientation = 5.224704, rotation0 = 0, rotation1 = 0, rotation2 = -0.504878, rotation3 = 0.8631907 WHERE guid = 29722;
UPDATE gameobject SET position_x = -2395.927, position_y = 2890.423, position_z = -55.89263, orientation = 4.32729, rotation0 = -0.0084939, rotation1 = 0.004799843, rotation2 = -0.8293343, rotation3 = 0.5586676 WHERE guid = 29723;
UPDATE gameobject SET position_x = -2389.599, position_y = 2898.298, position_z = -55.61113, orientation = 1.101875, rotation0 = 0, rotation1 = 0, rotation2 = 0.5234861, rotation3 = 0.8520342 WHERE guid = 29721;

-- creatures
UPDATE creature SET position_x = -3103.883, position_y = 2595.249, position_z = 63.0194, orientation = 0.418879 WHERE guid = 68957;
UPDATE creature SET position_x = -3093.975, position_y = 2586.361, position_z = 62.47175, orientation = 4.153883 WHERE guid = 68915;
UPDATE creature SET position_x = -2393.896, position_y = 2894.229, position_z = -55.53585, orientation = 2.129302 WHERE guid = 86932;

-- grokom missing gossip menu - check if vendor is added automatically
UPDATE creature_template SET GossipMenuId=8386 WHERE entry IN(19333);
DELETE FROM gossip_menu WHERE entry IN(8386);
INSERT INTO gossip_menu VALUES
(8386, 10467, 0, 0);
UPDATE quest_template SET CompleteScript=10627 WHERE entry IN(10627);
DELETE FROM dbscripts_on_quest_end WHERE id IN(10627);
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10627', '0', '29', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye remove NPC flags qgiver and gossip'),
('10627', '0', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye start WP movement PathId 1');
DELETE FROM creature_movement_template WHERE entry IN(19333) AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19333,1,1,-3101.017,2592.302,62.81623,0,0,100),
(19333,1,2,-3101.593,2595.457,62.87921,17500,1933301,2.234021),
(19333,1,3,-3094.042,2586.523,62.38202,1000,1933302,4.153883);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1933301,1933302);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1933301', '2', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye set emote 233'),
('1933301', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye set emote 0'),
('1933301', '9', '0', '0', '0', '0', '0', '0', '0', '2000001621', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye SAY 1'),
('1933301', '13', '0', '0', '0', '0', '0', '0', '0', '2000001622', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye SAY 2'),
('1933302', '0', '29', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye add NPC flags qgiver and gossip'),
('1933302', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grokom Deatheye move idle');
DELETE FROM dbscript_string WHERE entry IN (2000001621,2000001622);
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000001621,'No, this isn''t right. What''s happened here?',0,0,0,6,'Grokom Deatheye SAY 1'),
(2000001622,'The metal has lost its magic. I could make a weapon from it, but it would be no different from a mundane blade.',0,0,0,1,'Grokom Deatheye SAY 2');

UPDATE quest_template SET CompleteScript=10626 WHERE entry IN(10626);
DELETE FROM dbscripts_on_quest_end WHERE id IN(10626);
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10626', '0', '29', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist remove NPC flags qgiver and gossip'),
('10626', '0', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist remove start WP movement PathId 1');
DELETE FROM creature_movement_template WHERE entry IN(19370) AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19370,1,1,-3958.426,2201.312,101.9156,11500,1937001,1.867502),
(19370,1,2,-3958.426,2201.312,101.9156,5000,1937002,4.817109),
(19370,1,3,-3960.609,2199.728,101.924,1000,1937003,6.248279);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1937001,1937002,1937003);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1937001', '0', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist set emote 233'),
('1937001', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist set emote 0'),
('1937001', '7', '0', '0', '0', '0', '0', '0', '0', '2000001623', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist SAY 1'),
('1937002', '0', '0', '0', '0', '0', '0', '0', '0', '2000001624', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist SAY 2'),
('1937003', '0', '29', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist add NPC flags qgiver and gossip'),
('1937003', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ordinn Thunderfist move idle');
DELETE FROM dbscript_string WHERE entry IN(2000001623,2000001624);
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000001623,'This doesn''t look right...',0,0,0,6,'Ordinn Thunderfist SAY 1'),
(2000001624,'The metal''s magical properties are gone! It can still be worked, but not by conventional smithing methods.',0,0,0,1,'Ordinn Thunderfist SAY 2');

UPDATE creature_template SET GossipMenuId=8400,SpeedRun=8/7,SpeedWalk=2.5/2.5 WHERE entry IN(21465);
DELETE FROM npc_gossip WHERE npc_guid=86932;
DELETE FROM gossip_menu WHERE entry IN(8400);
INSERT INTO gossip_menu VALUES
(8400, 10500, 0, 0);
UPDATE quest_template SET StartScript=10676 WHERE entry IN(10676);
DELETE FROM dbscripts_on_quest_start WHERE id IN(10676);
INSERT INTO dbscripts_on_quest_start(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10676', '0', '29', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne remove NPC flags qgiver and gossip'),
('10676', '1', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne remove start WP movement PathId 1');
DELETE FROM creature_movement_template WHERE entry IN(21465) AND pathId = 1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21465,1,1,-2396.515,2892.754,-55.5784,24500,2146501,100),
(21465,1,2,-2396.515,2892.754,-55.5784,0,0,0.4363323),
(21465,1,3,-2393.896,2894.229,-55.5784,1000,2146502,2.129302);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2146501,2146502);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('2146501', '0', '1', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 69'),
('2146501', '0', '0', '0', '0', '0', '0', '0', '0', '2000001625', '0', '0', '0', '0', '0', '0', '0', 'David Wayne Emote 1'),
('2146501', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 0'),
('2146501', '5', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 233'),
('2146501', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 0'),
('2146501', '14', '0', '0', '0', '0', '0', '0', '0', '2000001626', '0', '0', '0', '0', '0', '0', '0', 'David Wayne SAY 1'),
('2146501', '15', '15', '35740', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne cast 35740'),
('2146501', '15', '0', '0', '0', '0', '0', '0', '0', '2000001627', '0', '0', '0', '0', '0', '0', '0', 'David Wayne Emote 2'),
('2146501', '16', '1', '233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 233'),
('2146501', '23', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne set emote 0'),
('2146502', '0', '29', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne add NPC flags qgiver and gossip'),
('2146502', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'David Wayne move idle');
DELETE FROM dbscript_string WHERE entry IN(2000001625,2000001626,2000001627);
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000001625,'%s reads several pages of the Lexicon Demonica before beginning his work.',0,2,0,0,'David Wayne Emote 1'),
(2000001626,'Ashj zila enkil X adare lok revos xi mannor kiel lok zilthuras il archim Il gular adare kamil revola lok karaman il zila tichar',0,0,8,0,'David Wayne SAY 1'),
(2000001627,'Anti-demon magics flare to life and imbue the weapon.',0,2,0,0,'David Wayne Emote 2');

UPDATE creature_template SET ExtraFlags=ExtraFlags&~128,MovementType=2 WHERE entry IN(12999);
UPDATE creature_template SET InhabitType=4 WHERE entry IN(21939,21940,12999);
UPDATE creature SET spawntimesecsmin=60,spawntimesecsmax=60 WHERE id IN(21939);
-- script for throwing sword
DELETE FROM spell_script_target WHERE entry IN(37984,37964);
INSERT INTO spell_script_target VALUES
('37984', '1', '21939', '0'),
('37964', '1', '21939', '0');
UPDATE gameobject SET rotation2=-1, rotation3=0 WHERE id IN(185032);
DELETE FROM dbscripts_on_event WHERE id IN(14143);
INSERT INTO dbscripts_on_event(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('14143', '0', '9', '21611', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Respawn GO Forged Illidari Bane Blade'),
('14143', '0', '10', '12999', '30000', '1', '0', '0', '0', '1', '0', '0', '0', '-3422.519', '1373.19', '256.9582', '4.301329', 'Spawn World Invisible Trigger 1 path ID 1'),
('14143', '0', '10', '12999', '30000', '2', '0', '0', '0', '1', '0', '0', '0', '-3420.367', '1374.262', '256.4176', '2.735552', 'Spawn World Invisible Trigger 2 path ID 2'),
('14143', '0', '10', '12999', '30000', '3', '0', '0', '0', '1', '0', '0', '0', '-3419.77', '1372.105', '256.8593', '0.03936975', 'Spawn World Invisible Trigger 3 path ID 3'),
('14143', '5', '15', '37964', '0', '0', '21940', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Invis Illidari Bane Caster cast 37964 on Invis Illidari Blade Target'),
('14143', '5', '18', '500', '0', '0', '21939', '50', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Invis Illidari Blade Target despawn self');

DELETE FROM dbscripts_on_creature_movement WHERE id IN(1299902);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1299902', '0', '15', '32567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'World Invisible Trigger cast 32567 on self');

DELETE FROM creature_movement_template WHERE entry IN(12999) AND pathId IN(1,2,3);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(12999,1,1,-3419.688,1382.749,252.1638,0,1299902,100),
(12999,1,2,-3422.217,1374.109,256.516,0,0,100),
(12999,1,3,-3422.531,1373.037,257.0555,0,0,100),
(12999,1,4,-3421.961,1371.917,258.1678,0,0,100),
(12999,1,5,-3420.028,1371.66,259.14,0,0,100),
(12999,1,6,-3419.065,1372.658,259.7233,0,0,100),
(12999,1,7,-3419.216,1374.559,259.9732,0,0,100),
(12999,1,8,-3421.552,1375.854,260.2512,0,0,100),
(12999,1,9,-3424.257,1374.71,260.7231,0,0,100),
(12999,1,10,-3424.212,1371.755,261.0606,0,0,100),
(12999,1,11,-3424.212,1371.755,261.0606,1000,1,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(12999,2,1,-3410.118,1370.628,254.5587,0,1299902,100),
(12999,2,2,-3419.413,1373.9,256.2615,0,0,100),
(12999,2,3,-3420.929,1374.434,256.5392,0,0,100),
(12999,2,4,-3422.325,1373.867,257.5341,0,0,100),
(12999,2,5,-3422.103,1372.493,258.0899,0,0,100),
(12999,2,6,-3420.914,1371.586,258.8676,0,0,100),
(12999,2,7,-3419.187,1371.533,259.4232,0,0,100),
(12999,2,8,-3417.114,1372.317,259.8676,0,0,100),
(12999,2,9,-3417.671,1375.37,260.7288,0,0,100),
(12999,2,10,-3423.19,1377.492,261.3121,0,0,100),
(12999,2,11,-3423.19,1377.492,261.3121,1000,1,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(12999,3,1,-3430.305,1370.527,253.8981,0,1299902,100),
(12999,3,2,-3420.786,1371.988,256.59,0,0,100),
(12999,3,3,-3419.411,1372.199,256.9789,0,0,100),
(12999,3,4,-3418.807,1373.605,257.7566,0,0,100),
(12999,3,5,-3419.436,1374.924,258.201,0,0,100),
(12999,3,6,-3421.49,1375.18,258.1733,0,0,100),
(12999,3,7,-3422.849,1374.158,258.936,0,0,100),
(12999,3,8,-3423.205,1372.167,259.705,0,0,100),
(12999,3,9,-3420.847,1370.354,261.2871,0,0,100),
(12999,3,10,-3418.259,1370.974,262.2316,0,0,100),
(12999,3,11,-3416.92,1373.316,262.5374,0,0,100),
(12999,3,12,-3416.92,1373.316,262.5374,1000,1,100);
