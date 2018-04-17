-- q.11723 'Deploy the Shake-n-Quake!' - update
-- Lord Kryxix - UNIT_FLAG_IMMUNE_TO_PLAYER - fixed 
DELETE FROM dbscripts_on_event WHERE id = 17084;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(17084,1,10,25794,16000,0,0,0,0x08,0,0,0,0,3509.04,4549.89,-12.9827,3.93163,'summon Shake-n-Quake 5000'),
(17084,2,3,0,0,0,25794,100,7,0,0,0,0,3496.88,4540.39,-12.9826,3.94262,''),
(17084,9,1,35,0,0,25794,100,7,0,0,0,0,0,0,0,0,''),
(17084,10,15,39983,0,0,25794,100,7,0,0,0,0,0,0,0,0,''),
(17084,12,10,25629,300000,0,0,0,0x08,1,0,0,0,3456.27,4515.51,-12.9957,1.26833,'summon Lord Kryxix'),
(17084,13,3,0,0,0,25629,100,7,0,0,0,0,3467.03,4540.95,-12.9849,0.73426,''),
(17084,13,0,0,0,0,25629,100,7,2000000993,0,0,0,0,0,0,0,''),
(17084,15,8,25794,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(17084,16,3,0,0,0,25629,100,7,0,0,0,0,3496.91,4544.45,-12.9838,5.59194,''),
(17084,21,22,974,0x01 | 0x10,0,25629,100,3,0,0,0,0,0,0,0,0,''),
(17084,22,26,0,0,0,25629,100,3,0,0,0,0,0,0,0,0,'');

-- Update for q.11715 'Fueling the Project'
-- thx to @NeatElves
DELETE FROM dbscripts_on_spell WHERE id = 45990;
