-- q.13369 'Fate, Up Against Your Will'
-- Portal to Orgrimmar 193948
-- Portal to Undercity 193955
DELETE FROM game_event_gameobject WHERE guid IN (520425,520426);
DELETE FROM gameobject_battleground WHERE guid IN (520425,520426);
DELETE FROM gameobject WHERE guid IN (520425,520426);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(520425,193948,0,1,1,-8446.12,332.768,122.163,0,0,0,0,1,120,120,255,1),
(520426,193955,0,1,1,-8448.7,323.711,121.33,0,0,0,0,1,120,120,255,1);
-- spell connected to gameobjects
DELETE FROM dbscripts_on_spell WHERE id IN (60900,60940);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(60900,0,15,60901,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 60901'),
(60940,0,15,60941,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 60941');

-- spell req. to see Jaina
DELETE FROM spell_area WHERE spell = 60877;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60877,1519,0,0,0,20102,0,0,2,1); -- Stormwind
DELETE FROM conditions WHERE condition_entry IN (20101,20102);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20101, 20, 547, 0, 0),
(20102, -1, 20101, 20092, 0);
-- Jainas gossip fixed
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1018901, condition_id = 20103 WHERE menu_id = 10189;
DELETE FROM dbscripts_on_gossip WHERE id = 1018901; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1018901,0,0,0,0,0,0,0,0,2000020514,0,0,0,0,0,0,0,'text'),
(1018901,4000,15,60904,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1018901,10000,15,60194,0,0,0,0,6,0,0,0,0,0,0,0,0,'c.60194'),
(1018901,11000,0,0,0,0,0,0,0,2000020515,0,0,0,0,0,0,0,'text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020514 AND 2000020515;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020514,'Do not do anything that would incite the Horde, $n. The Warchief has agreed to see us on good faith.',16124,0,0,1,NULL),
(2000020515,'Let\'s go.',16125,0,0,1,NULL);
DELETE FROM conditions WHERE condition_entry = 20103;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20103, 9, 13369, 0, 0);
-- Portal to Orgrimmar 193948 should be only visible for players in quest chain...
DELETE FROM spell_area WHERE spell = 60194;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60194,1519,0,0,0,20104,0,0,2,0);
DELETE FROM conditions WHERE condition_entry = 20104;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20104, 8, 13369, 0, 1);
