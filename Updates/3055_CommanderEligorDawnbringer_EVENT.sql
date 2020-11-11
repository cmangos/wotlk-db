-- Commander Eligor Dawnbringer - EVENT

-- Duplicates removed
DELETE FROM creature_addon WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM creature_movement WHERE id IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM game_event_creature WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM game_event_creature_data WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM creature_battleground WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM creature_linking WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111)
 OR master_guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);
DELETE FROM creature WHERE guid IN (519648,519649,516642,516574,516622,519653,519652,519659,519656,519655,519654,519657,519658,519650,519651,501070,501113,501111);

-- Commander Eligor Dawnbringer 27784
UPDATE creature_template SET MovementType = 2 WHERE entry = 27784;
UPDATE creature SET position_x = 3798.05, position_y = -680.6111, position_z = 222.9825, orientation = 6.038839, spawndist = 0, MovementType = 2 WHERE guid = 519661;
DELETE FROM creature_movement WHERE id = 519661;
DELETE FROM dbscript_random_templates WHERE id = 20201;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Boss Section
(20201,1,20409,0,'27784 - Random Script 1'),
(20201,1,20410,0,'27784 - Random Script 2'),
(20201,1,20411,0,'27784 - Random Script 3'),
-- spider wing
(20201,1,20412,0,'27784 - Random Script 4'),
(20201,1,20413,0,'27784 - Random Script 5'),
(20201,1,20414,0,'27784 - Random Script 6'),
-- plague wing
(20201,1,20415,0,'27784 - Random Script 7'),
(20201,1,20416,0,'27784 - Random Script 8'),
(20201,1,20417,0,'27784 - Random Script 9'),
-- abomination wing
(20201,1,20418,0,'27784 - Random Script 10'),
(20201,1,20419,0,'27784 - Random Script 11'),
(20201,1,20420,0,'27784 - Random Script 12'),
(20201,1,20421,0,'27784 - Random Script 13'),
-- death knight wing
(20201,1,20422,0,'27784 - Random Script 14'),
(20201,1,20423,0,'27784 - Random Script 15'),
(20201,1,20424,0,'27784 - Random Script 16');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20409 AND 20442;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20409,0,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Boss Section - Mr. Bigglesworth'),
(20410,0,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Boss Section - Sapphiron'),
(20411,0,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Boss Section - Kel\'Thuzad'),
(20412,0,20,2,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - spider wing - Anub\'Rekhan'),
(20413,0,20,2,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - spider wing - Faerlina'),
(20414,0,20,2,6,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - spider wing - Maexxna'),
(20415,0,20,2,7,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - plague wing - Noth'),
(20416,0,20,2,8,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - plague wing - Heigan'),
(20417,0,20,2,9,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - plague wing - Loatheb'),
(20418,0,20,2,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - abomination wing - Patchwerk'),
(20419,0,20,2,11,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - abomination wing - Grobbulus'),
(20420,0,20,2,12,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - abomination wing - Gluth'),
(20421,0,20,2,13,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - abomination wing - Thaddius'),
(20422,0,20,2,14,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - death knight wing - Razuvious'),
(20423,0,20,2,15,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - death knight wing - Gothik'),
(20424,0,20,2,16,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - death knight wing - four horsemen'),
-- Boss Section - checks
(20425,0,31,29223,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Mr. Bigglesworth'),
(20425,1,18,0,0,0,29223,20,7,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Mr. Bigglesworth'),
(20426,0,31,27767,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Sapphiron'),
(20426,1,18,0,0,0,27767,20,7,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Sapphiron'),
(20427,0,31,27766,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Kel\'Thuzad'),
(20427,1,18,0,0,0,27766,20,7,0,0,0,0,0,0,0,0,'27784 - Boss Section - check - Kel\'Thuzad'),
-- spider wing - checks
(20428,0,31,27776,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Anub\'rekhan'),
(20428,1,18,0,0,0,27776,20,7,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Anub\'rekhan'),
(20429,0,31,27777,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Faerlina'),
(20429,1,18,0,0,0,27777,20,7,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Faerlina'),
(20430,0,31,27778,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Maexxna'),
(20430,1,18,0,0,0,27778,20,7,0,0,0,0,0,0,0,0,'27784 - spider wing - check - Maexxna'),
-- plague wing - checks
(20431,0,31,27779,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Noth'),
(20431,1,18,0,0,0,27779,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Noth'),
(20432,0,31,27780,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Heigan'),
(20432,1,18,0,0,0,27780,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Heigan'),
(20433,0,31,27781,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Loatheb'),
(20433,1,18,0,0,0,27781,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Loatheb'),
-- abomination wing - checks
(20434,0,31,27773,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Patchwerk'),
(20434,1,18,0,0,0,27773,20,7,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Patchwerk'),
(20435,0,31,27774,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Grobbulus'),
(20435,1,18,0,0,0,27774,20,7,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Grobbulus'),
(20436,0,31,27782,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Gluth'),
(20436,1,18,0,0,0,27782,20,7,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Gluth'),
(20437,0,31,27775,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Thaddius'),
(20437,1,18,0,0,0,27775,20,7,0,0,0,0,0,0,0,0,'27784 - abomination wing - check - Thaddius'),
-- death knight wing - checks
(20438,0,31,27768,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Razuvious'),
(20438,1,18,0,0,0,27768,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Razuvious'),
(20439,0,31,27769,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Gothik'),
(20439,1,18,0,0,0,27769,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Gothik'),
(20440,0,31,27770,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Thane Korth\'azz'),
(20440,1,18,0,0,0,27770,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Thane Korth\'azz'),
(20441,0,31,27771,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Lady Blaumeux'),
(20441,1,18,0,0,0,27771,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Lady Blaumeux'),
(20442,0,31,27772,15,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Sir Zeliek'),
(20442,1,18,0,0,0,27772,20,7,0,0,0,0,0,0,0,0,'27784 - plague wing - check - Sir Zeliek');
DELETE FROM creature_movement_template WHERE entry = 27784;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- master waypoint
(27784,0,1,3798.05,-680.6111,222.9825,6.038839,30000,0),
(27784,0,2,3798.05,-680.6111,222.9825,6.038839,10000,2778401),
-- boss section waypoints
-- Mr. Bigglesworth
(27784,1,1,3798.05,-680.6111,222.9825,6.038839,5000,2778402),
(27784,1,2,3805.193,-683.1451,222.2364,100,0,0),
(27784,1,3,3805.193,-683.1451,222.2364,2.74038,40000,2778408),
(27784,1,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,1,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Sapphiron
(27784,2,1,3798.05,-680.6111,222.9825,6.038839,5000,2778402),
(27784,2,2,3805.193,-683.1451,222.2364,100,0,0),
(27784,2,3,3805.193,-683.1451,222.2364,2.74038,40000,2778409),
(27784,2,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,2,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Kel\'thuzad
(27784,3,1,3798.05,-680.6111,222.9825,6.038839,5000,2778402),
(27784,3,2,3805.193,-683.1451,222.2364,100,0,0),
(27784,3,3,3805.193,-683.1451,222.2364,2.74038,40000,2778410),
(27784,3,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,3,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- spider wing waypoints
-- Anub\'Rekhan
(27784,4,1,3798.05,-680.6111,222.9825,6.038839,5000,2778403),
(27784,4,2,3802.73,-672.851,222.98,100,0,0),
(27784,4,3,3803.96,-673.005,222.498,4.52549,40000,2778411),
(27784,4,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,4,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Faerlina
(27784,5,1,3798.05,-680.6111,222.9825,6.038839,5000,2778403),
(27784,5,2,3802.73,-672.851,222.98,100,0,0),
(27784,5,3,3803.96,-673.005,222.498,4.52549,40000,2778412),
(27784,5,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,5,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Maexxna
(27784,6,1,3798.05,-680.6111,222.9825,6.038839,5000,2778403),
(27784,6,2,3802.73,-672.851,222.98,100,0,0),
(27784,6,3,3803.96,-673.005,222.498,4.52549,40000,2778413),
(27784,6,4,3798.05,-680.6111,222.9825,100,0,0),
(27784,6,5,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- plague wing waypoints
-- Noth
(27784,7,1,3798.05,-680.6111,222.9825,6.038839,5000,2778404),
(27784,7,2,3802.49,-682.364,221.963,100,0,0),
(27784,7,3,3811.47,-678.751,221.968,100,0,0),
(27784,7,4,3814.9,-679.838,221.977,100,0,0),
(27784,7,5,3814.9,-679.838,221.977,3.35196,40000,2778414),
(27784,7,6,3798.05,-680.6111,222.9825,100,0,0),
(27784,7,7,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Heigan
(27784,8,1,3798.05,-680.6111,222.9825,6.038839,5000,2778404),
(27784,8,2,3802.49,-682.364,221.963,100,0,0),
(27784,8,3,3811.47,-678.751,221.968,100,0,0),
(27784,8,4,3814.9,-679.838,221.977,100,0,0),
(27784,8,5,3814.9,-679.838,221.977,3.35196,40000,2778415),
(27784,8,6,3798.05,-680.6111,222.9825,100,0,0),
(27784,8,7,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Loatheb
(27784,9,1,3798.05,-680.6111,222.9825,6.038839,5000,2778404),
(27784,9,2,3802.49,-682.364,221.963,100,0,0),
(27784,9,3,3811.47,-678.751,221.968,100,0,0),
(27784,9,4,3814.9,-679.838,221.977,100,0,0),
(27784,9,5,3814.9,-679.838,221.977,3.35196,40000,2778416),
(27784,9,6,3798.05,-680.6111,222.9825,100,0,0),
(27784,9,7,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- abomination wing waypoints
-- Patchwerk
(27784,10,1,3798.05,-680.6111,222.9825,6.038839,5000,2778405),
(27784,10,2,3796.09,-689.318,222.981,100,0,0),
(27784,10,3,3797.19,-690.187,222.501,100,0,0),
(27784,10,4,3797.19,-690.187,222.501,0.81903,40000,2778417),
(27784,10,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,10,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Grobbulus
(27784,11,1,3798.05,-680.6111,222.9825,6.038839,5000,2778405),
(27784,11,2,3796.09,-689.318,222.981,100,0,0),
(27784,11,3,3797.19,-690.187,222.501,100,0,0),
(27784,11,4,3797.19,-690.187,222.501,0.81903,40000,2778418),
(27784,11,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,11,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Gluth
(27784,12,1,3798.05,-680.6111,222.9825,6.038839,5000,2778405),
(27784,12,2,3796.09,-689.318,222.981,100,0,0),
(27784,12,3,3797.19,-690.187,222.501,100,0,0),
(27784,12,4,3797.19,-690.187,222.501,0.81903,40000,2778419),
(27784,12,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,12,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Thaddius
(27784,13,1,3798.05,-680.6111,222.9825,6.038839,5000,2778405),
(27784,13,2,3796.09,-689.318,222.981,100,0,0),
(27784,13,3,3797.19,-690.187,222.501,100,0,0),
(27784,13,4,3797.19,-690.187,222.501,0.81903,40000,2778420),
(27784,13,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,13,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- death knight wing waypoints
-- Razuvious
(27784,14,1,3798.05,-680.6111,222.9825,6.038839,5000,2778406),
(27784,14,2,3802.86,-682.48,221.964,100,0,0),
(27784,14,3,3807.84,-691.449,221.969,100,0,0),
(27784,14,4,3807.84,-691.449,221.969,2.1,40000,2778421),
(27784,14,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,14,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- Gothik
(27784,15,1,3798.05,-680.6111,222.9825,6.038839,5000,2778406),
(27784,15,2,3802.86,-682.48,221.964,100,0,0),
(27784,15,3,3807.84,-691.449,221.969,100,0,0),
(27784,15,4,3807.84,-691.449,221.969,2.1,40000,2778422),
(27784,15,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,15,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407),
-- four horsemen
(27784,16,1,3798.05,-680.6111,222.9825,6.038839,5000,2778406),
(27784,16,2,3802.86,-682.48,221.964,100,0,0),
(27784,16,3,3807.84,-691.449,221.969,100,0,0),
(27784,16,4,3807.84,-691.449,221.969,2.1,65000,2778423),
(27784,16,5,3798.05,-680.6111,222.9825,100,0,0),
(27784,16,6,3798.05,-680.6111,222.9825,6.038839,5000,2778407);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2778401 AND 2778423;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- master script
(2778401,10,45,0,20201,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Master waypoint - Random Script Selection'),
-- wing selecting
(2778402,0,0,0,0,0,0,0,0x04,2000020683,0,0,0,0,0,0,0,'27784 - Master: wing selecting - boss'),
(2778403,0,0,0,0,0,0,0,0x04,2000020680,0,0,0,0,0,0,0,'27784 - Master: wing selecting - spider wing'),
(2778404,0,0,0,0,0,0,0,0x04,2000020679,0,0,0,0,0,0,0,'27784 - Master: wing selecting - plague wing'),
(2778405,0,0,0,0,0,0,0,0x04,2000020681,0,0,0,0,0,0,0,'27784 - Master: wing selecting - abomination wing'),
(2778406,0,0,0,0,0,0,0,0x04,2000020682,0,0,0,0,0,0,0,'27784 - Master: wing selecting - death knight wing'),
-- final same for all
(2778407,100,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Master: all face Master'),
(2778407,1000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Master waypoint - reset'),
-- each creatures script
-- Mr. Bigglesworth
(2778408,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth'),
(2778408,10,45,20425,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth - check for others - terminate if alive'),
(2778408,100,45,20426,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth - check for others'),
(2778408,200,45,20427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth - check for others'),
(2778408,1000,10,29223,300000,0,0,0,0,0,0,0,0,3807.61,-684.316,224.122,2.74038,'27784 - Mr. Bigglesworth'),
(2778408,2000,0,0,0,0,0,0,0x04,2000020684,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth'),
(2778408,12000,0,0,0,0,0,0,0x04,2000020685,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth'),
(2778408,16000,0,0,0,0,0,0,0x04,2000020686,0,0,0,0,0,0,0,'27784 - Mr. Bigglesworth'),
-- Sapphiron
(2778409,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Sapphiron'),
(2778409,10,45,20425,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Sapphiron - check for others - terminate if alive'),
(2778409,100,45,20426,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Sapphiron - check for others'),
(2778409,200,45,20427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Sapphiron - check for others'),
(2778409,1000,10,27767,300000,0,0,0,0,0,0,0,0,3807.61,-684.316,224.122,2.74038,'27784 - Sapphiron'),
(2778409,2000,0,0,0,0,0,0,0x04,2000020687,0,0,0,0,0,0,0,'27784 - Sapphiron'),
(2778409,20000,0,0,0,0,0,0,0x04,2000020691,0,0,0,0,0,0,0,'27784 - Sapphiron'),
-- Kel\'thuzad
(2778410,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Kel\'thuzad'),
(2778410,10,45,20425,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Kel\'thuzad - check for others - terminate if alive'),
(2778410,100,45,20426,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Kel\'thuzad - check for others'),
(2778410,200,45,20427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Kel\'thuzad - check for others'),
(2778410,1000,10,27766,300000,0,0,0,0,0,0,0,0,3807.61,-684.316,224.122,2.74038,'27784 - Kel\'thuzad'),
(2778410,2000,0,0,0,0,0,0,0,2000020688,0,0,0,0,0,0,0,'27784 - Kel\'thuzad'),
(2778410,12000,0,0,0,0,0,0,0,2000020689,0,0,0,0,0,0,0,'27784 - Kel\'thuzad'),
(2778410,22000,0,0,0,0,0,0,0,2000020690,0,0,0,0,0,0,0,'27784 - Kel\'thuzad'),
-- Anub\'Rekhan
(2778411,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan'),
(2778411,10,45,20428,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan - check for others - terminate if alive'),
(2778411,100,45,20429,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan - check for others'),
(2778411,200,45,20430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan - check for others'),
(2778411,1000,10,27776,300000,0,0,0,0,0,0,0,0,3806.78,-673.792,224.229,3.38594,'27784 - Anub\'Rekhan'),
(2778411,2000,0,0,0,0,0,0,0x04,2000020692,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan'),
(2778411,20000,0,0,0,0,0,0,0x04,2000020691,0,0,0,0,0,0,0,'27784 - Anub\'Rekhan'),
-- Faerlina
(2778412,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Faerlina'),
(2778412,10,45,20428,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Faerlina - check for others - terminate if alive'),
(2778412,100,45,20429,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Faerlina - check for others'),
(2778412,200,45,20430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Faerlina - check for others'),
(2778412,1000,10,27777,300000,0,0,0,0,0,0,0,0,3806.78,-673.792,224.229,3.38594,'27784 - Faerlina'),
(2778412,2000,0,0,0,0,0,0,0x04,2000020693,0,0,0,0,0,0,0,'27784 - Faerlina'),
-- Maexxna
(2778413,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Maexxna'),
(2778413,10,45,20428,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Maexxna - check for others - terminate if alive'),
(2778413,100,45,20429,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Maexxna - check for others'),
(2778413,200,45,20430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Maexxna - check for others'),
(2778413,1000,10,27778,300000,0,0,0,0,0,0,0,0,3806.78,-673.792,224.229,3.38594,'27784 - Maexxna'),
(2778413,2000,0,0,0,0,0,0,0x04,2000020694,0,0,0,0,0,0,0,'27784 - Maexxna'),
-- Noth
(2778414,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Noth'),
(2778414,10,45,20431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Noth - check for others - terminate if alive'),
(2778414,100,45,20432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Noth - check for others'),
(2778414,200,45,20433,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Noth - check for others'),
(2778414,1000,10,27779,300000,0,0,0,0,0,0,0,0,3816.07,-677.585,224.345,4.5204,'27784 - Noth'),
(2778414,2000,0,0,0,0,0,0,0x04,2000020695,0,0,0,0,0,0,0,'27784 - Noth'),
-- Heigan
(2778415,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Heigan'),
(2778415,10,45,20431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Heigan - check for others - terminate if alive'),
(2778415,100,45,20432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Heigan - check for others'),
(2778415,200,45,20433,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Heigan - check for others'),
(2778415,1000,10,27780,300000,0,0,0,0,0,0,0,0,3816.07,-677.585,224.345,4.5204,'27784 - Heigan'),
(2778415,2000,0,0,0,0,0,0,0x04,2000020696,0,0,0,0,0,0,0,'27784 - Heigan'),
(2778415,12000,0,0,0,0,0,0,0x04,2000020697,0,0,0,0,0,0,0,'27784 - Heigan'),
-- Loatheb
(2778416,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Loatheb'),
(2778416,10,45,20431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Loatheb - check for others - terminate if alive'),
(2778416,100,45,20432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Loatheb - check for others'),
(2778416,200,45,20433,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Loatheb - check for others'),
(2778416,1000,10,27781,300000,0,0,0,0,0,0,0,0,3816.07,-677.585,224.345,4.5204,'27784 - Loatheb'),
(2778416,2000,0,0,0,0,0,0,0x04,2000020698,0,0,0,0,0,0,0,'27784 - Loatheb'),
(2778416,12000,0,0,0,0,0,0,0x04,2000020691,0,0,0,0,0,0,0,'27784 - Loatheb'),
-- Patchwerk
(2778417,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Patchwerk'),
(2778417,10,45,20434,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Patchwerk - check for others - terminate if alive'),
(2778417,100,45,20435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Patchwerk - check for others'),
(2778417,200,45,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Patchwerk - check for others'),
(2778417,300,45,20437,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Patchwerk - check for others'),
(2778417,1000,10,27773,300000,0,0,0,0,0,0,0,0,3799.64,-690.863,224.339,0.244346,'27784 - Patchwerk'),
(2778417,2000,0,0,0,0,0,0,0x04,2000020699,0,0,0,0,0,0,0,'27784 - Patchwerk'),
-- Grobbulus
(2778418,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Grobbulus'),
(2778418,10,45,20434,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Grobbulus - check for others - terminate if alive'),
(2778418,100,45,20435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Grobbulus - check for others'),
(2778418,200,45,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Grobbulus - check for others'),
(2778418,300,45,20437,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Grobbulus - check for others'),
(2778418,1000,10,27774,300000,0,0,0,0,0,0,0,0,3799.64,-690.863,224.339,0.244346,'27784 - Grobbulus'),
(2778418,2000,0,0,0,0,0,0,0x04,2000020700,0,0,0,0,0,0,0,'27784 - Grobbulus'),
-- Gluth
(2778419,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Gluth'),
(2778419,10,45,20434,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gluth - check for others - terminate if alive'),
(2778419,100,45,20435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gluth - check for others'),
(2778419,200,45,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gluth - check for others'),
(2778419,300,45,20437,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gluth - check for others'),
(2778419,1000,10,27782,300000,0,0,0,0,0,0,0,0,3799.64,-690.863,224.339,0.244346,'27784 - Gluth'),
(2778419,2000,0,0,0,0,0,0,0x04,2000020701,0,0,0,0,0,0,0,'27784 - Gluth'),
-- Thaddius
(2778420,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Thaddius'),
(2778420,10,45,20434,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Thaddius - check for others - terminate if alive'),
(2778420,100,45,20435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Thaddius - check for others'),
(2778420,200,45,20436,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Thaddius - check for others'),
(2778420,300,45,20437,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Thaddius - check for others'),
(2778420,1000,10,27775,300000,0,0,0,0,0,0,0,0,3799.64,-690.863,224.339,0.244346,'27784 - Thaddius'),
(2778420,2000,0,0,0,0,0,0,0x04,2000020702,0,0,0,0,0,0,0,'27784 - Thaddius'),
-- Razuvious
(2778421,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Razuvious'),
(2778421,10,45,20438,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Razuvious - check for others - terminate if alive'),
(2778421,100,45,20439,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Razuvious - check for others'),
(2778421,200,45,20440,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Razuvious - check for others'),
(2778421,300,45,20441,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Razuvious - check for others'),
(2778421,400,45,20442,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Razuvious - check for others'),
(2778421,1000,10,27768,300000,0,0,0,0,0,0,0,0,3809.35,-694.076,223.975,2.09439,'27784 - Razuvious'),
(2778421,2000,0,0,0,0,0,0,0x04,2000020703,0,0,0,0,0,0,0,'27784 - Razuvious'),
-- Gothik
(2778422,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - Gothik'),
(2778422,10,45,20438,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gothik - check for others - terminate if alive'),
(2778422,100,45,20439,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gothik - check for others'),
(2778422,200,45,20440,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gothik - check for others'),
(2778422,300,45,20441,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gothik - check for others'),
(2778422,400,45,20442,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - Gothik - check for others'),
(2778422,1000,10,27769,300000,0,0,0,0,0,0,0,0,3809.35,-694.076,223.975,2.09439,'27784 - Gothik'),
(2778422,2000,0,0,0,0,0,0,0x04,2000020704,0,0,0,0,0,0,0,'27784 - Gothik'),
-- four horsemen
(2778423,0,35,11,30,0,0,0,0,0,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,10,45,20438,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - four horsemen - check for others - terminate if alive'),
(2778423,100,45,20439,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - four horsemen - check for others'),
(2778423,200,45,20440,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - four horsemen - check for others'),
(2778423,300,45,20441,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - four horsemen - check for others'),
(2778423,400,45,20442,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'27784 - four horsemen - check for others'),
(2778423,1000,10,27770,300000,0,0,0,0,0,0,0,0,3809.35,-694.076,223.975,2.09439,'27784 - four horsemen'),
(2778423,2000,0,0,0,0,0,0,0x04,2000020705,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,15000,18,0,0,0,27770,20,7,0,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,15010,10,27771,300000,0,0,0,0,0,0,0,0,3809.35,-694.076,223.975,2.09439,'27784 - four horsemen'),
(2778423,16000,0,0,0,0,0,0,0x04,2000020706,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,30000,18,0,0,0,27771,20,7,0,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,30010,10,27772,300000,0,0,0,0,0,0,0,0,3809.35,-694.076,223.975,2.09439,'27784 - four horsemen'),
(2778423,31000,0,0,0,0,0,0,0x04,2000020707,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,46000,0,0,0,0,0,0,0x04,2000020708,0,0,0,0,0,0,0,'27784 - four horsemen'),
(2778423,60000,0,0,0,0,0,0,0x04,2000020691,0,0,0,0,0,0,0,'27784 - four horsemen');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020679 AND 2000020708;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020679,'Next, I shall speak of the dread plague wing of Naxxramas, where the Scourge seek to improve upon the deadly blight which they spread across Lordaeron.',0,0,7,0,NULL),
(2000020680,'Next, I shall speak of the accursed spider wing of Naxxramas. It is there the Scourge breed even more poisonous and dangerous versions of their kin.',0,0,7,0,NULL),
(2000020681,'Next, I shall speak of the blighted abomination wing of Naxxramas. There, the Scourge develop the strongest and most hideous aberrations of their armies.',0,0,0,0,NULL),
(2000020682,'Next, I shall speak of the death knight wing of Naxxramas. Within its corrupted halls, the echo of battle rings day and night, as our finest warriors are corrupted and twisted into the Scourge\'s greatest warriors.',0,0,7,0,NULL),
(2000020683,'Next, I shall speak of the most powerful entities within the pinnacle of Naxxramas. Truly, these are two of the greatest threats to all of Northrend.',0,0,7,0,NULL),
-- from Bosses
(2000020684,'Mr. Bigglesworth. The last living creature in Naxxramas, this cat is said to be the last thread connecting Kel\'thuzad to his mortal life. It is said that any who dare to harm a hair on his head doom themselves to... wait a second, what is he doing on there?!',0,0,7,0,NULL),
(2000020685,'%s pounds on the display a few times.',0,2,0,0,NULL),
(2000020686,'Well, nevermind. I\'m sure no one would be foolish enough to lay a hand on Kel\'thuzard precious pet.',0,0,7,0,NULL),
(2000020687,'Sapphiron. Once a noble blue dragon within the mountains of Northrend, Sapphiron was slain by Arthas during his campaign through the frozen north. Resurrected to serve him, Sapphiron guards Kel\'thuzad\'s lair eternally, awaiting those who would dare tresspass upon his master.',0,0,7,0,NULL),
(2000020688,'The lich, Kel\'Thuzad. He serves the Lich King without question, a necromancer of great prowess in life, turned into a master of necromancy after his death. It is said he is the most loyal of the Lich King\'s subjects.',0,0,7,0,NULL),
(2000020689,'Kel\'thuzad has survived trials that would have long since shattered the souls of even the greatest of the Brotherhood. He readily gave his life at Arthas\'s hand, later to be brought back - reborn in the power of the Sunwell. ',0,0,7,0,NULL),
(2000020690,'In the Plaguelands, Kel\'thuzad was again defeated by the agents of the Argent Dawn. However, his phylactery was delivered to a false agent of the Brotherhood. We have yet to discover who stole his phylactery or why. ',0,0,7,0,NULL),
-- final common text
(2000020691,'I shall leave this image on display for your perusal. Study your opponents\' strengths, for a creature\'s strength can also be its weakness.',0,0,7,0,NULL),
-- other creatures
(2000020692,'Anub\'Rekhan, one of the finest Spider Lords of Azjol\'Nerub, was brought under the control of the Scourge when he and his former commander, Anub\'arak, were finally defeated by Lich King many years ago. It is said that he was the most loyal of Anub\'arak\'s commanders.',0,0,7,0,NULL),
(2000020693,'The Grand Widow Faerlina, a botanist in life, breeder and caretaker of arachnids in death, she overseers the spider wing, developing the most potent of poisons for the Lich King. ',0,0,7,0,NULL),
(2000020694,'Maexxna, born deep within the mountains of Northrend many ages ago, she was captured within the dread citadel Naxxramas, where she gives birth to her brood, feeding them the corpses of all who dare venture too deeply into Naxxramas.',0,0,7,0,NULL),
(2000020695,'Behold, Noth the Plaguebringer. Responsible for the creation of the process that distills the souls of the living and places them within the cold cage of undeath, Noth was observed to be refining this process even now. ',0,0,7,0,NULL),
(2000020696,'Observe, Heigan the Unclean. The mastermind behind the plague cauldrons that turned the wilderness of Azeroth into the Plaguelands. ',0,0,7,0,NULL),
(2000020697,'It is said that Heigan has rigged the very walls and floors of Naxxramas itself with a vast array of traps, which he can trigger at will.',0,0,7,0,NULL),
(2000020698,'Loatheb. The hideous result of fusing the living plague of the Plaguelands with the bog beasts of Azeroth, Loatheb is said to control the power of healing itself. ',0,0,7,0,NULL),
(2000020699,'Behold, Patchwerk. When word of his existence first reached the ears of the Brotherhood, none believed the tales of an abomination with such immense speed and strength. Fewer still believed it when he fell the first time...',0,0,7,0,NULL),
(2000020700,'Grobbulus, the first of what was to be an army of flesh giants. It carried the plague slime of Naxxramas within its body, injecting the living ooze into the bodies of its foe. The recipient of this foul injection would usually flee to his allies, bringing them down with him.',0,0,7,0,NULL),
(2000020701,'Gluth, the foul plague-dog of Naxxramas, was said to have an appetite so voracious that even the living were not enough to satisfy his hunger. Feugen was said to feed him an army of zombies daily, recycling the remains of undead too weak to use in combat.',0,0,7,0,NULL),
(2000020702,'Thaddius, built from the flesh of women and children, it is said that their souls are fused together - eternally bound within that foul prison of flesh. ',0,0,7,0,NULL),
(2000020703,'Pay attention. This is Instructor Razuvious, Kel\'Thuzad\'s appointed trainer of all death knights. It is said that his own technique is so potent, only a disciple of his could possibly withstand his might.',0,0,7,0,NULL),
(2000020704,'Gothik, the Harvester. A master of necromancy and conjuration, Gothik is said to be able to beckon forth legions of the undead at a moment\'s notice. It is with his guidance that even the weakest of Death Knights can raise the dead.',0,0,7,0,NULL),
(2000020705,'The most powerful death knights within Naxxramas are the four horsemen. They represent the pinnacle of Kel\'Thuzad\'s guard. The first, Thane Korth\'azz, holds the power of flame. ',0,0,7,0,NULL),
(2000020706,'The next, Lady Blaumeux, calls forth the power of shadows, drawing the souls of the living into the voracious embrace.',0,0,7,0,NULL),
(2000020707,'Sir Zeliek, a paladin in life, so strong in his faith, that even in undeath, the power of the light still heeds his call, smiting his foes in battle.',0,0,7,0,NULL),
(2000020708,'The final death knight, Lord Mograine, was the finest warrior that the death knights had ever seen. However, after the events in Azeroth, he vanished without a trace. It is yet to be seen who Kel\'Thuzad has appointed in his place.',0,0,7,0,NULL);

-- Mr. Bigglesworth 29223
UPDATE creature_template SET MovementType = 0 WHERE entry = 29223;

-- Image of Lady Blaumeux 27771
UPDATE creature_template SET ModelId1 = 24794 WHERE entry = 27771;

-- 7th Legion Sentinel 27162
-- individual addons
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516616,516623,516624);
DELETE FROM creature_movement WHERE id IN (516616,516623,516624);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516616
(516616,1,3802.93,-680.137,222.046,5.10829,100,11),
(516616,2,3802.93,-680.137,222.046,5.10829,100,3),
-- 516623
(516623,1,3800.09,-687.701,222.047,5.85484,100,11),
(516623,2,3800.09,-687.701,222.047,5.85484,100,3),
-- 516624
(516624,1,3801.56,-688.752,222.047,5.90897,100,11),
(516624,2,3801.56,-688.752,222.047,5.90897,100,3);

-- Invisible Stalker (Floating)
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (501110,501112,501114,501115,501116);
DELETE FROM creature_movement WHERE id IN (501110,501112,501114,501115,501116);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 501110
(501110,1,3806.744,-669.3193,223.8465,100,0,0),
(501110,2,3809.637,-670.4093,223.8465,100,0,0),
(501110,3,3810.651,-674.6262,223.8465,100,0,0),
(501110,4,3808.057,-677.2673,223.8465,100,0,0),
(501110,5,3804.191,-676.4904,223.8465,100,0,0),
(501110,6,3802.311,-673.4647,223.8465,100,0,0),
(501110,7,3804.225,-669.8109,223.8465,100,0,0),
-- 501112
(501112,1,3813.058,-695.1207,222.999,100,0,0),
(501112,2,3813.632,-697.7827,222.9997,100,0,0),
(501112,3,3812.425,-700.1073,223.0008,100,0,0),
(501112,4,3809.649,-700.7341,223.0008,100,0,0),
(501112,5,3805.123,-698.4109,223.0008,100,0,0),
(501112,6,3804.403,-695.9564,223.0008,100,0,0),
(501112,7,3805.12,-693.7753,223.1427,100,0,0),
(501112,8,3807.3,-691.3777,223.4204,100,0,0),
(501112,9,3811.286,-692.7845,223.0623,100,0,0),
-- 501114
(501114,1,3797.656,-695.3698,223.7538,100,0,0),
(501114,2,3794.607,-693.5101,223.7538,100,0,0),
(501114,3,3794.899,-689.9442,223.7538,100,0,0),
(501114,4,3798.899,-687.9035,223.7538,100,0,0),
(501114,5,3802.577,-690.2576,223.7538,100,0,0),
(501114,6,3801.8,-694.2828,223.7538,100,0,0),
-- 501115
(501115,1,3815.454,-680.2464,223.0009,100,0,0),
(501115,2,3813.004,-677.2374,223.0009,100,0,0),
(501115,3,3814.027,-673.7756,223.0009,100,0,0),
(501115,4,3816.468,-672.7212,223.0009,100,0,0),
(501115,5,3819.056,-673.5551,222.9989,100,0,0),
(501115,6,3820.681,-676.2151,223.0009,100,0,0),
(501115,7,3819.998,-679.0777,223.0009,100,0,0),
-- 501116
(501116,1,3805.747,-687.1393,223.1568,100,0,0),
(501116,2,3804.891,-684.0416,223.1568,100,0,0),
(501116,3,3807.519,-679.4173,223.1568,100,0,0),
(501116,4,3811.978,-681.2499,223.1568,100,0,0),
(501116,5,3811.325,-686.3337,223.1568,100,0,0),
(501116,6,3808.847,-687.7697,223.1568,100,0,0);
