-- The Might Of The Scourge(q.12657) -DK
DELETE FROM dbscripts_on_quest_end WHERE id = 12657;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12657,1,0,0,0,0,0,0,2000000402,0,0,0,0,0,0,0,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2465.472,-5567.304,372.1589,1.64061,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2486.715,-5598.662,372.1589,6.021386,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2455.585,-5618.318,372.1586,4.590216,''),
(12657,2,10,28487,50000,0,0,0,0,0,0,0,2434.517,-5588.561,372.1588,3.263766,''),
(12657,11,0,0,0,0,0,0,2000000403,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12657 WHERE entry = 12657;
DELETE FROM db_script_string WHERE entry IN (2000000402,2000000403);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000402,'%s calls upon the mighty armies of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,NULL),
(2000000403,'Armies of the Scourge, hear my call! The scarlet apocalypse has begun! Tear this land asunder and leave only death in your wake!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,6,0,22,NULL);
