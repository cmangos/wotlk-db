-- Zeppelin 'The Mighty Wind' updates 

-- Zeppelin Controls 25075
UPDATE creature_template SET UnitFlags = 2181300992 WHERE Entry = 25075;

-- Crewman Shubbscoop 31720
-- Crewman Barrowswizzle 31723
-- Crewman Paltertop 31724
UPDATE creature_template SET UnitFlags = 768, NpcFlags = 1, GossipMenuId = 10120 WHERE Entry IN (31720,31723,31724);
DELETE FROM gossip_menu WHERE entry = 10120;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10120, 14047, 0, 0);
-- Part of Crystalline Ice Giant EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20452,20453);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20452,0,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31720/31723/31724 EAI: emote 69'),
(20452,15000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31720/31723/31724 EAI: emote 0'),
(20453,0,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31720/31723/31724 EAI: emote 233'),
(20453,15000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 31720/31723/31724 EAI: emote 0');
-- Sky-Captain LaFontaine 31725 
UPDATE creature_template SET UnitFlags = 768 WHERE Entry = 31725;
