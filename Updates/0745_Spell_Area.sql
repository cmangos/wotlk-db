-- Ancient Draenei Spirit & Ancient Orc Ancestor will become visible to players once q.10252 or q.10045 is finished.
-- Visible in areas:
-- 3518 - Nagrand
-- 3616 - Laughing Skull Ruins
-- 3622 - Sunspring Post
-- 3630 - Oshu'gun
-- 3631 - Spirit Fields
-- 3688 - Auchindoun
DELETE FROM spell_area WHERE spell = 32649;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(32649,3518,0,0,0,1135,0,0,2,1),
(32649,3616,0,0,0,1135,0,0,2,1),
(32649,3622,0,0,0,1135,0,0,2,1),
(32649,3630,0,0,0,1135,0,0,2,1),
(32649,3631,0,0,0,1135,0,0,2,1),
(32649,3688,0,0,0,1135,0,0,2,1);
DELETE FROM conditions WHERE condition_entry IN (1133,1134,1135);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1133, 8, 10252, 0),
(1134, 8, 10045, 0),
(1135, -2, 1134, 1133);
