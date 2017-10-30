-- c_t update
UPDATE creature_template SET AIName='NullAI' WHERE entry IN(21030);
UPDATE creature_template SET AIName='NullAI' WHERE entry IN(20978);
UPDATE creature_template SET UnitFlags=33554432,ExtraFlags=0 WHERE entry IN(21625,21030,20978); -- fix wrong flags and data

-- missing added - WoTLKDB free guids reused
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 20978) 
OR master_guid IN (SELECT guid FROM creature WHERE id = 20978);
DELETE FROM creature WHERE id = 20978;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(74868,20978,552,3,0,0,117.8262,198.0811,22.52448,5.183628,300,300,0,0,68,0,0,0),
(74869,20978,552,3,0,0,117.861,198.0675,22.52448,4.415683,300,300,0,0,68,0,0,0),
(77582,20978,552,3,0,0,117.9142,198.068,22.52448,1.466077,300,300,0,0,68,0,0,0),
(78883,20978,552,3,0,0,117.7498,198.164,22.52448,3.735005,300,300,0,0,68,0,0,0),
(78884,20978,552,3,0,0,117.8685,198.2784,22.52448,1.972222,300,300,0,0,68,0,0,0),
(78885,20978,552,3,0,0,117.959,198.3085,22.52448,1.658063,300,300,0,0,68,0,0,0);

DELETE FROM spell_script_target WHERE entry IN(35754);
INSERT INTO spell_script_target VALUES
('35754', '1', '20978', '3'), -- third effect only
('35754', '1', '21030', '4'); -- first two effects only
