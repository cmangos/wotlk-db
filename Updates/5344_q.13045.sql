-- q.13045 'Into The Wild Green Yonder'
DELETE FROM spell_target_position WHERE Id IN(56679);
INSERT INTO spell_target_position VALUES
(56679,571,6115.63,-27.0768,385.59335,0.785398);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (30500);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(30500,56922,13045,1,13045,2,0);

-- Argent Skytalon 30228
UPDATE creature_template SET MinLevel = 78, MaxLevel = 78, StaticFlags1 = 16809992, StaticFlags2 = 2099200, InhabitType = 7 WHERE entry = 30228;
DELETE FROM creature_template_addon WHERE entry = 30228;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(30228,0,0,0,0,0,'56682');
DELETE FROM dbscripts_on_relay WHERE id IN (20915);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Part of Frostbrood Vanquisher EAI
(20915,10,34,20692,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Skytalon 30228 EAI: area check'),
(20915,100,0,0,0,0,0,0,0,31131,0,0,0,0,0,0,0,'Part of Argent Skytalon 30228 EAI: warning'),
(20915,10000,34,20692,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Skytalon 30228 EAI: area check'),
(20915,10100,14,56678,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Skytalon 30228 EAI: Player Drop');
DELETE FROM conditions WHERE condition_entry BETWEEN 20688 AND 20692;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20688, 4, 4501,0,0,0),
(20689, 4, 4504,0,0,0),
(20690, 4, 4505,0,0,0),
(20691, 4, 4506,0,0,0),
(20692, -2, 20691,20690,20689,20688);
DELETE FROM spell_area WHERE spell = 56678;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(56678,4501,13045,1,13045,0,0,0,2,0),
(56678,4504,13045,1,13045,0,0,0,2,0),
(56678,4505,13045,1,13045,0,0,0,2,0),
(56678,4506,13045,1,13045,0,0,0,2,0);

-- Captured Crusader 30407
DELETE FROM `dbscript_random_templates` WHERE `id` IN (20356,20357);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20356,0,31113,0,'Captured Crusader 20356 - Random Text 1-1'),
(20356,0,31114,0,'Captured Crusader 20356 - Random Text 1-2'),
(20356,0,31115,0,'Captured Crusader 20356 - Random Text 1-3'),
(20357,0,31121,0,'Captured Crusader 20356 - Random Text 2-1'),
(20357,0,31122,0,'Captured Crusader 20356 - Random Text 2-2'),
(20357,0,31123,0,'Captured Crusader 20356 - Random Text 2-3'),
(20357,0,31125,0,'Captured Crusader 20356 - Random Text 2-4');
DELETE FROM dbscripts_on_spell WHERE id IN (56684);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(56684,1,14,56687,0,0,30407,10,7,0,0,0,0,0,0,0,0,''),
(56684,2,45,20916,0,0,30407,10,7,0,0,0,0,0,0,0,0,'start relay'),
(56684,100,0,0,0,0,30407,10,7,31130,0,0,0,0,0,0,0,''),
(56684,200,18,5000,0,0,30407,10,7,0,0,0,0,0,0,0,0,'desp');
DELETE FROM dbscripts_on_relay WHERE id IN (20916);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20916,0,37,0,0,0,30226,30,1,0,0,0,0,0,0,0,0,'move towards target');
