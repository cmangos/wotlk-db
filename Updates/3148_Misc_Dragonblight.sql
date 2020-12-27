-- Dragonblight Fixes

-- Fordragon Battle Steed - accesory seat corrected
UPDATE vehicle_accessory SET seat = 0 WHERE vehicle_entry = 27761;

-- Xink's Shredder 27061
DELETE FROM creature_template_spells WHERE entry = 27061;
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(27061,47938,47921,49857,47966,0,47939,0,0);

-- Alystros the Verdant Keeper 27249
UPDATE creature_template SET inhabittype = 4 WHERE entry = 27249;

-- Moa'ki Warriors Event
-- small event with attack on Moa'ki Warriors
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (512302,512303,512310,512330,512362,512383);
DELETE FROM creature_movement WHERE id IN (512302,512303,512310,512330,512362,512383);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 512302
(512302,1,2900.96,930.407,35.9615,3.7001,40000,5),
(512302,2,2865.07,908.304,23.4105,100,50000,2619801),
-- 512303
(512303,1,2914.92,904.427,33.6372,3.64774,35000,5),
(512303,2,2902.88,897.905,29.981,100,55000,2619801),
-- 512310
(512310,1,2874.28,984.247,34.6679,3.85718,35000,5),
(512310,2,2831.83,964.636,26.8291,100,45000,2619801),
-- 512330
(512330,1,2862.62,1008.03,36.6638,3.42085,60000,5),
(512330,2,2820.4,998.622,28.6547,100,57000,2619801),
-- 512362
(512362,1,2932.11,840.616,36.0044,2.56563,40000,5),
(512362,2,2930,848.876,33.8126,100,0,0),
(512362,3,2913.62,853.741,28.5329,100,60000,2619801),
(512362,4,2929.52,849.112,33.7302,100,0,0),
-- 512383
(512383,1,2932.29,773.119,30.7928,2.44346,30000,5),
(512383,2,2901.21,756.826,19.2377,100,60000,2619801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2619801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2619801,0,31,27178,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27178'),
(2619801,1,22,1812,0x01 | 0x02,0,27178,15,7,0,0,0,0,0,0,0,0,'buddy: faction change'),
(2619801,10,26,0,0,0,27178,15,1,0,0,0,0,0,0,0,0,'attack start');

-- Invisible Stalker - corrections
DELETE FROM creature_movement WHERE id IN (500601);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(500601,1,4756.25,1307.29,163.356,0,300000,1521405);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1521409;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1521409,0,10,27611,900000,1,0,0,0,1,0,0,0,4907.66,1460.16,214.942,3.51683,'');
UPDATE creature_movement SET script_id = 1521409 WHERE id =  500589;
