-- Rotface encounter
-- script targets
DELETE FROM spell_script_target WHERE entry IN (69538,69540,69553,69610);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(69538,1,36897,0),
(69540,1,36897,0),
(69553,1,36897,0),
(69610,1,36899,0);
-- creature linking
DELETE FROM creature_linking_template WHERE entry IN (36897,36899,38107);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36897, 631, 36627, 4112, 0),
(36899, 631, 36627, 4112, 0),
(38107, 631, 36627, 4112, 0);
