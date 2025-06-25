-- Argent: Trespasser

-- spell: Trespasser! 63991
-- no ally allowed in horde pavilon
DELETE FROM spell_area WHERE spell = 63991;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(63991,4666,0,0,0,0,0,1101,2,1);
UPDATE spell_target_position SET target_orientation = 3.83973 WHERE id = 63987;
-- spell: Trespasser! 63990
-- no horde allowed in ally pavilon
DELETE FROM spell_area WHERE spell = 63990;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(63990,4667,0,0,0,0,0,690,2,1);
UPDATE spell_target_position SET target_orientation = 5.44542 WHERE id = 63986;
