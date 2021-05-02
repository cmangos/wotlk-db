-- Raider Captain Kronn 27120
DELETE FROM creature_template_addon WHERE entry IN (27120);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27120,14334,0,1,1,0,0,NULL);

-- Gurtor 27565
UPDATE creature_template SET GossipMenuId = 9590 WHERE entry = 27565;
DELETE FROM gossip_menu WHERE entry = 9590;
INSERT INTO gossip_menu (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9590, 12943, 0, 0);
