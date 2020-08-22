-- q.12448 'Heated Battle' - H
-- q.12416 'Heated Battle' - A
DELETE FROM dbscripts_on_quest_start WHERE id IN (12448,12416);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12416,100,0,0,0,0,0,0,0,2000020448,0,0,0,0,0,0,0,''),
(12448,100,0,0,0,0,0,0,0,2000020448,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000020448;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020448,'Do not stray too far down the pass, $n. Stay with the captain and his men... you\'re no use to us dead.',0,0,0,1,NULL);
UPDATE quest_template SET StartScript = 12448 WHERE entry IN (12448,12416);

-- Snowfall Elk
-- north from quest giver
UPDATE creature SET position_x = 3691.548340, position_y = 1166.906982, position_z = 153.271454, spawndist = 15, MovementType = 1 WHERE guid = 515300;
