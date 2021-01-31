-- Part of Knight of the Ebon Blade EAI 31094
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 31094;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20516 AND 20518;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20516,100,31,31098,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31098'),
(20516,150,26,0,0,0,31098,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target'),
(20517,100,31,31095,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31095'),
(20517,150,26,0,0,0,31095,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target'),
(20518,100,31,31099,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: search for 31099'),
(20518,150,26,0,0,0,31099,13,1,0,0,0,0,0,0,0,0,'Part of Knight of the Ebon Blade EAI: start attack target');
