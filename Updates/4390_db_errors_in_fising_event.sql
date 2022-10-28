-- Fix for db Errors:
-- LoadSpawnGroups: spawn_group_spawn guid 1080017 is part of pool or game event (incompatible). Skipping.
-- Fishing Extravaganza Announce                - 14 wotlk   34 TBC
-- Fishing Extravaganza                         - 15 wotlk   35 TBC
-- Stranglethorn Fishing Extravaganza - Turn-in - 36 wotlk   36 TBC
-- remove them from event
DELETE FROM game_event_gameobject WHERE guid IN (
1080017,1080018,1080019,1080020,1080021,1080022,1080023,1080024,1080025,1080026,1080027,1080028,1080029,1080030,1080031,
1080032,1080033,1080034,1080035,1080036,1080037,1080038,1080039,1080040,1080041,1080042,1080043,1080044,1080045,1080046,
1080047,1080048,1080049,1080050,1080051,1080052,1080053,1080054,1080055,1080056,1080057,1080058,1080059,1080060,1080061,
-- add contition to spawn_group
UPDATE spawn_group SET WorldState = 10981 WHERE Id BETWEEN 9001 AND 9004;
DELETE FROM conditions WHERE condition_entry=10981;
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(10981,12,15,0);
