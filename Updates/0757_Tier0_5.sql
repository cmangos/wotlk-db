-- Dungeon Set2 (Tier 0.5) quest chain.
-- Updates

-- TEMP The Crimson Throne -- missing added
DELETE FROM gameobject WHERE guid = 93930;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(93930, 300061, 329, 1,1,3423.92, -3056.07, 136.498, 5.3327, 0, 0, 0.457554, -0.889182, 120, 255, 1);


-- Lord Valthalak Trigger
-- missing added - WoTLKDB free guid reused
DELETE FROM creature WHERE guid = 77865;
DELETE FROM creature_addon WHERE guid = 77865;
DELETE FROM creature_movement WHERE id = 77865;
DELETE FROM game_event_creature WHERE guid = 77865;
DELETE FROM game_event_creature_data WHERE guid = 77865;
DELETE FROM creature_battleground WHERE guid = 77865;
DELETE FROM creature_linking WHERE guid = 77865 OR master_guid = 77865;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77865,16048,229,1,1,0,0,50.1154,-534.537,111.02,6.16101,7200,0,0,3296,2434,0,0);

-- Lord Valthalak
UPDATE creature_template SET EquipmentTemplateId = 19 WHERE Entry = 16042;

-- Spectral Assassin
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 16066;

-- Kormok
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 572, MovementType = 0 WHERE Entry = 16118;

-- Mor Grayhoof
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 552, MovementType = 0 WHERE Entry = 16080;

-- Isalien
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 273, MovementType = 0 WHERE Entry = 16097;

-- Jarien and Sothos
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 32770, EquipmentTemplateId = 2494, MovementType = 0 WHERE Entry = 16101;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 32770, EquipmentTemplateId = 2517, MovementType = 0 WHERE Entry = 16102;
-- Sothos equipment
DELETE FROM creature_equip_template WHERE entry = 2517;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2517, 18983, 12893, 0);

-- Spirit of Jarien
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, EquipmentTemplateId = 292, MovementType = 0 WHERE Entry = 16103;
-- Spirit of Sothos
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, EquipmentTemplateId = 2517, MovementType = 0 WHERE Entry = 16104;
