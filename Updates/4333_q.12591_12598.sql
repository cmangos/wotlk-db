-- q.12598 'Throwing Down'
-- q.12591 'Troll Patrol: Throwing Down'

-- Nethurbian Crater KC Bunny 28352
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 29692;
-- Nerubian Crater 190555
UPDATE gameobject SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 190555;

-- Part of Nethurbian Crater KC Bunny 28352 EAI
DELETE FROM dbscripts_on_relay WHERE `id` IN (20650,20651);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20650,1,9,0,0,0,190555,10,7,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: respawn go'),
(20651,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: active self'),
(20651,2,15,44762,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 44762'),
(20651,10,15,48456,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 48456'),
(20651,100,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,500,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,1000,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,3000,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,5000,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,7000,15,51435,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: cast 51435'),
(20651,7800,40,0,0,0,190555,10,7,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: despawn go'),
(20651,8000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: despawn self'),
(20651,8001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Nethurbian Crater KC Bunny 28352 EAI: unactive self');
