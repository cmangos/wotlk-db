-- spell should only target specific mobs
DELETE FROM spell_script_target WHERE entry IN(30659);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30659,1,17281,0);  
