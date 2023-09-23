-- Frenzyheart Tribe - Quest Chain

-- Player can use 3 companions there (items for summons from c.28138)
-- they reQ conditions:
UPDATE gossip_menu_option SET condition_id = 20579 WHERE menu_id = 9741 AND id = 1; -- Goregek the Gorilla Hunter 28214
UPDATE gossip_menu_option SET condition_id = 20587 WHERE menu_id = 9741 AND id = 3; -- Dajik the Wasp Hunter 28215
UPDATE gossip_menu_option SET condition_id = 20594 WHERE menu_id = 9741 AND id = 5; -- Zepik the Gorloc Hunter 28216
DELETE FROM dbscripts_on_gossip WHERE id IN (974101,974103,974105);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(974101,0,15,52542,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Goregek'),
(974101,1,17,38621,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974101,2,17,38512,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974103,0,15,52544,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Dajik'),
(974103,1,17,38619,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974103,2,17,38512,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974105,0,15,52545,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Zepik'),
(974105,1,17,38619,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974105,2,17,38621,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
-- old conditions - removed
DELETE FROM `conditions` WHERE `condition_entry` IN (326,327,328,329,330,331,563,564,565);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20572 AND 20593;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
-- Goregek the Gorilla Hunter 28214
(20572,9,12530,0,0,0,0,''),
(20573,9,12529,0,0,0,0,''),
(20574,19,12530,0,0,0,0,''),
(20575,-2,20574,20573,20572,0,0,''),
(20576,5,1104,5,0,0,0,''),
(20577,-2,20576,20575,0,0,0,''),
(20578,23,38619,1,0,0,1,''), -- Goregek shackles
(20579,-1,20578,20577,0,0,0,''),
-- Dajik the Wasp Hunter 28215
(20580,8,12530,0,0,0,0,''),
(20581,8,12529,0,0,0,0,''),
(20582,8,12536,0,0,0,1,''),
(20583,9,12536,0,0,0,1,''),
(20584,-1,20583,20582,20581,20580,0,''),
(20585,-2,20584,20576,0,0,0,''),
(20586,23,38621,1,0,0,1,''), -- Dajik chalk
(20587,-1,20586,20585,0,0,0,''),
-- Zepik the Gorloc Hunter 28216
(20588,8,12531,0,0,0,0,''),
(20589,8,12535,0,0,0,0,''),
(20590,8,12539,0,0,0,1,''),
(20591,-1,20590,20589,20588,0,0,''),
(20592,-2,20591,20576,0,0,0,''),
(20593,23,38512,1,0,0,1,''), -- zepik horn
(20594,-1,20593,20592,0,0,0,'');

-- Q relations
-- q.12533 'The Wasp Hunter's Apprentice' 
-- q.12534 'The Sapphire Queen'
-- req. q.12530 & q.12529 finished first.
UPDATE quest_template SET RequiredCondition = 20595, ExclusiveGroup = 0 WHERE entry IN (12533,12534);
DELETE FROM conditions WHERE condition_entry = 20595;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20595,-1,20581,20580,0,0,0,'');
-- q.12536 'A Rough Ride'
-- req. q.12531 & q.12535 finished first.
UPDATE quest_template SET RequiredCondition = 20596 WHERE entry IN (12536);
DELETE FROM conditions WHERE condition_entry = 20596;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20596,-1,20589,20588,0,0,0,'');
-- q.12539 'Hoofing It'
-- req. q.12537 & q.12538 finished first.
UPDATE quest_template SET RequiredCondition = 20601 WHERE entry IN (12539);
DELETE FROM conditions WHERE condition_entry BETWEEN 20599 AND 20601;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20599,8,12537,0,0,0,0,''),
(20600,8,12538,0,0,0,0,''),
(20601,-1,20600,20599,0,0,0,'');

-- Quests
-- q.12529 'The Ape Hunter's Slave'
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52542,53163);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52542,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52542,100,15,51186,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(53163,0,18,0,0,0,0,0,0x20,0,0,0,0,0,0,0,0,'PET Check - Remove if Duplicate');
DELETE FROM spell_script_target WHERE entry IN (53163);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(53163, 1, 28214, 0),
(53163, 1, 28215, 0),
(53163, 1, 28216, 0);
-- Goregek the Gorilla Hunter 28214
UPDATE creature_template SET EquipmentTemplateId = 2538 WHERE entry IN (28214);
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2538;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2538, 36488, 0, 0);
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20312 AND 20316;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20312,0,27995,0,'Goregek the Gorilla Hunter 28214 - Random Say 1 (Softknuckle)'),
(20312,0,28068,0,'Goregek the Gorilla Hunter 28214 - Random Say 2 (Softknuckle)'),
(20312,0,28069,0,'Goregek the Gorilla Hunter 28214 - Random Say 3 (Softknuckle)'),
(20312,0,28070,0,'Goregek the Gorilla Hunter 28214 - Random Say 4 (Softknuckle)'),
(20312,0,28071,0,'Goregek the Gorilla Hunter 28214 - Random Say 5 (Softknuckle)'),
(20313,0,27990,0,'Goregek the Gorilla Hunter 28214 - Random Say 1 (hardknuckles)'),
(20313,0,27991,0,'Goregek the Gorilla Hunter 28214 - Random Say 2 (hardknuckles)'),
(20313,0,27992,0,'Goregek the Gorilla Hunter 28214 - Random Say 3 (hardknuckles)'),
(20313,0,28056,0,'Goregek the Gorilla Hunter 28214 - Random Say 4 (hardknuckles)'),
(20313,0,28057,0,'Goregek the Gorilla Hunter 28214 - Random Say 5 (hardknuckles)'),
(20313,0,28058,0,'Goregek the Gorilla Hunter 28214 - Random Say 6 (hardknuckles)'),
(20313,0,28059,0,'Goregek the Gorilla Hunter 28214 - Random Say 7 (hardknuckles)'),
(20313,0,28009,0,'Goregek the Gorilla Hunter 28214 - Random Say 8 (hardknuckles)'),
(20313,0,28010,0,'Goregek the Gorilla Hunter 28214 - Random Say 9 (hardknuckles)'),
(20313,0,28012,0,'Goregek the Gorilla Hunter 28214 - Random Say 10 (hardknuckles)'),
(20314,0,27993,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 1'),
(20314,0,28011,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 2'),
(20314,0,27994,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 3'),
(20314,0,28013,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 4'),
(20314,0,28014,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 5'),
(20314,0,28015,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 6'),
(20314,0,28016,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 7'),
(20314,0,27965,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 8'),
(20314,0,27969,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 9'),
(20314,0,27970,0,'Goregek the Gorilla Hunter 28214 - Random OOC Say 10'),
(20315,0,27983,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 1 (Hrenzyhart Hill)'),
(20315,0,27984,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 2 (Hrenzyhart Hill)'),
(20315,0,27985,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 3 (Hrenzyhart Hill)'),
(20315,0,27986,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 4 (Hrenzyhart Hill)'),
(20315,0,27987,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 5 (Hrenzyhart Hill)'),
(20315,0,27988,0,'Goregek the Gorilla Hunter 28214 - Random OOC Respond Say 6 (Hrenzyhart Hill)'),
(20316,0,28064,0,'Goregek the Gorilla Hunter 28214 - Random Say 1 (chicken kill)'),
(20316,0,28065,0,'Goregek the Gorilla Hunter 28214 - Random Say 2 (chicken kill)'),
(20316,0,28066,0,'Goregek the Gorilla Hunter 28214 - Random Say 3 (chicken kill)'),
(20316,0,28067,0,'Goregek the Gorilla Hunter 28214 - Random Say 4 (chicken kill)');

-- q.12533 'The Wasp Hunter's Apprentice'
DELETE FROM dbscripts_on_quest_start WHERE id IN (12533);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12533,1,0,15,52544,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 52544'),
(12533,2,0,17,38619,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
UPDATE quest_template SET StartScript = 12533 WHERE entry = 12533;
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52544);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52544,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52544,100,15,51188,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
-- Dajik the Wasp Hunter 28215
UPDATE creature_template SET EquipmentTemplateId = 2539 WHERE entry IN (28215);
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2539;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2539, 28325, 0, 0);
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20317 AND 20320;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20317,0,28188,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 1 '),
(20317,0,28183,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 2 '),
(20317,0,28190,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 3 '),
(20317,0,28186,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 4 '),
(20317,0,28185,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 5 '),
(20317,0,28177,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 6 '),
(20317,0,28189,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 7 '),
(20317,0,28191,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 8 '),
(20317,0,28142,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 9 '),
(20317,0,28192,0,'Dajik the Wasp Hunter 28215 - Random OOC Say 10'),
(20318,0,28181,0,'Dajik the Wasp Hunter 28215 - Random Say 1 (Target Death)'),
(20318,0,28159,0,'Dajik the Wasp Hunter 28215 - Random Say 2 (Target Death)'),
(20318,0,28162,0,'Dajik the Wasp Hunter 28215 - Random Say 3 (Target Death)'),
(20318,0,28163,0,'Dajik the Wasp Hunter 28215 - Random Say 4 (Target Death)'),
(20318,0,28179,0,'Dajik the Wasp Hunter 28215 - Random Say 5 (Target Death)'),
(20319,0,28143,0,'Dajik the Wasp Hunter 28215 - Random OOC Respond Say 1 (Hrenzyhart Hill)'),
(20319,0,28145,0,'Dajik the Wasp Hunter 28215 - Random OOC Respond Say 2 (Hrenzyhart Hill)'),
(20319,0,28176,0,'Dajik the Wasp Hunter 28215 - Random OOC Respond Say 3 (Hrenzyhart Hill)'),
(20319,0,28177,0,'Dajik the Wasp Hunter 28215 - Random OOC Respond Say 4 (Hrenzyhart Hill)'),
(20319,0,28144,0,'Dajik the Wasp Hunter 28215 - Random OOC Respond Say 5 (Hrenzyhart Hill)'),
(20320,0,28172,0,'Dajik the Wasp Hunter 28215 - Random Say 1 (chicken kill)'),
(20320,0,28173,0,'Dajik the Wasp Hunter 28215 - Random Say 2 (chicken kill)'),
(20320,0,28174,0,'Dajik the Wasp Hunter 28215 - Random Say 3 (chicken kill)'),
(20320,0,28175,0,'Dajik the Wasp Hunter 28215 - Random Say 4 (chicken kill)'),
(20320,0,28176,0,'Dajik the Wasp Hunter 28215 - Random Say 5 (chicken kill)');

-- q.12532 'Flown the Coop!'
-- q.12702 'Chicken Party!'
DELETE FROM dbscripts_on_quest_start WHERE id IN (12532,12702);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12532,1,0,10,28161,240000,1,0,0,0x08,1,0,0,21,5251.198,4516.475,-85.31921,3.281219,'summon: Chicken Escapee 28161'),
(12532,1,1,10,28161,240000,1,0,0,0x08,1,0,0,21,5250.385,4516.643,-85.3257,5.044002,'summon: Chicken Escapee 28161'),
(12532,2,1,10,28161,240000,2,0,0,0x08,1,0,0,21,5251.708,4511.778,-85.32935,1.64061,'summon: Chicken Escapee 28161'), -- 4 havin same path
(12532,2,2,10,28161,240000,2,0,0,0x08,1,0,0,21,5251.118,4509.744,-85.32935,4.886922,'summon: Chicken Escapee 28161'),
(12532,2,3,10,28161,240000,2,0,0,0x08,1,0,0,21,5252.795,4509.772,-85.32524,0.7853982,'summon: Chicken Escapee 28161'),
(12532,2,4,10,28161,240000,2,0,0,0x08,1,0,0,21,5253.682,4511.424,-85.32755,2.356194,'summon: Chicken Escapee 28161'),
(12532,3,1,10,28161,240000,3,0,0,0x08,1,0,0,21,5252.513,4513.911,-85.32935,1.308997,'summon: Chicken Escapee 28161'),
(12532,3,2,10,28161,240000,4,0,0,0x08,1,0,0,21,5252.096,4514.868,-85.32635,4.363323,'summon: Chicken Escapee 28161'),
(12532,3,3,10,28161,240000,5,0,0,0x08,1,0,0,21,5251.637,4513.41,-85.32935,3.490659,'summon: Chicken Escapee 28161'),
(12532,3,4,10,28161,240000,6,0,0,0x08,1,0,0,21,5253.287,4513.109,-85.32935,3.036873,'summon: Chicken Escapee 28161'),
(12532,4,4,10,28161,240000,7,0,0,0x08,1,0,0,21,5253.494,4514.764,-85.31329,3.717551,'summon: Chicken Escapee 28161');
UPDATE quest_template SET StartScript = 12532 WHERE entry IN (12532,12702);
-- Player must see them outside camp also
DELETE FROM spell_area WHERE spell = 50735 AND area = 3711;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(50735,3711,12532,1,12532,0,0,0,2,1),
(50735,3711,12702,1,12702,0,0,0,2,1);

-- q.12536 'A Rough Ride'
DELETE FROM dbscripts_on_quest_start WHERE id IN (12536);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12536,2,0,17,38621,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
UPDATE quest_template SET StartScript = 12536 WHERE entry = 12536;
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52545);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52545,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52545,100,15,51189,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
-- Zepik the Gorloc Hunter 28216
UPDATE creature_template SET NpcFlags = 3, EquipmentTemplateId = 1827, GossipMenuId=9748 WHERE entry IN (28216);
DELETE FROM gossip_menu WHERE entry IN (9748);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9748, 13366, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13366);
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,Prob2,Prob3,BroadcastTextId0,BroadcastTextId1,BroadcastTextId2,BroadcastTextId3) VALUES
(13366,1,1,1,1,28912,28913,28914,28915);
DELETE FROM npc_text WHERE id=13366; 
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20321 AND 20324;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20321,0,28205,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 1'),
(20321,0,28464,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 2'),
(20321,0,28201,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 3'),
(20321,0,28202,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 4'),
(20321,0,28203,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 5'),
(20321,0,28204,0,'Zepik the Gorloc Hunter 28216 - Random OOC Say 6'),
(20322,0,27942,0,'Zepik the Gorloc Hunter 28216 - Random Say 1 (Mistwhisper Warrior\Oracle kill)'),
(20322,0,27943,0,'Zepik the Gorloc Hunter 28216 - Random Say 2 (Mistwhisper Warrior\Oracle kill)'),
(20322,0,27944,0,'Zepik the Gorloc Hunter 28216 - Random Say 3 (Mistwhisper Warrior\Oracle kill)'),
(20322,0,27945,0,'Zepik the Gorloc Hunter 28216 - Random Say 4 (Mistwhisper Warrior\Oracle kill)'),
(20323,0,28227,0,'Zepik the Gorloc Hunter 28216 - Random OOC Respond Say 1 (Mistwhisper)'),
(20323,0,28228,0,'Zepik the Gorloc Hunter 28216 - Random OOC Respond Say 2 (Mistwhisper)'),
(20323,0,28229,0,'Zepik the Gorloc Hunter 28216 - Random OOC Respond Say 3 (Mistwhisper)'),
(20323,0,28230,0,'Zepik the Gorloc Hunter 28216 - Random OOC Respond Say 4 (Mistwhisper)'),
(20323,0,28231,0,'Zepik the Gorloc Hunter 28216 - Random OOC Respond Say 5 (Mistwhisper)'),
(20324,0,28475,0,'Zepik the Gorloc Hunter 28216 - Q.12537 Respond Say 1 (Mistwhisper)'),
(20324,0,28476,0,'Zepik the Gorloc Hunter 28216 - Q.12537 Respond Say 1 (Mistwhisper)'),
(20324,0,28477,0,'Zepik the Gorloc Hunter 28216 - Q.12537 Respond Say 1 (Mistwhisper)'),
(20324,0,28478,0,'Zepik the Gorloc Hunter 28216 - Q.12537 Respond Say 1 (Mistwhisper)');
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (20783);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20783,0,0,20324,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Zepik the Gorloc Hunter 28216 EAI: Random say (q.12537)'),
(20783,6000,0,0,0,0,0,0,0x04,28226,0,0,0,0,0,0,0,'Part of Zepik the Gorloc Hunter 28216 EAI: Random say (q.12537)');
-- Captive Crocolisk 28298
-- gossip
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 967401, condition_id = 20597 WHERE menu_id = 9674;
DELETE FROM conditions WHERE condition_entry = 20597;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20597,9,12536,0,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 967401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(967401,1,35,5,15,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
(967401,10,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(967401,100,15,51258,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51258');
-- Croclisk Chain Bunny 28307
DELETE FROM spell_script_target WHERE entry IN (51256);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(51256, 1, 28307, 0);
DELETE FROM dbscripts_on_relay WHERE id = 20781;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20781,1,15,51256,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Croclisk Chain Bunny 28307 EAI: cast on buddy');
-- Captive Crocolisk 28308
UPDATE creature_template SET SpeedRun = 2, UnitFlags = 33536, MovementType = 0 WHERE entry IN (28308);
DELETE FROM creature_movement_template WHERE Entry IN (28308);
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28308,1,1 ,5294.676,4444.519,-97.35025,100,0,0),
(28308,1,2 ,5268.226,4425.439,-95.56876,100,0,0),
(28308,1,3 ,5249.557,4405.892,-96.03437,100,0,0),
(28308,1,4 ,5266.678,4365.464,-98.38071,100,0,0),
(28308,1,5 ,5289.138,4366.553,-102.2557,100,0,0),
(28308,1,6 ,5330.018,4363.27,-121.0311 ,100,0,0),
(28308,1,7 ,5349.229,4341.059,-134.2653,100,0,0),
(28308,1,8 ,5365.038,4333.716,-141.5153,100,0,0),
(28308,1,9 ,5405.443,4307.841,-142.03  ,100,0,0),
(28308,1,10,5434.999,4305.659,-136.3875,100,0,0),
(28308,1,11,5464.708,4302.066,-133.1375,100,0,0),
(28308,1,12,5490.555,4294.395,-127.6919,100,0,0),
(28308,1,13,5503.808,4269.717,-110.1755,100,0,0),
(28308,1,14,5518.324,4255.308,-103.1764,100,0,0),
(28308,1,15,5540.53,4259.77,-102.3469  ,100,0,0),
(28308,1,16,5564.194,4263.45,-102.7219 ,100,0,0),
(28308,1,17,5585.45,4261.137,-99.52414 ,100,0,0),
(28308,1,18,5609.614,4259.657,-98.87333,100,0,0),
(28308,1,19,5633.434,4259.228,-98.50463,100,0,0),
(28308,1,20,5660.568,4260.985,-98.62963,100,0,0),
(28308,1,21,5681.639,4266.31,-99.24404 ,100,0,0),
(28308,1,22,5708.126,4273.348,-102.9291,100,0,0),
(28308,1,23,5748.732,4284.135,-112.0557,100,0,0),
(28308,1,24,5839.82,4368.61,-112.0813  ,100,0,0),
(28308,1,25,5865.922,4371.208,-105.5813,100,0,0),
(28308,1,26,5897.276,4408.44,-95.27152 ,100,0,0),
(28308,1,27,5925.311,4440.624,-94.56389,100,0,0),
(28308,1,28,5953.005,4476.29,-94.42451 ,100,0,0),
(28308,1,29,5964.229,4503.729,-92.96043,100,0,0),
(28308,1,30,5960.583,4546.558,-95.61202,100,0,0),
(28308,1,31,5965.167,4579.141,-97.48702,100,0,0),
(28308,1,32,5969.295,4613.739,-98.14418,100,0,0),
(28308,1,33,5975.809,4659.289,-99.27143,100,0,0),
(28308,1,34,5992.961,4699.554,-99.25324,100,0,0),
(28308,1,35,6015.139,4743.752,-97.59017,100,0,0),
(28308,1,36,6035.183,4788.787,-94.73823,100,0,0),
(28308,1,37,6064.951,4827.502,-94.54885,100,0,0),
(28308,1,38,6065.57,4870.553,-94.44845 ,100,0,0),
(28308,1,39,6096.612,4885.741,-94.44479,100,0,0),
(28308,1,40,6120.387,4902.048,-95.0106 ,100,0,0),
(28308,1,41,6139.616,4913.349,-94.8635 ,100,5000,2830801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2830801;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2830801,1,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event 5'),
(2830801,1,1,15,50630,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 50630'),
(2830801,2000,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_relay WHERE id = 20782;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20782,1,0,15,51189,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Captive Crocolisk 28308 EAI: summoner self Cast');

-- q.12537 'Lightning Definitely Strikes Twice'
DELETE FROM dbscripts_on_event WHERE id = 18475;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18475,1,0,53,0,0,0,0,0,0,32574,1,0,0,0,0,0,0,'Set worldstate variable to 1'),
(18475,60000,0,53,0,0,0,0,0,0,32574,0,0,0,0,0,0,0,'Set worldstate variable to 0');
-- Spawn Group
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (190502,190503);
DELETE FROM `spawn_group` WHERE id = 32574;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32574, 'Sholazar Basin - o.190502/190503 spawn with q.12537', 1, 0, 20598, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 32574;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32574, 514744, -1),
(32574, 514781, -1),
(32574, 514782, -1),
(32574, 514783, -1);
DELETE FROM conditions WHERE condition_entry IN (20598);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20598, 42, 32574, 1, 1, 0, 'Sholazar Basin - o.180514 spawn with q.12537');
DELETE FROM worldstate_name WHERE Id=32574;
INSERT INTO worldstate_name(Id, Name) VALUES
(32574,'Sholazar Basin - o.180514 spawn with q.12537');
DELETE FROM dbscripts_on_spell WHERE id = 51156;
INSERT INTO dbscripts_on_spell (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- weather change to State: HeavyRain (5) Grade: 1 - not supported by core
(51156,1,0,10,28253,60000,0,0,0,0,0,0,0,0,6196.975,4964.1,-80.53481,2.94960,'summon 28253 A'),
(51156,1,1,10,28253,60000,1,0,0,0,0,0,0,0,6224.011,4944.437,-80.04568,4.904375,'summon 28253 B'),
(51156,2,0,31,28273,20,0,0,0,0,0,0,0,0,0,0,0,0,'npc check'),
(51156,100,0,15,51150,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51150'),
(51156,100,1,15,51172,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51172'),
(51156,200,0,35,9,30,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy Send Event D'),
(51156,201,0,7,12537,0,0,0,0,0,0,0,0,0,0,0,0,0,'Q credit'),
(51156,1000,0,15,51150,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51150'),
(51156,1000,1,15,51172,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51172'),
(51156,2000,0,53,0,0,0,0,0,4,32574,0,0,0,0,0,0,0,'Set worldstate variable to 0');
DELETE FROM spell_script_target WHERE entry IN (51122,51172);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(51122, 1, 28109, 0),
(51122, 1, 28110, 0),
(51122, 1, 28254, 0),
(51172, 1, 28253, 0);
-- Mistwhisper Lightning Cloud 28253
UPDATE creature_template SET InhabitType = 4, UnitFlags = 33555200, MovementType = 3 WHERE entry IN (28253);
DELETE FROM creature_movement_template WHERE Entry IN (28253);
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- path 0
(28253,0,1,6191.627,4973.427,-70.71909,100,0,0),
(28253,0,2,6158.727,5018.104,-61.37012,100,0,0),
(28253,0,3,6134.556,4969.962,-61.37012,100,0,0),
(28253,0,4,6107.038,5010.76,-61.37012 ,100,0,0),
-- path 1
(28253,1,1,6224.967,4957.806,-70.71909,100,0,0),
(28253,1,2,6233.925,4986.368,-70.71909,100,0,0),
(28253,1,3,6269.082,4992.032,-70.71909,100,0,0),
(28253,1,4,6317.538,4970.312,-70.71909,100,0,0);

-- q.12539 'Hoofing It'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12539);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12539,1,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 53163'),
(12539,2,0,17,38512,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
UPDATE quest_template SET CompleteScript = 12539 WHERE entry = 12539;

-- q.12540 'Just Following Orders'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12540);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12540,1,0,15,53815,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 53815');
UPDATE quest_template SET CompleteScript = 12540 WHERE entry = 12540;
-- Injured Rainspeaker Oracle 28217
DELETE FROM creature_addon WHERE guid IN (501014,522239); -- 522239 summoned
DELETE FROM creature_movement WHERE Id IN (501014,522239);
DELETE FROM game_event_creature WHERE guid IN (501014,522239);
DELETE FROM game_event_creature_data WHERE guid IN (501014,522239);
DELETE FROM creature_battleground WHERE guid IN (501014,522239);
DELETE FROM creature_linking WHERE guid IN (501014,522239)
OR master_guid IN (501014,522239);
DELETE FROM creature WHERE guid IN (501014,522239);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(501014,28217,571,1,1,5459.164,4515.149,-134.4442,0.8028514,20,20,0,0);
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 28217;
DELETE FROM creature_spawn_data WHERE guid IN(501014,521623,521624,521625,521626,521627);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(501014,11),(521623,11),(521624,11),
(521625,11),(521626,11),(521627,11);
DELETE FROM dbscripts_on_creature_death WHERE id IN (28217);
INSERT INTO dbscripts_on_creature_death (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28217,1,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
DELETE FROM `spawn_group` WHERE id = 32575;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32575, 'Sholazar Basin - Injured Rainspeaker Oracle 28217', 0, 1, 0, 0); -- linear
DELETE FROM `spawn_group_spawn` WHERE id = 32575;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32575, 501014, -1),
(32575, 521623, -1),
(32575, 521624, -1),
(32575, 521625, -1),
(32575, 521626, -1),
(32575, 521627, -1);
UPDATE gossip_menu_option SET action_script_id = 967701, condition_id = 20602 WHERE menu_id = 9677;
DELETE FROM dbscripts_on_gossip WHERE id IN (9677,967701);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(967701,1000,15,51382,1,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51382');
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (27831,27785,27738,27741);
DELETE FROM conditions WHERE condition_entry = 20602;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20602,8,12539,0,0,0,0,'');
-- Ravenous Mangal Crocolisk 28325
DELETE FROM dbscripts_on_relay WHERE id IN (20784,20785,20786);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20784,1,0,31,28217,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ravenous Mangal Crocolisk 28325 EAI: npc check'),
(20784,100,0,45,20785,0,0,28217,60,7,0,0,0,0,0,0,0,0,'Part of Ravenous Mangal Crocolisk 28325 EAI: buddy Relay'),
(20785,1,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(20785,2,0,0,0,0,0,0,0,0x04,27785,0,0,0,0,0,0,0,'text'),
(20785,3,0,14,51329,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(20785,5,0,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlag = 1'),
(20785,10,0,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set NPCFlag = 2'),
(20785,300000,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(20785,300001,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(20786,1,0,21,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: active'),
(20786,2,0,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: face summoner'),
(20786,3,0,0,0,0,0,0,0,6,27738,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: say'),
(20786,4,0,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: RUN ON'),
-- Shaman Vekjik 28327
(20786,5000,0,0,0,0,0,0,0,6,27739,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: say'),
(20786,8000,0,0,0,0,0,0,0,6,27740,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: say'),
(20786,12000,0,0,0,0,0,0,0,6,27741,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: say'),
(20786,12001,0,3,0,0,0,0,0,6,0,0,0,0,5386.2,4432.71,-137.541,0.141486,'Part of Shaman Vekjik 28327 EAI: move to'),
(20786,16000,0,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: desp'),
(20786,16001,0,21,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Shaman Vekjik 28327 EAI: unactive');
UPDATE creature_template SET EquipmentTemplateId = 146 WHERE entry IN (28327);
