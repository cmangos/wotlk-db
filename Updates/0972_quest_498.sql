-- q.498 'The Rescue'
DELETE FROM db_script_string WHERE entry IN (2000001240,2000001241);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001240,'Ah, it is good to be free of my bonds! Have you freed Tog\'thar yet? The humans split us up after our capture.',0,0,0,5,NULL),
(2000001241,'Go on ahead without me! I will make my own way to Tarren Mill.',0,0,0,1,NULL);

DELETE FROM dbscripts_on_event WHERE id IN (312,313); 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #312
(312,0,31,2239,20,0,0,0,0,0,0,0,0,0,0,0,'search for 2239'),
(312,1,0,0,0,2239,20,7,2000001240,0,0,0,0,0,0,0,'force 2239 to: say text'),
(312,4,1,6,0,2239,20,7,0,0,0,0,0,0,0,0,'force 2239 to: emote'),
(312,7,0,0,0,2239,20,7,2000001241,0,0,0,0,0,0,0,'force 2239 to: say text'),
-- #313
(313,0,31,2238,20,0,0,0,0,0,0,0,0,0,0,0,'search for 2238'),
(313,1,0,0,0,2238,20,7,2000005078,0,0,0,0,0,0,0,'force 2239 to: say text'),
(313,6,0,0,0,2238,20,7,2000005079,0,0,0,0,0,0,0,'force 2239 to: say text');

UPDATE db_script_string SET emote = 6 WHERE entry = 2000005078;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005079;

-- Both objects must despawn after use
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (1721,1722);
UPDATE gameobject SET spawntimesecsmin = 30,  spawntimesecsmax = 30 WHERE id IN (1721,1722);
