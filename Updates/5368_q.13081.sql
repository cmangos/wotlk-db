-- q.13081 'The Will of the Naaru'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13081);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13081,1,31,30656,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 30656'),
(13081,500,20,2,1,0,30656,100,7,0,0,0,0,0,0,0,0,'set path 1');
UPDATE quest_template SET StartScript = 13081 WHERE entry IN (13081);
-- Rhydian 30656
DELETE FROM creature_movement_template WHERE entry = 30656;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(30656,1,1,6408.9688,422.26236,511.28195,100,100,9),
(30656,1,2,6414.4,426.44498,511.28125,100,0,0),
(30656,1,3,6421.0146,431.56033,511.28128,100,0,0),
(30656,1,4,6421.0146,431.56033,511.28128,0.65826,15000,3065601),
(30656,1,5,6408.9688,422.26236,511.28195,100,100,10),
(30656,1,6,6408.9688,422.26236,511.28195,0.628318,1000,3);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3065601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3065601,100,0,0,0,0,0,0,0x04,31380,0,0,0,0,0,0,0,'Say'),
(3065601,5000,15,57676,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 57676');
DELETE FROM spell_target_position WHERE Id IN(57677);
INSERT INTO spell_target_position VALUES
(57677,530,-1824.32,5417.23,-12.4277,2.79904);
