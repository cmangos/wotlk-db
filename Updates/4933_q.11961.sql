-- q.11961 'Spirits Watch Over Us' - UPDATE
DELETE FROM dbscripts_on_quest_end WHERE id IN (11961);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11961,1,10,24765,20000,0,0,0,8,0,0,0,1,2857.64,4706.33,28.8486,3.16056,'summon Spirit of Issliruk'),
(11961,2,49,11961,1,0,0,0,0,0,0,0,0,0,0,0,0,'Send SD2 Script: weather change'),
(11961,10,0,0,0,0,0,0,0,25615,0,0,0,0,0,0,0,''),
(11961,9000,31,26403,100,0,0,0,0,0,0,0,0,0,0,0,0,'terminate if not found'),
(11961,10000,0,0,0,0,26403,100,3,25614,0,0,0,0,0,0,0,''),
(11961,30000,49,11961,0,0,0,0,0,0,0,0,0,0,0,0,0,'Send SD2 Script: weather reset');
