-- ----------------------------------
-- Main Story Questline: The Black Knight
-- ----------------------------------

-- q.13633 'The Black Knight of Westfall?' - A
-- q.13634 'The Black Knight of Silverpine?' - H

-- q.13641 'The Seer's Crystal'
DELETE FROM dbscripts_on_quest_end WHERE id IN (13641);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13641,1,0,0,0,0,0,0,0x04,33540,0,0,0,0,0,0,0,'say'),
(13641,100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(13641,4000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(13641,4100,0,0,0,0,0,0,0x04,33541,0,0,0,0,0,0,0,'say'),
(13641,7000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(13641,7000,15,62993,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 62993');
UPDATE quest_template SET CompleteScript = 13641 WHERE entry = 13641;

-- q.13643 'The Stories Dead Men Tell'
-- thay all should be summoned
DELETE FROM creature_addon WHERE guid IN (533320,533322,533323);
DELETE FROM creature_movement WHERE Id IN (533320,533322,533323);
DELETE FROM game_event_creature WHERE guid IN (533320,533322,533323);
DELETE FROM game_event_creature_data WHERE guid IN (533320,533322,533323);
DELETE FROM creature_battleground WHERE guid IN (533320,533322,533323);
DELETE FROM creature_linking WHERE guid IN (533320,533322,533323)
 OR master_guid IN (533320,533322,533323);
DELETE FROM creature WHERE guid IN (533320,533322,533323);
-- 1st grave
-- o.194537 Sir Wendell's Grave
DELETE FROM dbscripts_on_event WHERE id IN (21077);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21077,1,10,33439,20000,0,0,0,0x04,0,0,0,0,8461.727,468.7472,596.2335,4.729842185974121093,'summon 33439');
-- Sir Wendell Balfour 33439
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33439);
DELETE FROM creature_template_addon WHERE entry = 33439;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33439,0,0,1,0,0,0,'10389 29266 51195');
-- 2nd grave
-- o.194352 Sword in the Back
UPDATE gameobject SET spawntimesecsmin = -20, spawntimesecsmax = -20 WHERE id IN (194352);
-- o.194538 Connall's Grave
DELETE FROM dbscripts_on_event WHERE id IN (21076);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21076,1,10,33457,20000,0,0,0,0x04,0,0,0,0,8471.436,452.21744,596.1551,4.78220224380493164,'summon 33457'),
(21076,2,9,511335,20,0,0,0,0,0,0,0,0,0,0,0,0,'resp object');
-- Conall Irongrip 33457
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33457);
DELETE FROM creature_template_addon WHERE entry = 33457;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33457,0,0,1,0,0,0,'29266');
-- 3rd grave
-- o.194357 Poison Vial
UPDATE gameobject SET spawntimesecsmin = -20, spawntimesecsmax = -20 WHERE guid IN (511336);
-- o.194539 Lorien's Grave
DELETE FROM dbscripts_on_event WHERE id IN (21075);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21075,1,10,33455,20000,0,0,0,0x04,0,0,0,0,8441.864,452.88184,596.1657,1.850049018859863281,'summon 33455'),
(21075,2,9,511336,20,0,0,0,0,0,0,0,0,0,0,0,0,'resp object');
-- Lorien Sunblaze 33455
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33455);
DELETE FROM creature_template_addon WHERE entry = 33455;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33455,0,0,1,0,0,0,'29266 41290 61894');

-- q.13654 'There's Something About the Squire'
-- Maloric 33498
UPDATE creature_template SET NpcFlags = 0, UnitFlags = 0 WHERE Entry = 33498;
DELETE FROM dbscripts_on_relay WHERE id IN (21228);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21228,0,29,16777216,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maloric 33498 EAI: add npcFlags'), -- 02:26:29.203
(21228,3000,29,16777216,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maloric 33498 EAI: remove npcFlags'); -- 02:26:31.579
-- not req.
DELETE FROM npc_spellclick_spells WHERE spell_id = 63125;
DELETE FROM conditions WHERE condition_entry = 964;

-- q.13663 'The Black Knight's Orders'
-- objects
DELETE FROM game_event_gameobject WHERE guid IN (510931,510932);
DELETE FROM gameobject_battleground WHERE guid IN (510931,510932);
DELETE FROM gameobject WHERE guid IN (510931,510932);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
-- Bonfire 195011
(510931,195011,571,1,9078.471,2057.5469,67.216064,3.0194132,0,0,0.9981346,0.061051756,300,300),
-- Cult Rune Circle 194394
(510932,194394,571,1,9083.578,2041.6962,67.818115,0,0,0,0,1,300,300);
-- creatures
-- missing added - deleted guids reused
DELETE FROM creature_addon WHERE guid IN (530961,531694,533113);
DELETE FROM creature_movement WHERE id IN (530961,531694,533113);
DELETE FROM game_event_creature WHERE guid IN (530961,531694,533113);
DELETE FROM game_event_creature_data WHERE guid IN (530961,531694,533113);
DELETE FROM creature_battleground WHERE guid IN (530961,531694,533113);
DELETE FROM creature_linking WHERE guid IN (530961,531694,533113);
DELETE FROM creature WHERE guid IN (530961,531694,533113);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Cult Conspirator 33537
(530961,33537,571,1,1,9074.414,2049.259,67.34636,2.18166,300,300,0,0),
(531694,33537,571,1,1,9081.28,2058.9253,67.389786,3.61283,300,300,0,0),
(533113,33537,571,1,1,9038.929,2114.349,52.40896,0,300,300,0,4); -- linear
DELETE FROM creature_movement WHERE id IN (533113);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(533113,1,9038.929,2114.349,52.40896,100,500,0),
(533113,2,9049.434,2113.8489,56.113136,100,0,0),
(533113,3,9058.233,2110.384,58.820908,100,0,0),
(533113,4,9066.872,2091.6887,65.09107,100,0,0),
(533113,5,9069.444,2082.4182,66.90071,100,0,0),
(533113,6,9071.043,2075.388,67.10215,100,0,0),
(533113,7,9071.835,2070.1064,67.5088,100,0,0),
(533113,8,9073.447,2066.1987,67.41775,100,500,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (530961,531694);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(530961,0,0,1,0,69,0,NULL),
(531694,0,1,1,0,0,0,NULL);
UPDATE creature_template SET Faction = 2080, UnitFlags = 32768, EquipmentTemplateId = 823 WHERE Entry = 33537;
-- spell fix
DELETE FROM spell_area WHERE spell = 67471;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(67471,4658,13663,1,13663,0,0,0,2,1);
-- Black Knight's Gryphon 33519
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (16 / 2.5), SpeedRun = (28 / 7), MovementType = 2 WHERE Entry = 33519;
DELETE FROM creature_movement_template WHERE Entry = 33519;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path0
(33519,0,1 ,8523.44,566.983,552.9403,100,1500,6),
(33519,0,2 ,8505.263,606.5569,550.30334,100,0,0),
(33519,0,3 ,8503.017,628.41876,547.38257,100,0,0),
(33519,0,4 ,8480.2705,652.70825,547.29266,100,0,0),
(33519,0,5 ,8436.802,713.8687,547.29266,100,0,0),
(33519,0,6 ,8405.38,740.00446,547.29266,100,0,0),
(33519,0,7 ,8386.139,770.6009,547.55865,100,0,0),
(33519,0,8 ,8374.297,802.2525,547.90027,100,0,0),
(33519,0,9 ,8374.271,847.03625,547.98303,100,0,0),
(33519,0,10,8385.988,868.9881,547.99304,100,0,0),
(33519,0,11,8413.027,867.8573,547.29266,100,0,0),
(33519,0,12,8452.552,869.0339,547.29266,100,0,0),
(33519,0,13,8473.058,875.2012,547.29266,100,0,0),
(33519,0,14,8472.278,912.31335,547.2927,100,0,0),
(33519,0,15,8479.666,954.16504,547.29266,100,0,0),
(33519,0,16,8477.349,1001.3676,547.29266,100,0,0),
(33519,0,17,8484.538,1025.7969,547.3656,100,0,0),
(33519,0,18,8525.363,1029.284,547.29266,100,0,0),
(33519,0,19,8532.808,1052.9037,548.115,100,0,0),
(33519,0,20,8537.356,1077.9272,554.64343,100,100,3351901),
-- path1
(33519,1,1 ,8540.528,1083.3788,569.68274,100,0,0),
(33519,1,2 ,8563.641,1140.9653,569.68274,100,0,0),
(33519,1,3 ,8594.897,1205.458,569.68274 ,100,0,0),
(33519,1,4 ,8617.104,1257.3986,566.18335,100,0,0),
(33519,1,5 ,8648.496,1329.3485,558.0187 ,100,0,0),
(33519,1,6 ,8667.723,1388.4115,546.18805,100,0,0),
(33519,1,7 ,8699.145,1474.8978,528.21967,100,0,0),
(33519,1,8 ,8726.869,1546.0065,501.7741 ,100,0,0),
(33519,1,9 ,8739.058,1592.1571,478.5511 ,100,0,0),
(33519,1,10,8750.799,1636.7711,455.07965,100,0,0),
(33519,1,11,8760.006,1669.4818,423.22083,100,0,0),
(33519,1,12,8783.31,1701.8519,375.8872  ,100,0,0),
(33519,1,13,8817.336,1735.7312,343.33228,100,0,0),
(33519,1,14,8882.32,1789.7539,301.58075 ,100,0,0),
(33519,1,15,8958.597,1841.8073,259.91412,100,0,0),
(33519,1,16,9045.891,1908.0758,233.41426,100,0,0),
(33519,1,17,9107.177,1964.5944,215.97035,100,0,0),
(33519,1,18,9134.763,2036.9249,175.1925 ,100,0,0),
(33519,1,19,9128.608,2089.091,141.35925 ,100,0,0),
(33519,1,20,9093.364,2128.3838,99.38685 ,100,0,0),
(33519,1,21,9050.709,2123.6565,60.248016,100,5000,3351902);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3351901,3351902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3351901,0,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly ON'),
(3351901,10,20,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Path 1'),
(3351902,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly OFF'),
(3351902,1,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(3351902,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- q.13664 'The Black Knight's Fall'
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33870);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(33870,63663,13664,1,13664,3,0);
-- Argent Warhorse 33782
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (2.5 / 2.5), SpeedRun = (11 / 7), RegenerateStats = 0, UnitClass = 1, SpellList = 3378201, ArmorMultiplier = 0, AgilityMultiplier = 0 WHERE Entry = 33782;
DELETE FROM creature_template_spells WHERE entry = 33782;
DELETE FROM creature_spell_list_entry WHERE Id IN(3378201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3378201, 'Argent Warhorse 33782 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3378201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3378201','0','62544','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Thrust'),
('3378201','1','62575','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Shield-Breaker'),
('3378201','2','62960','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Charge'),
('3378201','3','62552','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Defend'),
('3378201','4','64077','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Refresh Mount'),
('3378201','5','62863','0','-1','0','0','100','1','0','0','0','0','Argent Warhorse 33782 - Duel');
-- Squire Cavin 33522
DELETE FROM gossip_menu_option WHERE menu_id IN (10383);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10383,0,0,'Ask Cavin to summon the Black Knight.',33802,1,1,-1,0,1038301,0,0,NULL,0,21003);
DELETE FROM conditions WHERE condition_entry BETWEEN 21001 AND 21003;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(21001,9,13664,0,0,0,0),
-- 20338 - aura from item equiped
-- 20361 - riding aura
(21002,-1,21001,20361,20338,0,0),
-- 20941 - Aura preventing double spawn
(21003,-1,21002,20941,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 1038301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1038301,1,0,0,0,0,0,0,0,33803,0,0,0,0,0,0,0,'Yell'),
(1038301,2,15,63005,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 63005'),
(1038301,3,10,33785,300000,0,0,0,6|0x08,0,0,0,0,8480.357,962.55396,547.376,3.106686115264892578,'summon 33785'),
(1038301,4000,0,0,0,0,0,0,0,33804,0,0,0,0,0,0,0,'Say');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (33803);
-- The Black Knight 33785
-- duplicate removed
DELETE FROM creature_addon WHERE guid=533640;
DELETE FROM creature_movement WHERE Id=533640;
DELETE FROM game_event_creature WHERE guid=533640;
DELETE FROM game_event_creature_data WHERE guid=533640;
DELETE FROM creature_battleground WHERE guid=533640;
DELETE FROM creature_linking WHERE guid=533640
 OR master_guid=533640;
DELETE FROM creature WHERE guid=533640;
UPDATE creature_template SET Faction = 14, MinLevel = 80, MaxLevel = 80, SpeedWalk = (11 / 2.5), SpeedRun = (12 / 7), UnitClass = 2, UnitFlags = 768, Detection = 100, Pursuit = 300000, DamageMultiplier = 1, MovementType = 2 WHERE Entry = 33785;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33785);
DELETE FROM creature_template_addon WHERE entry = 33785;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33785,28652,0,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 33785;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33785,0,1 ,8470.299,962.3655,547.275,100,10,5),
(33785,0,2 ,8469.549,962.1155,547.025,100,0,0),
(33785,0,3 ,8468.549,962.3655,546.775,100,0,0),
(33785,0,4 ,8467.549,962.3655,546.525,100,0,0),
(33785,0,5 ,8465.799,962.6155,546.275,100,0,0),
(33785,0,6 ,8464.799,962.8655,546.025,100,0,0),
(33785,0,7 ,8463.799,962.8655,546.025,100,0,0),
(33785,0,8 ,8462.799,963.1155,545.775,100,0,0),
(33785,0,9 ,8460.799,963.3655,545.525,100,0,0),
(33785,0,10,8458.799,963.6155,545.275,100,0,0),
(33785,0,11,8420.239,968.177,544.6741,100,10000,3378501);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3378501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3378501,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(3378501,1000,0,0,0,0,0,0,0x04,33807,0,0,0,0,0,0,0,'Say'), -- Enough of this insolence! Prepare to die!
(3378501,1001,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove unitflags');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21229 AND 21233;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21229,1,48,768,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: add unitflags'),
(21229,2,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: send event 6'),
(21229,6,14,63130,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21229,7,14,63131,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21229,8,14,63132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21229,9,14,62552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21229,10,14,63005,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21229,11,14,63151,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: Player Drop'),
(21229,15,18,2500,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: despawn'),
(21230,1,34,20338,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: aura check'), -- lance equip
(21230,50,48,768,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: add unitflags'),
(21230,52,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: send event 6'),
(21230,101,14,63151,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: Player Drop'),
(21230,107,14,63130,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21230,108,14,63131,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21230,109,14,63132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21230,110,14,62552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21230,115,18,2500,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: despawn'),
(21231,0,34,20348,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: area check'), -- area check
(21231,100,48,768,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: add unitflags'),
(21231,102,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: send event 6'),
(21231,103,14,63151,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: Player Drop'),
(21231,104,14,63130,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21231,105,14,63131,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21231,106,14,63132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21231,107,14,62552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: remove aura'),
(21231,108,18,2500,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: despawn'),
(21232,1,15,63500,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Campaign Warhorse 33531 EAI: Player self cast 63500'),
(21233,0,48,768,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: add unitflags'),
(21233,100,24,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: unmount'),
(21233,2000,15,43978,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: cast 43978'), -- 20:20:14.591
(21233,2001,15,64490,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: cast 64490'), -- 20:20:14.591
(21233,5010,0,0,0,0,0,0,4,34169,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: say'),
(21233,5011,1,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: emote'),
(21233,10000,15,48350,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: cast 48350'), -- 20:20:22.690
(21233,10100,0,0,0,0,0,0,4,34185,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: say'), -- 20:20:22.786
(21233,13000,15,64498,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: cast 64498'), -- 20:20:26.271
(21233,14000,48,768,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of The Black Knight 33785 EAI: remove unitflags');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (34169,34185);

-- q.14016 'The Black Knight's Curse'
-- missing creature added
-- missing added - deleted guids reused
DELETE FROM creature_addon WHERE guid IN (533114);
DELETE FROM creature_movement WHERE id IN (533114);
DELETE FROM game_event_creature WHERE guid IN (533114);
DELETE FROM game_event_creature_data WHERE guid IN (533114);
DELETE FROM creature_battleground WHERE guid IN (533114);
DELETE FROM creature_linking WHERE guid IN (533114);
DELETE FROM creature WHERE guid IN (533114);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Spirit Healer 6491
(533114,6491,571,1,1,8466.532,442.54016,596.1551,1.5707963705062866216,300,300,0,0);
-- trigger 5500 -- scripted via sd2
-- Cult Saboteur 35116
UPDATE creature_template SET Faction = 190, MinLevel = 80, MaxLevel = 80, UnitClass = 1, UnitFlags = 33536, EquipmentTemplateId = 281, MovementType = 0 WHERE Entry = 35116;
DELETE FROM dbscripts_on_relay WHERE id IN (21234,21235);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21234,2000,1,6,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: emote'),
(21234,2100,0,0,0,0,0,0,0,35357,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: say'), -- 20:27:26.709
(21234,7000,1,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: emote'), -- 20:27:31.475
(21234,7100,0,0,0,0,0,0,0,35358,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: say'),
(21234,12000,3,0,0,0,0,0,4,0,0,0,0,0,0,0,6.12610,'Part of Cult Saboteur 35116 EAI: move'), -- 20:27:36.309
(21234,14000,0,0,0,0,0,0,0,35359,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: say'), -- 20:27:38.287
(21234,14010,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: send event 5'),
(21234,14100,1,25,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: emote'),
(21234,18000,15,62940,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: cast 62940'), -- 20:27:42.773
(21234,20000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Saboteur 35116 EAI: despawn'),
(21235,0,10,35116,25000,0,0,0,0x08,0,0,0,0,8452.683,459.87674,596.1551,0.87266,'Part of Cult Assassin 35127 EAI: summon 35116');
-- Cult Assassin 35127
UPDATE creature_template SET Faction = 190, MinLevel = 80, MaxLevel = 80, UnitClass = 2, UnitFlags = 33536, EquipmentTemplateId = 1533, MovementType = 0 WHERE Entry = 35127;
DELETE FROM creature_template_addon WHERE entry = 35127;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35127,0,8,0,0,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id = 21236;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21236,1,28,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: stand'), -- 20:27:43.177
(21236,1000,1,333,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: emote'),
(21236,1100,0,0,0,0,0,0,4,35360,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: say'), -- 20:27:44.899
(21236,3000,22,974,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: update faction'),
(21236,3001,48,768,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: remove unitFlags'),
(21236,3002,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Cult Assassin 35127 EAI: send event 6');
