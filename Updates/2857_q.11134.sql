-- q.11134 'The End Of The Deserters' - fix
-- Script corrected for Gavis Greyshield - command 4 fixed & timers corrected
DELETE FROM dbscripts_on_relay WHERE id = 10124;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10124,0,0,15,42660,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Cast Gavis Greyshield Credit'),
(10124,10,0,4,59,784,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set UnitFlags 784'),
(10124,100,0,22,84,1,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Faction 84'),
(10124,1000,0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Equipment Slots'),
(10124,1100,0,0,0,0,0,0,0,0,2000001525,0,0,0,0,0,0,0,'Gavis Greyshield - Say'),
(10124,4000,0,0,0,0,0,0,0,0,2000001526,0,0,0,0,0,0,0,'Gavis Greyshield - Say'),
(10124,15000,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Despawn Self');
