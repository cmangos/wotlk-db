-- Dalaran
-- Only Alliance Players should see Brassbolt Mechawrench 35594
-- Only Horde Players should see Reginald Arcfire 35607
DELETE FROM spell_area WHERE spell IN (60194,60197);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60194,1519,0,0,0,20104,0,0,2,0),
(60194,4395,0,0,0,0,0,1101,2,1), -- alliance Only
(60197,4395,0,0,0,0,0,690,2,1); -- horde Only
-- Reginald Arcfire 35607
UPDATE creature_template SET NpcFlags = 2097153, UnitFlags = 33536 WHERE ENTRY = 35607;
