-- q.12032 'Conversing With the Depths'

-- The Pearl of the Depths 188422
UPDATE gameobject SET guid = 5710917 WHERE guid = 21195;
UPDATE gameobject SET position_x = 2452.686, position_y = 1722.63, position_z = 59.90535, orientation = 1.745327, rotation0 = 0, rotation1 = 0, rotation2 = 0.7660437, rotation3 = 0.6427886 WHERE guid = 5710917;
-- Quest reQ.
DELETE FROM conditions WHERE condition_entry = 20037;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20037, 1, 47098, 0);
-- quest event
DELETE FROM dbscripts_on_event WHERE id = 17612;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17612,500,31,23837,40,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 23837 - terminate if alive (quest check)'),
(17612,600,31,26648,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26648 - terminate if alive (quest check)'),
(17612,800,10,23837,33000,0,0,0,0x08,0,0,0,0,2452.865,1722.222,61.8313,5.654867,''),
(17612,1000,15,38497,0,0,23837,500,7,0,0,0,0,0,0,0,0,''),
(17612,10000,10,26648,300000,0,0,0,0x08,1,0,0,0,2293.007,1706.536,-2.616058,0.1530997,''),
(17612,24000,14,38497,0,0,23837,500,7,0,0,0,0,0,0,0,0,''),
(17612,29000,15,45849,0,0,23837,500,7,0,0,0,0,0,0,0,0,''),
(17612,31000,15,45849,0,0,23837,500,7,0,0,0,0,0,0,0,0,''),
(17612,39000,0,0,0,0,26648,500,3,2000020301,0,0,0,0,0,0,0,''),
(17612,47000,0,0,0,0,26648,500,3,2000020302,0,0,0,0,0,0,0,''),
(17612,58000,0,0,0,0,26648,500,3,2000020303,0,0,0,0,0,0,0,''),
(17612,58100,15,47098,0,0,26648,100,3,0,0,0,0,0,0,0,0,''),
(17612,58200,10,24110,300000,0,0,0,0x08,0,0,0,0,2432.19,1705.86,0.000236869,0.267797,''),
(17612,59000,35,11,200,0,26648,500,7,0,0,0,0,0,0,0,0,'Send AI_EVENT_CUSTOM_EVENTAI_F'),
(17612,65000,0,0,0,0,26648,100,3,2000020304,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020301 AND 2000020304;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020301,'$N, why do you call me forth? Are you working with the trolls of this land? Have you come to kill me and take my power as your own?',0,1,0,33,NULL),
(2000020302,'I sense uncertainty in you, and I do not trust it whether you are with them, or not. If you wish my augury for the Kalu\'ak, you will have to prove yourself first.',0,1,0,33,NULL),
(2000020303,'I will lay a mild compulsion upon you. Jump into the depths before me so that you put yourself into my element and thereby display your submission.',0,1,0,33,NULL),
(2000020304,'Though you are compelled, the choice, and the last step before you leap, are yours. You have twenty more seconds to decide.',0,1,0,33,NULL);

-- Oacha'noa 26648
UPDATE creature_template SET Faction = 190, UnitFlags = 33536, InhabitType = 7, MovementType = 2 WHERE Entry = 26648;
DELETE FROM creature_movement_template WHERE entry = 26648;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(26648,1,2170.181,1681.689,-0.378264,100,0,0),
(26648,2,2188.97,1684.839,0.232847,100,0,0),
(26648,3,2229.299,1693.938,0.232847,100,0,0),
(26648,4,2271.472,1702.852,0.232847,100,0,0),
(26648,5,2314.712,1709.268,0.121735,0.0304255,0,2664801),
(26648,6,2367.975,1712.07,43.56623,0.0304255,300000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2664801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2664801,0,15,47479,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
