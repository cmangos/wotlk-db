-- q.12757 'Scarlet Armies Approach...'
UPDATE spell_area SET quest_end = 12757 WHERE spell = 53081;
UPDATE dbscripts_on_quest_start SET data_flags = 4 WHERE id = 12757 AND delay = 3000;
DELETE FROM dbscripts_on_spell WHERE id = 53098;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53098,1000,14,53081,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura from player');
