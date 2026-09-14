-- q.11590 'Abduction' - fix
-- c.25474 Captured Beryl Sorcerer
DELETE FROM creature_template_addon WHERE entry IN (25474);
DELETE FROM dbscripts_on_relay WHERE id = 20803;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20803,1,34,21099,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Captured Beryl Sorcerer 25474 EAI: aura check'),
(20803,100,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Captured Beryl Sorcerer 25474 EAI: despawn self');
-- need to be fixed
DELETE FROM conditions WHERE condition_entry =  21099;
INSERT INTO conditions (condition_entry, type, value1, value2,flags) VALUES
(21099, 1, 45735, 0,2);
