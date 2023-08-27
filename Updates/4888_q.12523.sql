-- q.12523 'Have a Part, Give a Part'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12523);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12523,1,0,0,0,0,0,0,0x04,29878,0,0,0,0,0,0,0,'say'),
(12523,2,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(12523,5000,0,0,0,0,0,0,0x04,29879,0,0,0,0,0,0,0,'say'),
(12523,5001,1,432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(12523,10000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.082104,'move'),
(12523,10001,0,0,0,0,0,0,0x04,29880,0,0,0,0,0,0,0,'say'),
(12523,10002,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(12523,15000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.178,'move'),
(12523,15001,0,0,0,0,0,0,0x04,29881,0,0,0,0,0,0,0,'say'),
(12523,15002,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
UPDATE quest_template SET CompleteScript = 12523 WHERE entry = 12523;
-- The Spirit of Gnomeregan 28037
UPDATE creature_template SET InhabitType=3 WHERE entry IN(28037);
