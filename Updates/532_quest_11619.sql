-- q.11619 'Gamel the Cruel'
DELETE FROM dbscripts_on_quest_end WHERE id = 11619;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11619,0,10,26450,15000,0,0,0,0,0,0,0,2003.829,5851.167,36.20609,2.75762,'summon - Ariut'),
(11619,1,31,26450,100,0,0,0,0,0,0,0,0,0,0,0,'search for 26450'),
(11619,2,0,0,0,26450,100,7,2000000992,0,0,0,0,0,0,0,'');
UPDATE quest_template SET  CompleteScript = 11619 WHERE entry = 11619;
DELETE FROM db_script_string WHERE entry = 2000000992;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000992,'The fallen of Pal\'ea will not rest, son.  Find the naga priestess!',0,0,0,1,NULL);
