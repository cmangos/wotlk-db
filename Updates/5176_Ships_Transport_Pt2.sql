-- Transports
-- Northspear
-- Sailor Jansen 31759
UPDATE creature SET position_x = -2.490356, position_y = -2.825684, position_z = 9.374964, orientation = 3.071779, movementtype = 2, spawndist = 0 WHERE id = 31759;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31759;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31759;
DELETE FROM creature_movement_template WHERE Entry = 31759;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31759,0,1,-2.490356,-2.825684,9.374964,3.071779,35000,3175901),
(31759,0,2,-1.658081,-3.409668,9.377641,100,0,0),
(31759,0,3,-1.890259,-5.376465,9.378425,100,0,0),
(31759,0,4,-8.543579,-7.175293,9.448003,100,0,0),
(31759,0,5,-9.170044,-9.22168,9.445227,100,35000,3175901),
(31759,0,6,-11.002441,-6.930664,9.534396,100,0,0),
(31759,0,7,-14.977417,-2.291504,9.7870245,100,0,0),
(31759,0,8,-14.817749,2.4892578,9.750464,100,0,0),
(31759,0,9,-11.277954,4.709961,9.584112,100,0,0),
(31759,0,10,-8.142334,3.1704102,9.440093,100,0,0),
(31759,0,11,-6.886963,3.130371,9.382437,100,35000,3175901),
(31759,0,12,-8.180908,3.992676,9.435935,100,0,0),
(31759,0,13,-7.134033,6.426758,9.418909,100,0,0),
(31759,0,14,-2.007568,5.943848,9.369967,100,0,0),
(31759,0,15,-0.341430, 2.771484,9.376765,100,0,0),
(31759,0,16,-1.004395,-1.508789,9.378045,100,0,0),
(31759,0,17,-2.490356,-2.825684,9.374964,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3175901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3175901,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3175901,33000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- Sailor Berg 31760
UPDATE creature SET position_x = -24.40295, position_y = 1.061523, position_z = 11.79708, orientation = 3.001966, movementtype = 2, spawndist = 0 WHERE id = 31760;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31760;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31760;
DELETE FROM creature_movement_template WHERE Entry = 31760;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31760,0,1,-24.40295,1.061523,11.79708,3.001966,35000,3176001),
(31760,0,2,-24.34155,-1.495605,11.79064,100,0,0),
(31760,0,3,-24.34155,-1.495605,11.79064,3.228859,35000,3176001),
(31760,0,4,-24.40295,1.061523,11.79708,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3176001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3176001,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3176001,33000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- Sailor Davies 31761
UPDATE creature SET position_x = 18.2179, position_y = 4.788574, position_z = 9.845109, orientation = 1.023, movementtype = 2, spawndist = 0 WHERE id = 31761;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31761;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31761;
DELETE FROM creature_movement_template WHERE Entry = 31761;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31761,0,1 ,18.2179,4.788574,9.845109,1.023,15000,3176101),
(31761,0,2 ,17.14832,3.761719,9.827729,100,0,0),
(31761,0,3 ,15.19043,-0.3828125,9.831963,100,0,0),
(31761,0,4 ,12.77795,-4.617188,9.647501,100,0,0),
(31761,0,5 ,14.17578,-7.425293,9.675255,100,0,0),
(31761,0,6 ,16.22485,-7.749023,9.737128,100,0,0),
(31761,0,7 ,16.4986,-7.947021,9.270819,100,0,0),
(31761,0,8 ,17.77258,-7.644531,9.80452,100,0,0),
(31761,0,9 ,17.77258,-7.644531,9.80452,0.7504916,15000,3176101),
(31761,0,10,16.4986,-7.947021,9.270819,100,0,0),
(31761,0,11,12.12354,-5.75,9.614675,100,0,0),
(31761,0,12,14.86902,-1.026367,9.805464,100,0,0),
(31761,0,13,15.189,0.6604372,9.273306,100,0,0),
(31761,0,14,15.689,1.660437,9.273306,100,0,0),
(31761,0,15,17.25049,3.98291,9.827415,100,0,0),
(31761,0,16,17.65341,3.862958,9.334635,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3176101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3176101,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND_STATE_KNEEL'),
(3176101,13000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND_STATE_STAND');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (31759,31760,31761);

-- The Kraken
-- Sailor Dawning 31791
UPDATE creature SET position_x = 0.919363, position_y = 8.75723, position_z = 9.436611, orientation = 1.2566371, movementtype = 2, spawndist = 0 WHERE id = 31791;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31791;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31791;
DELETE FROM creature_movement_template WHERE Entry = 31791;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31791,0,1,0.919363,8.75723,9.436611,1.2566371,35000,3179101),
(31791,0,2,-4.5058594,6.759033,9.362606,100,0,0),
(31791,0,3,-11.201172,6.857422,9.561963,100,0,0),
(31791,0,4,-11.5078125,8.579834,9.557503,100,35000,3179101),
(31791,0,5,-13.84668,6.2470703,9.663048,100,0,0),
(31791,0,6,-15.605469,0.62939453,9.827464,100,0,0),
(31791,0,7,-13.791016,-4.8431396,9.686223,100,0,0),
(31791,0,8,-11.525391,-6.2677,9.561247,100,0,0),
(31791,0,9,-11.457031,-9.02002,9.504402,100,35000,3179101),
(31791,0,10,-9.043945,-7.2437744,9.46423,100,0,0),
(31791,0,11,-2.6914062,-5.8936768,9.354053,100,0,0),
(31791,0,12,0.40625,-6.5654297,9.366035,100,0,0),
(31791,0,13,1.1523438,-8.733276,9.362343,100,35000,3179101);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3179101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3179101,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3179101,29000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- Sailor Picardo 31792
UPDATE creature SET position_x = -2.034421, position_y = -2.630089, position_z = 9.445791, orientation = 3.159046, movementtype = 2, spawndist = 0 WHERE id = 31792;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31792;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31792;
DELETE FROM creature_movement_template WHERE Entry = 31792;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31792,0,1,-2.034421,-2.630089,9.445791,3.159046,40000,3179201),
(31792,0,2,-1.5722656,-1.4178467,9.37644,100,0,0),
(31792,0,3,-2.024414,0.09069824,9.374132,100,0,0),
(31792,0,4,-4.767578,0.10021973,9.366688,100,0,0),
(31792,0,5,-4.767578,0.10021973,9.366688,4.8345618,40000,3179201),
(31792,0,6,-4.767578,0.10021973,9.366688,1.60570,33000,3179202),
(31792,0,7,-3.9606934,0.14746094,9.368841,100,0,0),
(31792,0,8,-2.0324707,0.061035156,9.374129,100,0,0),
(31792,0,9,-2.034421,-2.630089,9.445791,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3179201,3179202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3179201,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3179201,36000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(3179202,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3179202,30000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- Sailor Phillips 31793
UPDATE creature SET position_x = 17.266602, position_y = 3.7319336, position_z = 9.831668, orientation = 0.83775806, movementtype = 2, spawndist = 0 WHERE id = 31793;
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 31793;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31793;
DELETE FROM creature_movement_template WHERE Entry = 31793;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31793,0,1,17.266602,3.7319336,9.831668,0.83775806,25000,3179301),
(31793,0,2,16.766602,3.0756836,9.828385,100,0,0),
(31793,0,3,15.944336,0.00012207031,9.870412,100,0,0),
(31793,0,4,16.199219,-3.0101318,9.802833,100,0,0),
(31793,0,5,17.145508,-3.921753,9.813026,100,25000,3179301),
(31793,0,6,16.706055,-3.6723633,9.8040905,100,0,0),
(31793,0,7,15.845703,1.2147217,9.84006,100,0,0),
(31793,0,8,17.266602,3.7319336,9.831668,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3179301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3179301,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3179301,20000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (31791,31792,31793);
