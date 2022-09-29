-- q.11650 'Just a Few More Things...'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (11650);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11650,1,15,45643,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 21:26:09.000
(11650,6000,0,0,0,0,0,0,0,24715,0,0,0,0,0,0,0,''), -- 21:26:15.000
(11650,6001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''); -- 21:26:15.000
UPDATE quest_template SET CompleteScript = 11650 WHERE entry = 11650;

-- q.11571 'Learning to Communicate'
-- startscript
DELETE FROM dbscripts_on_quest_start WHERE id IN (11571);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11571,1,15,45328,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (11571);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11571,1,15,45324,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11571,5000,0,0,0,0,0,0,0,24428,0,0,0,0,0,0,0,''),
(11571,5001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11571, CompleteScript = 11571 WHERE entry = 11571;

-- q.11699 'I'm Stuck in this Damned Cage... But Not For Long!'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (11699);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11699,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11699,2,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(11699,1000,0,0,0,0,0,0,0,24888,0,0,0,0,0,0,0,''),
(11699,1001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11699,6000,15,45878,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11699,14000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit'),
(11699,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11699 WHERE entry = 11699;
