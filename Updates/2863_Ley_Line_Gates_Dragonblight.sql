-- Ley Line GATES - Dragonblight

-- Objects
-- Ley Line Focus 188491,188474,188445
-- Moved to WoTLK Range 571x
UPDATE gameobject SET guid = 5710909 WHERE guid = 57798; -- Gate1
--
UPDATE gameobject SET guid = 5710910 WHERE guid = 57253; -- Gate2
UPDATE gameobject SET guid = 5710911 WHERE guid = 57283; -- Gate3
UPDATE gameobject SET guid = 5710912 WHERE guid = 57306; -- Gate4
UPDATE gameobject SET guid = 5710913 WHERE guid = 57333; -- Gate5
--
UPDATE gameobject SET guid = 5710914 WHERE guid = 56300; -- Gate6

-- Duplicates - Removed
DELETE FROM creature_addon WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM creature_movement WHERE id IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM game_event_creature WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM game_event_creature_data WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM creature_battleground WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM creature_linking WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030)
 OR master_guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);
DELETE FROM creature WHERE guid IN (116102,116089,116118,116109,116122,116103,116119,116098,116094,116074,116114,116101,116075,116108,116087,116123,116117,116097,116126,116107,116076,116110,116095,116086,116106,116124,116096,116080,116100,116020,116026,116024,116023,116022,116030);

-- Gate 1
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713137 WHERE guid = 116051;
UPDATE creature SET guid = 5713138 WHERE guid = 116053;
UPDATE creature SET guid = 5713139 WHERE guid = 116054;
UPDATE creature SET guid = 5713140 WHERE guid = 116055;
UPDATE creature SET guid = 5713141 WHERE guid = 116056;
UPDATE creature SET guid = 5713142 WHERE guid = 116057;
UPDATE creature SET guid = 5713143 WHERE guid = 116058;
UPDATE creature SET guid = 5713144 WHERE guid = 116059;
UPDATE creature SET guid = 5713145 WHERE guid = 116060;
UPDATE creature SET guid = 5713146 WHERE guid = 116061;
UPDATE creature SET guid = 5713147 WHERE guid = 116065;
-- Targets
UPDATE creature SET guid = 5713148 WHERE guid = 115974;
UPDATE creature SET guid = 5713149 WHERE guid = 115959;
UPDATE creature SET guid = 5713150 WHERE guid = 115976;
UPDATE creature SET guid = 5713151 WHERE guid = 115975;
UPDATE creature SET guid = 5713152 WHERE guid = 115958;
UPDATE creature SET guid = 5713153 WHERE guid = 115973;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713137 AND 5713147;
DELETE FROM creature_movement WHERE id BETWEEN 5713137 AND 5713147;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713137,1,3057.19,1403.89,115.366,4.38078,10000,2402101),
(5713138,1,3056.56,1406.72,119.74,3.12414,10000,2402101),
(5713139,1,3062.64,1396.76,117.186,0.628319,10000,2402101),
(5713140,1,3049.87,1402.49,117.999,4.43314,10000,2402101),
(5713141,1,3061.91,1394.96,114.868,0.785398,10000,2402101),
(5713142,1,3051.97,1401.04,116.335,0.942478,10000,2402101),
(5713143,1,3052.47,1393.97,116.945,5.63741,10000,2402101),
(5713144,1,3057.06,1394.18,113.058,5.8294,10000,2402101),
(5713145,1,3061.06,1398.11,116.352,2.30383,10000,2402101),
(5713146,1,3054.07,1397.25,113.405,0.471239,10000,2402101),
(5713147,1,3061.46,1396.66,115.145,0.15708,10000,2402101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402101,2000,45,0,20123,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate1 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20123;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20123,1,20184,40,'24021 - Gate - Random Script - Base'),
(20123,1,20185,10,'24021 - Gate1 - Random Script - 1'),
(20123,1,20186,10,'24021 - Gate1 - Random Script - 2'),
(20123,1,20187,10,'24021 - Gate1 - Random Script - 3'),
(20123,1,20188,10,'24021 - Gate1 - Random Script - 4'),
(20123,1,20189,10,'24021 - Gate1 - Random Script - 5'),
(20123,1,20190,10,'24021 - Gate1 - Random Script - 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20184 AND 20190;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20184,0,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'24021 - Random Script - Base (desp)'),
(20185,4000,15,47334,0,0,24021,5713148,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20185,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20185,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20186,1000,15,47334,0,0,24021,5713149,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20186,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20186,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20187,2000,15,47334,0,0,24021,5713150,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20187,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20187,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20188,3000,15,47334,0,0,24021,5713151,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20188,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20188,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20189,1000,15,47334,0,0,24021,5713152,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20189,3200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20189,3400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20190,2000,15,47334,0,0,24021,5713153,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20190,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1'),
(20190,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate1');

-- Gate 2
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713154 WHERE guid = 116043;
UPDATE creature SET guid = 5713155 WHERE guid = 116044;
UPDATE creature SET guid = 5713156 WHERE guid = 116046;
UPDATE creature SET guid = 5713157 WHERE guid = 116050;
UPDATE creature SET guid = 5713158 WHERE guid = 116040;
UPDATE creature SET guid = 5713159 WHERE guid = 116042;
UPDATE creature SET guid = 5713160 WHERE guid = 116039;
UPDATE creature SET guid = 5713161 WHERE guid = 116047;
UPDATE creature SET guid = 5713162 WHERE guid = 116045;
UPDATE creature SET guid = 5713163 WHERE guid = 116049;
UPDATE creature SET guid = 5713164 WHERE guid = 116037;
UPDATE creature SET guid = 5713165 WHERE guid = 116038;
-- Targets
UPDATE creature SET guid = 5713166 WHERE guid = 115920;
UPDATE creature SET guid = 5713167 WHERE guid = 115921;
UPDATE creature SET guid = 5713168 WHERE guid = 115922;
UPDATE creature SET guid = 5713169 WHERE guid = 115923;
UPDATE creature SET guid = 5713170 WHERE guid = 115945;
UPDATE creature SET guid = 5713171 WHERE guid = 115946;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713154 AND 5713165;
DELETE FROM creature_movement WHERE id BETWEEN 5713154 AND 5713165;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713154,1,2890.81,1812.2,129.445,4.24115,10000,2402102),
(5713155,1,2894.76,1813.13,132.191,1.25664,10000,2402102),
(5713156,1,2888.24,1811.17,131.977,3.47321,10000,2402102),
(5713157,1,2893.05,1810.66,130.546,1.39626,10000,2402102),
(5713158,1,2891.95,1816.53,128.764,4.50295,10000,2402102),
(5713159,1,2889.12,1823.98,130.334,3.45575,10000,2402102),
(5713160,1,2890.61,1822.91,128.89,1.76278,10000,2402102),
(5713161,1,2890.42,1820.32,129.398,0.994838,10000,2402102),
(5713162,1,2892.96,1819.63,129.616,3.10669,10000,2402102),
(5713163,1,2894.17,1819.12,130.879,3.21141,10000,2402102),
(5713164,1,2894.85,1820.67,131.1,1.01229,10000,2402102),
(5713165,1,2895.33,1822.93,131.14,2.87979,10000,2402102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402102,2000,45,0,20124,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate2 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20124;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20124,1,20184,40,'24021 - Gate - Random Script - Base'),
(20124,1,20191,10,'24021 - Gate2 - Random Script - 1'),
(20124,1,20192,10,'24021 - Gate2 - Random Script - 2'),
(20124,1,20193,10,'24021 - Gate2 - Random Script - 3'),
(20124,1,20194,10,'24021 - Gate2 - Random Script - 4'),
(20124,1,20195,10,'24021 - Gate2 - Random Script - 5'),
(20124,1,20196,10,'24021 - Gate2 - Random Script - 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20191 AND 20196;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20191,4000,15,47334,0,0,24021,5713166,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20191,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20191,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20192,1000,15,47334,0,0,24021,5713167,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20192,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20192,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20193,2000,15,47334,0,0,24021,5713168,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20193,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20193,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20194,3000,15,47334,0,0,24021,5713169,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20194,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20194,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20195,1000,15,47334,0,0,24021,5713170,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20195,3200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20195,3400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20196,2000,15,47334,0,0,24021,5713171,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20196,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2'),
(20196,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate2');

-- Gate 3
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713172 WHERE guid = 116090;
UPDATE creature SET guid = 5713173 WHERE guid = 116115;
UPDATE creature SET guid = 5713174 WHERE guid = 116129;
UPDATE creature SET guid = 5713175 WHERE guid = 116078;
UPDATE creature SET guid = 5713176 WHERE guid = 116077;
UPDATE creature SET guid = 5713177 WHERE guid = 116127;
UPDATE creature SET guid = 5713178 WHERE guid = 116079;
UPDATE creature SET guid = 5713179 WHERE guid = 116116;
-- Targets
UPDATE creature SET guid = 5713180 WHERE guid = 115980;
UPDATE creature SET guid = 5713181 WHERE guid = 115962;
UPDATE creature SET guid = 5713182 WHERE guid = 115988;
UPDATE creature SET guid = 5713183 WHERE guid = 115961;
UPDATE creature SET guid = 5713184 WHERE guid = 115990;
UPDATE creature SET guid = 5713185 WHERE guid = 115985;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713172 AND 5713179;
DELETE FROM creature_movement WHERE id BETWEEN 5713172 AND 5713179;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713172,1,3150.09,477.831,21.5222,3.54302,10000,2402103),
(5713173,1,3153.82,478.692,21.6196,2.00713,10000,2402103),
(5713174,1,3146.45,482.446,21.1414,3.76991,10000,2402103),
(5713175,1,3153.87,483.936,21.449,4.76475,10000,2402103),
(5713176,1,3148.89,487.521,20.8227,5.37561,10000,2402103),
(5713177,1,3156.25,489.939,21.6516,3.33358,10000,2402103),
(5713178,1,3163.35,487.995,24.8318,4.43314,10000,2402103),
(5713179,1,3159.33,493.15,22.2447,5.11381,10000,2402103);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402103);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402103,2000,45,0,20125,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate3 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20125;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20125,1,20184,40,'24021 - Gate - Random Script - Base'),
(20125,1,20197,10,'24021 - Gate3 - Random Script - 1'),
(20125,1,20198,10,'24021 - Gate3 - Random Script - 2'),
(20125,1,20199,10,'24021 - Gate3 - Random Script - 3'),
(20125,1,20200,10,'24021 - Gate3 - Random Script - 4'),
(20125,1,20201,10,'24021 - Gate3 - Random Script - 5'),
(20125,1,20202,10,'24021 - Gate3 - Random Script - 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20197 AND 20202;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20197,4000,15,47334,0,0,24021,5713180,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20197,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20197,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20198,1000,15,47334,0,0,24021,5713181,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20198,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20198,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20199,2000,15,47334,0,0,24021,5713182,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20199,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20199,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20200,3000,15,47334,0,0,24021,5713183,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20200,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20200,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20201,1000,15,47334,0,0,24021,5713184,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20201,3200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20201,3400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20202,2000,15,47334,0,0,24021,5713185,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20202,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3'),
(20202,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate3');

-- Gate 4
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713186 WHERE guid = 116073;
UPDATE creature SET guid = 5713187 WHERE guid = 116072;
UPDATE creature SET guid = 5713188 WHERE guid = 116069;
UPDATE creature SET guid = 5713189 WHERE guid = 116068;
UPDATE creature SET guid = 5713190 WHERE guid = 116070;
UPDATE creature SET guid = 5713191 WHERE guid = 116071;
UPDATE creature SET guid = 5713192 WHERE guid = 116067;
-- Targets
UPDATE creature SET guid = 5713193 WHERE guid = 115979;
UPDATE creature SET guid = 5713194 WHERE guid = 115992;
UPDATE creature SET guid = 5713195 WHERE guid = 115943;
UPDATE creature SET guid = 5713196 WHERE guid = 115963;
UPDATE creature SET guid = 5713197 WHERE guid = 115986;
UPDATE creature SET guid = 5713198 WHERE guid = 115987;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713186 AND 5713192;
DELETE FROM creature_movement WHERE id BETWEEN 5713186 AND 5713192;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713186,1,3093.52,583.01,21.8074,1.53589,10000,2402104),
(5713187,1,3093.24,593.448,27.6424,3.59538,10000,2402104),
(5713188,1,3094.97,590.816,25.6501,3.82227,10000,2402104),
(5713189,1,3098.24,592.528,26.5083,1.11701,10000,2402104),
(5713190,1,3100.05,592.423,26.3701,4.20624,10000,2402104),
(5713191,1,3099.94,594.458,27.216,5.91667,10000,2402104),
(5713192,1,3104.93,596.441,27.6471,5.79449,10000,2402104);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402104);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402104,2000,45,0,20126,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate4 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20126;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20126,1,20184,40,'24021 - Gate - Random Script - Base'),
(20126,1,20203,10,'24021 - Gate4 - Random Script - 1'),
(20126,1,20204,10,'24021 - Gate4 - Random Script - 2'),
(20126,1,20205,10,'24021 - Gate4 - Random Script - 3'),
(20126,1,20206,10,'24021 - Gate4 - Random Script - 4'),
(20126,1,20207,10,'24021 - Gate4 - Random Script - 5'),
(20126,1,20208,10,'24021 - Gate4 - Random Script - 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20203 AND 20208;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20203,4000,15,47334,0,0,24021,5713193,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20203,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20203,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20204,1000,15,47334,0,0,24021,5713194,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20204,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20204,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20205,2000,15,47334,0,0,24021,5713195,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20205,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20205,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20206,3000,15,47334,0,0,24021,5713196,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20206,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20206,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20207,1000,15,47334,0,0,24021,5713197,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20207,3200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20207,3400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20208,2000,15,47334,0,0,24021,5713198,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20208,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4'),
(20208,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate4');

-- Gate 5
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713199 WHERE guid = 116091;
UPDATE creature SET guid = 5713200 WHERE guid = 116083;
UPDATE creature SET guid = 5713201 WHERE guid = 116088;
UPDATE creature SET guid = 5713202 WHERE guid = 116085;
UPDATE creature SET guid = 5713203 WHERE guid = 116092;
UPDATE creature SET guid = 5713204 WHERE guid = 116093;
-- Targets
UPDATE creature SET guid = 5713205 WHERE guid = 115991;
UPDATE creature SET guid = 5713206 WHERE guid = 115964;
UPDATE creature SET guid = 5713207 WHERE guid = 115944;
UPDATE creature SET guid = 5713208 WHERE guid = 115977;
UPDATE creature SET guid = 5713209 WHERE guid = 115978;
UPDATE creature SET guid = 5713210 WHERE guid = 115993;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713199 AND 5713204;
DELETE FROM creature_movement WHERE id BETWEEN 5713199 AND 5713204;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713199,1,3040.45,485.727,21.5433,4.60767,10000,2402105),
(5713200,1,3046.28,476.498,21.5494,4.86947,10000,2402105),
(5713201,1,3045.36,479.174,21.5433,4.17134,10000,2402105),
(5713202,1,3043.28,468.723,22.8394,1.93731,10000,2402105),
(5713203,1,3039.51,475.294,21.5285,5.77704,10000,2402105),
(5713204,1,3041.62,471.35,21.793,3.22886,10000,2402105);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402105);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402105,2000,45,0,20127,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate5 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20127;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20127,1,20184,40,'24021 - Gate - Random Script - Base'),
(20127,1,20209,10,'24021 - Gate5 - Random Script - 1'),
(20127,1,20210,10,'24021 - Gate5 - Random Script - 2'),
(20127,1,20211,10,'24021 - Gate5 - Random Script - 3'),
(20127,1,20212,10,'24021 - Gate5 - Random Script - 4'),
(20127,1,20213,10,'24021 - Gate5 - Random Script - 5'),
(20127,1,20214,10,'24021 - Gate5 - Random Script - 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20209 AND 20214;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20209,4000,15,47334,0,0,24021,5713205,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20209,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20209,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20210,1000,15,47334,0,0,24021,5713206,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20210,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20210,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20211,2000,15,47334,0,0,24021,5713207,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20211,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20211,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20212,3000,15,47334,0,0,24021,5713208,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20212,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20212,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20213,1000,15,47334,0,0,24021,5713209,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20213,3200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20213,3400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20214,2000,15,47334,0,0,24021,5713210,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20214,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5'),
(20214,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate5');

-- Gate 6
-- Creatures involved
-- ELM General Purpose Bunny (scale x0.01) 24021
UPDATE creature SET guid = 5713211 WHERE guid = 116021;
UPDATE creature SET guid = 5713212 WHERE guid = 116025;
UPDATE creature SET guid = 5713213 WHERE guid = 116029;
UPDATE creature SET guid = 5713214 WHERE guid = 116031;
UPDATE creature SET guid = 5713215 WHERE guid = 116032;
UPDATE creature SET guid = 5713216 WHERE guid = 116033;
UPDATE creature SET guid = 5713217 WHERE guid = 116035;
-- Targets
UPDATE creature SET guid = 5713218 WHERE guid = 115925;
UPDATE creature SET guid = 5713219 WHERE guid = 115947;
UPDATE creature SET guid = 5713220 WHERE guid = 115948;
UPDATE creature SET guid = 5713221 WHERE guid = 115927;
UPDATE creature SET guid = 5713222 WHERE guid = 115924; -- req. by another event
UPDATE creature SET guid = 5713223 WHERE guid = 115926;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecsmin = 7, spawntimesecsmax = 25 WHERE guid BETWEEN 5713211 AND 5713217;
DELETE FROM creature_movement WHERE id BETWEEN 5713211 AND 5713217;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713211,1,3121.17,2142.39,17.0636,0.907571,10000,2402106),
(5713212,1,3121.86,2144.21,19.8735,0.314159,10000,2402106),
(5713213,1,3128.1,2141.03,17.944,1.90241,10000,2402106),
(5713214,1,3131.57,2143.18,19.4341,0.401426,10000,2402106),
(5713215,1,3129.66,2149.47,14.7912,5.55015,10000,2402106),
(5713216,1,3133.93,2143.84,21.7468,6.17846,10000,2402106),
(5713217,1,3127.07,2147.7,15.0525,0.244346,10000,2402106);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2402106);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2402106,2000,45,0,20128,0,0,0,0,0,0,0,0,0,0,0,0,'24021 - Gate6 - Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20128;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20128,1,20184,40,'24021 - Gate - Random Script - Base'),
(20128,1,20215,10,'24021 - Gate6 - Random Script - 1'),
(20128,1,20216,10,'24021 - Gate6 - Random Script - 2'),
(20128,1,20217,10,'24021 - Gate6 - Random Script - 3'),
(20128,1,20218,10,'24021 - Gate6 - Random Script - 4'),
(20128,1,20219,10,'24021 - Gate6 - Random Script - 5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20215 AND 20219;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20215,4000,15,47334,0,0,24021,5713218,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20215,5200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20215,5400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20216,1000,15,47334,0,0,24021,5713219,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20216,1200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20216,1400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20217,2000,15,47334,0,0,24021,5713220,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20217,4200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20217,4400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20218,3000,15,47334,0,0,24021,5713221,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20218,6200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20218,6400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20219,2000,15,47334,0,0,24021,5713223,1 | 0x10,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20219,2200,14,47334,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6'),
(20219,2400,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: 24021 - Gate6');
