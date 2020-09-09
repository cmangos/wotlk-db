-- q.12211 'Let Them Not Rise!'

-- Part of Onslaught Generic EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20334;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20334,1,15,48272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,2,15,48272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,3,15,48272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,4,15,48272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,5,15,48272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,1000,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,3000,15,36599,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,4000,15,36599,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,5000,15,36599,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,6000,15,36599,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI'),
(20334,7000,23,9786,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Onslaught Generic EAI');

-- Let Them Not Rise! Rat 27276
UPDATE creature_template SET Faction = 190, UnitFlags = 33554688, MovementType = 0 WHERE entry = 27276;
DELETE FROM dbscripts_on_relay WHERE id = 20335;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20335,1,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Let Them Not Rise! Rat EAI');
