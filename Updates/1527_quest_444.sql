-- q.444 'Rot Hide Origins' end script
DELETE FROM dbscript_string WHERE entry IN (2000001631,2000001632,2000001633,2000001634);
INSERT INTO dbscript_string (entry, content_default, sound, type, emote, comment) VALUES
(2000001631,'%s chants words of power...',0,2,0,'Bethor Iceshard'),
(2000001632,'No!  It can''t be...',0,0,0,'Bethor Iceshard'),
(2000001633,'Incredible!  I know he who wrought these enchantments...',0,0,0,'Bethor Iceshard'),
(2000001634,'This is unforseen.  The being who enchanted this is known to me...',0,0,0,'Bethor Iceshard');

UPDATE quest_template SET CompleteScript = 444 WHERE entry = 444;
DELETE FROM dbscripts_on_quest_end WHERE id = 444;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(444, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - remove Quest Giver NpcFlag'),
(444, 2, 15, 1848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - Cast Divining Chant'),
(444, 2, 0, 0, 0, 0, 0, 0, 0, 2000001631, 0, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - emote 1'),
(444, 6, 0, 0, 0, 0, 0, 0, 0, 2000001632, 0, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - say 1'),
(444, 9, 0, 0, 0, 0, 0, 0, 0, 2000001633, 2000001634, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - random say 2'),
(444, 9, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bethor Iceshard - add Quest Giver NpcFlag');
