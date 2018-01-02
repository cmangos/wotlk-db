

-- Quest 11592
DELETE FROM creature_linking_template WHERE entry IN (25338);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25338, 571, 25335, 1+2+128+512+8192, 0); -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO, FLAG_RESPAWN_ON_RESPAWN, FLAG_FOLLOW, FLAG_DESPAWN_ON_DESPAWN
