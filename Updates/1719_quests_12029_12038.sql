-- q.12029/12038 'Seared Scourge'

-- target for spell
DELETE FROM spell_script_target WHERE entry = 47214;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(47214,1,26570,0);

-- Famished Scourge Troll
-- duplicates removed
DELETE FROM creature WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM creature_addon WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM creature_movement WHERE id IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM game_event_creature WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM game_event_creature_data WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM creature_battleground WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
DELETE FROM creature_linking WHERE guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916)
 OR master_guid IN (114895,114897,116190,114931,114926,114914,114920,114929,114880,116183,114892,114923,114928,114921,114919,114916);
-- poss corrected
UPDATE creature SET position_x = 4516.772949, position_y = -1978.317749, position_z = 160.825577 WHERE guid = 114906;
UPDATE creature SET position_x = 4533.059570, position_y = -1969.771484, position_z = 160.823120 WHERE guid = 114878;
UPDATE creature SET position_x = 4550.928223, position_y = -1960.148438, position_z = 160.823227 WHERE guid = 114907;
UPDATE creature SET position_x = 4536.701660, position_y = -1958.542725, position_z = 160.823517 WHERE guid = 116575;
UPDATE creature SET position_x = 4540.119629, position_y = -1975.082886, position_z = 160.822784 WHERE guid = 114908;
UPDATE creature SET position_x = 4500.075684, position_y = -1985.072266, position_z = 160.822876 WHERE guid = 114889;
UPDATE creature SET position_x = 4544.810059, position_y = -1935.612183, position_z = 160.823410 WHERE guid = 114882;
UPDATE creature SET position_x = 4562.698730, position_y = -1970.585327, position_z = 160.822968 WHERE guid = 114909;
UPDATE creature SET position_x = 4544.119629, position_y = -2153.945557, position_z = 160.842392 WHERE guid = 114924;
UPDATE creature SET position_x = 4525.996582, position_y = -2099.747070, position_z = 160.843475 WHERE guid = 116569;
UPDATE creature SET position_x = 4492.715332, position_y = -2098.734375, position_z = 160.823288 WHERE guid = 116185;
UPDATE creature SET position_x = 4507.421387, position_y = -2123.114746, position_z = 161.210480 WHERE guid = 114903;
UPDATE creature SET position_x = 4521.031738, position_y = -2117.944580, position_z = 160.831345 WHERE guid = 104106;
UPDATE creature SET position_x = 4546.940918, position_y = -2115.042480, position_z = 160.842499 WHERE guid = 104120;
UPDATE creature SET position_x = 4539.462402, position_y = -2142.444580, position_z = 160.842163 WHERE guid = 104106;
UPDATE creature SET position_x = 4555.688477, position_y = -2158.485352, position_z = 160.842728 WHERE guid = 104128;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30, movementType = 1, spawndist = 7 WHERE id = 26570;
DELETE FROM dbscripts_on_creature_death WHERE id = 26570; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26570,10,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
