-- Add missing Exodar Peacekeeper 16733
DELETE FROM `creature` WHERE `guid` BETWEEN 5309039 AND 5309042;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, curhealth, curmana, MovementType) VALUES
(5309039, 16733, 530, 1, 0, 0, -3928.165, -11568.19, -150.2529, 1.012291, 300, 300, 0, 0, 0, 0),
(5309040, 16733, 530, 1, 0, 0, -3999.389, -11732.4, -151.4905, 2.984513, 300, 300, 0, 0, 0, 0),
(5309041, 16733, 530, 1, 0, 0, -3997.849, -11848.74, 0.3363553, 4.206244, 300, 300, 0, 0, 0, 0),
(5309042, 16733, 530, 1, 0, 0, -3883.912, -11577.22, -132.7659, 1.169371, 300, 300, 0, 0, 0, 0);

