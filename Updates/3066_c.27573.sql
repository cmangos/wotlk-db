-- Taunka Huntsman 27573
-- small event in Kor'kron Vanguard
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 519081;
DELETE FROM creature_movement WHERE id = 519081;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(519081,1,4917.72,1228.6,226.005,3.92699,100,11),
(519081,2,4917.72,1228.6,226.005,3.92699,100,3);
DELETE FROM dbscripts_on_relay WHERE id = 20448;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20448,0,0,0,0,0,0,0,0x04,2000020714,0,0,0,0,0,0,0,'Part of Taunka Huntsman EAI: say'),
(20448,4999,31,27573,7,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Taunka Huntsman EAI: say'),
(20448,5000,0,0,0,0,27573,7,7,2000020715,0,0,0,0,0,0,0,'Part of Taunka Huntsman EAI: buddy say');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020714 AND 2000020715;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020714,'These kodo are in amazing condition.',0,0,1,1,NULL),
(2000020715,'Indeed, I heard they were recovered from the brink of death by a seasoned veteran of the Horde.',0,0,1,1,NULL);
