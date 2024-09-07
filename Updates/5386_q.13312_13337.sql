-- q.13312 'The Ironwall Rampart' - H
-- q.13337 'The Ironwall Rampart' - A
DELETE FROM dbscripts_on_event WHERE id = 20543;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20543,1,31,32162,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 32162 - terminate if alive'),
(20543,100,10,32162,300000,0,0,0,0,0,0,0,0,7505.783,2600.5356,534.7545,3.4557518,'summon 32162'),
(20543,101,10,32163,300000,0,0,0,0,0,0,0,0,7509.4985,2599.4893,534.7545,3.543018,'summon 32163');
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 974, UnitFlags = 768, Expansion = 2 WHERE entry IN (32162,32163);
