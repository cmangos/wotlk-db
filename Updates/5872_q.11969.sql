-- q.11969 'Springing the Trap'
-- distance & walk anim fixed
UPDATE creature_template SET StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (24770,26127,32534,24769,26237,26310,34310);
-- landing fixed
DELETE FROM dbscripts_on_creature_movement WHERE id = 2623701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2623701,0,57,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'anim Tier = 0');
UPDATE creature_movement_template SET Orientation = 100 WHERE entry = 26237 AND point IN (10,11);
-- fix malygos infinite casting
DELETE FROM dbscripts_on_creature_movement WHERE id = 2631002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2631002,1,14,65137,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'');
UPDATE creature_movement_template SET ScriptId = 2631002 WHERE entry = 26310 AND point = 2;
UPDATE creature_movement_template SET WaitTime  = 180000 WHERE entry = 26310 AND point = 1;
