-- Transport: The Bravery - Updates
-- Stormwind <--> Auberdine

-- Engineer Brightbuckle 25010
-- hes sniffed possition is inside chair (all 3.x.x) .. mistake fixed in later expansions
-- we'll also fix it here 
UPDATE creature SET position_x = 11.360976, position_y = -0.870977, position_z = 6.099681, orientation = 3.56 WHERE id = 25010;

-- Captain Angelina Soluna 25009
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5880000;
DELETE FROM creature_movement WHERE id IN (5880000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880000,1,26.18127,-4.933594,16.32479,4.735,5000,0),
(5880000,2,26.18127,-4.933594,16.32479,0.9,6000,2500901),
(5880000,3,26.31567,3.662842,16.81543,100,0,0),
(5880000,4,25.95117,5.257813,16.30628,3.106686,15000,0),
(5880000,5,26.31567,3.662842,16.81543,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2500901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2500901,2000,1,6,0,0,0,0,0x04,273,274,396,0,0,0,0,0,'random emote');

-- First Mate Wavesinger 25011
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5880002;
DELETE FROM creature_movement WHERE id IN (5880002);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880002,1,18.99609,-8.462402,12.10631,100,17000,0),
(5880002,2,18.32983,-3.481934,12.62828,100,0,0),
(5880002,3,17.16357,-0.001464844,12.15025,3.176499,60000,0),
(5880002,4,18.99609,-8.462402,12.10631,100,30000,0);

-- Galley Chief Gathers 25012
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5880003;
DELETE FROM creature_movement WHERE id IN (5880003);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880003,1,17.82324,-7.876953,6.098344,1.623156,30000,0),
(5880003,2,11.61328,-2.914063,6.09991,1.629,8000,2500901),
(5880003,3,11.61328,-2.914063,6.09991,1.629,8000,2500901);

-- Sailor Fairfolk 25017
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5880008;
DELETE FROM creature_movement WHERE id IN (5880008);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880008,1,-26.8047,3.49536,21.4878,1.46781,20000,0),
(5880008,2,-27.16455,0.01757813,21.60413,100,0,0),
(5880008,3,-26.62036,-3.131886,22.01206,100,0,0),
(5880008,4,-23.25406,-6.013553,20.8734,100,0,0),
(5880008,5,-18.59082,-7.482422,19.2942,100,20000,0),
(5880008,6,-23.25406,-6.013553,20.8734,100,0,0),
(5880008,7,-26.62036,-3.131886,22.01206,100,0,0),
(5880008,8,-27.16455,0.01757813,21.60413,100,0,0);

-- Sailor Stoneheel 25018
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5880009;
DELETE FROM creature_movement WHERE id IN (5880009);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880009,1,9.91035,3.12519,11.8659,3.80482,8000,2501601),
(5880009,2,21.03759,6.031911,12.58277,100,0,0),
(5880009,3,30.70672,6.007745,11.66704,100,0,0),
(5880009,4,31.10693,0.1655273,11.1494,100,8000,2501601),
(5880009,5,30.70672,6.007745,11.66704,100,0,0),
(5880009,6,21.03759,6.031911,12.58277,100,0,0);

-- Sailor Wills 25016
UPDATE creature SET position_x = -11.97981, position_y = 6.971938, position_z = 6.098712, orientation = 3.368485, spawndist = 0, MovementType = 2 WHERE guid = 5880007;
DELETE FROM creature_movement WHERE id IN (5880007);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5880007,1,-11.97981,6.971938,6.098712,3.368485,8000,2501601),
(5880007,2,0.8398571,5.316127,6.597352,100,0,0),
(5880007,3,28.276634,6.647447,6.066806,0.58,8000,2501601),
(5880007,4,27.09717,2.697266,6.096882,4.665671,8000,2501601),
(5880007,5,24.08861,5.892715,6.597362,100,0,0),
(5880007,6,0.8398571,5.316127,6.597352,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2501601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2501601,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2501601,6000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
