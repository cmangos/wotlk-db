-- q.11476 'A Carver and a Croaker'
-- Spellclick corrected
-- 35813 is not req. to get item from creature
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26503;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(26503, 0, 11476, 1, 11476, 0, 0);
-- not req. anymore - PLS REUSE
DELETE FROM conditions WHERE condition_entry IN (948,949,950);

-- Q. End Script
DELETE FROM dbscripts_on_quest_end WHERE id = 11476;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11476,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11476,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(11476,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'stop dancing'),
(11476,1,10,26531,25000,0,0,0,0x08,0,0,0,0,-133.458,-3545.554,2.894682,4.520403,'summon - Mesmerized Frog'),
(11476,1,0,0,0,0,0,0,0,2000001496,0,0,0,0,0,0,0,''),
(11476,1,42,0,0,0,0,0,0,5285,0,0,0,0,0,0,0,'equip'),
(11476,2,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11476,5,0,0,0,0,26531,20,7,2000001497,0,0,0,0,0,0,0,''),
(11476,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11476,12,42,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset equip'),
(11476,14,3,0,0,0,26531,20,7,0,0,0,0,0,0,0,3.24688,''),
(11476,15,0,0,0,0,26531,20,7,2000001498,0,0,0,0,0,0,0,''),
(11476,16,1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11476,22,29,3,1,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag add'),
(11476,23,1,10,0,0,0,0,0,0,0,0,0,0,0,0,0,'start dancing'),
(11476,24,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11476 WHERE entry = 11476;
-- texts
DELETE FROM dbscript_string WHERE entry IN (2000001496,2000001497,2000001498);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001496,'Ku into me carver, ye ugly croaker!  Ku and show me who dares cross me brethren!',0,0,0,0,NULL),
(2000001497,'%s is entranced by the sun\'s reflection on Zeh\'gehn\'s knife.',0,2,0,0,NULL),
(2000001498,'%s croaks eagerly while directing its gaze to the docked ship.',0,2,0,0,NULL);
