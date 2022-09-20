-- q.12553 'Skimmer Spinnerets'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (12553);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12553,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12553,2,0,0,0,0,0,0,0,27734,0,0,0,0,0,0,0,''),
(12553,3,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12553,6000,15,51322,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast'),
(12553,6001,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12553,8000,0,0,0,0,0,0,0,27735,0,0,0,0,0,0,0,''),
(12553,8001,16,6906,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(12553,8002,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12553,16000,14,51322,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(12553,16001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12553 WHERE entry = 12553;
