-- quest 12027
DELETE FROM spell_script_target WHERE entry IN (47184);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(47184,1,26590,0);
DELETE FROM creature_linking_template WHERE entry IN (26589);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26589, 571, 26588, 512, 100);
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, UnitFlags=UnitFlags768 WHERE entry IN (26586,26590);
