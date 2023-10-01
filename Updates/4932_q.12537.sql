-- q.12537 'Lightning Definitely Strikes Twice' - UPDATE
-- weather change added (now its completed)
DELETE FROM dbscripts_on_spell WHERE id = 51156;
INSERT INTO dbscripts_on_spell (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(51156,1,0,10,28253,60000,0,0,0,0,0,0,0,0,6196.975,4964.1,-80.53481,2.94960,'summon 28253 A'),
(51156,1,1,10,28253,60000,1,0,0,0,0,0,0,0,6224.011,4944.437,-80.04568,4.904375,'summon 28253 B'),
(51156,1,3,49,12537,1,0,0,0,0,0,0,0,0,0,0,0,0,'send sd2 script: weather change'),
(51156,2,0,31,28273,20,0,0,0,0,0,0,0,0,0,0,0,0,'npc check'),
(51156,100,0,15,51150,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51150'),
(51156,100,1,15,51172,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51172'),
(51156,200,0,35,9,30,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy Send Event D'),
(51156,201,0,7,12537,0,0,0,0,0,0,0,0,0,0,0,0,0,'Q credit'),
(51156,1000,0,15,51150,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51150'),
(51156,1000,1,15,51172,0,0,28273,30,7,0,0,0,0,0,0,0,0,'buddy selc cast 51172'),
(51156,2000,0,53,0,0,0,0,0,4,32574,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(51156,30000,3,49,12537,0,0,0,0,0,0,0,0,0,0,0,0,0,'send sd2 script: weather reset');
