-- q.12054 'Deciphering the Journal'
DELETE FROM dbscripts_on_quest_end WHERE id = 12054;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12054,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(12054,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12054,1000,9,503727,30,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (30 secs)'),
(12054,2000,0,0,0,0,0,0,0,2000020917,0,0,0,0,0,0,0,''),
(12054,4000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'),
(12054,5000,9,503756,25,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object (25 secs)'),
(12054,6000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12054,6200,13,0,0,0,188444,20,1,0,0,0,0,0,0,0,0,'use object'),
(12054,9000,0,0,0,0,0,0,0,2000020918,0,0,0,0,0,0,0,''),
(12054,15000,0,0,0,0,0,0,0,2000020919,0,0,0,0,0,0,0,''),
(12054,21000,0,0,0,0,0,0,0,2000020920,0,0,0,0,0,0,0,''),
(12054,26000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(12054,27000,0,0,0,0,0,0,0,2000020921,0,0,0,0,0,0,0,''),
(12054,27100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(12054,27200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12054 WHERE entry = 12054;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020917 AND 2000020921;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020917,'Let us see what this journal reveals.',0,0,0,0,NULL),
(2000020918,'Scout Vor\'takh\'s hunch was correct. Brann Bronzebeard visited Thor Modan recently and this journal records his findings.',0,0,0,1,NULL),
(2000020919,'He managed to explore the ruins before the battle began, discovering three runic plates inscribed with prophecies.',0,0,0,1,NULL),
(2000020920,'Brann doesn\'t record the translations, but it says he committed them to memory before fleeing the battle.',0,0,0,1,NULL),
(2000020921,'If you can translate those plates, we can find and capture Brann.',0,0,0,1,NULL);
-- quest objects
UPDATE gameobject SET spawntimesecsmin = -30, spawntimesecsmax = -30 WHERE id = 188443;
UPDATE gameobject SET spawntimesecsmin = -325, spawntimesecsmax = -25 WHERE id = 188444;
