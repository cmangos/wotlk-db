
-- Heroic vehicle templates
UPDATE creature_template SET VehicleTemplateId=746 WHERE entry IN (40471,40472);
-- Orb carrier
UPDATE creature_template SET DifficultyEntry1=40470, DifficultyEntry2=40471, DifficultyEntry3 = 40472 WHERE entry=40081;
-- Flags, levels and factions
UPDATE creature_template SET Faction=14, UnitFlags=33554432, MinLevel=80, MaxLevel=80, MinLevelHealth=3963, MaxLevelHealth=3963 WHERE entry IN (40081,40470,40471,40472);
-- Halion controller
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33554688, MinLevelHealth=3963, MaxLevelHealth=3963 WHERE entry=40146;

-- Orb rotation
UPDATE creature_template SET DifficultyEntry1=43280, DifficultyEntry2=43281, DifficultyEntry3 = 43282 WHERE entry=40091;
UPDATE creature_template SET Faction=14, UnitFlags=33554688, MinLevel=80, MaxLevel=80, MinLevelHealth=3963, MaxLevelHealth=3963 WHERE entry IN (43280,43281,43282,40091);

-- Combustion
UPDATE creature_template SET Faction=14, MinLevel=83, MaxLevel=83, UnitFlags=33554432, MinLevelHealth=5922, MaxLevelHealth=5922 WHERE entry IN (40135,40001);

-- creature addon
DELETE FROM creature_template_addon WHERE entry IN (40135,40001);
INSERT INTO creature_template_addon (entry, auras) VALUES
(40135, 74803),
(40001, 74629);

-- Halion Controller is on all phases
UPDATE creature SET phaseMask=33 WHERE id=40146;

-- Halion does not regen HP
UPDATE creature_template SET RegenerateStats=12 WHERE entry IN (39863,39864,39944,39945,40142,40143,40144,40145);

-- creature linking
DELETE FROM creature_linking_template WHERE entry IN (40081,40091,40083,40100,40468,40469,40001,40135);
INSERT INTO creature_linking_template (entry,map,master_entry,flag,search_range) VALUES
(40081,724,40142,16+4096+8192,0),
(40091,724,40142,16+4096+8192,0),
(40083,724,40142,16+4096+8192,0),
(40100,724,40142,16+4096+8192,0),
(40468,724,40142,16+4096+8192,0),
(40469,724,40142,16+4096+8192,0),
(40001,724,39863,16+4096+8192,0),
(40135,724,40142,16+4096+8192,0);

-- Missing Twilight portals
DELETE FROM gameobject WHERE guid IN (7240013,7240014,7240015,7240016);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(7240013,202796,724,15,32,3141.747314453125, 510.810760498046875, 72.88869476318359375, 0, 0, 0, 0, 1, -7200, -7200, 255, 1),
(7240014,202796,724,15,32,3179.9697265625, 559.11114501953125, 72.84639739990234375, 0, 0, 0, 0, 1, -7200, -7200, 255, 1),
(7240015,202795,724,15,1,3142.150146484375, 559.6180419921875, 72.88871002197265625, 0, 0, 0, 0, 1, -7200, -7200, 255, 1),
(7240016,202795,724,15,1,3179.963623046875, 509.35589599609375, 72.8034820556640625, 0, 0, 0, 0, 1, -7200, -7200, 255, 1);
