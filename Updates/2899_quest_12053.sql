-- q.12053 'The Might of the Horde'
DELETE FROM dbscripts_on_spell WHERE id = 47304;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47304,2000,0,20174,0,0,0,0,2,0,0,0,0,0,0,0,0,'Force Player to Say Random Text');
DELETE FROM dbscript_random_templates WHERE id = 20174;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20174,0,2000020415,0,'q.12053 - Random Player Text'),
(20174,0,2000020416,0,'q.12053 - Random Player Text'),
(20174,0,2000020417,0,'q.12053 - Random Player Text'),
(20174,0,2000020418,0,'q.12053 - Random Player Text'),
(20174,0,2000020419,0,'q.12053 - Random Player Text'),
(20174,0,2000020420,0,'q.12053 - Random Player Text'),
(20174,0,2000020421,0,'q.12053 - Random Player Text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020415 AND 2000020421;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020415,'Come, cowards! FACE THE HORDE!',0,0,0,0,NULL),
(2000020416,'Do you that dare challenge the Horde? Then come...',0,0,0,0,NULL),
(2000020417,'I will crush you all! For the Horde!',0,0,0,0,NULL),
(2000020418,'Come! Come face your doom!',0,0,0,0,NULL),
(2000020419,'Leave this place or I will thrash you soundly!',0,0,0,0,NULL),
(2000020420,'Show yourselves so that I may crack your insectoid skeletons with my bare hands!',0,0,0,0,NULL),
(2000020421,'Hearty beatings will be dispensed in the name of the Horde!',0,0,0,0,NULL);

-- Warsong Battle Standard 26678 - shouldn't regen hp between rounds
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 26678;
