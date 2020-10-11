-- q.12049 'Hard to Swallow'

-- Part of Hulking Jormungar 26293 EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20363;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20363,10,34,20109,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Hulking Jormungar: terminate if Player is not in Quest'),
(20363,100,35,5,40,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Hulking Jormungar: send event 5');
DELETE FROM conditions WHERE condition_entry = 20109;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20109,9,12049,0,0,0,0);
