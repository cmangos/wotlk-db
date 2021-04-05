-- q.12300 'Test of Mettle'

-- Part of Sergeant Bonesnap 27493 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20530);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20530,100,34,20269,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: check if Player has Quest active - terminate if not'),
(20530,900,31,27497,90,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: search for 27497'),
(20530,1000,0,0,0,0,27497,100,0x04,2000020790,0,0,0,0,0,0,0,'Part of Sergeant Bonesnap 27493 EAI: buddy text');
DELETE FROM dbscript_string WHERE entry = 2000020790;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020790,'Stop!  Put that knife away.  You don\'t have to do... whatever they sent you to do.  You\'re not like them yet!',0,0,0,274,NULL);
DELETE FROM conditions WHERE condition_entry = 20269;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20269, 9, 12300, 0, 0);
