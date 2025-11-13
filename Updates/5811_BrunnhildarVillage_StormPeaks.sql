-- Storm Peaks: Brunnhildar Village
-- Warsmith Sigfinna 30006
-- vandor list corrected
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (30006) AND item = 41752; -- Brunnhildar Axe
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (30006) AND item = 43601; -- Brunnhildar Great Axe
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (30006) AND item = 43600; -- Brunnhildar Harpoon
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (30006) AND item = 41754; -- Brunnhildar Shield
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (30006) AND item = 41746; -- Brunnhildar Bow
-- Brunnhildar Challenger 29366
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29366);
DELETE FROM creature_template_addon WHERE entry IN (29366);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29366,0,0,1,0,333,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id = 21239;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21239,0,31,29366,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Brunnhildar Challenger 29366 EAI: search for other 29366'),
(21239,100,15,54350,10,0,29366,7,1,42880,0,0,0,0,0,0,0,'Part of Brunnhildar Challenger 29366 EAI: cast 54350 or 42880');
-- Kirgaraak 29352
UPDATE creature_template SET Faction = 190, EquipmentTemplateId = 853, MovementType = 0 WHERE entry = 29352;
UPDATE creature SET position_x = 6988.93, position_y = -1772.276, position_z = 821.2866, orientation = 0.6632251, spawndist = 0, MovementType = 0 WHERE id = 29352;
-- Cosmetic Trigger - LAB 24921
DELETE FROM creature_addon WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM creature_movement WHERE id IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM game_event_creature WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM game_event_creature_data WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM creature_battleground WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM creature_linking WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);
DELETE FROM creature WHERE guid IN (526235,526237,526239,526240,533152,533153,533156,533157,533161,533162,533189,533190,533206);                                                           
INSERT INTO creature (guid, id, map, spawnMask, phaseMask,  position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(526235,24921,571,1,1,6978.066,-1758.641,843.5354,5.77704,300,300,0,0),
(526237,24921,571,1,1,6965.647,-1771.673,847.8055,4.206244,300,300,0,0),
(526239,24921,571,1,1,6975.437,-1758.712,857.4982,3.438299,300,300,0,0),
(526240,24921,571,1,1,6974.799,-1757.917,830.0308,2.86234,300,300,0,0),
(533152,24921,571,1,1,6968.664,-1777.927,823.5007,1.256637,300,300,0,0),
(533153,24921,571,1,1,6980.637,-1792.216,823.8326,4.852015,300,300,0,0),
(533156,24921,571,1,1,6957.292,-1783.241,827.5192,0.7504916,300,300,0,0),
(533157,24921,571,1,1,6965.891,-1793.281,827.8773,4.869469,300,300,0,0),
(533161,24921,571,1,1,6974.529,-1802.879,827.0444,0.6806784,300,300,0,0),
(533162,24921,571,1,1,6995.144,-1790.065,843.1974,3.543018,300,300,0,0),
(533189,24921,571,1,1,6981.651,-1800.913,845.5903,1.22173,300,300,0,0),
(533190,24921,571,1,1,6995.818,-1791.559,857.4828,5.585053,300,300,0,0),
(533206,24921,571,1,1,6995.823,-1793.111,829.9551,5.427974,300,300,0,0);
-- Hyldsmeet Warbear 30174
DELETE FROM creature_addon WHERE guid IN (527292,527289,527294);
DELETE FROM creature_movement WHERE Id IN (527292,527289,527294);
DELETE FROM game_event_creature WHERE guid IN (527292,527289,527294);
DELETE FROM game_event_creature_data WHERE guid IN (527292,527289,527294);
DELETE FROM creature_battleground WHERE guid IN (527292,527289,527294);
DELETE FROM creature_linking WHERE guid IN (527292,527289,527294)
 OR master_guid IN (527292,527289,527294);
DELETE FROM creature WHERE guid IN (527292,527289,527294);
UPDATE creature SET position_x = 6950.735352, position_y = -1672.326660, position_z = 810.819763 WHERE guid = 527284;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30, spawndist = 10, MovementType = 1 WHERE id = 30174;
-- Hyldsmeet Bear Rider 30175
UPDATE creature_template SET Faction = 2128, UnitFlags = 33555200 WHERE entry = 30175;
-- Hyldsmeet Warbear 30174
UPDATE creature_template SET Faction = 2128, UnitFlags = 0 WHERE entry = 30174;
