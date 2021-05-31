-- q.12861 'Trolls Is Gone Crazy!'
-- Player should be able to collect more than 1
UPDATE quest_template SET ReqSourceCount4 = 8 WHERE entry = 12861;
-- script target
DELETE FROM spell_script_target WHERE entry IN (55083);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(55083,1,29686,0);
DELETE FROM dbscripts_on_spell WHERE id IN (55083);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55083,10,31,29700,7,0,0,0,0,0,0,0,0,0,0,0,0,'Search for 29700'),
(55083,100,14,54990,0,0,29700,10,7,0,0,0,0,0,0,0,0,'buddy Remove aura');
DELETE FROM dbscripts_on_relay WHERE id IN (20592);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20592,0,14,54990,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: Remove aura'),
(20592,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: stand state'),
(20592,10,0,20234,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: random say'),
(20592,100,15,55085,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: Cast 55085'),
(20592,600,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: delayed despawn'),
(20592,2000,20,1,7,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Captured Rageclaw 29686 EAI: randomovement');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020937 AND 2000020942;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020937,'Rageclaw free! Troll die now!',0,0,0,0,NULL),
(2000020938,'No more mister nice wolvar!',0,0,0,0,NULL),
(2000020939,'I poop on you, trollses!',0,0,0,0,NULL),
(2000020940,'Revenge for Rageclaw!',0,0,0,0,NULL),
(2000020941,'ARRRROOOOOGGGGAAAA!!!',0,0,0,0,NULL),
(2000020942,'This mean war!',0,0,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20234;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20234,0,2000020937,0,'29686 - Random Text 1 (q.12861)'),
(20234,0,2000020938,0,'29686 - Random Text 2 (q.12861)'),
(20234,0,2000020939,0,'29686 - Random Text 3 (q.12861)'),
(20234,0,2000020940,0,'29686 - Random Text 4 (q.12861)'),
(20234,0,2000020941,0,'29686 - Random Text 5 (q.12861)'),
(20234,0,2000020942,0,'29686 - Random Text 6 (q.12861)');
