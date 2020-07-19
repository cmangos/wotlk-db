-- q.12125 'In Service of Blood'
-- q.12126 'In Service of the Unholy'
-- q.12127 'In Service of Frost'

DELETE FROM dbscripts_on_quest_end WHERE id IN (12125,12126,12127);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12125,0,17,36827,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove source item from players inventory'),
(12126,0,17,36835,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove source item from players inventory'),
(12127,0,17,36847,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'Remove source item from players inventory');
UPDATE quest_template SET CompleteScript = 12125 WHERE entry = 12125;
UPDATE quest_template SET CompleteScript = 12126 WHERE entry = 12126;
UPDATE quest_template SET CompleteScript = 12127 WHERE entry = 12127;
-- q. req.
-- Deranged Indu'le Villager 26411
DELETE FROM dbscripts_on_creature_death WHERE id IN (26411);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26411,0,39,0,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of EAI (q.12125/12126/12127): Fly OFF');
-- Duke Vallenhal 26926
DELETE FROM dbscripts_on_creature_death WHERE id IN (26926);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26926,0,39,0,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of EAI (q.12125/12126/12127): Fly OFF');
-- Ice Revenant 26283
DELETE FROM dbscripts_on_creature_death WHERE id IN (26283);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26283,0,39,0,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of EAI (q.12125/12126/12127): Fly OFF');

-- Part of EAI (q.12125/12126/12127):
DELETE FROM dbscripts_on_relay WHERE id IN (20316,20317);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20316,100,39,1,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of EAI (q.12125/12126/12127): Fly ON'),
(20316,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,15,0,'Part of EAI (q.12125/12126/12127): update Z cords'),
(20317,10,39,0,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of EAI (q.12125/12126/12127): Fly OFF');
