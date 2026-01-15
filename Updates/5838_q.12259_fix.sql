-- q.12259 'The Thane of Voldrune' - Fix
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7.0, UnitFlags = 256 WHERE entry IN (27292);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 27292;
DELETE FROM dbscripts_on_gossip WHERE id = 951201; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(951201,0,15,48606,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 48606 on Player');
DELETE FROM dbscripts_on_relay WHERE id = 20491; 
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20491,0,57,3,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Anim Tier 3');
