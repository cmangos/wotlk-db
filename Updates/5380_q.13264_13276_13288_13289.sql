-- q.13264 'That's Abominable!' - H
-- q.13276 'That's Abominable!' - H -- Daily
-- q.13288 'That's Abominable!' - A
-- q.13289 'That's Abominable!' - A -- Daily
-- spell target corrected
DELETE FROM spell_script_target WHERE entry IN (59576,59579);
INSERT INTO spell_script_target VALUES
(59576, 1, 31692, 0),
(59576, 1, 31142, 0),
(59576, 1, 31147, 0),
(59576, 1, 31205, 0),
(59579, 1, 31692, 0),
(59579, 1, 31142, 0),
(59579, 1, 31147, 0),
(59579, 1, 31205, 0);
-- Reanimated Abomination 31692 
DELETE FROM creature_template_addon WHERE entry IN (31692);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31692,0,0,1,0,0,0,76244);
-- Script
DELETE FROM dbscripts_on_relay WHERE id = 20945;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20945,1,15,52575,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,2,15,52520,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,3,15,52578,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,4,15,52578,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,5,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,6,15,52580,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,7,15,52565,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,1000,15,59580,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI'),
(20945,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31142-31147-31205 EAI');
DELETE FROM dbscripts_on_spell WHERE id IN (59576,76245,59590,60041,60039);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59576,1,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 52523'),
(59576,2,15,59579,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 59579'),
(59576,100,15,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'test'),
(59576,500,18,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'test'),
(76245,1,34,20731,0,0,0,0,0,0,0,0,0,0,0,0,0,'area check'),
(76245,100,15,59580,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(76245,200,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
-- credit to player
(59590,102,15,59591,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(60041,102,15,60042,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(60039,102,15,60040,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 20731;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20731, 4, 4507, 0);
