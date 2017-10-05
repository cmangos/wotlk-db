-- Path 3.3 changed his Daily into new Weekly Quests.
-- Old images removed
-- Fly animation added for few new Images

-- Not there anymore
DELETE FROM creature WHERE guid=108043;
DELETE FROM creature_addon WHERE guid=108043;
DELETE FROM creature_movement WHERE id=108043;
DELETE FROM game_event_creature WHERE guid=108043;
DELETE FROM game_event_creature_data WHERE guid=108043;
DELETE FROM creature_battleground WHERE guid=108043;
DELETE FROM creature_linking WHERE guid=108043 OR master_guid=108043;
DELETE FROM creature WHERE guid=104503;
DELETE FROM creature_addon WHERE guid=104503;
DELETE FROM creature_movement WHERE id=104503;
DELETE FROM game_event_creature WHERE guid=104503;
DELETE FROM game_event_creature_data WHERE guid=104503;
DELETE FROM creature_battleground WHERE guid=104503;
DELETE FROM creature_linking WHERE guid=104503 OR master_guid=104503;

-- Updates for new creatures
-- fly animation
DELETE FROM creature_template_addon WHERE entry IN (37849,37855,37858);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(37849,0,50331648,0,0,0,0,NULL), -- Sartharion
(37855,0,50331648,0,0,0,0,NULL), -- Malygos
(37858,0,50331648,0,0,0,0,NULL); -- Razorscale
