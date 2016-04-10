
-- Festergut encounter
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (69157,69162,69164,69125);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(69157,1,36659,0),
(69162,1,36659,0),
(69164,1,36659,0),
(69125,1,37013,0);
-- creature stats
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33554688, MinLevelHealth=25200, MaxLevelHealth=25200 WHERE entry=38548;
UPDATE creature_template SET MinLevel=80, MaxLevel=80, FactionAlliance=14, FactionHorde=14, UnitFlags=33554688, MinLevelHealth=25200, MaxLevelHealth=25200 WHERE entry=38556;
-- geist alarms (YTDB)
DELETE FROM gameobject WHERE guid IN (66136,66137);
INSERT INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(66136, 201888, 631, 15, 1, 4312.29, 3025.22, 360.518, 2.92954, 0, 0, 0.994384, 0.105828, 604800, 0, 1),
(66137, 201889, 631, 15, 1, 4403.27, 3027.19, 360.52, 0.0274907, 0, 0, 0.0137449, 0.999906, 604800, 0, 1);

