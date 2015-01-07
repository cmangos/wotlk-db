-- q.12680 'Grand Theft Palomino'
-- core req. - faction should be set by vehicle boarding (players faction) 
-- core req. - horse should despawn if unboard
DELETE FROM dbscripts_on_spell WHERE id = 52264; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52264,0,22,2084,0x01,28653,20,5,0,0,0,0,0,0,0,0,'temp faction'), -- temp. faction should be set with vehicle boarding
(52264,1,15,52266,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,1,14,52263,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,3,37,0,0,28654,20,0,0,0,0,0,0,0,0,0,''),
(52264,5,15,52267,0,28654,20,3,0,0,0,0,0,0,0,0,''),
(52264,7,0,0,0,28654,20,3,2000000410,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 52267;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52267,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000410;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000410,'The realm of shadows awaits...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
