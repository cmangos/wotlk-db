
-- ##### Strand of the Ancients Battleground updates #####

-- GO template updates - SoA (source R2)
-- NOTE: values might be guesswork and need to be double checked!!!
DELETE FROM gameobject_addon WHERE guid IN (66501, 66504, 66505, 66507);
INSERT INTO gameobject_addon VALUES
(66501, 0, 0, 1, 0.0002),
(66504, 0, 0, 1, 0.0002),
(66505, 0, 0, 1, 0.00001),
(66507, 0, 0, 1, 0.00001);

-- spell script targets for teleport
DELETE FROM spell_script_target WHERE entry=54643;
INSERT INTO spell_script_target VALUES
(54643,1,23472,0);
DELETE FROM spell_target_position WHERE id=52364;
INSERT INTO spell_target_position VALUES
(52364,607,1209.7,-65.16,70.1,0);

-- missing gameobjects
DELETE FROM gameobject WHERE guid IN (35845,35846,35847,35849,35850);
INSERT INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecsmin,spawntimesecsmax,animprogress,state) VALUES
-- defenders portal horde
(35845, 190763, 607, 3, 128, 1468.12, -225.7, 30.8969, 5.68042, 0, 0, 0.296839, -0.954928, 800, 800, 0, 1),
(35846, 190763, 607, 3, 128, 1394.07, 72.3632, 31.0541, 0.818809, 0, 0, 0.398063, 0.917358, 800, 800, 0, 1),
(35847, 190763, 607, 3, 128, 1216.12, 47.7665, 54.2785, 4.05465, 0, 0, 0.897588, -0.440835, 800, 800, 0, 1),
(35849, 190763, 607, 3, 128, 1255.73, -233.153, 56.4357, 5.01833, 0, 0, 0.591105, -0.806595, 800, 800, 0, 1),
(35850, 190763, 607, 3, 128, 1065.02, -89.9522, 81.0758, 1.58771, 0, 0, 0.71306, 0.701103, 800, 800, 0, 1);
-- Fix rotations
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=SIN(orientation*0.5), rotation3=COS(orientation*0.5) WHERE guid IN (35845,35846,35847,35849,35850);

-- update phase mask for alliance control
UPDATE gameobject SET phaseMask=64 WHERE guid IN (66213,66219,66220,66221,66222,66504,66505,66223);
UPDATE gameobject SET phaseMask=64 WHERE id IN (190753);
-- update phase mask for horde control
UPDATE gameobject SET phaseMask=128 WHERE guid IN (66501,66507,66224);
UPDATE gameobject SET phaseMask=128 WHERE id IN (194086);
-- fix spawn times
UPDATE gameobject SET spawntimesecsmin=800, spawntimesecsmax=800 WHERE guid IN(66223,66224);
UPDATE gameobject SET spawntimesecsmin=800, spawntimesecsmax=800 WHERE id IN(194086,190753);
-- fix GO flags
UPDATE gameobject_template SET flags=flags|32 WHERE entry=190763;
