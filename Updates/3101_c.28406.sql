-- Death Knight Initiate 28406
-- part of his movement scripts redone
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2840607,2840608);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- part for - Prince Valanar 28377 & Gothik the Harvester 28658
(2840607,1000,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2840607,3000,35,5,7,0,0,0,0,0,0,0,0,0,0,0,0,'Send event A');
DELETE FROM dbscript_string WHERE entry = 2000020384; -- moved to EAI
UPDATE creature_movement SET script_id = 2840607 WHERE script_id = 2840608;
-- missing added
DELETE FROM creature_addon WHERE guid IN (518788);
DELETE FROM creature_movement WHERE id IN (518788);
DELETE FROM game_event_creature WHERE guid IN (518788);
DELETE FROM game_event_creature_data WHERE guid IN (518788);
DELETE FROM creature_battleground WHERE guid IN (518788);
DELETE FROM creature_linking WHERE guid IN (518788)
 OR master_guid IN (518788);
DELETE FROM creature WHERE guid IN (518788);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518788,28406,609,1,1,0,0,2413.73,-5733.96,153.923,3.61806,30,30,0,0,3268,2117,0,2);
DELETE FROM creature_movement WHERE id IN (518788);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(518788,1,2413.73,-5733.96,153.923,100,100,5),
(518788,2,2394.81,-5744.09,153.923,100,0,0),
(518788,3,2360.44,-5709.75,153.923,100,6000,2840608),
(518788,4,2311.17,-5659.59,151.934,100,0,0),
(518788,5,2292.18,-5649.26,146.13,100,0,0),
(518788,6,2273.07,-5646.73,141.85,100,0,0),
(518788,7,2247.17,-5645.37,134.599,100,0,0),
(518788,8,2216.96,-5653.59,125.621,100,0,0),
(518788,9,2189.26,-5671.37,114.421,100,0,0),
(518788,10,2172.11,-5689.88,108.397,100,0,0),
(518788,11,2139.22,-5723.48,100.65,100,5000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2840608); -- 2840608 Reused
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840608,0,31,28653,100,0,0,0,0,-6000,0,0,0,0,0,0,0,'search for 28653'),
(2840608,10,37,0,0,0,28653,110,1,0,0,0,0,0,0,0,0,'move towards 28653'),
(2840608,4900,36,0,0,0,28653,110,1,0,0,0,0,0,0,0,0,'face towards 28653'),
(2840608,5000,45,0,20211,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script');
DELETE FROM dbscript_random_templates WHERE id IN (20211);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20211,1,30007,80,'28406 - Random Script 1'),
(20211,1,20479,20,'28406 - Random Script 2');
DELETE FROM dbscripts_on_relay WHERE id IN (20479,30007);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20479,0,0,0,0,0,0,0,0x04,2000020735,2000020736,2000020737,2000020738,0,0,0,0,'Part of 28406 - Random Script 1 - random say'),
(30007,0,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 66');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020735 AND 2000020738;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020735,'I will be your chosen knight, Salanar!',0,0,0,66,NULL),
(2000020736,'I have heard the call, my lord!',0,0,0,66,NULL),
(2000020737,'A dozen will fall before I am slain!',0,0,0,66,NULL),
(2000020738,'You will hear their cries from up here, my lord!',0,0,0,66,NULL);
