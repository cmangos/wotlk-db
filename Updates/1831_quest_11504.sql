-- q.11504 'The Dead Rise!'
DELETE FROM dbscripts_on_event WHERE id BETWEEN 16440 AND 16443; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16440,0,31,24874,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24874'),
(16440,1,0,0,0,0,24874,51,7,2000001809,0,0,0,0,0,0,0,'force 24874 to: say text'),
(16441,0,31,24876,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24876'),
(16441,1,0,0,0,0,24876,51,7,2000001810,0,0,0,0,0,0,0,'force 24876 to: say text'),
(16442,0,31,24877,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24877'),
(16442,1,0,0,0,0,24877,51,7,2000001811,0,0,0,0,0,0,0,'force 24877 to: say text'),
(16443,0,31,24875,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24875'),
(16443,1,0,0,0,0,24875,51,7,2000001812,0,0,0,0,0,0,0,'force 24875 to: say text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001809 AND 2000001812;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001809,'From sundered ground the sacrament was stolen. The Shield of Aesirites is lost. Unrest will be eternal.',0,0,0,0,NULL),
(2000001810,'The Staff of Storm\'s Fury pilfered. A curse upon this land! The storms will never cease!',0,0,0,0,NULL),
(2000001811,'The Frozen Heart of Isuldof will consume this land until it is returned. Woe unto those that hold the heart as the curse of frozen blood besets them...',0,0,0,0,NULL),
(2000001812,'The anguish of ten-thousand years awaits any foolish enough to don the Ancient Armor of the Kvaldir. Beware the mist and fog, mortals; for with them comes your end.',0,0,0,0,NULL);
