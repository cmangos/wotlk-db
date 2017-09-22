-- q.10547 'Of Thistleheads and Eggs'
UPDATE quest_template SET CompleteScript = 10547 WHERE entry = 10547;
DELETE FROM dbscripts_on_quest_end WHERE id = 10547;
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10547,0,29,2,2,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Remove NPC Questgiver flag'),
(10547,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Make active'),
(10547,1,42,0,0,0,0,0x04,20468,0,0,0,0,0,0,0,'Tobias - Equip green orb'),
(10547,2,0,0,0,0,0,0x04,2000001420,0,0,0,0,0,0,0,'Tobias - EMOTE 1'),
(10547,9,0,0,0,0,0,0x04,2000001421,0,0,0,0,0,0,0,'Tobias - SAY 1'),
(10547,10,20,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Start WP movement');
DELETE FROM creature_movement_template WHERE entry IN (21411);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(21411, 1, -2080.785,5296.885,-37.323, 8000, 1054701, 5.422),
(21411, 2, -2083.83,5299.95,-37.3236, 1000, 1054702, 0.314159);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1054701,1054702);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1054701,0,0,0,0,0,0,0,2000001422,0,0,0,0,0,0,0,'Tobias - EMOTE 2'),
(1054701,0,15,36823,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Cast Overwhelming Odor'),
(1054702,0,0,0,0,0,0,0,2000001423,0,0,0,0,0,0,0,'Tobias - SAY 2'),
(1054702,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Add NPC Questgiver flag'),
(1054702,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Set Idle movement'),
(1054702,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Remove active');
DELETE FROM dbscript_string WHERE entry IN (2000001420,2000001421,2000001422,2000001423);
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000001420,'%s cracks the rotton egg open and - to the horror and dismay of all around him - begins to drink from its putrid core.',0,2,0,92,'Tobias - EMOTE 1'),
(2000001421,'That was life-changing... Excuse me for one minute',0,0,0,273,'Tobias - SAY 1'),
(2000001422,'%s lets loose the most foul belch ever heard or smelled.',0,2,0,0,'Tobias - EMOTE 2'),
(2000001423,'Ok then, back to business.',0,0,0,1,'Tobias - SAY 2');
