-- q.12849 'The Power Of Blood, Frost And Unholy'
-- fixed annoying yellow question mark hang on npc.. after quest completed. (temp)  
DELETE FROM dbscripts_on_quest_end WHERE id = 12849;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12849, 0, 29, 2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'remove flag'),
(12849, 1, 29, 2, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'addflag');
UPDATE quest_template SET CompleteScript = 12849 WHERE entry = 12849;
