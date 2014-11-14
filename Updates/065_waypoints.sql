-- Roetten Stonehammer <Reclaimers Inc.>
SET @STONEHAMMER := 5637;
-- ----------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @STONEHAMMER);
SET @POINT := 0;
UPDATE creature SET position_x = -4681.394, position_y = -1266.606, position_z = 503.4648, orientation = 1.963985, MovementType = 2 WHERE id = @STONEHAMMER;
DELETE FROM creature_movement WHERE id=@GUID;
DELETE FROM creature_movement_template WHERE entry=@STONEHAMMER;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@STONEHAMMER, (@POINT := @POINT + 1), -4686.149, -1255.140, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4675.921, -1244.380, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4667.503, -1245.781, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4661.595, -1250.517, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4661.595, -1250.517, 503.3816, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.356194, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4670.109, -1243.077, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4681.147, -1244.796, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4686.531, -1252.014, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4685.416, -1262.677, 501.9927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4681.394, -1266.606, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@STONEHAMMER, (@POINT := @POINT + 1), -4681.394, -1266.606, 503.3816, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.605703, 0, 0);
-- Curator Thorius
SET @THORIUS := 8256;
DELETE FROM db_script_string WHERE entry = 2000005000;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @THORIUS);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @THORIUS);
SET @POINT := 0;
UPDATE creature SET position_x = -4652.276, position_y = -1278.877, position_z = 503.4648, orientation = 0.7819276, MovementType = 2 WHERE id = @THORIUS;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @THORIUS;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 825601 AND 825603;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000395 AND 2000000397;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@THORIUS, (@POINT := @POINT + 1), -4646.738, -1273.377, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4643.056, -1269.847, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4638.852, -1265.486, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4633.741, -1261.104, 503.3824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4629.312, -1256.385, 503.3824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4623.375, -1256.475, 503.3830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4622.471, -1258.746, 503.3833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4622.471, -1258.746, 503.3833, 4500, 825601, 0, 0, 0, 0, 0, 0, 0, 0, 4.066617, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4615.686, -1255.442, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4608.177, -1249.271, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4603.862, -1251.563, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4603.862, -1251.563, 503.3816, 4500, 825602, 0, 0, 0, 0, 0, 0, 0, 0, 0.3316126, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4598.436, -1240.892, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4592.448, -1232.214, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4588.735, -1222.179, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4588.735, -1222.179, 503.3816, 4500, 825603, 0, 0, 0, 0, 0, 0, 0, 0, 5.742133, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4593.644, -1214.160, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4598.711, -1219.354, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4604.790, -1227.240, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4610.729, -1236.657, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4613.158, -1252.017, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4618.215, -1264.094, 503.3841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4633.393, -1276.797, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4652.419, -1285.877, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4667.360, -1293.999, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4678.205, -1296.404, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4689.225, -1301.691, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4699.487, -1307.610, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4709.615, -1317.365, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4711.283, -1322.386, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4711.283, -1322.386, 503.3816, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.577925, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4702.810, -1325.272, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4696.292, -1325.815, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4689.635, -1325.204, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4686.068, -1319.191, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4683.053, -1314.015, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4675.000, -1312.604, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4664.885, -1306.134, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4662.038, -1298.117, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4659.426, -1288.833, 503.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@THORIUS, (@POINT := @POINT + 1), -4654.313, -1281.536, 503.3816, 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.959392, 0, 0);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(825601, 2, 0, 0, 0, 0, 0, 0, 2000000395, 0, 0, 0, 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 1'))),
(825602, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (CONCAT(@NAME,'  - Emote 1'))),
(825602, 2, 0, 0, 0, 0, 0, 0, 2000000396, 0, 0, 0, 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 2'))),
(825602, 4.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (CONCAT(@NAME,'  - Emote 1 (Stop)'))),
(825603, 2, 0, 0, 0, 0, 0, 0, 2000000397, 0, 0, 0, 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 3')));
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000395,'%s dusts the base of the artifact.', 0, 2, 0, 16, (CONCAT(@NAME,'  - Say 1'))),
(2000000396,'%s meticulously examines the large vase.', 0, 2, 0, 0, (CONCAT(@NAME,'  - Say 2'))),
(2000000397,'Poor Dorius. If I ever get my hands on those Dark Irons, so help me...', 2929, 0, 0, 36, (CONCAT(@NAME,'  - Say 3')));
-- Bimble Longberry 
SET @LONGBERRY := 7978;
-- ----------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @LONGBERRY);
SET @POINT := 0;
UPDATE creature SET position_x = -4715.607, position_y = -925.8232, position_z = 501.7426, orientation = 1.179421, MovementType = 2 WHERE id = @LONGBERRY;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @LONGBERRY;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@LONGBERRY, (@POINT := @POINT + 1), -4707.845, -907.0120, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4688.098, -902.9882, 501.6476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4671.588, -914.5618, 501.6541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4655.948, -931.1495, 501.6580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4636.642, -954.9941, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4621.530, -981.5043, 501.6564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4617.623, -1000.404, 501.6645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4626.838, -1012.120, 501.6519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4641.676, -1014.932, 501.6477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4657.655, -997.7007, 501.6358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4667.463, -983.3502, 501.6441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4681.746, -969.3637, 501.6945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4689.473, -949.4840, 501.6629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4699.370, -937.9786, 501.6703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@LONGBERRY, (@POINT := @POINT + 1), -4711.072, -923.4749, 501.6572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- John Turner
SET @TURNER := 6175;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @TURNER);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @TURNER);
SET @POINT := 0;
UPDATE creature SET position_x = -4895.609, position_y = -898.0984, position_z = 501.7426, orientation = 2.286381, MovementType = 2 WHERE id = @TURNER;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @TURNER;
DELETE FROM dbscripts_on_creature_movement WHERE id = 617501;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000398 AND 2000000401;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@TURNER, (@POINT := @POINT + 1), -4895.609, -898.0984, 501.6593, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.286381, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4859.858, -887.9218, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4842.476, -885.5647, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4842.476, -885.5647, 501.6594, 0000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 1.884956, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4875.518, -889.0638, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4895.693, -897.8222, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4895.693, -897.8222, 501.6593, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.251475, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4927.132, -915.4280, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4951.839, -934.9794, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4981.382, -966.5792, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4983.741, -969.7697, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4983.741, -969.7697, 501.6595, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.443461, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -5002.574, -1008.675, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -5007.885, -1022.321, 501.6549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -5012.979, -1052.933, 501.7099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -5012.979, -1052.933, 501.7099, 4000, 617501, 0, 0, 0, 0, 0, 0, 0, 0, 2.967060, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -5006.932, -1021.700, 501.6555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4992.735, -985.8944, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4981.066, -962.5291, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4944.819, -930.4164, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4906.594, -901.6618, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@TURNER, (@POINT := @POINT + 1), -4895.609, -898.0984, 501.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(617501, 0, 0, 0, 0, 0, 0, 0, 2000000398, 2000000399, 2000000400, 2000000401, 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 1, 2, 3 or 4')));
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000398,'Give to the charities who seek to help the victims of these hard times! Please.', 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 1'))),
(2000000399,'Don\'t forget the orphans of Stormwind!', 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 2'))),
(2000000400,'Give of your hearts and your purses! Give to the children of Stormwind who have lost their parents.', 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 3'))),
(2000000401,'Help the children of Stormwind... victims of the war and plague!', 0, 0, 0, 0, (CONCAT(@NAME,'  - Say 4')));
-- Golorn Frostbeard
SET @FROSTBEARD := 1692;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @FROSTBEARD);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @FROSTBEARD);
SET @POINT := 0;
UPDATE creature SET position_x = -5633.440, position_y = -496.4770, position_z = 396.8753, orientation = 2.539195, MovementType = 2 WHERE id = @FROSTBEARD;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @FROSTBEARD;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@FROSTBEARD, (@POINT := @POINT + 1), -5636.061, -495.8329, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5641.399, -498.8961, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5640.832, -501.3918, 396.7937, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.936115, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5641.399, -498.8961, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5640.068, -496.7379, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5636.061, -495.8329, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5633.440, -496.4770, 396.7780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@FROSTBEARD, (@POINT := @POINT + 1), -5633.440, -496.4770, 396.7780, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.199115, 0, 0);
 -- Ironforge Guard -- UPDATE 
SET @GUID := 57;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4992.175, position_y = -1155.4130, position_z = 501.7427, orientation = 3.96066, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -5007.487, -1171.793, 501.6597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5008.707, -1185.934, 501.6618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4998.198, -1206.620, 501.6775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4984.833, -1224.770, 501.6792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4963.304, -1244.974, 501.6728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4941.089, -1251.620, 501.6482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4927.949, -1242.192, 501.6396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4928.527, -1229.495, 501.6493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4943.524, -1216.123, 501.6482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4952.011, -1195.801, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4965.607, -1189.141, 501.6592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4981.276, -1171.385, 501.6539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4992.600, -1155.349, 501.6561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Sognar Cliffbeard  -- UPDATE 
SET @CLIFFBEARD := 5124;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @CLIFFBEARD);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @CLIFFBEARD);
SET @POINT := 0;
UPDATE creature SET position_x = -5002.887, position_y = -1160.7340, position_z = 501.7427, orientation = 3.433445, MovementType = 2 WHERE id = @CLIFFBEARD;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @CLIFFBEARD;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@CLIFFBEARD, (@POINT := @POINT + 1), -5014.963, -1164.3620, 501.6634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -5017.406, -1177.7400, 501.6543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -5006.694, -1195.8610, 501.6673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4991.032, -1215.0220, 501.6773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4976.490, -1233.4380, 501.6785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4963.135, -1249.5380, 501.6708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4950.890, -1261.2130, 501.6667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4932.905, -1258.3310, 501.6477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4925.248, -1245.3570, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4926.883, -1234.4750, 501.6547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4941.878, -1220.3930, 501.6520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4947.642, -1205.3560, 501.6685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4957.721, -1193.1830, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4974.970, -1183.9740, 501.6564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -4983.421, -1169.0440, 501.6555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@CLIFFBEARD, (@POINT := @POINT + 1), -5002.725, -1160.7740, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 -- Ironforge Guard  -- UPDATE 
SET @GUID := 97;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4883.044, position_y = -1115.5980, position_z = 502.2956, orientation = 3.167327, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4894.075, -1115.8820, 501.7928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4906.619, -1118.9820, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4917.980, -1125.1810, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4921.549, -1132.5180, 501.6068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4923.342, -1144.4310, 501.4421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4928.308, -1159.0010, 501.4994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4932.610, -1173.3460, 501.6097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4938.115, -1183.5250, 501.7061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4948.813, -1191.5090, 501.6595, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.78266300, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4938.763, -1183.0540, 501.7118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4932.521, -1170.7710, 501.5935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4928.323, -1153.0580, 501.4631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4925.346, -1140.7550, 501.3722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4922.706, -1131.4410, 501.6305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4913.503, -1121.0990, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4900.859, -1117.3100, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4883.246, -1115.6400, 502.1969, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.09456634, 0, 0);
 -- Ironforge Guard  -- UPDATE
SET @GUID := 1889;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4721.123, position_y = -1265.5990, position_z = 501.7427, orientation = 0.7560951, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4708.459, -1253.6560, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4698.779, -1235.5510, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4685.847, -1223.8760, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4669.440, -1218.9460, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4655.979, -1205.6970, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4667.163, -1192.6480, 501.6588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4679.893, -1193.8490, 501.6585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4695.925, -1199.8700, 501.6584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4712.359, -1205.4420, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4720.557, -1213.5260, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4733.086, -1230.5010, 501.6559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4738.724, -1248.3250, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4732.381, -1261.1520, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4721.185, -1265.5250, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 -- Ironforge Guard
SET @GUID := 121;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4986.547, position_y = -963.8156, position_z = 501.7427, orientation = 5.707227, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4986.600, -963.4806, 501.6595, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.637167, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4997.777, -956.2134, 501.6609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5011.686, -939.2016, 501.6596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5011.280, -923.0540, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4982.625, -898.7230, 501.6041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4979.974, -889.4788, 501.6265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4979.974, -889.4788, 501.6265, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.303835, 0, 0), 
(@GUID, (@POINT := @POINT + 1), -4981.966, -898.9245, 501.6014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5007.113, -919.8450, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5013.242, -937.7985, 501.6597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5000.367, -953.1014, 501.6611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 -- Ironforge Guard
SET @GUID := 134;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4902.161, position_y = -895.6193, position_z = 501.7426, orientation = 5.235988, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4902.170, -895.5770, 501.6594, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.122505, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4908.303, -879.5649, 501.6605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4921.320, -862.3778, 501.6606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4932.795, -858.5505, 501.6626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4963.470, -883.8062, 501.6003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4973.356, -884.4930, 501.6224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4973.356, -884.4930, 501.6224, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.199115, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4964.546, -881.7691, 501.6193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4940.618, -860.9469, 501.6613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4923.315, -864.1235, 501.6606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4908.667, -880.6354, 501.6605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 -- Ironforge Guard
SET @GUID := 1748;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4958.850, position_y = -997.5289, position_z = 501.5721, orientation = 0.9778681, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4942.368, -973.0673, 501.5523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4922.720, -954.7523, 501.5698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4896.282, -936.7808, 501.4918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4872.001, -926.0280, 501.5149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4872.001, -926.0280, 501.5149, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5953780, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4905.076, -941.8298, 501.5605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4929.299, -961.5024, 501.5698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4958.948, -997.8889, 501.4812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4958.948, -997.8889, 501.4812, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9773844, 0, 0);
-- Ironforge Guard
SET @GUID := 1759;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4771.914, position_y = -1021.364, position_z = 502.2956, orientation = 1.193777, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4767.071, -1009.134, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4759.091, -994.4371, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4746.498, -986.7278, 501.5323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4727.245, -986.3358, 501.4722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4709.644, -986.9350, 501.6451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4696.713, -982.7900, 501.6962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4686.291, -974.5480, 501.6554, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.6690948, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4701.526, -986.7450, 501.6711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4718.943, -986.9548, 501.5041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4743.440, -985.0746, 501.4334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4759.754, -995.0007, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4765.604, -1007.700, 501.6978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4771.829, -1021.206, 502.2123, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.2805010, 0, 0);
-- Ironforge Guard
SET @GUID := 1760;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -4635.689, position_y = -997.4887, position_z = 501.7427, orientation = 0.9016399, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4621.842, -979.9805, 501.6565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4632.920, -958.1653, 501.6589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4645.341, -941.0410, 501.6577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4660.012, -925.5549, 501.6573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4687.626, -903.8880, 501.6717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4703.024, -913.8218, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4707.872, -930.5532, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4697.937, -943.9158, 501.6703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4687.489, -966.4830, 501.6829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4672.090, -983.1004, 501.6840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4654.317, -995.6335, 501.6393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4635.397, -998.0302, 501.6534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Ironforge Guard
SET @GUID := 105;
-- -------------------------------------
SET @POINT := 0;
UPDATE creature SET position_x = -5003.920, position_y = -1117.3320, position_z = 501.7582, orientation = 0.7226949, MovementType = 2 WHERE guid = @GUID;
DELETE FROM creature_movement WHERE id = @GUID;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@GUID, (@POINT := @POINT + 1), -4997.035, -1111.260, 501.6703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4994.561, -1083.678, 498.8325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4991.824, -1055.735, 497.9429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4986.590, -1034.179, 501.6517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4972.985, -994.6423, 501.6516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4954.183, -966.5741, 501.6577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4931.063, -943.3762, 501.6425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4896.667, -918.9849, 501.6267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4859.071, -906.0353, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4827.863, -903.4857, 501.6598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4805.999, -905.0009, 497.9457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4778.714, -906.3766, 500.0083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4766.738, -906.0627, 501.6277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4753.256, -910.0827, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4747.038, -905.0212, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4748.268, -895.6587, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4773.682, -886.5223, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4799.893, -879.7461, 501.6700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4830.926, -880.5823, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4859.374, -884.3204, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4900.400, -897.6807, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4928.519, -913.5782, 501.6594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4964.312, -943.6036, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4982.343, -966.8148, 501.6595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -4995.402, -992.4957, 501.6619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5006.113, -1016.344, 501.6579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5010.339, -1035.028, 501.6559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5016.313, -1067.132, 501.7428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5017.297, -1096.132, 501.6779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5014.159, -1111.454, 501.6730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID, (@POINT := @POINT + 1), -5004.407, -1115.416, 501.6730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Protector Dorana
SET @DORANA := 869;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @DORANA);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @DORANA);
SET @POINT := 0;
UPDATE creature SET position_x = -10657.14, position_y = 1010.878, position_z = 32.55214, orientation = 0.3832296, MovementType = 2 WHERE id = @DORANA;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @DORANA;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@DORANA, (@POINT := @POINT + 1), -10642.80, 1016.665, 31.565100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10620.20, 1000.852, 32.994370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10593.99, 987.9368, 36.877070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10564.63, 975.7330, 40.634450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10532.88, 961.9837, 40.885220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10500.21, 952.6395, 39.459800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10466.91, 953.8127, 35.898200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10433.16, 981.9645, 34.757520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10410.51, 994.7161, 32.164260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10400.42, 992.5428, 31.579060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10386.81, 984.0738, 31.597850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10367.39, 980.6182, 31.472850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10333.47, 978.7831, 31.254930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10300.25, 965.6370, 31.253040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10285.64, 964.0901, 31.185620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10273.86, 970.6926, 31.185620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10267.59, 983.3521, 31.310620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10260.89, 989.9033, 31.377510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10233.98, 996.2642, 31.491770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10215.86, 994.5016, 32.503140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10200.06, 989.3520, 32.933310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10190.04, 984.9003, 33.780400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10166.77, 986.7172, 34.054080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10133.55, 990.6491, 36.048570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10116.65, 990.1268, 38.219650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10100.18, 999.1907, 37.460870, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10116.65, 990.1268, 38.219650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10133.55, 990.6491, 36.048570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10166.77, 986.7172, 34.054080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10190.04, 984.9003, 33.780400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10200.06, 989.3520, 32.933310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10215.86, 994.5016, 32.503140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10233.98, 996.2642, 31.491770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10260.89, 989.9033, 31.377510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10267.59, 983.3521, 31.310620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10273.86, 970.6926, 31.185620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10285.64, 964.0901, 31.185620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10300.25, 965.6370, 31.253040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10333.47, 978.7831, 31.254930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10367.39, 980.6182, 31.472850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10386.81, 984.0738, 31.597850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10400.42, 992.5428, 31.579060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10410.51, 994.7161, 32.164260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10433.16, 981.9645, 34.757520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10466.91, 953.8127, 35.898200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10500.21, 952.6395, 39.459800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10532.88, 961.9837, 40.885220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10564.63, 975.7330, 40.634450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10593.99, 987.9368, 36.877070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10620.20, 1000.8520, 32.99437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10642.80, 1016.6650, 31.56510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@DORANA, (@POINT := @POINT + 1), -10647.46, 1012.3680, 31.77653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Protector Korelor
SET @KORELOR := 874;
-- -------------------------------------
SET @GUID := (SELECT guid FROM creature WHERE id = @KORELOR);
SET @NAME := (SELECT name FROM creature_template WHERE entry = @KORELOR);
SET @POINT := 0;
UPDATE creature SET position_x = -10632.98, position_y = 1087.872, position_z = 33.87227, orientation = 4.635367, MovementType = 2 WHERE id = @KORELOR;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @KORELOR;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@KORELOR, (@POINT := @POINT + 1), -10634.18, 1072.219, 33.90115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10640.83, 1056.614, 33.69242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10655.06, 1038.739, 33.58622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10663.54, 1029.080, 32.69010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10699.92, 1033.696, 34.47182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10719.79, 1032.385, 34.58892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10732.51, 1027.076, 34.58892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10746.82, 1018.542, 34.10905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10768.83, 1017.259, 32.24479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10793.78, 1018.650, 32.28947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10833.29, 1009.724, 32.82467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10864.48, 1006.455, 31.67381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10898.81, 999.4549, 35.70985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10919.73, 993.3299, 35.46926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10942.45, 967.6190, 32.45774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10949.25, 940.7150, 31.55006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10946.80, 934.3032, 31.55006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10914.47, 901.5839, 32.28352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10916.35, 868.8564, 32.45573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10926.30, 852.3051, 32.84294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10929.21, 832.7261, 32.29058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10919.83, 800.1399, 30.84746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10900.73, 777.5663, 30.75943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10880.35, 749.3021, 31.09746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10877.12, 732.9159, 31.10690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10871.73, 699.8195, 30.98836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10866.87, 665.3965, 31.03180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10871.73, 699.8195, 30.98836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10877.12, 732.9159, 31.10690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10880.35, 749.3021, 31.09746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10900.73, 777.5663, 30.75943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10919.83, 800.1399, 30.84746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10929.21, 832.7261, 32.29058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10926.30, 852.3051, 32.84294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10916.35, 868.8564, 32.45573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10914.47, 901.5839, 32.28352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10946.80, 934.3032, 31.55006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10949.25, 940.7150, 31.55006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10942.45, 967.6190, 32.45774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10919.73, 993.3299, 35.46926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10898.81, 999.4549, 35.70985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10864.48, 1006.455, 31.67381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10833.29, 1009.724, 32.82467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10794.01, 1018.667, 32.32072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10768.83, 1017.259, 32.24479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10746.87, 1018.548, 34.16447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10732.51, 1027.076, 34.58892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10719.79, 1032.385, 34.58892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10699.92, 1033.696, 34.47182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10663.54, 1029.080, 32.69010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10655.06, 1038.739, 33.58622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10640.83, 1056.614, 33.69242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10634.18, 1072.219, 33.90115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@KORELOR, (@POINT := @POINT + 1), -10634.00, 1085.885, 33.74294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
