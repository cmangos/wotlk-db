-- Bloodmyst escort
-- script targets
DELETE FROM spell_script_target WHERE entry IN (31611,30834);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(31611,1,17678,0),
(30834,1,17645,0);
-- addon handled by script
UPDATE creature_template_addon SET auras='' WHERE entry=17678;
