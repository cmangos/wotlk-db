-- q.12547 'The Activation Rune'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12547);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12547,1,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12547,10,0,14,16245,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(12547,10,1,14,25900,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(12547,100,0,0,0,0,0,0,0,0,33004,0,0,0,0,0,0,0,'SaY'),
(12547,101,0,1,51,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(12547,20000,0,15,16245,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'add aura'),
(12547,20001,1,15,25900,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'add aura'),
(12547,20100,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12547 WHERE entry = 12547;
