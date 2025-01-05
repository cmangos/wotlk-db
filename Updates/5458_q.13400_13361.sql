-- q.13400 'The Hunter and the Prince' - A
-- q.13361 'The Hunter and the Prince' - H
-- Gameobject
DELETE FROM game_event_gameobject WHERE guid BETWEEN 521247 AND 521249;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 521247 AND 521249;
DELETE FROM gameobject WHERE guid BETWEEN 521247 AND 521249;
INSERT INTO gameobject (guid, id, map, spawnMask, PhaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
-- Bloodstained Stone 194023
(521247,194023,571,1,1,6356.605,2327.4348,473.63623,5.497789,0,0,-0.3826828,0.9238798,300,300),
-- Bloodstained Stone 194024
(521248,194024,571,1,1,6336.1416,2360.247,477.01492,3.6128378,0,0,-0.9723692,0.23344836,300,300),
-- Bloodstained Stone 193980
(521249,193980,571,1,1,6381.9033,2411.866,475.0255,0.087266,0,0,0.043619156,0.99904823,300,300);
-- Creature
-- missing added
DELETE FROM creature_addon WHERE guid = 536766;
DELETE FROM creature_movement WHERE id = 536766;
DELETE FROM game_event_creature WHERE guid = 536766;
DELETE FROM game_event_creature_data WHERE guid = 536766;
DELETE FROM creature_battleground WHERE guid = 536766;
DELETE FROM creature_linking WHERE guid = 536766;
DELETE FROM creature WHERE guid = 536766;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Matthias Lehner 32497
(536766,32497,571,1,1,6369.5933,2360.8381,471.65573,1.2217,300,300,0,0);
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 1, NpcFlags = 2 WHERE Entry = 32497;
DELETE FROM creature_template_addon WHERE entry IN (32497);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32497,0,0,0,0,0,0,'10848 49415');
-- Updated
DELETE FROM spell_area WHERE spell IN (49417,60922);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(49417,4206,0,0,0,20261,0,0,2,1),
(49417,4519,0,0,0,20835,0,0,2,1),
(49417,4537,13304,1,13304,0,0,690,2,1),
(49417,4537,13393,1,13393,0,0,1101,2,1),
(60922,4519,13361,1,13361,0,0,690,2,1), -- detection for objects
(60922,4519,13361,1,13361,0,0,1101,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20825 AND 20835;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20825,8,13399,0,0,0,''),
(20826,9,13399,0,0,0,''),
(20827,-2,20826,20825,0,0,''),
(20828,8,13360,0,0,0,''),
(20829,9,13360,0,0,0,''),
(20830,-2,20829,20828,0,0,''),
(20831,-2,20830,20827,0,0,''),
(20832,8,13401,0,0,1,''),
(20833,8,13362,0,0,1,''),
(20834,-1,20833,20832,0,0,''), -- must be -1
(20835,-1,20834,20831,0,0,'');
-- Prince Arthas Menethil 32326
UPDATE creature_template SET UnitFlags = 16777224, MinLevel = 82, MaxLevel = 82, UnitClass = 2, EquipmentTemplateId = 2500, SpellList = 3232601 WHERE Entry = 32326;
DELETE FROM creature_spell_list_entry WHERE Id IN(3232601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3232601, 'Prince Arthas Menethil 32326 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3232601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3232601','0','60617','0','-1','0','0','100','1','0','0','0','0','Prince Arthas Menethil 32326 - Parry'),
('3232601','1','60644','0','-1','0','0','100','1','0','0','0','0','Prince Arthas Menethil 32326 - Deathstrike'),
('3232601','2','60672','0','-1','0','0','100','1','0','0','0','0','Prince Arthas Menethil 32326 - Stomp'),
('3232601','3','60642','0','-1','0','0','100','1','0','0','0','0','Prince Arthas Menethil 32326 - Annihilate');
DELETE FROM dbscripts_on_relay WHERE id IN (21094,21095);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21094,0,34,20836,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Prince Arthas Menethil 32326 EAI: zone check'),
(21094,100,14,61624,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Prince Arthas Menethil 32326 EAI: remove aura'),
(21095,0,15,61748,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Prince Arthas Menethil 32326 EAI: Player Self Cast 61748');
DELETE FROM conditions WHERE condition_entry = 20836;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20836,4,4519,0,0,0,'');
-- Illidan Stormrage 32588
-- Illidan Stormrage 32587
-- Illidan Stormrage 31395
UPDATE creature_template SET Faction = 14, UnitFlags = 256, MinLevel = 82, MaxLevel = 82, UnitClass = 1, Expansion = 0, EquipmentTemplateId = 2108, Detection = 100, Pursuit = 300000 WHERE Entry IN (31395,32587,32588);
DELETE FROM creature_template_addon WHERE entry IN (31395,32587,32588);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31395,0,8,1,0,0,0,NULL),
(32587,0,8,1,0,0,0,NULL),
(32588,0,8,1,0,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (21096);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21096,3000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Illidan Stormrage 32588/32587/31395 EAI: stand'),
(21096,5000,35,10,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Illidan Stormrage 32588/32587/31395 EAI: send event'),
(21096,6000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Illidan Stormrage 32588/32587/31395 EAI: emote'),
(21096,7000,0,0,0,0,0,0,0x04,32912,0,0,0,0,0,0,0,'Part of Illidan Stormrage 32588/32587/31395 EAI: say'),
(21096,7001,48,256,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Illidan Stormrage 32588/32587/31395 EAI: Remove UnitFlags');
-- Scripts
-- For object 194024
DELETE FROM dbscripts_on_go_template_use WHERE id IN (194024);
INSERT INTO dbscripts_on_go_template_use (id, priority,delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(194024,1,0,40,100,0,0,194024,20,7,0,0,0,0,0,0,0,0,'despawn object'),
(194024,2,0,15,59087,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 59087'), -- Phase 8
(194024,3,0,15,61625,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 61625');
DELETE FROM spell_area WHERE spell IN (59087,61624);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59087,4522,0,0,0,20794,0,0,2,1),
(59087,4519,13400,1,13400,0,0,0,2,0),
(59087,4519,13361,1,13361,0,0,0,2,0),
(61624,4519,0,0,0,20839,0,0,2,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20837 AND 20839;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20837,9,13400,0,0,0,''),
(20838,9,13361,0,0,0,''),
(20839,-2,20838,20837,0,0,'');
DELETE FROM dbscripts_on_event WHERE id IN (20724);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20724,100,10,32588,600000,0,0,0,8,0,0,0,0,6327.512,2355.4875,477.54135,5.8992,'summon 32588'); -- 00:48:55.367
-- For object 194023
DELETE FROM dbscripts_on_go_template_use WHERE id IN (194023);
INSERT INTO dbscripts_on_go_template_use (id, priority,delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(194023,1,0,40,100,0,0,194023,20,7,0,0,0,0,0,0,0,0,'despawn object'),
(194023,2,0,15,59074,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 59074'), -- phase 4
(194023,3,0,15,61622,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 61622');
DELETE FROM spell_area WHERE spell IN (59074,61623);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59074,4519,13400,1,13400,0,0,0,2,0),
(59074,4519,13361,1,13361,0,0,0,2,0),
(61623,4519,0,0,0,20839,0,0,2,0);
DELETE FROM dbscripts_on_event WHERE id IN (20723);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20723,100,10,32587,600000,0,0,0,8,0,0,0,0,6351.62,2317.82,474.54,1.09371,'summon 32587');
-- For object 193980
DELETE FROM dbscripts_on_go_template_use WHERE id IN (193980);
INSERT INTO dbscripts_on_go_template_use (id, priority,delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(193980,1,0,40,100,0,0,193980,20,7,0,0,0,0,0,0,0,0,'despawn object'),
(193980,2,0,15,59073,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 59073'), -- Phase 2
(193980,3,0,15,60602,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player Cast 60602');
DELETE FROM spell_area WHERE spell IN (59073,58902);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59073,4522,0,0,0,20798,0,0,2,1),
(59073,4622,0,0,0,0,0,0,2,0),
(59073,4519,13400,1,13400,0,0,0,2,0),
(59073,4519,13361,1,13361,0,0,0,2,0),
(58902,4622,0,0,0,20812,0,0,2,0),
(58902,4519,13400,1,13400,0,0,0,2,0),
(58902,4519,13361,1,13361,0,0,0,2,0);
DELETE FROM dbscripts_on_event WHERE id IN (20722);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20722,100,10,31395,600000,0,0,0,8,0,0,0,0,6377.07,2420.8,476.99,3.68553,'summon 31395');
