-- Newman's Landing

-- High Admiral "Shelly" Jorrik <Retiree> 26081
UPDATE creature SET position_x = -6378.0757, position_y = 1268.4653, position_z = 7.2708583, orientation = 2.44346, spawndist = 0, MovementType = 0 WHERE id = 26081;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 26081);
DELETE FROM creature_template_addon WHERE entry IN (26081);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(26081,0,0,1,0,380,0,NULL);

-- Booty Bay Bruiser 4624
UPDATE creature SET position_x = -6373.5254, position_y = 1267.8834, position_z = 7.2708583, orientation = 2.3911, spawndist = 0, MovementType = 0 WHERE guid = 84602;
UPDATE creature SET position_x = -6378.6113, position_y = 1263.2047, position_z = 7.2708573, orientation = 3.03687, spawndist = 0, MovementType = 0 WHERE guid = 84601;
