-- q.12285 'Do Unto Others'

-- Onslaught Footman 27203 (516761) - triiggers High General Abbendis to start event
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 516761;
DELETE FROM creature_movement WHERE id = 516761;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(516761,1,2697.87,-354.457,141.3,2.86234,1000,11),
(516761,2,2697.87,-354.457,141.3,2.86234,2000,3);

-- High General Abbendis 27210
-- Charm, Daze, Fear, Root, Sleep, Slow, Snare, Incapacitate, Disorient, Stun
UPDATE creature_template SET MechanicImmuneMask = 1+2+8+16+64+512+1024+2048+67108864 WHERE entry = 27210;
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 27210;
DELETE FROM dbscripts_on_creature_death WHERE id = 27210;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27210,0,10,24110,60000,0,0,0,0,0,0,0,0,0,0,0,0,'summon: invis');

-- Admiral Barean Westwind 27951
UPDATE creature_template SET UnitFlags = 256+32768 WHERE entry = 27951;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27951;
-- waypoints -- set by script
DELETE FROM creature_movement_template WHERE entry = 27951;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27951,1,2719.47,-351.274,141.217,100,0,0),
(27951,2,2720.99,-358.091,141.217,100,0,0),
(27951,3,2738.97,-355.742,141.217,100,5000,2795101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2795101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2795101,500,15,41232,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 41232'),
(2795101,510,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2795101,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
-- Part of Admiral Barean Westwind EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20339,20340,20341);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20339,0,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: active'),
(20339,10,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: follow target'),
(20340,0,31,24110,2,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: search for 24110'),
(20340,100,35,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: send event'),
(20341,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: kneel'),
(20341,2000,0,0,0,0,0,0,0,2000020488,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: Say'),
(20341,8000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: stand'),
(20341,10000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: emote'),
(20341,11000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: waypoints'),
(20341,12000,0,0,0,0,0,0,0,2000020489,0,0,0,0,0,0,0,'Part of Admiral Barean Westwind EAI: Say');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020488 AND 2000020489;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020488,'You served your purpose.',14199,0,0,0,NULL),
(2000020489,'I will see you in Icecrown, weakling... if you live that long!',14200,0,0,0,NULL);
