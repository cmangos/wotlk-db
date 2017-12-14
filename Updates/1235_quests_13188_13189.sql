-- q.13188 - Where Kings Walk (alliance)
-- q.13189 - Warchief's Blessing (horde)
-- Fixed issue with not friendly guards - after quest completed
DELETE FROM dbscripts_on_quest_end WHERE id IN (13188,13189) AND delay = 0;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13188,0,14,58530,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remove aura from Player'),
(13189,0,14,58551,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remove aura from Player');

DELETE FROM spell_area WHERE spell IN (58551,58530);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(58551,0,13166,0,13189,0,-58354,690,2,1),
(58530,0,13166,0,13188,0,-58354,1101,2,1);
