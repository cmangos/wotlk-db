-- q.11494 'Lightning Infused Relics'

-- missing objects added (spell focus)
DELETE FROM game_event_gameobject WHERE guid BETWEEN 120832 AND 120837;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 120832 AND 120837;
DELETE FROM gameobject WHERE guid BETWEEN 120832 AND 120837;
INSERT INTO gameobject(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(120832, 186959, 571, 1,1,276.119, -5755.25, 268.457, 3.7836, 0, 0, 0.948919, -0.315521, 300,300, 255, 1),
(120833, 186959, 571, 1,1,278.375, -5758.48, 268.457, 3.81109, 0, 0, 0.944492, -0.328534, 300,300, 255, 1),
(120834, 186959, 571, 1,1,280.69, -5761.47, 268.457, 3.73648, 0, 0, 0.956089, -0.293078, 300,300, 255, 1),
(120835, 186959, 571, 1,1,255.829, -5891.18, 83.1141, 3.04533, 0, 0, 0.998842, 0.048113, 300,300, 255, 1),
(120836, 186959, 571, 1,1,158.849, -5823.5, 7.08305, 0.151136, 0, 0, 0.0754962, 0.997146, 300,300, 255, 1),
(120837, 186959, 571, 1,1,156.96, -5712.1, 189.392, 4.41821, 0, 0, 0.803105, -0.595837, 300,300, 255, 1);

-- gossip corrected
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 902404, condition_id = 1569 WHERE menu_id = 9024 AND id = 3;
-- only when both questa are active
DELETE FROM conditions WHERE condition_entry IN (1567,1568,1569);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1567, 9, 11494, 0), -- q.11494 'Lightning Infused Relics'
(1568, 9, 11495, 0), -- q.11495 'The Delicate Sound of Thunder'
(1569, -2, 1568, 1567);
DELETE FROM dbscripts_on_gossip WHERE id = 902404; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902404,0,15,49991,0,0,0,0,2,0,0,0,0,0,0,0,0,'');

-- Iron Rune Construct
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 24825;
DELETE FROM creature_template_addon WHERE entry = 24825;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24825,0,0,1,0,0,0,NULL);
DELETE FROM creature_template_spells WHERE entry = 24825;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(24825,44608,44610,44609,0);

-- Part of Iron Rune Construct 24825
DELETE FROM dbscripts_on_relay WHERE id = 20094;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20094,5,35,5,15,0,24825,50,7,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24825 - Send EVENT');

-- Player shouldnt keep this aura after server restart/crash etc 
-- req. for players Aura
DELETE FROM spell_area WHERE spell = 44643;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(44643,495,0,0,0,1570,0,0,2,0), -- Howling Fjord
(44643,3996,0,0,0,1570,0,0,2,0), -- Baelgun's Excavation Site
(44643,3997,0,0,0,1570,0,0,2,0); -- The Explorers' League Outpost
DELETE FROM conditions WHERE condition_entry = 1570;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1570, 37, 24825, 5);
-- target for spell
DELETE FROM spell_script_target WHERE entry IN (44653,44609);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44653,1,23673,0),
(44653,1,23672,0),
(44653,1,23675,0),
(44653,1,24845,0),
(44609,1,24825,0),
(44609,1,23673,0),
(44609,1,23672,0),
(44609,1,23675,0);
-- target for spell
DELETE FROM spell_script_target WHERE entry IN (44626);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44626,1,24825,0);
-- correct target for 44611
DELETE FROM spell_script_target WHERE entry = 44611;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44611,1,24825,5); -- effect 1 only
-- req. for Rocket Jump
DELETE FROM spell_script_target WHERE entry = 44608;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44608,1,24826,3), -- effect 2 only
(44608,1,24827,3), -- effect 2 only
(44608,1,24828,3), -- effect 2 only
(44608,1,24829,3), -- effect 2 only
(44608,1,24831,3), -- effect 2 only
(44608,1,24832,3), -- effect 2 only
(44608,0,186953,5), -- effect 1 only
(44608,0,186960,5), -- effect 1 only
(44608,0,186961,5), -- effect 1 only
(44608,0,186962,5), -- effect 1 only
(44608,0,186963,5), -- effect 1 only
(44608,0,186964,5); -- effect 1 only
-- Transport Bots - movement corrected
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id IN (24826,24827,24828,24829,24831,24832);
-- reset for objects
DELETE FROM dbscripts_on_go_template_use WHERE id IN (186953,186960,186961,186962,186963,186964);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(186953,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186960,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186961,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186962,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186963,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object'),
(186964,10,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Reset object');
-- Part of Transport Bots EAI
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20096 AND 20101;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
-- #24826
(20096,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: self cast - Rocket Jump'),
(20096,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: fly'),
(20096,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2'),
(20096,1,3,0,2000,0,0,0,0,0,0,0,0,280.751,-5761.5,285.747,100,'Part of Transport Bot A1->A2'),
(20096,2,3,0,2000,0,0,0,0,0,0,0,0,235.616,-5740.69,261.735,100,'Part of Transport Bot A1->A2'),
(20096,4,3,0,2000,0,0,0,0,0,0,0,0,156.974,-5712.34,189.415,100,'Part of Transport Bot A1->A2'),
(20096,10,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: fly off'),
(20096,10,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2'),
-- #20097 -- not from sniff
(20097,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: self cast - Rocket Jump'),
(20097,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: fly'),
(20097,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2'),
(20097,1,3,0,2000,0,0,0,0,0,0,0,0,278.149,-5758.54,285.397,100,'Part of Transport Bot B1->B2'),
(20097,2,3,0,2000,0,0,0,0,0,0,0,0,275.549,-5808.61,269.715,100,'Part of Transport Bot B1->B2'),
(20097,4,3,0,2000,0,0,0,0,0,0,0,0,262.778,-5857.05,197.464,100,'Part of Transport Bot B1->B2'),
(20097,9,3,0,2000,0,0,0,0,0,0,0,0,255.696,-5890.89,83.068,100,'Part of Transport Bot B1->B2'),
(20097,15,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: fly off'),
(20097,15,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2'),
-- #20098
(20098,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: self cast - Rocket Jump'),
(20098,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: fly'),
(20098,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2'),
(20098,1,3,0,2000,0,0,0,0,0,0,0,0,276.1321,-5755.298,295.3451,100,'Part of Transport Bot C1->C2'),
(20098,2,3,0,2000,0,0,0,0,0,0,0,0,233.3123,-5806.06,295.3451,100,'Part of Transport Bot C1->C2'),
(20098,4,3,0,2000,0,0,0,0,0,0,0,0,215.6205,-5821.732,288.9285,100,'Part of Transport Bot C1->C2'),
(20098,5,3,0,2000,0,0,0,0,0,0,0,0,221.0332,-5821.742,197.0952,100,'Part of Transport Bot C1->C2'),
(20098,8,3,0,2000,0,0,0,0,0,0,0,0,206.4571,-5831.208,164.5674,100,'Part of Transport Bot C1->C2'),
(20098,10,3,0,2000,0,0,0,0,0,0,0,0,164.5792,-5835.141,117.5119,100,'Part of Transport Bot C1->C2'),
(20098,14,3,0,2000,0,0,0,0,0,0,0,0,154.1642,-5830.073,8.539649,100,'Part of Transport Bot C1->C2'),
(20098,19,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: fly off'),
(20098,19,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2'),
-- #20099
(20099,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: self cast - Rocket Jump'),
(20099,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: fly'),
(20099,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2'),
(20099,1,3,0,2000,0,0,0,0,0,0,0,0,164.5792,-5835.141,117.5119,100,'Part of Transport Bot D1->D2'),
(20099,5,3,0,2000,0,0,0,0,0,0,0,0,206.4571,-5831.208,164.5674,100,'Part of Transport Bot D1->D2'),
(20099,7,3,0,2000,0,0,0,0,0,0,0,0,221.0332,-5821.742,197.0952,100,'Part of Transport Bot D1->D2'),
(20099,10,3,0,2000,0,0,0,0,0,0,0,0,215.6205,-5821.732,288.9285,100,'Part of Transport Bot D1->D2'),
(20099,11,3,0,2000,0,0,0,0,0,0,0,0,233.3123,-5806.06,295.3451,100,'Part of Transport Bot D1->D2'),
(20099,14,3,0,2000,0,0,0,0,0,0,0,0,276.1321,-5755.298,295.3451,100,'Part of Transport Bot D1->D2'),
(20099,15,3,0,2000,0,0,0,0,0,0,0,0,283.977,-5754.11,268.456,0.638801,'Part of Transport Bot D1->D2'),
(20099,18,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: fly off'),
(20099,18,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2'),
-- #20100
(20100,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: self cast - Rocket Jump'),
(20100,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: fly'),
(20100,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot D2'),
(20100,1,3,0,2000,0,0,0,0,0,0,0,0,156.941,-5712.02,228.03,100,'Part of Transport Bot D2'),
(20100,3,3,0,2000,0,0,0,0,0,0,0,0,236.193,-5740.42,266.677,100,'Part of Transport Bot D2'),
(20100,7,3,0,2000,0,0,0,0,0,0,0,0,282.46,-5753.42,282.037,100,'Part of Transport Bot D2'),
(20100,9,3,0,2000,0,0,0,0,0,0,0,0,285.899,-5752.5,268.456,0.638801,'Part of Transport Bot D2'),
(20100,10,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: fly off'),
(20100,10,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D2'),
-- #20101 -- not from sniff
(20101,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: self cast - Rocket Jump'),
(20101,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: fly'),
(20101,0,0,0,0,0,0,0,0x04,2000001758,0,0,0,0,0,0,0,'Part of Transport Bot D3'),
(20101,1,3,0,2000,0,0,0,0,0,0,0,0,257.817,-5890.55,108.804,100,'Part of Transport Bot D3'),
(20101,2,3,0,2000,0,0,0,0,0,0,0,0,262.812,-5859.08,198.764,100,'Part of Transport Bot D3'),
(20101,6,3,0,2000,0,0,0,0,0,0,0,0,274.752,-5808.01,271.439,100,'Part of Transport Bot D3'),
(20101,11,3,0,2000,0,0,0,0,0,0,0,0,285.468,-5754.63,284.426,100,'Part of Transport Bot D3'),
(20101,12,3,0,2000,0,0,0,0,0,0,0,0,286.142,-5752.52,268.456,0.638801,'Part of Transport Bot D3'),
(20101,14,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: fly off'),
(20101,14,14,44626,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Transport Bot D3');
