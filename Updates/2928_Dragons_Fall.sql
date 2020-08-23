-- Dragon's Fall - Dragonblight

-- Darkspear Dragon Hunter 26870
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534488 AND 534493;
DELETE FROM creature_movement WHERE id BETWEEN 534488 AND 534493;
DELETE FROM game_event_creature WHERE guid BETWEEN 534488 AND 534493;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534488 AND 534493;
DELETE FROM creature_battleground WHERE guid BETWEEN 534488 AND 534493;
DELETE FROM creature_linking WHERE guid BETWEEN 534488 AND 534493
 OR master_guid BETWEEN 534488 AND 534493;
DELETE FROM creature WHERE guid BETWEEN 534488 AND 534493;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534488,26870,571,1,1,0,0,4364.059,982.0151,91.15564,2.356194,300,300,0,0,8982,0,0,0),
(534489,26870,571,1,1,0,0,4384.01,957.0886,86.85322,5.689773,300,300,0,0,8982,0,0,0),
(534490,26870,571,1,1,0,0,4349.482,947.9531,82.7608,5.602507,300,300,0,0,8982,0,0,0),
(534491,26870,571,1,1,0,0,4368.214,944.4045,82.86661,0.9773844,300,300,0,0,8982,0,0,0),
(534492,26870,571,1,1,0,0,4349.483,959.4514,84.4642,3.403392,300,300,0,0,8982,0,0,0),
(534493,26870,571,1,1,0,0,4369.907,958.5035,85.70813,2.740167,300,300,0,0,8982,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 534488 AND 534493;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(534488,0,0,1,0,0,0,29266),
(534489,0,0,1,0,0,0,29266),
(534490,0,0,1,0,0,0,29266),
(534491,0,0,1,0,0,0,29266),
(534492,0,0,1,0,0,0,29266),
(534493,0,0,1,0,0,0,29266);
-- models
UPDATE creature_model_info SET modelid_other_gender = 24093, modelid_alternative = 24092 WHERE modelid = 24091;
UPDATE creature_model_info SET modelid_other_gender = 24093, modelid_alternative = 24091 WHERE modelid = 24092;
UPDATE creature_model_info SET modelid_other_gender = 24091 WHERE modelid = 24093;

-- Rokhan 26859
UPDATE creature_template SET GossipMenuId = 9434 WHERE entry = 26859;
DELETE FROM gossip_menu WHERE entry = 9434;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9434, 12701, 0, 0);

-- Kontokanis 26979
UPDATE creature_template SET GossipMenuId = 9465 WHERE entry = 26979;
DELETE FROM gossip_menu WHERE entry = 9465;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9465, 12725, 0, 0);
