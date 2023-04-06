-- Icestorm 26287
-- Flying anim corrected
DELETE FROM creature_movement_template WHERE Entry = 26287;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(26287,1,4560.903,224.9135,135.4687,100,1000,2628703),
(26287,2,4561.495,200.4222,139.8242,100,0,0),
(26287,3,4551.378,94.04321,127.0742,100,0,0),
(26287,4,4543.821,45.72195,104.5742,100,5000,2628701),
(26287,5,4543.41,41.0699,80.7806,4.56386,300000,2628702);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2628703);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2628703,1,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'FLY ANIM ON');
