-- Steel Gate Flying Machine 24418 - corrected
DELETE FROM creature_movement WHERE id = 506149;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(506149,1,2017.83,-3258.89,159.153,4.17316,100,2441801),
(506149,2,2017.83,-3258.89,159.153,100,0,0),
(506149,3,1999.12,-3306.74,159.153,100,0,0),
(506149,4,2020.12,-3324.15,159.153,100,0,0),
(506149,5,2057.1,-3324.33,159.153,100,0,0),
(506149,6,2082.14,-3313.27,159.153,100,0,0),
(506149,7,2081.39,-3290.55,159.153,100,0,0),
(506149,8,2063.08,-3259.44,159.153,100,0,0),
(506149,9,2063.14,-3229.15,159.153,100,0,0),
(506149,10,2045.86,-3207.94,159.153,100,0,0),
(506149,11,2011.73,-3224.18,159.153,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2441801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2441801,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fly ON'),
(2441801,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
