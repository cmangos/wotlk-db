-- ICC
-- Saurfang
DELETE FROM spell_script_target WHERE entry IN (70572);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(70572,1,37200,0),
(70572,1,37830,0),
(70572,1,37187,0),
(70572,1,37920,0);
-- remove some auras from c_t_a as they are only applied on combat
UPDATE creature_template_addon SET auras='72242' WHERE entry=37813;
-- energy regen is handled by aura. it has to be set in DB
UPDATE creature_template SET RegenerateStats=3 WHERE entry=37813;
