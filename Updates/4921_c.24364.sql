-- Flynn Firebrew 24364
-- data taken from TDB
-- missing added
DELETE FROM creature WHERE id IN (24364);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(101252,24364,0,1,-5609.83,-459.056,404.633,5.3058,120,120,0,0);
DELETE FROM game_event_creature WHERE guid = 101252;
INSERT INTO game_event_creature (guid, event) VALUES
(101252,26);
