-- Death Knight Initiate -- corrected
DELETE FROM dbscripts_on_creature_movement WHERE id  = 2840606;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840606,1,22,2084,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');
-- Scarlet Infantryman -- correct spawn point
UPDATE creature SET position_x = 2412.590332, position_y = -5854.412109, position_z = 106.358147, orientation = 0.654703 WHERE guid = 129278;
