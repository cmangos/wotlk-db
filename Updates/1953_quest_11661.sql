-- q.11661 'Orabus the Helmsman' - UPDATE
-- only one ship available per spawn.
DELETE FROM dbscripts_on_event WHERE id = 16889;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16889,0,31,27939,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - terminate if alive'),
(16889,1,10,27939,300000,0,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon ship');
-- Remove movement from summons ..will be added by script on unboard.
UPDATE creature_template SET MovementType = 0 WHERE entry IN (32577,32578,32579,32580,32576);
-- Script update
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2793902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- yells
(2793902,0,0,0,0,32576,100,7,2000001518,2000001519,2000001520,0,0,0,0,0,'captain yell'),
(2793902,3,0,0,0,32577,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
-- remove the passengers one by one
(2793902,5,14,46598,0,32577,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard first crewman'),
(2793902,6,20,2,0,32577,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:wps');

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20014 AND 20017;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20014,2,0,0,0,32578,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20014,3,14,46598,0,32578,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20014,4,20,2,0,32578,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:wps'),
(20015,2,0,0,0,32579,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20015,3,14,46598,0,32579,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20015,4,20,2,0,32579,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:wps'),
(20016,2,0,0,0,32580,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20016,3,14,46598,0,32580,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20016,4,20,2,0,32580,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:wps'),
(20017,2,0,0,0,32576,100,7,2000001522,0,0,0,0,0,0,0,'boss yell'),
(20017,3,14,46598,0,32576,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard boss'),
(20017,4,20,2,0,32576,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:wps');
