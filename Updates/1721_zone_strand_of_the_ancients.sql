
-- Sota updates
-- Fix phase masks
UPDATE gameobject SET phaseMask=128 WHERE id=190753;
UPDATE gameobject SET phaseMask=64 WHERE id=194086;

-- insert missing horde portals
DELETE FROM gameobject WHERE guid IN (5710040,5710041,5710042,5710043,5710044);
INSERT INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecsmin,spawntimesecsmax,animprogress,state) VALUES
(5710040, 190763, 607, 3, 128, 1065.02, -89.9522, 81.0758, 1.58771, 0, 0, 0.713061, 0.701102, 800, 800, 0, 1),
(5710041, 190763, 607, 3, 128, 1255.73, -233.153, 56.4357, 5.01833, 0, 0, 0.591105, -0.806595, 800, 800, 0, 1),
(5710042, 190763, 607, 3, 128, 1216.12, 47.7665, 54.2785, 4.05465, 0, 0, 0.897588, -0.440835, 800, 800, 0, 1),
(5710043, 190763, 607, 3, 128, 1394.07, 72.3632, 31.0541, 0.818809, 0, 0, 0.398063, 0.917358, 800, 800, 0, 1),
(5710044, 190763, 607, 3, 128, 1468.12, -225.7, 30.8969, 5.68042, 0, 0, 0.296841, -0.954927, 800, 800, 0, 1);

-- not battleground related
UPDATE creature_template_addon SET auras = '55228 55230 55167 61179' WHERE entry=32520;
