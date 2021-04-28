-- q.12138 '... Or Maybe We Don't' - Alliance
-- q.12198 '... Or Maybe We Don't' - Horde

-- remove golem from player
DELETE FROM dbscripts_on_quest_end WHERE id IN (12138,12198);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12138,100,18,0,0,0,27017,40,7|0x20,0,0,0,0,0,0,0,0,''),
(12198,100,18,0,0,0,27017,40,7|0x20,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12138 WHERE entry = 12138;
UPDATE quest_template SET CompleteScript = 12198 WHERE entry = 12198;

-- Depleted War Golem 27017
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75, UnitFlags = 776 WHERE entry = 27017;
