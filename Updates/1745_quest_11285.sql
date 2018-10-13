-- q.11285 'Baleheim Must Burn!'

-- updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id IN (24182,24183,24184,24185,24193,24194);
-- spell target
DELETE FROM spell_script_target WHERE entry = 43233;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(43233,1,24182,0),
(43233,1,24183,0),
(43233,1,24184,0),
(43233,1,24185,0),
(43233,1,24193,0),
(43233,1,24194,0);

-- wrong scrpt removed
DELETE FROM dbscripts_on_spell WHERE id = 43233;
