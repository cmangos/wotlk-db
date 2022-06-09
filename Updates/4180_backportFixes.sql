-- Path name added
DELETE FROM `waypoint_path_name` WHERE `PathId` = 5300000;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(5300000,'Eversong Woods (Fairbreeze Village) - Silvermoon Guardian (2) Patrol 000');

-- Eldinarcus 16854
-- Immune to Arcane magic
UPDATE creature_template SET SchoolImmuneMask = 64 WHERE entry = 16854;

-- was replaced by another ID
DELETE FROM pool_template WHERE entry = 970;
DELETE FROM pool_gameobject WHERE pool_entry = 970;
DELETE FROM pool_gameobject WHERE guid IN (50662,50663,50664);
