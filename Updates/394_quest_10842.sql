-- q.10842 'Vengeful Souls'
-- Wowhead: Wakyhorse on 2010/04/09 (Patch 3.3.3)
-- This quest used to be "The Vengeful Harbinger" it was bugged so often, they changed it to "Vengeful Souls"

-- gobjects not needed in new ver.
DELETE FROM gameobject WHERE guid IN (50480,50481);
DELETE FROM game_event_gameobject WHERE guid IN (50480,50481);
DELETE FROM gameobject_battleground WHERE guid IN (50480,50481);
-- missing added
DELETE FROM gameobject WHERE guid = 50480;
INSERT INTO gameobject VALUES ( 50480, 184799, 530, 1,1,-2983.36, 4418.24, -47.297, 2.00713, 0, 0, 0.843392, 0.537299, 300, 255, 1);
-- Vengeful Draenei
DELETE FROM creature_template_addon WHERE entry = 21636;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(21636,0,0,1,1,0,0,'17327 31748');
-- missing added
-- empty guids reused -- UDB ONLY
DELETE FROM creature WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM creature_addon WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM creature_movement WHERE id IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM game_event_creature WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM game_event_creature_data WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM creature_battleground WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
DELETE FROM creature_linking WHERE guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524) OR master_guid IN (61472,61473,61499,61500,61517,61519,61521,61523,61524);
INSERT INTO creature (guid, id, modelid, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(61472,21636,0,530,1,1,-2981.085,4439.677,-47.2948,0.3141593,60,0,5914,0,0),
(61473,21636,0,530,1,1,-2981.69,4362.31,-49.2269,0.838077,60,0,5914,0,0),
(61499,21636,0,530,1,1,-2981.84,4484.5,-41.0174,0.943323,60,0,5914,0,0),
(61500,21636,0,530,1,1,-2938.03,4494.29,-42.9478,2.14497,60,0,5914,0,0),
(61517,21636,0,530,1,1,-3036.5,4511.4,-42.9466,5.21745,60,0,5914,0,0),
(61519,21636,0,530,1,1,-2962.22,4373.44,-49.2267,3.09861,60,0,5914,0,0),
(61521,21636,0,530,1,1,-2971.07,4335.82,-49.7964,1.61421,60,0,5914,0,0),
(61523,21636,0,530,1,1,-2982.5,4382.706,-49.14471,5.532694,60,0,5914,0,0),
(61524,21636,0,530,1,1,-2904.561,4504.244,-42.86201,3.228859,60,0,5914,0,0);
-- 5 max spawned in same time
DELETE FROM pool_template WHERE entry = 25519;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25519,5,'Vengeful Draenei');
DELETE FROM pool_creature_template WHERE pool_entry = 25519;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(21636, 25519, 0, 'Vengeful Draenei - 21636');
-- Poi for new version
-- new: 10840
DELETE FROM quest_poi WHERE questId = 10842;
INSERT INTO quest_poi (questId, poiId, objIndex, mapId, mapAreaId, floorId, unk3, unk4) values
(10842,0,0,530,478,0,0,1),
(10842,1,1,530,478,0,0,1),
(10842,2,-1,530,478,0,0,1);
DELETE FROM quest_poi_points WHERE questId = 10842;
INSERT INTO quest_poi_points (questId, poiId, x, y) values
(10842,0,-2991,4545),
(10842,1,-2991,4545),
(10842,2,-2827,5061);
