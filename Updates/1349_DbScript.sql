-- Weegli Blastfuse
-- fix detonate anim for Weegli's Barrel
DELETE FROM dbscripts_on_creature_movement WHERE id = 760713;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(760713,0,15,10772,0,0,0,0,0,0,0,0,0,0,0,0,0,'Weegli Blastfuse - cast Create Weegli\s Barrel'),
(760713,2,13,0,0,0,141612,20,1,0,0,0,0,0,0,0,0,'Weegli Blastfuse - use Weegli\'s Barrel'),
(760713,3,40,0,0,0,141612,20,1,0,0,0,0,0,0,0,0,'Weegli Blastfuse - desp Weegli\'s Barrel'),
(760713,5,0,0,0,0,7267,37996,16,2000005552,0,0,0,0,0,0,0,'Ukorz Sandscalp - yell intro');
