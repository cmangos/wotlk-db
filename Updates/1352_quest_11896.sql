-- q.11896 'Weakness to Lightning'
DELETE FROM dbscripts_on_quest_end WHERE id = 11896;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11896,0,14,46424,0,0,0,0,6,0,0,0,0,0,0,0,0,'remove aura');
UPDATE quest_template SET CompleteScript = 11896 WHERE entry = 11896;

-- Nerub'ar Venomspitter
-- position and movement corrected
UPDATE creature SET position_z = 1.88569, spawndist = 10, MovementType = 1 WHERE guid = 84588;
