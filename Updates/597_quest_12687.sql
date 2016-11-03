-- q.12687 'Into the Realm of Shadows'
DELETE FROM dbscripts_on_spell WHERE id = 52361; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52361,1,37,0,0,28782,100,1,0,0,0,0,0,0,0,0,''),
(52361,4,0,0,0,0,0,0,2000001032,0,0,0,0,0,0,0,''),
(52361,8,14,52693,0,0,0,6,0,0,0,0,0,0,0,0,'remove Realm of Shadows aura'),
(52361,8,14,52349,0,0,0,6,0,0,0,0,0,0,0,0,'remove Overtake aura');
DELETE FROM db_script_string WHERE entry = 2000001032;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001032,'Impressive, death knight. Return to me in the world of the living for your reward.',0,0,0,2,NULL);
