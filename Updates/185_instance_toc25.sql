-- ToC25
DELETE FROM spell_script_target WHERE entry IN (66133,66132,65875,65876,66140,66141);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(66133,1,34497,0),
(66132,1,34496,0),
(65875,1,34497,0),
(65876,1,34496,0),
(66140,1,34720,0),
(66141,1,34704,0);
