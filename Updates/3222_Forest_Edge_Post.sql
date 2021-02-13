-- Forest's Edge Post - Grizzly Hills

-- Silverbrook Hunter 27546
-- Updates
UPDATE creature SET equipment_id = 0 WHERE guid IN (518843,518852);
UPDATE creature_model_info SET modelid_other_gender = 23814, modelid_alternative = 23813 WHERE modelid = 23812;
UPDATE creature_model_info SET modelid_other_gender = 23814, modelid_alternative = 23812 WHERE modelid = 23813;
UPDATE creature_model_info SET modelid_other_gender = 23812 WHERE modelid = 23814;
UPDATE creature SET position_x = 3083.391602, position_y = -3023.596680, position_z = 118.017311, spawndist = 7, MovementType = 1 WHERE guid = 518846;
DELETE FROM creature_template_addon WHERE entry = 27546;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27546,0,0,2,0,0,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27546);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(518843,0,0,2,0,214,0,NULL),
(518847,0,0,2,0,214,0,NULL),
(518848,0,0,2,0,214,0,NULL),
(518852,0,0,2,0,214,0,NULL),
(518853,0,0,2,0,214,0,NULL),
(518854,0,0,2,0,214,0,NULL),
(518858,0,0,2,0,214,0,NULL);
