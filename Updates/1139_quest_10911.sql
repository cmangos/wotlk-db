-- q.10911 tweaks
DELETE FROM spell_script_target WHERE entry = 39221; -- give proper targets
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39221,1,22471,0),
(39221,1,22472,0);

DELETE FROM creature WHERE id in (22474,22500); -- delete creatures spawned only through scripts
