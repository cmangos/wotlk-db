-- Hugh Glass 26484
DELETE FROM dbscripts_on_relay WHERE id = 20564;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20564,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: Active'),
(20564,10,0,0,0,0,0,0,0x04,2000020865,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,6000,0,0,0,0,0,0,0x04,2000020866,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,12000,0,0,0,0,0,0,0x04,2000020867,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,17000,0,0,0,0,0,0,0x04,2000020868,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,22000,0,0,0,0,0,0,0x04,2000020869,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: say'),
(20564,23000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hugh Glass 26484 EAI: unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020865 AND 2000020869;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020865,'Wake up, Griselda. Here, girl.',0,0,0,22,NULL),
(2000020866,'They\'ll never find us here, will they? We won\'t let them get us like they got Limpy Joe and Flannel McGee!',0,0,0,5,NULL),
(2000020867,'No, we escaped from those monsters! They\'re nothing like us, Griselda.',0,0,0,1,NULL),
(2000020868,'We\'re hunters, you and I. No wolfmen here, no ma\'am.',0,0,0,274,NULL),
(2000020869,'Keep an eye out for them, girl! Don\'t let them get us!',0,0,0,25,NULL);
