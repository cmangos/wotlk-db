-- q.12099 'Free at Last'

-- Part of Runed Giant 26417 EAI:
DELETE FROM dbscript_random_templates WHERE id = 20232;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20232,1,20571,65,'Part of Runed Giant 26417 EAI: - Random Script - 1'),
(20232,1,20572,35,'Part of Runed Giant 26417 EAI: - Random Script - 2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20571 AND 20572;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20571,5,35,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - Send Event AI 5'),
(20571,10,44,26872,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - morph'),
(20571,500,0,0,0,0,0,0,6,2000020890,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - Say'),
(20572,10,44,26783,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - morph'),
(20572,108,8,26783,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - credit'),
(20572,500,0,0,0,0,0,0,6,2000020891,2000020892,2000020893,2000020894,0,0,0,0,'Part of Runed Giant 26417 EAI: - Random Say'),
(20572,600,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Runed Giant 26417 EAI: - despawn');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020890 AND 2000020894;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020890,'The Runebreaker fails to free the Runed Giant, weakening it and causing it to attack!',0,2,0,0,NULL),
(2000020891,'Thank you, small one.',0,0,0,35,NULL),
(2000020892,'You have my gratitude.',0,0,0,35,NULL),
(2000020893,'I never thought I\'d be free from that terrible spell!',0,0,0,35,NULL),
(2000020894,'I thought I was doomed. Thank you for freeing me.',0,0,0,35,NULL);
