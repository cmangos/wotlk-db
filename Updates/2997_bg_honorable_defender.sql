
-- ** Battleground creatures **

-- honorable defenders for EotS (60 yards version)
SET @CGUID := 5660000;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID + 7;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
-- Fel Reaver
(@CGUID+0, 35379, 566, 1, 1, 0, 0, 2024.6, 1742.82, 1195.16, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+1, 35380, 566, 1, 1, 0, 0, 2024.6, 1742.82, 1195.16, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Blood elf tower
(@CGUID+2, 35379, 566, 1, 1, 0, 0, 2050.49, 1372.24, 1194.56, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+3, 35380, 566, 1, 1, 0, 0, 2050.49, 1372.24, 1194.56, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Ruins
(@CGUID+4, 35379, 566, 1, 1, 0, 0, 2301.01, 1386.93, 1197.18, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+5, 35380, 566, 1, 1, 0, 0, 2301.01, 1386.93, 1197.18, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Mage Tower
(@CGUID+6, 35379, 566, 1, 1, 0, 0, 2282.12, 1760.01, 1189.71, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+7, 35380, 566, 1, 1, 0, 0, 2282.12, 1760.01, 1189.71, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0);
-- add to creature battleground
DELETE FROM creature_battleground WHERE guid BETWEEN @CGUID AND @CGUID + 7;
INSERT INTO creature_battleground VALUES
-- Reaver
(@CGUID+0, 0, 0),
(@CGUID+1, 0, 1),
-- Elf Tower
(@CGUID+2, 1, 0),
(@CGUID+3, 1, 1),
-- Ruins
(@CGUID+4, 2, 0),
(@CGUID+5, 2, 1),
-- Mage Tower
(@CGUID+6, 3, 0),
(@CGUID+7, 3, 1);

-- honorable defenders for AB (25 yards version)
SET @CGUID := 5290111;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID + 9;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
-- Mine
(@CGUID+0, 36349, 529, 1, 1, 0, 0, 1146.92, 848.178, -110.917, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+1, 36350, 529, 1, 1, 0, 0, 1146.92, 848.178, -110.917, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Lumber Mill
(@CGUID+2, 36349, 529, 1, 1, 0, 0, 856.142, 1148.9, 11.1847, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+3, 36350, 529, 1, 1, 0, 0, 856.142, 1148.9, 11.1847, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Farm
(@CGUID+4, 36349, 529, 1, 1, 0, 0, 806.182, 874.272, -55.9937, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+5, 36350, 529, 1, 1, 0, 0, 806.182, 874.272, -55.9937, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Blacksmith
(@CGUID+6, 36349, 529, 1, 1, 0, 0, 977.016, 1046.62, -44.8092, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+7, 36350, 529, 1, 1, 0, 0, 977.016, 1046.62, -44.8092, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
-- Stables
(@CGUID+8, 36349, 529, 1, 1, 0, 0, 1166.79, 1200.13, -56.7086, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0),
(@CGUID+9, 36350, 529, 1, 1, 0, 0, 1166.79, 1200.13, -56.7086, 0, 86400, 86400, 0, 0, 4120, 0, 0, 0);

-- add to creature battleground
DELETE FROM creature_battleground WHERE guid BETWEEN @CGUID AND @CGUID + 9;
INSERT INTO creature_battleground VALUES
-- Stables
(@CGUID+8, 0, 3),
(@CGUID+9, 0, 4),
-- Blacksmith
(@CGUID+6, 1, 3),
(@CGUID+7, 1, 4),
-- Farm
(@CGUID+4, 2, 3),
(@CGUID+5, 2, 4),
-- Lumber Mill
(@CGUID+2, 3, 3),
(@CGUID+3, 3, 4),
-- Mine
(@CGUID+0, 4, 3),
(@CGUID+1, 4, 4);
