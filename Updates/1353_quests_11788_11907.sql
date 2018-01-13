-- q.11788 'Lefty Loosey, Righty Tighty' - Alliance ver.
-- q.11907 'The Sub-Chieftains' - Horde ver.

DELETE FROM dbscripts_on_event WHERE id IN (16904,16909,17207,17208,16909);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- West Point Station Valve
(16904,0,31,25830,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(16904,1,10,25830,300000,0,0,0,0x08,0,0,0,0,4119.393,5086.228,-1.422135,2.437884,'summon Twonky'),
(16904,2,26,0,0,0,25830,100,3,0,0,0,0,0,0,0,0,''),
-- North Point Station Valve
(16909,0,31,25831,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(16909,1,10,25831,300000,0,0,0,0x08,0,0,0,0,4207.709,4806.204,-12.66966,5.009535,'summon ED-210'),
(16909,2,26,0,0,0,25831,100,3,0,0,0,0,0,0,0,0,''),
-- Mid Point Station Valve
(17207,0,31,25832,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(17207,1,10,25832,300000,0,0,0,0x08,0,0,0,0,4028.982,4882.942,-12.71177,1.296065,'summon Max Blasto'),
(17207,2,26,0,0,0,25832,100,3,0,0,0,0,0,0,0,0,''),
-- South Point Station Valve
(17208,0,31,25833,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(17208,1,10,25833,300000,0,0,0,0x08,0,0,0,0,3781.653,4831.979,-13.02866,5.232138,'summon The Grinder'),
(17208,2,26,0,0,0,25833,100,3,0,0,0,0,0,0,0,0,'');
