-- Father Gustav 30226
UPDATE creature_template SET MovementType = 4 WHERE Entry = 30226;
UPDATE creature SET position_x = 6218.07, position_y = -2.601671, position_z = 410.1646, spawndist = 0, MovementType = 4 WHERE id = 30226;
DELETE FROM creature_movement WHERE Id IN (527450);
DELETE FROM `creature_movement_template` WHERE `entry` = 30226;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(30226,1,6218.07,-2.601671,410.1646,3.15369,1000,0),
(30226,2,6222.3447,-2.1813695,410.4146,100,0,0),
(30226,3,6224.6196,1.238932,410.16464,100,0,0),
(30226,4,6224.3057,3.989041,410.16467,100,1000,0);
