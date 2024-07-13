-- q.13125 'The Air Stands Still'

-- Death Gate (Jayde) 30852
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitFlags = 33554432 WHERE entry = 30852;
DELETE FROM dbscripts_on_relay WHERE id =  20923;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20923,1,31,30839,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Death Gate (Jayde) 30852 EAI: search for 30839 - terminate if found'),
(20923,500,15,57917,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Death Gate (Jayde) 30852 EAI: cast 57917');
-- Jayde 30839
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 2051, UnitFlags = 32768, EquipmentTemplateId = 1641 WHERE entry = 30839;
DELETE FROM dbscripts_on_relay WHERE id IN (20924,20925);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20924
(20924,1,0,0,0,0,0,0,0x04,31489,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: Say'),
(20924,2,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: emote'),
(20924,100,31,30831,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: search for 30831'),
(20924,200,26,0,0,0,30831,60,1,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: attack buddy'),
-- 20925
(20925,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: emote'),
(20925,2,0,0,0,0,0,0,0x04,31490,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: Say'),
(20925,10,15,57899,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: cast 57899'),
(20925,3,18,7000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: despawn self'),
(20925,100,31,30852,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: search for 30852'),
(20925,500,37,0,0,0,30852,50,1,0,0,0,0,0,0,0,0,'Part of Jayde 30839 EAI: move towards buddy');

-- Death Gate (Mograine) 30841
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitFlags = 33554432 WHERE entry = 30841;
DELETE FROM dbscripts_on_relay WHERE id =  20926;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20926,1,31,30838,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Death Gate (Mograine) 30841 EAI: search for 30838 - terminate if found'),
(20926,500,15,57892,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Death Gate (Mograine) 30841 EAI: cast 57892');
-- Highlord Darion Mograine 30838
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, UnitClass = 2, Expansion = 2, HealthMultiplier = 800, PowerMultiplier = 800, Faction = 2051, UnitFlags = 32768, EquipmentTemplateId = 365 WHERE entry = 30838;
DELETE FROM creature_template_addon WHERE entry IN (30838);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30838,0,0,0,0,0,0,'42459');
DELETE FROM dbscripts_on_relay WHERE id IN (20927,20928);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20927
(20927,1,0,0,0,0,0,0,0x04,31455,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: Say'),
(20927,2,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: emote'),
(20927,100,31,30830,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: search for 30831'),
(20927,200,26,0,0,0,30830,60,1,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: attack buddy'),
-- 20928
(20928,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: emote'),
(20928,2,0,0,0,0,0,0,0x04,31456,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: Say'),
(20928,10,15,57899,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: cast 57899'),
(20928,3,18,7000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: despawn self'),
(20928,100,31,30841,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: search for 30852'),
(20928,500,37,0,0,0,30841,50,1,0,0,0,0,0,0,0,0,'Part of Highlord Darion Mograine 30838 EAI: move towards buddy');

-- Death Gate (Munch) 30850
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitFlags = 33554432 WHERE entry = 30850;
DELETE FROM dbscripts_on_relay WHERE id =  20929;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20929,1,31,30840,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Death Gate (Munch) 30850 EAI: search for 30840 - terminate if found'),
(20929,500,15,57911,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Death Gate (Munch) 30850 EAI: cast 57911');
-- Munch 30840
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 2, Expansion = 2, HealthMultiplier = 35, PowerMultiplier = 10, Faction = 2051, UnitFlags = 32768, EquipmentTemplateId = 448 WHERE entry = 30840;
DELETE FROM dbscripts_on_relay WHERE id IN (20930,20931);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20930
(20930,1,0,0,0,0,0,0,0x04,31486,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: Say'),
(20930,2,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: emote'),
(20930,100,31,30829,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: search for 30829'),
(20930,200,26,0,0,0,30829,60,1,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: attack buddy'),
-- 20931
(20931,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: emote'),
(20931,2,0,0,0,0,0,0,0x04,31488,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: Say'),
(20931,3,18,7000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: despawn self'),
(20931,10,15,57899,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: cast 57899'),
(20931,100,31,30850,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: search for 30850'),
(20931,500,37,0,0,0,30850,50,1,0,0,0,0,0,0,0,0,'Part of Munch 30840 EAI: move towards buddy');
-- Melt 30851
UPDATE creature_template SET MinLevel = 78, MaxLevel = 78, UnitClass = 1, Expansion = 2, Faction = 2051, UnitFlags = 32768 WHERE entry = 30851;
-- teleport fixed
DELETE FROM dbscripts_on_spell WHERE id IN (57896);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(57896,0,15,57897,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE Id IN(57897);
INSERT INTO spell_target_position VALUES
(57897,571,6390.53,237.012,395.813,2.648);
