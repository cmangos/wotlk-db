-- q.12440 'To Stars' Rest!'
DELETE FROM dbscripts_on_quest_start WHERE id = 12440;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12440,0,15,49511,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12440 WHERE entry = 12440;
