-- q.13051 'Territorial Trespass'
DELETE FROM dbscripts_on_event WHERE id IN (19714);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19714,1,9,521359,120,0,0,0,0,0,0,0,0,7090.95,-908.6667,1065.036,-0.9948372,'resp object 1'),
(19714,2,9,521360,120,0,0,0,0,0,0,0,0,7082.188,-916.6476,1068.389,2.234018,'resp object 2'),
(19714,3,9,521361,120,0,0,0,0,0,0,0,0,7081.91,-906.408,1065.914,0.95993,'resp object 3'),
(19714,4,9,521362,120,0,0,0,0,0,0,0,0,7080.195,-912.1233,1066.743,-0.5410506,'resp object 4'),
(19714,5,9,521363,120,0,0,0,0,0,0,0,0,7085.535,-912.6684,1066.484,1.815142,'resp object 5'),
(19714,3000,31,30461,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'quest check - terminate if alive'),
(19714,3100,10,30461,110000,0,0,0,0x04,0,0,0,20056,6883.617,-801.4196,1156.327,5.905432,'summon 30461');
-- o.192538 Small Proto-Drake Egg
DELETE FROM game_event_gameobject WHERE guid BETWEEN 521359 AND 521363;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 521359 AND 521363;
DELETE FROM gameobject WHERE guid BETWEEN 521359 AND 521363;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(521359,192538,571,1,1,7090.95,-908.6667,1065.036,-0.9948372,0,0,-0.4771585,0.8788173,-120,-120),
(521360,192538,571,1,1,7082.188,-916.6476,1068.389,2.234018,0,0,0.8987932,0.4383728,-120,-120),
(521361,192538,571,1,1,7081.91,-906.408,1065.914,0.95993,0,0,0.4617481,0.8870111,-120,-120),
(521362,192538,571,1,1,7080.195,-912.1233,1066.743,-0.5410506,0,0,-0.2672377,0.9636307,-120,-120),
(521363,192538,571,1,1,7085.535,-912.6684,1066.484,1.815142,0,0,0.7880106,0.6156617,-120,-120);
-- c.30461 Veranus
UPDATE creature_template SET SpeedWalk = 8/2.5, SpeedRun = 10/7.0, UnitFlags = 33088, StaticFlags1 = 2147483648, InhabitType = 4, MovementType = 2 WHERE entry IN (30461);
DELETE FROM creature_movement_template WHERE Entry = 30461;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30461,0,1,6883.617,-801.4196,1156.327,5.905432,0,0),
(30461,0,2,6884.598,-801.6104,1156.327,0,0,0),
(30461,0,3,6952.695,-862.9471,1146.047,0,0,0),
(30461,0,4,7035.376,-894.5403,1107.519,0,0,0),
(30461,0,5,7083.224,-912.2373,1067.44,5.79,100000,3046101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3046101,3046102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3046101,100,57,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'animTier 0'),
(3046101,2000,20,18,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'fall'),
(3046101,8000,1,15,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'roar'),
(3046101,14000,0,0,0,0,0,0,0,31158,0,0,0,0,0,0,0,'text'),
(3046101,15000,10,30462,60000,0,0,0,0,0,0,0,0,7096.863,-904.658,1119.904,2.338741,'summon 30462'),
(3046101,17000,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `id` IN (31158);
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `id` IN (31159);
