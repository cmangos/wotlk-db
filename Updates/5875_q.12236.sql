-- q.12236 'Ursoc, the Bear God'
-- missing text added
-- script corrected
DELETE FROM dbscripts_on_gossip WHERE id = 949702 AND delay = 2000;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(949702,2000,0,0,0,0,0,0,0,26374,0,0,0,0,0,0,0,'say');
UPDATE dbscripts_on_gossip SET delay = 4901 WHERE id IN (949701,949702,949703) AND delay = 5000;
