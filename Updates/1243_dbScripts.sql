-- Operations Officer & Wounded Soldier - UPDATE
-- Console errors fixed

-- Script update
DELETE FROM dbscripts_on_creature_movement WHERE id = 1944501;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1944502 AND delay = 13;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1944503;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- 1944501
(1944501,0,31,19446,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944501,1,0,0,0,0,19446,30,0,2000005412,0,0,0,0,0,0,0,'force 19446 to: say text'),
-- 1944502
(1944502,13,31,19446,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 19446'),
-- 1944503
(1944503,0,1,93,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,4,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,5,31,19446,20,0,0,0,0,-15000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,6,0,0,0,0,19446,15,0,2000005415,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,10,0,0,0,0,0,0,0,2000005416,0,0,0,0,0,0,0,''),
(1944503,12,31,19446,20,0,0,0,0,-8000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,13,0,0,0,0,19446,15,0,2000005417,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,16,31,19446,20,0,0,0,0,-4000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,17,0,0,0,0,19446,15,0,2000001414,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,59,31,19446,20,0,0,0,0,-1000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,60,0,0,0,0,19446,15,0,2000001415,2000001416,2000001418,0,0,0,0,0,'force 19446 to: say text');
-- Update
UPDATE dbscript_string SET emote = 15 WHERE entry = 2000005412;
UPDATE dbscript_string SET emote = 15 WHERE entry = 2000005415;
UPDATE dbscript_string SET emote = 16 WHERE entry = 2000005417;

