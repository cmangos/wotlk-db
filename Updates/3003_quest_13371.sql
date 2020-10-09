-- q.13371 'The Killing Time'
-- Portal to Undercity 193955 should be only visible for players in quest chain...
DELETE FROM spell_area WHERE spell = 58918;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(58918,1519,0,0,0,20108,0,0,2,1); -- Stormwind
DELETE FROM conditions WHERE condition_entry BETWEEN 20105 AND 20108;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20105, 9, 13371, 0, 0),
(20106, 8, 13371, 0, 0),
(20107, -2, 20106, 20105, 0),
(20108, -1, 20107, 20092, 0);
