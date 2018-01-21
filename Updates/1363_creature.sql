-- Minion of Kaw
-- redone - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 25880)
OR master_guid IN (SELECT guid FROM creature WHERE id = 25880);
DELETE FROM creature WHERE id = 25880;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(55071,25880,571,1,1,0,608,3946.62,5454.92,27.1104,4.26761,180,180,7,0,9291,0,0,1),
(55097,25880,571,1,1,0,608,3961.06,5443.65,28.814,4.52131,180,180,7,0,7984,0,0,1),
(98123,25880,571,1,1,0,608,3933.11,5470.46,28.7068,5.55333,180,180,7,0,7984,0,0,1),
(98158,25880,571,1,1,0,608,3981.27,5443.12,31.0919,1.47318,180,180,7,0,7984,0,0,1),
(98160,25880,571,1,1,0,608,3971.47,5457.86,28.8589,4.63677,180,180,7,0,7984,0,0,1),
(98161,25880,571,1,1,0,608,3942.2,5480.55,28.8467,0.558197,180,180,7,0,9291,0,0,1),
(98162,25880,571,1,1,0,608,3929.34,5501.34,35.748,3.68801,180,180,7,0,8982,0,0,1),
(98163,25880,571,1,1,0,608,3996.33,5459.78,31.8748,5.87219,180,180,7,0,9291,0,0,1),
(98164,25880,571,1,1,0,608,3950.6,5504.82,29.2238,5.68291,180,180,7,0,9291,0,0,1),
(98165,25880,571,1,1,0,608,4012.47,5492.5,33.6421,5.07029,180,180,7,0,7984,0,0,1),
(98166,25880,571,1,1,0,608,3974.63,5516.99,33.2738,5.88318,180,180,7,0,9291,0,0,1),
(98167,25880,571,1,1,0,608,3994.16,5512.9,30.266,4.15138,180,180,7,0,8982,0,0,1);
