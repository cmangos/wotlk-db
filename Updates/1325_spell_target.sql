-- add spell script target so that visual happens during Portal to Maraudon creation
DELETE FROM spell_script_target WHERE entry IN(21127);  
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(21127,0,178386,0);
