-- Heart's Blood Shrine - Grizzly Hills

-- Redfang Hunter 26356
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 507789 AND 507796;
DELETE FROM creature_movement WHERE id BETWEEN 507789 AND 507796;
DELETE FROM game_event_creature WHERE guid BETWEEN 507789 AND 507796;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 507789 AND 507796;
DELETE FROM creature_battleground WHERE guid BETWEEN 507789 AND 507796;
DELETE FROM creature_linking WHERE guid BETWEEN 507789 AND 507796
OR master_guid BETWEEN 507789 AND 507796;
DELETE FROM creature WHERE guid BETWEEN 507789 AND 507796;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507789,26356,571,1,1,0,0,3625.98,-4604.6,191.996,0.898574,300,300,2,0,10282,0,0,1),
(507790,26356,571,1,1,0,0,3500.39,-4630.4,222.825,1.75468,300,300,7,0,10282,0,0,1),
(507791,26356,571,1,1,0,0,3576.75,-4598.65,197.509,2.5715,300,300,7,0,10282,0,0,1),
(507792,26356,571,1,1,0,0,3511.08,-4573.72,220.934,3.70592,300,300,2,0,10282,0,0,1),
(507793,26356,571,1,1,0,0,3512.456,-4597.346,221.6074,2.024582,300,300,0,0,10282,0,0,0),
(507794,26356,571,1,1,0,0,3487.727,-4567.111,228.3622,0.5061455,300,300,0,0,10282,0,0,0),
(507795,26356,571,1,1,0,0,3477.407,-4556.494,229.3255,0.715585,300,300,0,0,10282,0,0,0),
(507796,26356,571,1,1,0,0,3492.02,-4497.76,226.708,0.71239,300,300,5,0,10282,0,0,1);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (507793,513226,513231,513237);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(507793,0,1,1,0,0,0,NULL),
(513226,0,1,1,0,0,0,NULL),
(513231,0,1,1,0,0,0,NULL),
(513237,0,1,1,0,0,0,NULL);
UPDATE creature SET position_x = 3603.982666, position_y = -4490.769043, position_z = 199.408966, MovementType = 1, spawndist = 2 WHERE guid = 513232;

-- Redfang Elder 26436
DELETE FROM creature_addon WHERE guid = 507797;
DELETE FROM creature_movement WHERE id = 507797;
DELETE FROM game_event_creature WHERE guid = 507797;
DELETE FROM game_event_creature_data WHERE guid = 507797;
DELETE FROM creature_battleground WHERE guid = 507797;
DELETE FROM creature_linking WHERE guid = 507797
OR master_guid = 507797;
DELETE FROM creature WHERE guid = 507797;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507797,26436,571,1,1,0,0,3518.72,-4523.21,215.612,4.57261,300,300,0,0,10635,3561,0,0);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (507797,514091);
DELETE FROM creature_movement WHERE id IN (507797,514091);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 507797
(507797,1,3514.48,-4537.87,218.173,100,0,0),
(507797,2,3507.25,-4544.35,219.915,100,0,0),
(507797,3,3497,-4550.6,223.007,100,0,0),
(507797,4,3506.99,-4544.57,219.988,100,0,0),
(507797,5,3514.25,-4538.27,218.239,100,0,0),
(507797,6,3518.68,-4523.52,215.653,100,0,0),
(507797,7,3522.86,-4519.02,214.541,100,0,0),
(507797,8,3534.76,-4520.05,210.134,100,0,0),
(507797,9,3543.52,-4517.88,207.619,100,0,0),
(507797,10,3552.25,-4508.18,204.304,100,0,0),
(507797,11,3560.63,-4504.46,201.79,100,0,0),
(507797,12,3552.67,-4507.92,204.174,100,0,0),
(507797,13,3544.01,-4517.7,207.488,100,0,0),
(507797,14,3534.89,-4520.06,210.085,100,0,0),
(507797,15,3523.67,-4518.81,214.272,100,0,0),
(507797,16,3518.61,-4523.38,215.64,100,0,0),
-- 514091
(514091,1,3451.29,-4571.64,231.305,100,0,0),
(514091,2,3460.43,-4576.1,231.377,100,0,0),
(514091,3,3465.52,-4588.9,231.329,100,0,0),
(514091,4,3465.81,-4602.15,231.282,100,0,0),
(514091,5,3462.42,-4612.27,231.477,100,0,0),
(514091,6,3456.54,-4621.01,231.266,100,0,0),
(514091,7,3442.87,-4628.23,231.515,100,0,0),
(514091,8,3431.44,-4629.88,231.835,100,0,0),
(514091,9,3418,-4627.89,231.707,100,0,0),
(514091,10,3407.74,-4618.81,231.81,100,0,0),
(514091,11,3403.98,-4602.45,231.573,100,0,0),
(514091,12,3407.27,-4586.83,231.586,100,0,0),
(514091,13,3413.31,-4578,231.495,100,0,0),
(514091,14,3423.31,-4572.6,231.398,100,0,0),
(514091,15,3434.35,-4569.39,231.323,100,0,0);

-- Grumbald One-Eye 26681
UPDATE creature_template_addon SET auras = 21227 WHERE entry = 26681;

-- Silvercoat Stag 27230
UPDATE creature SET position_x = 3590.119141, position_y = -4455.582031, position_z = 200.818924 WHERE guid = 517047;
