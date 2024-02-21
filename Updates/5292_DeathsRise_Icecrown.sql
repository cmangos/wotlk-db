-- Death's Rise - Icecrown

-- Aurochs Grimbane 29456
UPDATE creature SET position_x = 7414.4907, position_y = 4171.8877, position_z = 314.21915, spawndist = 0, MovementType = 2 WHERE id = 29456;
UPDATE creature_template SET MovementType = 2 WHERE entry IN(29456);
DELETE FROM creature_movement_template WHERE entry = 29456;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(29456,1 ,7414.4907,4171.8877,314.21915,100,0,0),
(29456,2 ,7423.0947,4169.147,314.21915 ,100,0,0),
(29456,3 ,7433.224,4173.5044,314.1697  ,100,0,0),
(29456,4 ,7439.549,4181.3022,314.2208  ,100,0,0),
(29456,5 ,7438.991,4191.0005,314.2208  ,100,0,0),
(29456,6 ,7435.776,4200.4204,314.33234 ,100,0,0),
(29456,7 ,7428.3394,4203.9077,314.2404 ,100,0,0),
(29456,8 ,7419.8247,4205.6353,314.22903,100,0,0),
(29456,9 ,7412.374,4202.102,314.2404   ,100,0,0),
(29456,10,7405.2285,4195.1406,314.21915,100,0,0),
(29456,11,7404.8784,4185.118,314.21915 ,100,0,0),
(29456,12,7407.548,4176.9863,314.21915 ,100,0,0);

-- Bone Gryphon 29648
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29648);
DELETE FROM creature_template_addon WHERE entry IN (29648);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29648,0,0,1,0,0,0,54476);
DELETE FROM `creature_spawn_data` WHERE guid IN (525882);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(525882,20056);

-- Lord-Commander Arete 29344
DELETE FROM `creature_spawn_data` WHERE guid IN (524512);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524512,20056);

-- Darkmender's Ghoul 29517
-- missing added
DELETE FROM creature_addon WHERE guid IN (524842);
DELETE FROM creature_movement WHERE id IN (524842);
DELETE FROM game_event_creature WHERE guid IN (524842);
DELETE FROM game_event_creature_data WHERE guid IN (524842);
DELETE FROM creature_battleground WHERE guid IN (524842);
DELETE FROM creature_linking WHERE guid IN (524842);
DELETE FROM creature where guid IN (524842);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524842,29517,571,1,1,7401.783,4207.772,316.64786,5.497786998,300,300,1,1);
DELETE FROM spell_script_target WHERE entry IN (29972);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(29972, 1, 29396, 0);

-- Setaal Darkmender 29396
UPDATE creature SET position_x = 7403.7856, position_y = 4210.3306, position_z = 316.38315, orientation = 0.017453292, spawndist = 0, MovementType = 0 WHERE id = 29396;
