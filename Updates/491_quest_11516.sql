
-- Quest 11516
DELETE FROM spell_script_target WHERE entry IN (44877,44948);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(44877,1,24916,0),
(44948,1,24959,0);
UPDATE gameobject SET spawntimesecs=-180 WHERE guid IN (99819,99820,99821);
