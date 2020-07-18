-- The Pit of Narjun - Dragonblight

-- Objects
-- Black Blood of Yogg-Saron 188432
UPDATE gameobject SET guid = 5710928 WHERE guid = 55669;
UPDATE gameobject SET guid = 5710929 WHERE guid = 55670;
UPDATE gameobject SET guid = 5710930 WHERE guid = 55671;
UPDATE gameobject SET guid = 5710931 WHERE guid = 55672;
UPDATE gameobject SET guid = 5710932 WHERE guid = 55673;
UPDATE gameobject SET guid = 5710933 WHERE guid = 55674;
UPDATE gameobject SET guid = 5710934 WHERE guid = 55675;
UPDATE gameobject SET guid = 5710935 WHERE guid = 55676;
UPDATE gameobject SET guid = 5710936 WHERE guid = 55677;
UPDATE gameobject SET guid = 5710937 WHERE guid = 55678;
UPDATE gameobject SET guid = 5710938 WHERE guid = 55679;
UPDATE gameobject SET guid = 5710939 WHERE guid = 55680;
UPDATE gameobject SET guid = 5710940 WHERE guid = 55682;
UPDATE gameobject SET guid = 5710941 WHERE guid = 55683;
UPDATE gameobject SET guid = 5710942 WHERE guid = 55684;
UPDATE gameobject SET guid = 5710943 WHERE guid = 55685;
UPDATE gameobject SET guid = 5710944 WHERE guid = 55688;
UPDATE gameobject SET guid = 5710945 WHERE guid = 55689;
UPDATE gameobject SET guid = 5710946 WHERE guid = 55690;
UPDATE gameobject SET guid = 5710947 WHERE guid = 55693;
UPDATE gameobject SET guid = 5710948 WHERE guid = 55694;
UPDATE gameobject SET guid = 5710949 WHERE guid = 55697;
UPDATE gameobject SET guid = 5710950 WHERE guid = 55698;
UPDATE gameobject SET guid = 5710951 WHERE guid = 55700;
UPDATE gameobject SET guid = 5710952 WHERE guid = 87709;
UPDATE gameobject SET guid = 5710953 WHERE guid = 87721;
UPDATE gameobject SET guid = 5710954 WHERE guid = 87726;
UPDATE gameobject SET guid = 5710955 WHERE guid = 87727;
UPDATE gameobject SET guid = 5710956 WHERE guid = 87728;
UPDATE gameobject SET guid = 5710957 WHERE guid = 87729;
UPDATE gameobject SET guid = 5710958 WHERE guid = 87730;
UPDATE gameobject SET guid = 5710959 WHERE guid = 87731;
UPDATE gameobject SET guid = 5710960 WHERE guid = 87733;
UPDATE gameobject SET guid = 5710961 WHERE guid = 87734;
UPDATE gameobject SET guid = 5710962 WHERE guid = 87735;
UPDATE gameobject SET guid = 5710963 WHERE guid = 87736;
UPDATE gameobject SET guid = 5710964 WHERE guid = 87737;
UPDATE gameobject SET guid = 5710965 WHERE guid = 87738;
UPDATE gameobject SET guid = 5710966 WHERE guid = 88617;
UPDATE gameobject SET guid = 5710967 WHERE guid = 88628;
UPDATE gameobject SET guid = 5710968 WHERE guid = 87732;
UPDATE gameobject SET spawntimesecsmin = 120, spawntimesecsmax = 120, animprogress = 100 WHERE id = 188432;
-- POOLS
-- max 20 from 40
DELETE FROM pool_template WHERE entry = 30154;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30154,20,'Dragonblight - Black Blood of Yogg-Saron - 188432');
DELETE FROM pool_gameobject_template WHERE pool_entry = 30154;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(188432, 30154, 0, 'Dragonblight - Black Blood of Yogg-Saron - 188432');

-- Meeting Stone 191227
UPDATE gameobject SET guid = 5710969 WHERE guid = 61607;

-- Doodad_InstanceNewPortal_Purple_Skull01 192507
UPDATE gameobject SET guid = 5710970 WHERE guid = 61608;

-- Doodad_InstanceNewPortal_Purple01 192508
UPDATE gameobject SET guid = 5710971 WHERE guid = 61665;

-- Doodad_InstanceNewPortal_Purple_Skull02 192509
UPDATE gameobject SET guid = 5710972 WHERE guid = 61745;

-- Doodad_InstanceNewPortal_Purple02 192510
UPDATE gameobject SET guid = 5710973 WHERE guid = 61775;


-- Creatures
-- High Cultist Zangus 26655
UPDATE creature SET guid = 5713710 WHERE guid = 98853;

-- Kilix the Unraveler 26653
UPDATE creature SET guid = 5713711 WHERE guid = 98533;
-- Part of Kilix the Unraveler EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20294;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20294,0,31,26402,20,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Kilix the Unraveler: search for 26402 - terminate if alive'),
(20294,100,10,26605,120000,0,0,0,0x08,0,0,0,0,3699.52,2159,35.8345,3.22498,'Part of Quartermaster Gakzug EAI: summon Anub\'ar Underlord 26605'),
(20294,100,10,26402,120000,0,0,0,0x08,0,0,0,0,3705.24,2154.65,36.7049,2.98622,'Part of Quartermaster Gakzug EAI: summon Anub\'ar Ambusher 26402'),
(20294,100,10,26402,120000,0,0,0,0x08,0,0,0,0,3706.65,2161.79,37.2439,3.35326,'Part of Quartermaster Gakzug EAI: summon Anub\'ar Ambusher 26402'),
(20294,100,10,26606,120000,0,0,0,0x08,0,0,0,0,3701.02,2164.28,36.5148,3.31791,'Part of Quartermaster Gakzug EAI: summon Anub\'ar Slayer 26606'),
(20294,900,31,26605,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kilix the Unraveler: search for 26605'),
(20294,1000,0,0,0,0,26605,35,7,2000020389,0,0,0,0,0,0,0,'Part of Quartermaster Gakzug EAI: buddy say text'),
(20294,3000,0,0,0,0,0,0,0,2000020390,0,0,0,0,0,0,0,'Part of Quartermaster Gakzug EAI: buddy say text'),
(20294,3090,31,26605,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kilix the Unraveler: search for 26605'),
(20294,3100,26,0,0,0,26605,30,1,0,0,0,0,0,0,0,0,'Part of Quartermaster Gakzug EAI: attack start');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020389 AND 2000020390;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020389,'You have made a fatal mistake, mortal... There isss no essscape...',0,0,0,0,NULL),
(2000020390,'Betrayers! The day of reckoning comes and with it comes your end! See then if your Lich King saves you from the ancient one\'s judgement! Now you die!',0,0,0,0,NULL);
-- links
DELETE FROM creature_linking WHERE master_guid = 5713711;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(5713712, 5713711, 1),
(5713713, 5713711, 1),
(5713714, 5713711, 1);
DELETE FROM dbscripts_on_creature_death WHERE id IN (26605,26402,26606);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26605,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(26402,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(26606,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Azjol-anak Battleguard 26662
UPDATE creature SET guid = 5713712 WHERE guid = 99365;
UPDATE creature SET guid = 5713713 WHERE guid = 99366;
UPDATE creature SET guid = 5713714 WHERE guid = 99367;

-- Anub'ar Underlord 26605
-- Duplicates removed
DELETE FROM creature_addon WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM creature_movement WHERE id IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM game_event_creature WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM game_event_creature_data WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM creature_battleground WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM creature_linking WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282)
 OR master_guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM creature WHERE guid IN (118280,118288,118247,118289,118237,118278,118243,118234,118241,118244,118282);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26605);
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5713715 WHERE guid = 118246;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 5713715;
UPDATE creature SET guid = 5713716 WHERE guid = 118239;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 5713716;
UPDATE creature SET guid = 5713717 WHERE guid = 118285;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 5713717;
UPDATE creature SET guid = 5713718 WHERE guid = 118279;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 5713718;
UPDATE creature SET guid = 5713719 WHERE guid = 118235; -- wps
UPDATE creature SET guid = 5713720 WHERE guid = 118233;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 5713720;
UPDATE creature SET guid = 5713721 WHERE guid = 118232;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 5713721;
UPDATE creature SET guid = 5713722 WHERE guid = 118238; -- wps
UPDATE creature SET guid = 5713723 WHERE guid = 118245; -- wps
UPDATE creature SET guid = 5713724 WHERE guid = 118286; -- wps
UPDATE creature SET guid = 5713725 WHERE guid = 118248;
UPDATE creature SET position_x = 3775.873, position_y = 2195.77, position_z = 29.37549, orientation = 4.24115, spawndist = 0, MovementType = 0 WHERE guid = 5713725;
UPDATE creature SET guid = 5713726 WHERE guid = 118287;
UPDATE creature SET position_x = 3773.76, position_y = 2165.652, position_z = 27.76257, orientation = 4.08407, spawndist = 0, MovementType = 0 WHERE guid = 5713726;
UPDATE creature SET guid = 5713727 WHERE guid = 118240; -- wps
UPDATE creature SET guid = 5713728 WHERE guid = 118281;
UPDATE creature SET position_x = 3798.859, position_y = 2042.256, position_z = 11.51191, orientation = 3.612832, spawndist = 0, MovementType = 0 WHERE guid = 5713728;
UPDATE creature SET guid = 5713729 WHERE guid = 118236; -- wps
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5713719,5713722,5713723,5713724,5713727,5713729);
DELETE FROM creature_movement WHERE id IN (5713719,5713722,5713723,5713724,5713727,5713729);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713719
(5713719,1,3694.97,2025.22,21.0236,100,0,0),
(5713719,2,3694.58,2020.75,23.0022,100,0,0),
(5713719,3,3695.27,2015.31,24.9965,100,0,0),
(5713719,4,3697.68,2009.26,26.936,100,0,0),
(5713719,5,3695.23,2014.78,25.1565,100,0,0),
(5713719,6,3694.76,2020.45,23.1162,100,0,0),
(5713719,7,3695.35,2026.02,20.7302,100,0,0),
(5713719,8,3696.95,2029.78,19.2493,100,0,0),
(5713719,9,3703.27,2042.02,19.6767,100,0,0),
(5713719,10,3697.62,2033.9,19.3591,100,0,0),
-- 5713722
(5713722,1,3742.22,2124.23,43.9717,100,0,0),
(5713722,2,3744.95,2125.31,44.9745,100,0,0),
(5713722,3,3748.53,2131.59,46.5958,100,0,0),
(5713722,4,3749.59,2137.91,47.9461,100,0,0),
(5713722,5,3748.52,2142.88,48.6019,100,0,0),
(5713722,6,3747.03,2147.55,49.9013,100,0,0),
(5713722,7,3749.79,2138.62,48.0547,100,0,0),
(5713722,8,3748.85,2132.86,46.8827,100,0,0),
(5713722,9,3745.84,2126.3,45.2627,100,0,0),
(5713722,10,3738.05,2122.96,41.8461,100,0,0),
(5713722,11,3733.27,2125.87,41.6691,100,0,0),
(5713722,12,3728.61,2132.26,39.5846,100,0,0),
(5713722,13,3732.96,2126.05,41.5402,100,0,0),
(5713722,14,3736.63,2122.98,41.3011,100,0,0),
(5713722,15,3739.27,2123.46,42.4356,100,0,0),
-- 5713723
(5713723,1,3732.69,2175.01,37.1362,100,0,0),
(5713723,2,3720.17,2172.67,37.4848,100,0,0),
(5713723,3,3731.48,2175.58,37.1321,100,0,0),
(5713723,4,3742.93,2156.09,37.2267,100,0,0),
-- 5713724
(5713724,1,3715.88,2107.94,34.7592,100,0,0),
(5713724,2,3704.9,2095.4,29.3853,100,0,0),
(5713724,3,3703.9,2090.13,27.3634,100,0,0),
(5713724,4,3704.79,2078.38,22.8848,100,0,0),
(5713724,5,3703.87,2090.03,27.3115,100,0,0),
(5713724,6,3704.72,2094.92,29.2705,100,0,0),
-- 5713727
(5713727,1,3763.15,2047.43,18.5016,100,0,0),
(5713727,2,3760.53,2041.07,18.3215,100,0,0),
(5713727,3,3755,2034.74,19.3289,100,0,0),
(5713727,4,3747.14,2025.63,20.5277,100,0,0),
(5713727,5,3759.24,2039.57,18.5143,100,0,0),
(5713727,6,3765.72,2053.16,18.8891,100,0,0),
(5713727,7,3767.5,2060.64,20.085,100,0,0),
(5713727,8,3766.04,2070.66,24.1751,100,0,0),
(5713727,9,3764.28,2079.24,27.9247,100,0,0),
(5713727,10,3767.34,2061.45,20.3862,100,0,0),
-- 5713729
(5713729,1,3716.57,2045.47,19.7146,100,0,0),
(5713729,2,3718.14,2055.42,18.131,100,0,0),
(5713729,3,3719.55,2065.04,19.2786,100,0,0),
(5713729,4,3720.15,2073.88,22.3341,100,0,0),
(5713729,5,3719.58,2065.41,19.3896,100,0,0),
(5713729,6,3719.16,2060.65,18.1309,100,0,0),
(5713729,7,3717.42,2048.5,18.1309,100,0,0),
(5713729,8,3716.71,2044.98,19.7875,100,0,0),
(5713729,9,3711.98,2034.43,20.0035,100,0,0);
