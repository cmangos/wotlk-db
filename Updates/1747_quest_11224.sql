-- q.11224 'Send Them Packing'
DELETE FROM `dbscripts_on_relay` WHERE id = 20060;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20060,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,'Abandonded Pack Mule - q.11224'),
(20060,7,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Abandonded Pack Mule - q.11224');
