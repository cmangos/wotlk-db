-- Add missing spell_script_target to Vimgol script 
DELETE FROM spell_script_target WHERE entry = 40547 AND targetentry = 22911;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40547,1,22911,0); -- and the spells name is Interrupt Unholy Growth
