-- q.11610 'Leading the Ancestors Home'
DELETE FROM dbscripts_on_spell WHERE id = 45536;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45536,0,20,2,0,0,0,6,0,0,0,0,0,0,0,0,'change movement'),
(45536,5,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest credit');

-- Elder Sagani
UPDATE creature SET modelid = 17188, position_x = 3569.785645, position_y = 5518.016113, position_z = 27.940783, orientation = 0.598549 WHERE guid = 88238;
UPDATE creature_template SET MovementType = 0 WHERE Entry = 25398; -- movement will be changed by script
DELETE FROM creature_movement_template WHERE entry = 25398;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES 
(25398,1,3569.785645,5518.016113,27.940783, 1000, 2539801,0.598549),
(25398,2,3585.85,5529.61,27.0236,3000,2539802,0.81363),
(25398,3,3586.54,5530.34,40.5986,4000,2539803,0.81363);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2539801,2539802,2539803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2539801,0,23,25979,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2539801,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2539801,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly off'),
(2539802,1,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'fly on'),
(2539802,1,23,10045,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'), -- missing modelid/spellid (temp used)
(2539803,0,23,17188,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'),
(2539803,1,3,0,0,0,0,0x08,0,0,0,0,3569.785645,5518.016113,27.940783,0.598549,'return to his spawn point'),
(2539803,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2539803,2,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 25398;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25398,1,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Elder Takret
UPDATE creature SET modelid = 17188, position_x = 3698.558594, position_y = 5580.782227, position_z = 32.898758, orientation = 5.101542 WHERE guid = 88239;
DELETE FROM creature_movement_template WHERE entry = 25399; -- movement will be changed by script
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25399,1,3698.558594,5580.782227,32.898758, 1000, 2539901,5.101542),
(25399,2,3707.44,5561.46,34.6992,3000, 2539902,5.10547),
(25399,3,3708.85,5558.04,54.3963,4000,2539903,5.10191);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2539901,2539902,2539903);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2539901,0,23,25980,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2539901,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2539901,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly off'),
(2539902,1,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'fly on'),
(2539902,1,23,10045,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'), -- missing modelid/spellid (temp used)
(2539903,0,23,17188,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'),
(2539903,1,3,0,0,0,0,0x08,0,0,0,0,3698.558594,5580.782227,32.898758,5.101542,'return to his spawn point'),
(2539903,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2539903,2,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 25399;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25399,1,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Elder Kesuk
UPDATE creature SET modelid = 17188, position_x = 3642.682129, position_y = 5619.802246, position_z = 32.610413, orientation = 1.466720, spawntimesecs = 1 WHERE guid = 100832;
DELETE FROM creature_movement_template WHERE entry = 25397; -- movement will be changed by script
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25397,1,3642.682129,5619.802246,32.610413, 1000, 2539701,1.466720),
(25397,2,3643.03,5628.23,32.194, 0, 0,1.52013),
(25397,3,3643.41,5633.67,34.5858,3000, 2539702,1.46122),
(25397,4,3643.71,5648.51,62.3046,4000,2539703,1.5751);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2539701,2539702,2539703);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2539701,0,23,25978,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2539701,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2539701,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly off'),
(2539702,1,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'fly on'),
(2539702,1,23,10045,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'), -- missing modelid/spellid (temp used)
(2539703,0,23,17188,0,0,0,0x08,0,0,0,0,0,0,0,0,'transform'),
(2539703,1,3,0,0,0,0,0x08,0,0,0,0,3642.682129,5619.802246,32.610413,1.46672,'return to his spawn point'),
(2539703,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2539703,1,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 25397;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25397,1,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
