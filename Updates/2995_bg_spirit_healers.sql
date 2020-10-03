
-- ** Battleground updates **

-- delete extra healers from the IOC map; they are summoned by script
DELETE FROM creature WHERE guid IN (6280046, 6280045, 6280044, 6280042, 6280043, 6280039, 6280040, 6280038, 6280036, 6280037);

-- update phasemask for SotA healers when alliance is defender
UPDATE creature SET phaseMask = 64 WHERE guid IN (6070016,6070038,6070022);
-- update phasemask for SotA  healers when horde is defender
UPDATE creature SET phaseMask = 128 WHERE guid IN (6070021,6070037,6070017);

-- delete extra healers from Sota map; they are summoned by script
DELETE FROM creature WHERE guid IN (6070014, 6070019, 6070013, 6070018, 6070015, 6070020);

-- EotS: update visual flags; there is no usage for these at the moment
UPDATE gameobject SET spawntimesecsmin=-86400, spawntimesecsmax=-86400 WHERE id IN (184380,184381);
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id IN (184382);

-- flag unlock spell targets
-- EotS flag
DELETE FROM spell_script_target WHERE entry=24390 AND targetEntry=184141;
INSERT INTO spell_script_target VALUES
(24390, 0, 184141, 0);
-- Zangarmarsh flags (they don't have linked auras)
DELETE FROM spell_script_target WHERE entry=24390 AND targetEntry IN (182527,182528,182529);
INSERT INTO spell_script_target VALUES
(24390, 0, 182527, 0),
(24390, 0, 182528, 0),
(24390, 0, 182529, 0);
