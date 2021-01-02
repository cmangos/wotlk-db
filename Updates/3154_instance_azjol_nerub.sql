
-- spell script targets
DELETE FROM spell_script_target WHERE entry IN (53826,53827,53828,53177,53185,53609,53613);
INSERT INTO spell_script_target VALUES
(53826,1,23472,0),
(53827,1,23472,0),
(53828,1,23472,0),
(53177,3,6010054,0),
(53177,3,6010055,0),
(53185,3,6010056,0),
(53613,3,6010032,0),
(53609,3,6010024,0),
(53609,3,6010038,0),
(53609,3,6010037,0),
(53609,3,6010039,0),
(53609,3,6010040,0),
(53609,3,6010041,0),
(53609,3,6010045,0),
(53609,3,6010046,0);

-- delete unused movement paths
DELETE FROM creature_movement_template WHERE entry IN (28924,29051,28925);

-- fix inhabit type
UPDATE creature_template SET InhabitType=7 WHERE entry=29213;
