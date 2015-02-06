-- quest 12711 'Abandoned Mail'
DELETE FROM dbscripts_on_quest_end WHERE id = 12711;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12711,0,38,236,28930,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12711 WHERE entry = 12711;

-- Abandoned Mail - player should be able to 'interact' with object only during q.12711
UPDATE gameobject SET animprogress = 255 WHERE id = 190917;
UPDATE gameobject_template SET flags = 36 WHERE entry = 190917;
