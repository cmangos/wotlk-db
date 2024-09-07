-- q.13379 'Green Technology' - H
-- q.13383 'Killohertz' - A
DELETE FROM dbscripts_on_quest_start WHERE id IN (13379,13383);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13379,0,15,59651,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59651 on Player');
DELETE FROM dbscripts_on_quest_end WHERE id IN (13379,13383);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13379,0,14,61358,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove 59651 from Player'),
(13379,1,14,59651,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove 59651 from Player');
UPDATE quest_template SET StartScript = 13379, CompleteScript = 13379 WHERE entry IN (13379);
UPDATE quest_template SET StartScript = 13379, CompleteScript = 13379 WHERE entry IN (13383);
DELETE FROM dbscripts_on_spell WHERE id IN (59651);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59651,0,15,61358,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
