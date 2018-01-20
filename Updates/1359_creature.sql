-- Frozen Elemental
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM creature_movement WHERE id IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM game_event_creature WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM game_event_creature_data WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM creature_battleground WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM creature_linking WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593)
OR master_guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
DELETE FROM creature WHERE guid IN (104928,106743,106718,106650,106672,106807,106666,106678,106649,106639,109124,114593);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(104928,25715,571,1,1,0,0,3299.07,2962.53,2.18746,6.26764,300,300,7,0,9291,3231,0,1),
(106743,25715,571,1,1,0,0,3275.76,3399.87,22.8076,1.74436,300,300,7,0,9291,3231,0,1),
(106718,25715,571,1,1,0,0,3296.55,3356.47,26.8524,3.162,300,300,7,0,9291,3231,0,1),
(106650,25715,571,1,1,0,0,3219.46,3190.86,0.763486,0.334553,300,300,7,0,9291,3231,0,1),
(106672,25715,571,1,1,0,0,3367.91,3118.29,1.95022,1.45374,300,300,7,0,9291,3231,0,1),
(106807,25715,571,1,1,0,0,3254.79,3140.22,1.63784,4.8231,300,300,7,0,8982,3155,0,1),
(106666,25715,571,1,1,0,0,3320.8,3106.15,2.01141,5.74201,300,300,7,0,8982,3155,0,1),
(106678,25715,571,1,1,0,0,3254.91,3054.62,1.23701,1.63045,300,300,7,0,9291,3231,0,1),
(106649,25715,571,1,1,0,0,3322.93,3054.76,1.99949,1.52835,300,300,7,0,8982,3155,0,1),
(106639,25715,571,1,1,0,0,3260.18,3098.04,2.10228,0.754729,300,300,7,0,8982,3155,0,1),
(109124,25715,571,1,1,0,0,3284.4,3007.5,2.10305,1.59452,300,300,7,0,8982,3155,0,1),
(114593,25715,571,1,1,0,0,3230.62,2994.54,1.62434,0.765921,300,300,7,0,8982,3155,0,1);
-- positions corrected
UPDATE creature SET position_x = 3315.66, position_y = 2892.78, position_z = 1.56689 WHERE guid = 106670;
UPDATE creature SET position_x = 3074.622314, position_y = 3620.624756, position_z = 0.176217 WHERE guid = 106791;
UPDATE creature SET position_x = 3135.913086, position_y = 3614.431152, position_z = 2.561335 WHERE guid = 106792;
UPDATE creature SET position_x = 3112.215820, position_y = 3558.059814, position_z = 0.175813 WHERE guid = 106783;
UPDATE creature SET position_x = 3159.013916, position_y = 3537.473633, position_z = 3.933099 WHERE guid = 106793;
UPDATE creature SET position_x = 3103.319824, position_y = 3485.048828, position_z = 2.805234 WHERE guid = 106784;
UPDATE creature SET position_x = 3136.232666, position_y = 3473.876953, position_z = 3.886606 WHERE guid = 106795;
UPDATE creature SET position_x = 3250.218750, position_y = 3245.147461, position_z = 2.086591 WHERE guid = 106779;
UPDATE creature SET position_x = 3284.362793, position_y = 3189.472412, position_z = 1.921462 WHERE guid = 106661;
UPDATE creature SET position_x = 3329.020264, position_y = 3165.230469, position_z = 1.812137 WHERE guid = 106671;
UPDATE creature SET position_x = 3224.037109, position_y = 3541.121826, position_z = 35.897823 WHERE guid = 106715;
UPDATE creature SET position_x = 3260.265869, position_y = 3528.443115, position_z = 27.165556 WHERE guid = 106776;
UPDATE creature SET position_x = 3268.387939, position_y = 3436.358154, position_z = 21.495436 WHERE guid = 106777;
UPDATE creature SET position_x = 3214.977539, position_y = 3474.454590, position_z = 56.982891 WHERE guid = 106647;
UPDATE creature SET position_x = 3189.911133, position_y = 3620.367188, position_z = 37.752785 WHERE guid = 106729;
UPDATE creature SET position_x = 3393.080078, position_y = 3147.697998, position_z = 1.730301 WHERE guid = 106719;
UPDATE creature SET position_x = 3400.368408, position_y = 3228.189941, position_z = 30.410666 WHERE guid = 106717;
UPDATE creature SET position_x = 3432.364746, position_y = 3053.596436, position_z = 1.107053 WHERE guid = 106653;
UPDATE creature SET position_x = 3462.973145, position_y = 3087.106445, position_z = 1.856769 WHERE guid = 106638;
UPDATE creature SET position_x = 3547.458740, position_y = 3134.036621, position_z = 2.015002 WHERE guid = 106619;
UPDATE creature SET position_x = 3580.268555, position_y = 2970.401367, position_z = 2.140545 WHERE guid = 106708;
UPDATE creature SET position_x = 3383.153809, position_y = 2942.304199, position_z = 1.979153 WHERE guid = 106673;
UPDATE creature SET position_x = 3365.729736, position_y = 2981.169434, position_z = 2.101310 WHERE guid = 106674;
-- global 
UPDATE creature SET SpawnDist = 7, MovementType = 1 WHERE id = 25715;