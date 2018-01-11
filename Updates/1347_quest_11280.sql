-- q.11280 'Draconis Gastritis'

-- Part of ACID SCript

-- Draconis Gastritis Bunny
DELETE FROM dbscripts_on_relay WHERE id IN (20019,20020);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20019,0,31,23689,150,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(20019,1,21,1,0,0,23689,149,7,0,0,0,0,0,0,0,0,'buddy - active'),
(20019,1,20,0,0,0,23689,149,0,0,0,0,0,0,0,0,0,'buddy - movement chenged to 0:idle'),
(20019,1,4,59,256,0,23689,149,0,0,0,0,0,0,0,0,0,'buddy - add UnitFlags'),
(20019,1,35,6,149,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
(20019,1,37,0,0,0,23689,149,0,0,0,0,0,0,0,0,0,''),
-- Proto-Drake
(20020,0,31,24170,7,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(20020,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20020,1,40,0,0,0,186598,20,1,0,0,0,0,0,0,0,0,'despawn go'),
(20020,2,15,43177,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20020,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(20020,5,35,8,15,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT');
