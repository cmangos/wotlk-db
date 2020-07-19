-- q.12065 'The Focus on the Beach'

-- target for 47374
DELETE FROM spell_script_target WHERE entry = 47374;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(47374,1,23837,0);