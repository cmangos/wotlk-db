-- q.11281 'Mimicking Nature's Call'

-- Let Frostgore run
UPDATE dbscripts_on_event SET dataint = 1 WHERE id = 15726;

-- Script Redone
DELETE FROM dbscripts_on_creature_movement WHERE id = 2417301;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2417301,0,0,0,0,0,0,0,0,2000000235,0,0,0,0,0,0,0,'Frostgore say 1'),
(2417301,5,0,0,0,0,0,0,0,2000000236,0,0,0,0,0,0,0,'Frostgore say 2');

-- Add emotes to texts
UPDATE dbscript_string SET emote = 25 WHERE entry IN (2000000235,2000000236);
