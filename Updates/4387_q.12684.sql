-- q.12684 'Blood of a Dead God'

-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (12684);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12684,1000,53,0,0,0,0,0,0,30012,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(12684,1001,53,0,0,0,0,0,0,30013,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(12684,1500,15,52340,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 52340'),
(12684,12000,53,0,0,0,0,0,0,30012,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- off
(12684,12001,53,0,0,0,0,0,0,30013,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- off
(12684,14000,0,0,0,0,0,0,0x04,28831,0,0,0,0,0,0,0,''),
(12684,16000,0,0,0,0,0,0,0,28830,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12684 WHERE entry IN (12684);

-- ELM General Purpose Bunny 23837
-- missing added
DELETE FROM creature_addon WHERE guid IN (502918,522123,522124,522125,522126);
DELETE FROM creature_movement WHERE id IN (502918,522123,522124,522125,522126);
DELETE FROM game_event_creature WHERE guid IN (502918,522123,522124,522125,522126);
DELETE FROM game_event_creature_data WHERE guid IN (502918,522123,522124,522125,522126);
DELETE FROM creature_battleground WHERE guid IN (502918,522123,522124,522125,522126);
DELETE FROM creature_linking WHERE guid IN (502918,522123,522124,522125,522126)
OR master_guid IN (502918,522123,522124,522125,522126);
DELETE FROM creature WHERE guid IN (502918,522123,522124,522125,522126);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(502918,23837,571,1,1,0,0,5335.713,-3770.931,373.7013,3.926991,300,300,0,0,0,0,0,0),
(522123,23837,571,1,1,0,0,5329.658,-3770.809,372.8022,4.433136,300,300,0,0,0,0,0,0),
(522124,23837,571,1,1,0,0,5332.665,-3770.165,373.2305,4.08407,300,300,0,0,0,0,0,0),
(522125,23837,571,1,1,0,0,5336.709,-3774.087,372.9049,0,300,300,0,0,0,0,0,0),
(522126,23837,571,1,1,0,0,5335.774,-3777.741,373.3314,3.385939,300,300,0,0,0,0,0,0);
-- Duplicates removed
DELETE FROM gameobject WHERE guid = '514941';
DELETE FROM game_event_gameobject WHERE guid = '514941';
DELETE FROM gameobject_battleground WHERE guid = '514941';
DELETE FROM gameobject WHERE guid = '514940';
DELETE FROM game_event_gameobject WHERE guid = '514940';
DELETE FROM gameobject_battleground WHERE guid = '514940';
DELETE FROM gameobject WHERE guid = '514938';
DELETE FROM game_event_gameobject WHERE guid = '514938';
DELETE FROM gameobject_battleground WHERE guid = '514938';
DELETE FROM gameobject WHERE guid = '514736';
DELETE FROM game_event_gameobject WHERE guid = '514736';
DELETE FROM gameobject_battleground WHERE guid = '514736';
DELETE FROM gameobject WHERE guid = '514778';
DELETE FROM game_event_gameobject WHERE guid = '514778';
DELETE FROM gameobject_battleground WHERE guid = '514778';
DELETE FROM `spawn_group` WHERE id IN (30012,30013);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30012, 'Zul\'Drak - Altar of Har\'koa - c.23837 spawn with q.12684', 0, 0, 20511, 0x08),
(30013, 'Zul\'Drak - Altar of Har\'koa - o.190736 & o.190737 spawn with q.12684', 1, 0, 20512, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id IN (30012,30013);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30012, 502918, -1),(30013, 514777, -1),
(30012, 522123, -1),(30013, 514738, -1),
(30012, 522124, -1),(30013, 514733, -1),
(30012, 522125, -1),(30013, 514734, -1),
(30012, 522126, -1),(30013, 514735, -1);
DELETE FROM conditions WHERE condition_entry IN (20511,20512);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20511, 42, 30012, 0, 1, 0, 'Zul\'Drak - Altar of Har\'koa - c.23837 spawn with q.12684'),
(20512, 42, 30013, 0, 1, 0, 'Zul\'Drak - Altar of Har\'koa - o.190736 & o.190737 spawn with q.12684');
DELETE FROM worldstate_name WHERE Id IN (30012,30013);
INSERT INTO worldstate_name(Id, Name) VALUES
(30012,'Zul\'Drak - Altar of Har\'koa - c.23837 spawn with q.12684'),
(30013,'Zul\'Drak - Altar of Har\'koa - o.190736 & o.190737 spawn with q.12684');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN(52340);
INSERT INTO spell_script_target VALUES
(52340,1,23837,0);
