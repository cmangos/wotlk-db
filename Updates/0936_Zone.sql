-- Various updates in Eversong Woods

-- Arcane Wraith 15273, Tainted Arcane Wraith 15298 and Felendren the Banished 15367
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7 WHERE Entry IN (15273, 15298, 15367);

-- Set random roaming movement for generic mobs at the top of Falthiren Academy
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (54930, 55057, 55060);

-- Correct message of Solamin
UPDATE db_script_string SET content_default = 'I should have known better than to have given Silanna that tome of cantrips.' WHERE entry = 2000000473;

-- Correct position of GO Mailbox in Fairbreeze Village
UPDATE gameobject SET position_x = 8719.927, position_y = -6665.389, position_z = 70.21574, orientation = 2.757613, rotation0 = 0, rotation1 = 0, rotation2 = 0.9816265, rotation3 = 0.1908124 WHERE guid = 22398;

-- Correct position of NPC Sathiel (should be inside the inn, she is currently taking up Jilannes place)
UPDATE creature SET position_x = 8692.212, position_y = -6639.568, position_z = 72.82763, orientation = 0.2268928 WHERE guid = 56972;

-- Correct position of NPC Jilanne (should be where Sathiel is now removed from)
UPDATE creature SET position_x = 8683.775, position_y = -6694.286, position_z = 73.21793, orientation = 0.1919862 WHERE guid = 58048;

-- Correct position of vanity pets to go along with Jilanne
UPDATE creature SET position_x = 8682.227, position_y = -6700.565, position_z = 73.11845, orientation = 5.492693 WHERE guid = 73961;
UPDATE creature SET position_x = 8688.387, position_y = -6694.294, position_z = 73.11612, orientation = 5.469129 WHERE guid = 74035;
UPDATE creature SET position_x = 8679.073, position_y = -6690.344, position_z = 73.12341, orientation = 0.4292564 WHERE guid = 74036;
