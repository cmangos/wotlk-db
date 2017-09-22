-- Implement Favor dummies 
DELETE FROM spell_area WHERE spell = 32172;
-- Thrallmars favor
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(32172,3713,0,0,0,0,32096,0,2,1), -- blood furnace
(32172,3714,0,0,0,0,32096,0,2,1), -- shattered halls
(32172,3483,0,0,0,0,32096,0,2,1), -- hellfire peninsula
(32172,3836,0,0,0,0,32096,0,2,1), -- magtheridons lair
(32172,3562,0,0,0,0,32096,0,2,1), -- hellfire ramparts
-- Honor holds favor
(32172,3713,0,0,0,0,32098,0,2,1), -- blood furnace
(32172,3714,0,0,0,0,32098,0,2,1), -- shattered halls
(32172,3483,0,0,0,0,32098,0,2,1), -- hellfire peninsula
(32172,3836,0,0,0,0,32098,0,2,1), -- magtheridons lair
(32172,3562,0,0,0,0,32098,0,2,1); -- hellfire ramparts
