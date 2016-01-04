-- q.11913 'Take no Chances'
-- quest fixed:
-- player will get 1 credit from 1 "Farshire Grain"
DELETE FROM dbscripts_on_spell WHERE id = 46574;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(46574,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(46574,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn target'),
(46574,15,40,0,0,188112,10,1,0,0,0,0,0,0,0,0,'despawn Farshire Grain');
UPDATE creature SET spawntimesecs = 105 WHERE id = 26161;
UPDATE gameobject SET spawntimesecs = 90 WHERE id = 188112;
