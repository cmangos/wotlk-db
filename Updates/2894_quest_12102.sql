-- q.12102 'In Search of the Ruby Lilac'

-- Dahlia Suntouch 27680
-- Respawntime req for quest
UPDATE creature SET spawntimesecsmin = 90, spawntimesecsmax = 90 WHERE id = 27680;
-- Part of Dahlia Suntouch EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20313;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20313,50,31,27683,80,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Dahlia Suntouch EAI: search for 27683 - terminate if alive'),
(20313,100,10,27683,55000,0,0,0,0x08,0,0,0,0,3711.456,937.749,55.08533,0.3325675,'Part of Dahlia Suntouch EAI: summon Remnant of Dahlia Suntouch');

-- Remnant of Dahlia Suntouch 27683
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27683;
DELETE FROM creature_movement_template WHERE entry = 27683;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27683,1,3711.944,938.4294,55.09203,100,0,0),
(27683,2,3711.274,937.6862,55.09203,100,0,0),
(27683,3,3723.06,941.757,54.65791,100,0,0),
(27683,4,3724.03,942.092,54.24744,100,0,0),
(27683,5,3726.647,942.996,54.39799,100,0,0),
(27683,6,3727.695,943.3577,54.42009,100,0,0),
(27683,7,3737.499,950.9161,53.46587,100,18000,2768301),
(27683,8,3736.349,956.1506,53.63127,100,0,0),
(27683,9,3735.849,959.6506,53.88127,100,0,0),
(27683,10,3735.2,961.385,53.79668,4.92587,60000,2768302);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2768301 AND 2768302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2768301,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2768301,1000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2768301,1001,0,0,0,0,0,0,0,2000020409,0,0,0,0,0,0,0,''),
(2768301,7000,0,0,0,0,0,0,0,2000020410,0,0,0,0,0,0,0,''),
(2768301,10000,0,0,0,0,0,0,0,2000020411,0,0,0,0,0,0,0,''),
(2768301,16000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2768302,1000,0,0,0,0,0,0,0,2000020412,0,0,0,0,0,0,0,''),
(2768302,8000,0,0,0,0,0,0,0,2000020413,0,0,0,0,0,0,0,''),
(2768302,15000,0,0,0,0,0,0,0,2000020414,0,0,0,0,0,0,0,''),
(2768302,15001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020409 AND 2000020414;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020409,'I\'ve lived here and kept this shrine with the blessing of the Alexstrasza for longer than I can remember.  In its darkest hour, I\'ve failed... I fell at the feet of that damned death knight...  Bloodbane.',0,0,0,0,NULL),
(2000020410,'Dahlia spits on the ground at the thought of the name.',0,2,0,0,NULL),
(2000020411,'The Lich King is stretching his hand far now... fearlessly treading on the most sacred lands of all of the flights.  He intends to force us to action.',0,0,0,0,NULL),
(2000020412,'My time is done... I offered myself to Alexstrasza in life, but I have nothing left to offer in death.  She will need a new keeper for her shrine.',0,0,0,0,NULL),
(2000020413,'And thank you... thank you for freeing me from the shackles of the damned.  You are a hero... I know you will go on to great deeds.',0,0,0,0,NULL),
(2000020414,'The Remnant of Dahlia Suntouch fades away...',0,2,0,0,NULL);
