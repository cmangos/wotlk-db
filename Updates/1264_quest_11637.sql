-- q.11637 'Kaganishu'

DELETE FROM dbscripts_on_spell WHERE id = 45607;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45607,0,0,0,0,0,0,0,0,2000001509,0,0,0,0,0,0,0,'');

DELETE FROM dbscript_string WHERE entry = 2000001509;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001509,'I feel... different.',0,0,0,1,NULL);
