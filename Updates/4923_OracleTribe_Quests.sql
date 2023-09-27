--  Oracle Tribe - Quest Chain

-- High-Oracle Soo-say 28027
-- REDO HIS options ..use wotlk range for conditions
DELETE FROM gossip_menu_option WHERE menu_id = 9742 AND id = 2; -- duplicate
-- Player can use 3 companions there (items for summons from c.28138)
-- they reQ conditions:
UPDATE gossip_menu_option SET condition_id = 20610 WHERE menu_id = 9742 AND id = 1; -- Lafoo 28120
UPDATE gossip_menu_option SET condition_id = 20618 WHERE menu_id = 9742 AND id = 3; -- Jaloot 28121
UPDATE gossip_menu_option SET condition_id = 20624 WHERE menu_id = 9742 AND id = 5; -- Moodle 28122
DELETE FROM dbscripts_on_gossip WHERE id IN (974201,974203,974205);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(974201,0,15,52547,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Lafoo'),
(974201,1,17,38623,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974201,2,17,38624,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974203,0,15,52548,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Jaloot'),
(974203,1,17,38624,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974203,2,17,38622,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974205,0,15,52549,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Forceitem Moodle'),
(974205,1,17,38622,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(974205,2,17,38623,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
-- old conditions - removed
DELETE FROM `conditions` WHERE `condition_entry` IN (556,557,558,297,298,299,300,301,302);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20603 AND 20624;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
-- Lafoo 28120
(20603,9,12571,0,0,0,0,''),
(20604,9,12572,0,0,0,0,''),
(20605,19,12571,0,0,0,0,''),
(20606,-2,20605,20604,20603,0,0,''),
(20607,5,1105,5,0,0,0,''),
(20608,-2,20607,20606,0,0,0,''),
(20609,23,38622,1,0,0,1,''), -- Lafoo's Bug Bag 38622
(20610,-1,20609,20608,0,0,0,''),
-- Jaloot 28121
(20611,8,12572,0,0,0,0,''),
(20612,8,12573,0,0,0,0,''),
(20613,8,12578,0,0,0,1,''),
(20614,9,12578,0,0,0,1,''),
(20615,-1,20614,20613,20612,20611,0,''),
(20616,-2,20615,20607,0,0,0,''),
(20617,23,38623,1,0,0,1,''), -- Jaloot's Favorite Crystal 38623
(20618,-1,20617,20616,0,0,0,''),
-- Moodle 28122
(20619,8,12577,0,0,0,0,''),
(20620,9,12580,0,0,0,1,''),
(20621,-1,20620,20619,0,0,0,''),
(20622,-2,20621,20607,0,0,0,''),
(20623,23,38624,1,0,0,1,''), -- Moodle's Stress Ball 38624
(20624,-1,20623,20622,0,0,0,'');

-- QUESTS
-- q.12571 'Make the Bad Snake Go Away'
-- q.12572 'Gods like Shiny Things'
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52547);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52547,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52547,100,15,51190,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (53163);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(53163, 1, 28214, 0),
(53163, 1, 28215, 0),
(53163, 1, 28216, 0),
(53163, 1, 28120, 0),
(53163, 1, 28121, 0),
(53163, 1, 28122, 0);
-- Lafoo 28120
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20325 AND 20327;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20325,0,28291,0,'Lafoo 28120 - Random OOC Say 1'),
(20325,0,28292,0,'Lafoo 28120 - Random OOC Say 2'),
(20325,0,28293,0,'Lafoo 28120 - Random OOC Say 3'),
(20325,0,28294,0,'Lafoo 28120 - Random OOC Say 4'),
(20325,0,28306,0,'Lafoo 28120 - Random OOC Say 5'),
(20326,0,28276,0,'Lafoo 28120 - Random Say 1 (kill Venomtip 28358)'),
(20326,0,28277,0,'Lafoo 28120 - Random Say 2 (kill Venomtip 28358)'),
(20326,0,28278,0,'Lafoo 28120 - Random Say 3 (kill Venomtip 28358)'),
(20326,0,28279,0,'Lafoo 28120 - Random Say 4 (kill Venomtip 28358)'),
(20327,0,28265,0,'Lafoo 28120 - Random Say 1 (q.12572)'),
(20327,0,28261,0,'Lafoo 28120 - Random Say 2 (q.12572)'),
(20327,0,28266,0,'Lafoo 28120 - Random Say 3 (q.12572)'),
(20327,0,28267,0,'Lafoo 28120 - Random Say 4 (q.12572)');
DELETE FROM conditions WHERE condition_entry BETWEEN 20625 AND 20627;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20625,37,28362,7,0,0,0,''),
(20626,9,12572,1,0,0,0,''),
(20627,-1,20626,20625,0,0,0,'');

-- q.12574 'Back So Soon?'
-- req. q.12573 & q.12572 finished first.
UPDATE quest_template SET RequiredCondition = 20628 WHERE entry IN (12574);
DELETE FROM conditions WHERE condition_entry = 20628;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20628,-1,20612,20611,0,0,0,'');
DELETE FROM dbscripts_on_quest_start WHERE id IN (12574);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12574,1,0,17,38622,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
UPDATE quest_template SET StartScript = 12574 WHERE entry = 12574;
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52548);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52548,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52548,100,15,51191,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
-- Jaloot 28121
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20328 AND 20330;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20328,0,28339,0,'Jaloot 28121 - Random OOC Say 1 (Rainspeaker)'),
(20328,0,28340,0,'Jaloot 28121 - Random OOC Say 2 (Rainspeaker)'),
(20328,0,28341,0,'Jaloot 28121 - Random OOC Say 3 (Rainspeaker)'),
(20328,0,28342,0,'Jaloot 28121 - Random OOC Say 4 (Rainspeaker)'),
(20328,0,28343,0,'Jaloot 28121 - Random OOC Say 5 (Rainspeaker)'),
(20328,0,28344,0,'Jaloot 28121 - Random OOC Say 6 (Rainspeaker)'),
(20328,0,28345,0,'Jaloot 28121 - Random OOC Say 7 (Rainspeaker)'),
(20329,0,28346,0,'Jaloot 28121 - Random Respond Say 1 (kill Frenzyheart Spearbearer\Scavenger)'),
(20329,0,28347,0,'Jaloot 28121 - Random Respond Say 2 (kill Frenzyheart Spearbearer\Scavenger)'),
(20329,0,28348,0,'Jaloot 28121 - Random Respond Say 3 (kill Frenzyheart Spearbearer\Scavenger)'),
(20329,0,28349,0,'Jaloot 28121 - Random Respond Say 4 (kill Frenzyheart Spearbearer\Scavenger)'),
(20329,0,28350,0,'Jaloot 28121 - Random Respond Say 5 (kill Frenzyheart Spearbearer\Scavenger)'),
(20329,0,28351,0,'Jaloot 28121 - Random Respond Say 6 (kill Frenzyheart Spearbearer\Scavenger)'),
(20330,0,28315,0,'Jaloot 28121 - Random Respond Say 1 (Kill Tartek)'),
(20330,0,28316,0,'Jaloot 28121 - Random Respond Say 2 (Kill Tartek)'),
(20330,0,28317,0,'Jaloot 28121 - Random Respond Say 3 (Kill Tartek)'),
(20330,0,28318,0,'Jaloot 28121 - Random Respond Say 4 (Kill Tartek)');
DELETE FROM spell_area WHERE spell = 52217;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(52217,4287,0,0,0,20629,0,0,2,1),
(52217,4306,0,0,0,20629,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20629;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20629,5,1105,4,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id IN (20790);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20790,1,31,28399,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Jaloot 28121 EAI: npc check'),
(20790,10,31,28105,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Jaloot 28121 EAI: npc check'),
(20790,10,0,20330,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28121 EAI: Say');

-- q.12575 'The Lost Mistwhisper Treasure'
-- Zeptek the Destroyer 28399
UPDATE creature_template SET UnitFlags = 33536, MovementType = 2 WHERE entry = 28399;
DELETE FROM creature_movement_template WHERE entry = 28399;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28399,0,1,6710.399,5162.64,-20.66248,100,0,0),
(28399,0,2,6710.989,5148.311,-19.3981,100,0,0),
(28399,0,3,6712.461,5136.462,-19.3981,100,100,3);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28399;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28399,0,28105,'Warlord Tartek on Zeptek the Destroyer');
DELETE FROM dbscripts_on_creature_death WHERE id IN (28399);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28399,1,31,28399,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'npc check'),
(28399,10,31,28105,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'npc check'),
(28399,100,27,8,0,0,190578,100,7|0x400,0,0,0,0,0,0,0,0,'unlock Go');
-- Warlord Tartek 28105
UPDATE creature_template SET UnitFlags = 33536 WHERE entry = 28105;
DELETE FROM dbscripts_on_relay WHERE id IN (20789);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20789,1,27,4,0,0,190578,100,7|0x400,0,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: lock Go'),
(20789,2,0,0,0,0,0,0,0x04,27893,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: Say'),
(20789,9000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: Remove aura'),
(20789,12000,0,0,0,0,0,0,0x04,27895,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: Say'),
(20789,17000,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: Remove UnitFlags'),
(20789,17001,48,768,0,0,28399,30,7,0,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: buddy: Remove UnitFlags'),
(20789,17002,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Warlord Tartek 28105 EAI: Send Event 5');
DELETE FROM dbscripts_on_creature_death WHERE id IN (28105);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28105,1,31,28399,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'npc check'),
(28105,10,31,28105,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'npc check'),
(28105,100,27,8,0,0,190578,100,7|0x400,0,0,0,0,0,0,0,0,'unlock Go');
UPDATE broadcast_text SET ChatTypeID = 1 WHERE `Id` IN (27893,27895);
DELETE FROM vehicle_seat_addon WHERE SeatEntry=1682;
INSERT INTO vehicle_seat_addon(SeatEntry, SeatOrientation, ExitParamX, ExitParamY, ExitParamZ, ExitParamO, ExitParamValue) VALUES
(1682,0,6708.172,5130.744,-19.38803,4.836085,2);
-- object update
UPDATE gameobject SET spawntimesecsmin = 45, spawntimesecsmax = 45 WHERE id IN (190578);

-- q.12577 'Home Time!'
-- req. q.12575 & q.12576 finished first.
UPDATE quest_template SET RequiredCondition = 20632 WHERE entry IN (12577);
DELETE FROM conditions WHERE condition_entry BETWEEN 20630 AND 20632;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20630,8,12575,0,0,0,0,''),
(20631,8,12576,0,0,0,0,''),
(20632,-1,20631,20630,0,0,0,'');

-- q.12578 'The Angry Gorloc'
DELETE FROM dbscripts_on_quest_start WHERE id IN (12578);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12578,1,0,17,38623,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player');
UPDATE quest_template SET StartScript = 12578 WHERE entry = 12578;
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52549);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52549,0,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52549,100,15,51192,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
-- Moodle 28122
UPDATE creature_template SET NpcFlags = 3, GossipMenuId=9746 WHERE entry IN (28122);
DELETE FROM gossip_menu WHERE entry IN (9746);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9746, 13365, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13365);
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,Prob2,Prob3,BroadcastTextId0,BroadcastTextId1,BroadcastTextId2,BroadcastTextId3) VALUES
(13365,1,1,1,1,28910,28923,28924,28925);
DELETE FROM npc_text WHERE id=13365; 
DELETE FROM dbscript_random_templates WHERE `id` BETWEEN 20331 AND 20333;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20331,0,28393,0,'Moodle 28122 - Random OOC Say 1 (Rainspeaker)'),
(20331,0,28394,0,'Moodle 28122 - Random OOC Say 2 (Rainspeaker)'),
(20331,0,28395,0,'Moodle 28122 - Random OOC Say 3 (Rainspeaker)'),
(20331,0,28396,0,'Moodle 28122 - Random OOC Say 4 (Rainspeaker)'),
(20332,0,28397,0,'Moodle 28122 - Random OOC Say 1 (Mosswalker Village)'),
(20332,0,28398,0,'Moodle 28122 - Random OOC Say 2 (Mosswalker Village)'),
(20332,0,28399,0,'Moodle 28122 - Random OOC Say 3 (Mosswalker Village)'),
(20332,0,28400,0,'Moodle 28122 - Random OOC Say 4 (Mosswalker Village)'),
(20332,0,28401,0,'Moodle 28122 - Random OOC Say 5 (Mosswalker Village)'),
(20332,0,28402,0,'Moodle 28122 - Random OOC Say 6 (Mosswalker Village)');

-- q.12581 'A Hero's Burden'
-- req. q.12579 & q.12580 finished first.
UPDATE quest_template SET RequiredCondition = 20635 WHERE entry IN (12581);
DELETE FROM conditions WHERE condition_entry BETWEEN 20633 AND 20635;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20633,8,12579,0,0,0,0,''),
(20634,8,12580,0,0,0,0,''),
(20635,-1,20634,20633,0,0,0,'');
DELETE FROM dbscripts_on_quest_start WHERE id IN (12581);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12581,1,17,38624,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove item from Player'),
(12581,2,15,53163,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12581 WHERE entry = 12581;
UPDATE broadcast_text SET ChatTypeID = 1 WHERE `Id` IN (28646,28647,28648,28649,28650);
UPDATE broadcast_text SET ChatTypeID = 3 WHERE `Id` IN (33188); -- Artruis is shielded. You mus
DELETE FROM spell_script_target WHERE entry IN (52185);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(52185, 1, 28667, 0),
(52185, 1, 28668, 0),
(52185, 1, 28659, 0);
-- Jaloot 28667
-- Zepik the Gorloc Hunter 28668
-- Artruis the Heartless 28659
UPDATE creature_template SET Detection = 40 WHERE entry IN (28667,28668);
UPDATE creature_template_addon SET auras = '50726 52119' WHERE entry = 28667;
UPDATE creature_template_addon SET auras = 54176 WHERE entry = 28668;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20791 AND 20797;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20791,1,22,2036,1,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: temp faction'),
(20791,2,48,512,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Remove UnitFlag'),
(20792,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: active'),
(20792,2,22,250,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Set default faction'),
(20792,3,48,512,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Add UnitFlag'),
(20792,10,3,0,0,0,0,0,0x04,0,0,0,0,5616.917,3772.682,-94.25798,1.780236,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Move'),
(20792,10000,15,52182,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Cast 52182'),
(20792,10001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: unactive'),
(20793,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: active'),
(20793,2,22,250,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Set default faction'),
(20793,3,48,512,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Add UnitFlag'),
(20793,10,3,0,0,0,0,0,0x04,0,0,0,0,5631.632,3794.364,-92.23675,3.455752,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Move'),
(20793,10000,15,52182,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: Cast 52182'),
(20793,10001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: unactive'),
(20794,1,35,10,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Artruis the Heartless 28659 EAI: Send Event E'),
(20794,10,41,0,0,0,28667,523151,7|0x10|0x40,0,0,0,0,0,0,0,0,'Part of Artruis the Heartless 28659 EAI: respawn buddy - event reset'),
(20794,10,41,0,0,0,28668,523152,7|0x10|0x40,0,0,0,0,0,0,0,0,'Part of Artruis the Heartless 28659 EAI: respawn buddy - event reset'),
(20795,1,31,28668,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: npc check'),
(20795,10,35,10,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: send Event AI E'),
(20796,1,31,28667,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: npc check'),
(20796,10,35,11,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jaloot 28667/Zepik the Gorloc Hunter 28668 EAI: send Event AI F'),
(20797,1,0,0,0,0,0,0,0x04,28649,0,0,0,0,0,0,0,'Part of Artruis the Heartless 28659 EAI: Say'),
(20797,2,0,0,0,0,0,0,0x04,33188,0,0,0,0,0,0,0,'Part of Artruis the Heartless 28659 EAI: Say');
-- Spike Trap 191086 - summoned from spell
DELETE FROM gameobject WHERE id = 191086;
