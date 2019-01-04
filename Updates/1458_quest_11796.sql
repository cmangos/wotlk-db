-- q.11796 'Emergency Protocol: Section 8.2, Paragraph D'

-- burn animation fixed
-- missing objects added - WoTLK Range 571x Free guids used
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5710037 AND 5710038;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5710037 AND 5710038;
DELETE FROM gameobject WHERE guid BETWEEN 5710037 AND 5710038;
INSERT INTO gameobject(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5710037, 187675, 571, 1,1,3476.59, 4916.36, 13.7065, 2.45715, 0, 0, 0.942012, 0.335581, -60, -60, 255, 1),
(5710038, 187675, 571, 1,1,3605.12, 5063.08, 13.0645, 0.293374, 0, 0, 0.146162, 0.989261, -60, -60, 255, 1);
