-- Added missing addon for NPC 15607 (Elder Farwhisper)
DELETE FROM creature_template_addon WHERE entry=15607;
INSERT INTO creature_template_addon VALUES
(15607, 0, 0, 1, 16, 0, 0, '25824');

-- Added missing spawn for NPCs 15561, 15567 & 15607 involved in Lunar Festival
DELETE FROM creature_addon WHERE guid IN (76294);
DELETE FROM creature_movement WHERE id IN (76294);
DELETE FROM game_event_creature WHERE guid IN (76294);
DELETE FROM game_event_creature_data WHERE guid IN (76294);
DELETE FROM creature_battleground WHERE guid IN (76294);
DELETE FROM creature_linking WHERE guid IN (76294)
OR master_guid IN (76294);
DELETE FROM creature WHERE guid IN (76294);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax) VALUES
(76294, 15607, 329, 3705.5, -3466.29, 130.77, 6.22097, 300, 300);

DELETE FROM game_event_creature WHERE guid IN (76294);
INSERT INTO game_event_creature VALUES
(76294, 7);
