-- q.12484 'Scourgekabob'
DELETE FROM dbscripts_on_quest_end WHERE id = 12484;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12484,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(12484,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(12484,1,0,0,0,0,0,0,0,2000003131,0,0,0,0,0,0,0,''),
(12484,5,0,0,0,0,0,0,0,2000003132,0,0,0,0,0,0,0,''),
(12484,7,0,0,0,0,0,0,0,2000003133,0,0,0,0,0,0,0,''),
(12484,12,0,0,0,0,0,0,0,2000003134,0,0,0,0,0,0,0,''),
(12484,15,1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(12484,16,29,3,1,0,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags added'),
(12484,17,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12484 WHERE entry = 12484;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003131 AND 2000003134;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003131,'Shcourged trooolls roashting....',0,0,0,1,NULL),
(2000003132,'...on an open fire.....',0,0,0,1,NULL),
(2000003133,'Mack belches loudly...',0,2,0,0,NULL),
(2000003134,'That\'s it! Far as I got... Whatd\'ya think?',0,0,0,11,NULL);

-- Prigmon
DELETE FROM creature_template_addon WHERE entry = 26519;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26519,0,0,1,0,69,0,NULL);
