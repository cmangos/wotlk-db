-- q.13310 'Assault by Air' - H
-- Kor'kron Troop Transport 31881
UPDATE creature_template SET SpeedRun = 2, ExtraFlags = 1048576, RegenerateStats = 0 WHERE entry = 31881;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, position_x = 7505.81, position_y = 1707.04, position_z = 350.78238, orientation = 0, spawndist = 0, MovementType = 0 WHERE guid = 531550;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (31881));
DELETE FROM creature_template_addon WHERE entry IN (31881);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31881,0,1,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 31881;
INSERT INTO creature_movement_template (Entry, PathId ,Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- path 1
(31881,1,1 ,7510.2744,1749.491,367.49112 ,100,0,0),
(31881,1,2 ,7513.354,1781.1311,381.56104 ,100,0,0),
(31881,1,3 ,7508.5757,1843.8557,445.50522,100,0,0),
(31881,1,4 ,7496.634,1890.9417,496.64792 ,100,0,0),
(31881,1,5 ,7451.1606,1990.0514,581.2389 ,100,0,0),
(31881,1,6 ,7372.757,2143.0876,590.3499  ,100,0,0),
(31881,1,7 ,7293.971,2233.4805,602.46106 ,100,0,0),
(31881,1,8 ,7117.833,2278.5352,605.07214 ,100,0,0),
(31881,1,9 ,7017.1113,2263.003,647.082   ,100,0,0),
(31881,1,10,6996.2217,2205.7717,679.2115 ,100,0,0),
(31881,1,11,7061.9634,2173.6028,675.79645,100,0,3188103),
(31881,1,12,7121.2354,2156.6426,656.629  ,100,0,0),
(31881,1,13,7217.851,2134.9402,612.49054 ,100,0,0),
(31881,1,14,7288.1084,2086.021,596.8795  ,100,0,0),
(31881,1,15,7327.4165,1958.7936,585.9348 ,100,0,0),
(31881,1,16,7298.5454,1875.9907,585.4906 ,100,0,0),
(31881,1,17,7249.319,1800.9692,588.4902  ,100,0,3188103),
(31881,1,18,7157.5435,1745.9752,588.4902 ,100,0,0),
(31881,1,19,7067.5312,1718.6565,588.4902 ,100,0,0),
(31881,1,20,6988.929,1710.5387,589.5177  ,100,0,3188103),
(31881,1,21,6858.0884,1715.6998,617.07355,100,0,0),
(31881,1,22,6789.24,1811.6177,658.29425  ,100,0,3188103),
(31881,1,23,6741.477,1881.0044,687.65094 ,100,0,0),
(31881,1,24,6687.5166,1859.5953,701.3486 ,100,0,0),
(31881,1,25,6683.6484,1766.575,692.51544 ,100,0,0),
(31881,1,26,6738.948,1709.6305,686.7657  ,100,0,0),
(31881,1,27,6906.8037,1642.9725,664.15466,100,0,0),
(31881,1,28,7009.317,1640.1603,631.8771  ,100,0,0),
(31881,1,29,7174.0137,1608.1886,554.73846,100,0,0),
(31881,1,30,7328.232,1587.2509,465.34955 ,100,0,0),
(31881,1,31,7449.8447,1582.2106,415.23853,100,0,0),
(31881,1,32,7493.2095,1659.8385,383.98865,100,0,0),
(31881,1,33,7508.8135,1745.6637,371.2109,1.44,5000,3188101),
-- path 2
(31881,2,1,7519.9487,1774.7196,380.0273,100,0,0),
(31881,2,2,7531.693,1831.6211,392.58282,100,0,0),
(31881,2,3,7546.634,1876.4576,403.9439 ,100,0,0),
(31881,2,4,7567.855,1920.6942,436.83276,100,1000,3188102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3188101,3188102,3188103);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3188101,10,35,9,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send EventAI D'),
(3188101,4000,20,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'set Path 2'),
(3188102,1,15,50630,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 50630'),
(3188102,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(3188102,100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(3188103,0,0,20360,0,0,31882,10,7,0,0,0,0,0,0,0,0,''),
(3188103,1,15,59977,0,0,31882,10,7,0,0,0,0,0,0,0,0,''),
(3188103,2,14,46598,0,0,31882,10,7,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE `id` = 20360;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20360,0,32522,0,'Kor\'kron Infiltrator 31882 - Say 1 (q.13310 & q.13309)'),
(20360,0,32526,0,'Kor\'kron Infiltrator 31882 - Say 2 (q.13310 & q.13309)'),
(20360,0,32527,0,'Kor\'kron Infiltrator 31882 - Say 3 (q.13310 & q.13309)'),
(20360,0,32528,0,'Kor\'kron Infiltrator 31882 - Say 4 (q.13310 & q.13309)'),
(20360,0,32529,0,'Kor\'kron Infiltrator 31882 - Say 5 (q.13310 & q.13309)'),
(20360,0,32530,0,'Kor\'kron Infiltrator 31882 - Say 6 (q.13310 & q.13309)'),
(20360,0,32531,0,'Kor\'kron Infiltrator 31882 - Say 7 (q.13310 & q.13309)'),
(20360,0,32532,0,'Kor\'kron Infiltrator 31882 - Say 8 (q.13310 & q.13309)');
-- Kor'kron Suppression Turret 31884
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (31884);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(31884,57346,13310,1,13310,1,0);
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (31884,32227);
DELETE FROM dbscripts_on_relay WHERE id = 20940;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20940,1,31,31881,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 31881'),
(20940,100,28,0,0,0,31881,30,7,0,0,0,0,0,0,0,0,'buddy stand'),
(20940,101,39,1,0,0,31881,30,7,0,0,0,0,0,0,0,0,'buddy fly on'),
(20940,102,25,1,0,0,31881,30,7,0,0,0,0,0,0,0,0,'buddy RUN on'),
(20940,104,21,1,0,0,31881,30,7,0,0,0,0,0,0,0,0,'buddy active'),
(20940,105,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'send Event A'),
(20940,3000,20,3,1,0,31881,30,7,0,0,0,0,0,0,0,0,'buddy set Path 1');
DELETE FROM spell_script_target WHERE entry IN (59880);
INSERT INTO spell_script_target VALUES
(59880, 1, 31280, 0);

-- q.13309 'Assault by Air' - A
-- Skybreaker Troop Transport 32225
-- duplicate removed
DELETE FROM creature_addon WHERE guid=531929;
DELETE FROM creature_movement WHERE Id=531929;
DELETE FROM game_event_creature WHERE guid=531929;
DELETE FROM game_event_creature_data WHERE guid=531929;
DELETE FROM creature_battleground WHERE guid=531929;
DELETE FROM creature_linking WHERE guid=531929 
OR master_guid=531929;
DELETE FROM creature WHERE guid=531929;
UPDATE creature_template SET SpeedRun = 2, ExtraFlags = 1048576, RegenerateStats = 0 WHERE entry = 32225; -- UNIT_CREATED_BY_SPELL: 60213
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE guid = 531928;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (32225));
DELETE FROM creature_template_addon WHERE entry IN (32225);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32225,0,1,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 32225;
INSERT INTO creature_movement_template (Entry, PathId ,Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- path 1
(32225,1, 1, 7224.952,1493.076,355.6927,100,0,0),
(32225,1, 2, 7158.104,1468.994,408.7451,100,0,0),
(32225,1, 3, 7091.476,1447.724,454.6882,100,0,0),
(32225,1, 4, 6959.782,1423.015,558.3835,100,0,0),
(32225,1, 5, 6779.104,1463.505,646.3554,100,0,0),
(32225,1, 6, 6655.649,1608.774,709.994, 100,0,0),
(32225,1, 7, 6624.22,1736.658,728.0214, 100,0,0),
(32225,1, 8, 6669.947,1866.185,709.688, 100,0,0),
(32225,1, 9, 6718.041,1885.129,690.6326,100,0,0),
(32225,1, 10,6795.828,1838.745,659.0216,100,0,3222503),
(32225,1, 11,6829.202,1723.054,616.9384,100,0,0),
(32225,1, 12,6938.554,1702.879,585.9383,100,0,0),
(32225,1, 13,7024.898,1752.804,565.5496,100,0,3222503),
(32225,1, 14,7113.707,1734.315,556.3559,100,0,0),
(32225,1, 15,7265.8,1765.196,556.3559,  100,0,0),
(32225,1, 16,7302.899,1853.759,575.8558,100,0,3222503),
(32225,1, 17,7312.44,1944.328,581.4116, 100,0,0),
(32225,1, 18,7307.329,2014.243,581.4116,100,0,0),
(32225,1, 19,7253.363,2115.422,583.3,   100,0,0),
(32225,1, 20,7193.522,2155.816,607.7997,100,0,0),
(32225,1, 21,7128.84,2168.484,642.6707, 100,0,0),
(32225,1, 22,7069.121,2157.589,689.7963,100,0,3222503),
(32225,1, 23,7024.457,2135.705,708.6849,100,0,0),
(32225,1, 24,6934.063,2183.969,750.9397,100,0,0),
(32225,1, 25,6941.725,2249.074,754.6065,100,0,0),
(32225,1, 26,7072.678,2295.607,714.44,  100,0,0),
(32225,1, 27,7260.946,2257.761,639.7736,100,0,0),
(32225,1, 28,7419.038,2123.693,587.7736,100,0,0),
(32225,1, 29,7471.735,1962.737,559.6346,100,0,0),
(32225,1, 30,7436.465,1818.688,508.0233,100,0,0),
(32225,1, 31,7366.372,1694.51,469.3012, 100,0,0),
(32225,1, 32,7329.872,1609.157,432.2737,100,0,0),
(32225,1, 33,7296.424,1556.42,417.7181, 100,0,0),
(32225,1, 34,7272.382,1525.835,411.4405,100,1000,3222501),
-- Path 2
(32225,2,1,7222.72,1496.78,419.665,100,0,0),
(32225,2,2,7168.2,1480.73,436.825,100,1000,3222502);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3222501,3222502,3222503);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3222501,10,35,9,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send EventAI D'),
(3222501,4000,20,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'set Path 2'),
(3222502,1,15,50630,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 50630'),
(3222502,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(3222502,100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(3222503,0,0,20360,0,0,32222,10,7,0,0,0,0,0,0,0,0,''),
(3222503,1,15,60208,0,0,32222,10,7,0,0,0,0,0,0,0,0,''),
(3222503,2,14,46598,0,0,32222,10,7,0,0,0,0,0,0,0,0,'');
-- Skybreaker Suppression Turret 32227
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (32227);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(32227,57346,13309,1,13309,1,0);
DELETE FROM dbscripts_on_relay WHERE id = 20941;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20941,1,31,32225,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 31881'),
(20941,100,28,0,0,0,32225,30,7,0,0,0,0,0,0,0,0,'buddy stand'),
(20941,101,39,1,0,0,32225,30,7,0,0,0,0,0,0,0,0,'buddy fly on'),
(20941,102,25,1,0,0,32225,30,7,0,0,0,0,0,0,0,0,'buddy RUN on'),
(20941,104,21,1,0,0,32225,30,7,0,0,0,0,0,0,0,0,'buddy active'),
(20941,105,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'send Event A'),
(20941,3000,20,3,1,0,32225,30,7,0,0,0,0,0,0,0,0,'buddy set Path 1');
