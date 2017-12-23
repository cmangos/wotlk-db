-- q.11467 'Dead Man's Debt"

-- Resp for object
UPDATE gameobject SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE guid = 18521;

DELETE FROM dbscripts_on_event WHERE id = 16326;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(16326,1,10,24790,300000,0,0,0,0x08,0,0,0,0,688.9122,-3377.737,67.87585,1.291544,'summon Black Conrad\'s Ghost'),
(16326,1,10,24796,300000,0,0,0,0x08,0,0,0,0,687.27,-3374.881,67.92136,1.047198,'summon Spectral Sailor'),
(16326,1,10,24796,300000,0,0,0,0x08,0,0,0,0,691.5706,-3375.863,68.09953,1.308997,'summon Spectral Sailor'),
(16326,2,0,0,0,0,24790,100,7,2000001489,0,0,0,0,0,0,0,''),
(16326,5,0,0,0,0,24796,100,7,2000001490,0,0,0,0,0,0,0,'');
-- texts
DELETE FROM dbscript_string WHERE entry IN (2000001489,2000001490,2000001491);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001489,'Yarrrr!  If it\'s me treasure yer lookin\' for... yer gonna have to fight for it!',0,0,0,1,NULL),
(2000001490,'Yer dead, landlubber!',0,0,0,0,NULL),
(2000001491,'Yarrrrr... dead again!',0,0,0,0,NULL);
-- Spectral Sailor
DELETE FROM dbscripts_on_creature_death WHERE id = 24796;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24796,0,5,59,256,0,24790,500,0x04,0,0,0,0,0,0,0,0,'buddy - Remove Unitflags'),
(24796,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Black Conrad's Ghost
DELETE FROM dbscripts_on_creature_death WHERE id = 24790;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24790,0,0,0,0,0,0,0,0,2000001491,0,0,0,0,0,0,0,''),
(24790,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
