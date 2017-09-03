-- q.10422 'Captain Tyralius'
-- Captain Tyralius - Static spawn removed
DELETE FROM creature_addon WHERE guid = 86483;
DELETE FROM creature_movement WHERE id = 86483;
DELETE FROM game_event_creature WHERE guid = 86483;
DELETE FROM game_event_creature_data WHERE guid = 86483;
DELETE FROM creature_battleground WHERE guid = 86483;
DELETE FROM creature_linking WHERE guid = 86483 OR master_guid = 86483;
DELETE FROM creature WHERE guid = 86483;
-- movement update
UPDATE creature_template SET MovementType = 0 WHERE Entry = 20787;
-- Old hack removed
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 10422;
-- Ethereum Prisoner (Tyralius)
UPDATE creature SET spawntimesecsmin = 35, spawntimesecsmax = 35 WHERE id = 20825; -- quest req. (must be sync with prison)
-- Captain's Tyralius Prison
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE guid = 25412;

-- Script
DELETE FROM dbscripts_on_go_template_use WHERE id = 184588;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184588,0,18,0,0,0,20825,10,7,0,0,0,0,0,0,0,0,''),
(184588,1,10,20787,8000,0,0,0,8,0,0,0,0,3916.31,2511.86,105.5,3.85911,''),
(184588,2,8,20787,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(184588,3,0,0,0,0,20787,10,0,2000001242,0,0,0,0,0,0,0,''),
(184588,8,15,12980,0,0,20787,10,2,0,0,0,0,0,0,0,0,''),
(184588,30,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'); 
DELETE FROM dbscript_string WHERE entry = 2000001242;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001242,'You\'ve saved me, fleshling! Ameer will hear of this noble act.',0,0,0,0,NULL);
