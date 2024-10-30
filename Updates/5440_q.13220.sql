-- q.13220 'Putting Olakin Back Together Again'
-- missing objects added
DELETE FROM game_event_gameobject WHERE guid BETWEEN 521166 AND 521167;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 521166 AND 521167;
DELETE FROM gameobject WHERE guid BETWEEN 521166 AND 521167;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
-- Spool of Thread 193091
(521166,193091,571,1,64,6668.1665,3268.5364,669.5391,2.5481794,0,0,0.95630455,0.29237235,300,300),
-- The Doctor's Cleaver 193092
(521167,193092,571,1,64,6601.099,3147.7761,666.9869,3.508117,0,0,-0.98325443,0.18223801,300,300);
-- Sanctum of Reanimation Slab 193090
UPDATE gameobject SET PhaseMask = 64 WHERE guid = 515674;
-- Quest Script
DELETE FROM dbscripts_on_event WHERE id IN (20269);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20269,1,31,31235,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31235 - terminate if there'),
(20269,100,10,31235,40000,0,0,0,0x08,0,0,0,0,6636.7915,3211.102,668.64386,0.89,'Player summon 31235'); -- 23:36:56.952
-- Crusader Olakin Sainrith 31235
UPDATE creature_template SET Faction = 2070, UnitFlags = 32768, MinLevel = 80, MaxLevel = 80, UnitClass = 2, Expansion = 2, EquipmentTemplateId = 1018 WHERE Entry = 31235;
DELETE FROM creature_template_addon WHERE entry = 31235;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31235,0,0,1,0,0,0,35356);
DELETE FROM dbscripts_on_relay WHERE id IN (21087);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21087,1,15,37692,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: cast 37692'),
(21087,4000,15,37692,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: cast 37692'),
(21087,7000,15,58854,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: cast 58854'), -- 23:37:06.008
(21087,7001,14,35356,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: unaura 35356'), -- unitlfags 32768 only
(21087,10000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: emote'), -- 23:37:09.257
(21087,10100,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: send event 5'),
(21087,13000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: emote'), -- 23:37:12.513
(21087,16000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: emote'), -- 23:37:15.753
(21087,16100,0,0,0,0,0,0,0x04,31827,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: say'),
(21087,23000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: emote'), -- 23:37:22.259
(21087,23100,0,0,0,0,0,0,0x04,31828,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: say'),
(21087,28000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: RuN ON'),
(21087,29000,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: send event 6'),
(21087,29100,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31235 EAI: Set Path 1');
DELETE FROM creature_movement_template WHERE Entry = 31235;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31235,1,1,6623.525,3229.0269,667.0785,100,0,0),
(31235,1,2,6602.8765,3239.043,669.8387,100,100,1);
