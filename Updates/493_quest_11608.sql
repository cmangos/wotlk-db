
-- Quest 11608
DELETE FROM spell_script_target WHERE entry IN (45502);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(45502,1,25402,2),
(45502,1,25403,2),
(45502,1,25404,2),
(45502,1,25405,2);

-- missing spells with cone targets (Ulduar raid)
DELETE FROM spell_script_target WHERE entry IN (62466,64619);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(62466,1,32780,0),
(64619,1,34121,0);
