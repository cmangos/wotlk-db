-- q.12327 'Out of Body Experience'

-- Part of Prince Theraldis 27624 EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20556);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20556,1,31,27619,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: search for 27619'),
(20556,10,0,0,0,0,27619,35,0x04,2000020831,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: buddy say'),
(20556,7000,0,0,0,0,0,0,2,2000020832,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: say'),
(20556,7100,15,49131,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: credit'),
(20556,9900,14,49097,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: remove aura'),
(20556,10000,15,49098,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Theraldis 27624 EAI: teleport back');
DELETE FROM conditions WHERE condition_entry = 20287;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20287, 1, 49097, 0, 0);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020831 AND 2000020832;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020831,'Rise, Arugal!  The power of the Lich King commands you!',0,0,0,0,NULL),
(2000020832,'Yes... he shall suit our needs perfectly.  Have him sent to Solstice Village when you\'re ready.  Arthas will not be pleased if we fall behind schedule.',0,0,0,0,NULL);

-- Shade of Arugal 27620
UPDATE creature_template SET Faction = 16, UnitFlags = 33536, InhabitType = 4 WHERE Entry = 27620;
-- spell target
DELETE FROM spell_script_target WHERE entry IN(49128);
INSERT INTO spell_script_target VALUES
(49128,1,27620,0);

-- Arugal Rotation Bunny 27622
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27622;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 139544;
DELETE FROM creature_movement_template WHERE entry = 27622;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27622,1,-467.649,1493.14,17.5288,100,0,0),
(27622,2,-471.085,1497.02,18.1777,100,0,0),
(27622,3,-470.414,1502.85,18.1049,100,0,0),
(27622,4,-465.987,1506.7,17.6627,100,0,0),
(27622,5,-460.61,1506.38,17.3094,100,0,0),
(27622,6,-456.362,1503.16,16.9607,100,0,0),
(27622,7,-455.645,1500.36,16.9244,100,0,0),
(27622,8,-457.282,1495.59,17.0834,100,0,0),
(27622,9,-461.608,1493.39,17.1586,100,0,0);
-- spell target
DELETE FROM spell_script_target WHERE entry IN(49129);
INSERT INTO spell_script_target VALUES
(49129,1,27622,0);
