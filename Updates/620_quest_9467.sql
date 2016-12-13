-- q.9467 'Call of Fire' - UPDATE
-- missing spell finally added thx to @offl
-- timer corrected
DELETE FROM dbscripts_on_quest_end WHERE id = 9467;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9467,1,15,30218,0,17274,100,1 | 0x08,0,0,0,0,0,0,0,0,''),
(9467,2,10,17220,13000,0,0,0,0,0,0,0,-3266.49,-12929.1,11.4484,2.23998,''),
(9467,5,0,0,0,17220,50,7,2000000821,0,0,0,0,0,0,0,'17220 text'),
(9467,8,0,0,0,17220,50,7,2000000822,0,0,0,0,0,0,0,'17220 text');
