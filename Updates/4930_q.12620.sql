-- q.12620 'The Lifewarden's Wrath'
UPDATE creature SET phasemask = 1 WHERE id IN (28538,28320);
DELETE FROM dbscripts_on_event WHERE id IN (18719);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18719,0,31,28563,50,0,0,0,0,0,0,0,0,0,0,0,0,''),
(18719,10,0,0,0,0,28563,50,3,28536,0,0,0,0,0,0,0,'buddy Say'),
(18719,11,15,51318,0,0,28563,50,2,0,0,0,0,0,0,0,0,'buddy cast 51318'),
(18719,5000,15,51395,0,0,28563,50,2,0,0,0,0,0,0,0,0,'buddy cast 51395');
UPDATE `broadcast_text` SET `ChatTypeID`= 5 WHERE `Id` IN (28536);
DELETE FROM spell_script_target WHERE entry IN (51395);
INSERT INTO spell_script_target VALUES
(51395, 1, 28538, 0);
