
-- Blood wing ICC
DELETE FROM spell_script_target WHERE entry IN (70227,72099);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(70227,1,36934,0),
(72099,1,36934,0);
-- Creature linking
DELETE FROM creature_linking_template WHERE entry IN (37663,37664,37595);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(37663, 631, 37571, 3, 30),
(37664, 631, 37571, 3, 30),
(37595, 631, 37571, 3, 30);
-- Missing / Broken GOs
-- Empowering Blood Orb
DELETE FROM gameobject WHERE guid IN (66130,66133,83056);
INSERT INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(83056, 201741, 631, 15, 1, 4522.76, 2769.22, 351.101, -3.10665, 0, 0, -0.999847, 0.0174693, 120, 255, 1),
(66130, 201741, 631, 15, 1, 4574.179, 2683.465, 384.6843, -0.593412, 0, 0, -0.999847, 0.0174693, 120, 255, 1),
(66133, 201741, 631, 15, 1, 4573.802, 2854.837, 384.6843, 1.937312, 0, 0, -0.999847, 0.0174693, 120, 255, 1);
