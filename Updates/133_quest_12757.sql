-- Scarlet Armies Approach...(q.12757)
DELETE FROM dbscripts_on_quest_start WHERE id = 12757;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12757,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Obraz active'),
(12757,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12757,1,3,0,0,0,0,0,0,0,0,0,0,0,0,2.391101,''),
(12757,3,15,53105,0,0,0,0,0,0,0,0,0,0,0,0,''),
(12757,5,0,0,0,0,0,0,2000000008,0,0,0,0,0,0,0,''),
(12757,9,3,0,0,0,0,0,0,0,0,0,0,0,0,5.235988,''),
(12757,9,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12757,10,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Obraz unactive');
UPDATE quest_template SET StartScript = 12757 WHERE entry = 12757;
UPDATE db_script_string SET emote = 25 WHERE entry = 2000000008;
-- dummy for 53105
DELETE FROM dbscripts_on_spell WHERE id = 53105;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53105,0,15,53097,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- dummy for 53099
DELETE FROM dbscripts_on_spell WHERE id = 53099;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53099,0,15,53098,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- remove aura after quest completed
UPDATE spell_area SET quest_end = 12756 WHERE spell = 53081;
