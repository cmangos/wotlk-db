-- Initiate's Training Dummy

UPDATE creature_template SET UnitFlags = 131072 WHERE entry = 32541;
DELETE FROM dbscripts_on_creature_death WHERE id = 32541;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32541,0,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
