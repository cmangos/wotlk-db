-- q.12716 'The Plaguebringer's Request'
DELETE FROM dbscripts_on_quest_end WHERE id = 12716;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12716,0,0,0,0,0,0,0,2000000431,0,0,0,0,0,0,0,''),
(12716,1,15,52706,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12716 WHERE entry = 12716;
DELETE FROM db_script_string WHERE entry = 2000000431;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000431,'My task is done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
-- Plague Cauldron -- we can interact with object only after quest 12716
UPDATE gameobject_template SET flags = 36 WHERE entry = 190936;

-- Citizen of New Avalon -- wrong one taken for event
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 129755;
DELETE FROM creature_movement WHERE id = 129755;
 