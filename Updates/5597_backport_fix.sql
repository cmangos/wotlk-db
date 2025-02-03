-- Table `dbscripts_on_creature_movement` contain unused script, id 1452701.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1452702.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1452703.
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1452701 AND 1452703;

-- LoadSpawnGroups: Invalid spawn_group_spawn guid 132811. Skipping.
DELETE FROM creature WHERE guid IN(132811);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('132811', '18689', '530', '1', '-3740.60009765625', '4473.93017578125', '-8.564729690551758','1.769', '43200', '86400', '0', '2');
DELETE FROM creature_movement WHERE id = 132811;
INSERT INTO creature_movement (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(132811,1,-3745.47,4496.63,-9.39174,100,0,0),
(132811,2,-3740.55,4515.75,-12.6168,100,0,0),
(132811,3,-3714.52,4561.42,-15.5949,100,0,0),
(132811,4,-3691.07,4629.86,-18.0632,100,0,0),
(132811,5,-3671.98,4668.61,-17.5237,100,0,0),
(132811,6,-3659.5,4691.22,-20.1589,100,0,0),
(132811,7,-3663.01,4731.42,-21.011,100,0,0),
(132811,8,-3670.96,4811.81,-21.3235,100,0,0),
(132811,9,-3692.4,4832.97,-21.3243,100,0,0),
(132811,10,-3737.69,4842.88,-19.617,100,0,0),
(132811,11,-3771.48,4845.87,-19.3476,100,0,0),
(132811,12,-3784.54,4789.69,-20.5939,100,0,0),
(132811,13,-3805.7,4756.83,-25.7269,100,0,0),
(132811,14,-3796.46,4716.94,-24.3906,100,0,0),
(132811,15,-3815.91,4670.04,-27.4691,100,0,0),
(132811,16,-3821.61,4608.38,-21.6523,100,0,0),
(132811,17,-3807.01,4574.98,-17.8086,100,0,0),
(132811,18,-3800.57,4549.48,-18.1872,100,0,0),
(132811,19,-3796.15,4512.84,-19.2235,100,0,0),
(132811,20,-3801.02,4470.16,-13.1805,100,0,0),
(132811,21,-3771.69,4449.77,-7.30134,100,0,0),
(132811,22,-3707.55,4428.35,-7.42426,100,0,0),
(132811,23,-3670.43,4428.79,-11.5316,100,0,0),
(132811,24,-3630.64,4456.85,-16.9659,100,0,0),
(132811,25,-3555.26,4510.33,-18.66,100,0,0),
(132811,26,-3571.25,4577.81,-21.0895,100,0,0),
(132811,27,-3597.28,4595.12,-20.5279,100,0,0);

-- LoadSpawnGroups: Invalid spawn_group_spawn guid 51854. Skipping.
UPDATE creature SET guid = 51854 WHERE guid = 118 AND id = 3056;
UPDATE creature_movement SET id = 51854 WHERE id = 118;
