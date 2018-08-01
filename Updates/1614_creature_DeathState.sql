-- Correct spells used instead of DeathState(workaround solution)

-- ===   TBC   === --

-- Aged Clefthoof
-- s.29266 should be used instead of DeathState      
DELETE FROM creature_addon WHERE guid IN (133990,133992,133993,133994,133988);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(133990,0,7,1,0,0,0,29266),
(133992,0,7,1,0,0,0,29266),
(133993,0,7,1,0,0,0,29266),
(133994,0,7,1,0,0,0,29266),
(133988,0,7,1,0,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE guid IN (133990,133992,133993,133994,133988);
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 17133;

-- Sunseeker Gene-Splicer
DELETE FROM creature_template_addon WHERE entry = 19507;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(19507,0,7,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 19507);
UPDATE creature SET modelid = 0, DeathState = 0 WHERE id = 19507; -- modelid also corrected
UPDATE creature_template SET UnitFlags = 33587264 WHERE entry = 19507;

-- Cooling Infernal
-- s.31261 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (84620,84621);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(84620,0,0,1,0,0,0,'12743 31261'),
(84621,0,0,1,0,0,0,'12743 31261');
UPDATE creature SET DeathState = 0 WHERE id = 19760;

-- Eva
-- s.31261 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid = 84608;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(84608,0,0,1,0,0,0,31261);
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 21307;
UPDATE creature SET DeathState = 0 WHERE id = 21307;

-- Coilskar Cobra
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70799,70800);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(70799,0,7,1,0,0,0,NULL),
(70800,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70799,70800);
DELETE FROM creature_movement WHERE id IN (70799,70800);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70799,1,-2837,1761.92,59.1028,3000,1978401,2.72271),
(70800,1,-2829.58,1760.66,59.5666,3000,1978401,2.21657);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1978401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1978401,0,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1978401,0,4,59,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1978401,0,4,59,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1978401,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'ide');

-- Coilskar Siren
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70724,70725);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(70724,0,7,1,0,0,0,NULL),
(70725,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70724,70725);
DELETE FROM creature_movement WHERE id IN (70724,70725);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70724,1,-2851.98,1770.35,58.0096,3000,1976801,3.10669),
(70725,1,-2878.18,1743.32,44.2677,3000,1976801,4.67748);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1976801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1976801,0,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1976801,0,4,59,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976801,0,4,59,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976801,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'ide');

-- Coilskar Defender
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70697,70698);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(70697,0,7,1,0,0,0,NULL),
(70698,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70697,70698);
DELETE FROM creature_movement WHERE id IN (70697,70698);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70697,1,-2889.64,1783.95,53.7678,3000,1976201,4.10152),
(70698,1,-2869.77,1773.73,55.5464,3000,1976201,3.4383);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1976201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1976201,0,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1976201,0,4,59,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976201,0,4,59,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976201,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'ide');


-- ===  WoTLK  === --

-- Riplash Myrmidon
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (56807,56808,56809,56810,56811,56814,56815);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(56807,0,0,1,0,0,0,29266),
(56808,0,0,1,0,0,0,29266),
(56809,0,0,1,0,0,0,29266),
(56810,0,0,1,0,0,0,29266),
(56811,0,0,1,0,0,0,29266),
(56814,0,0,1,0,0,0,29266),
(56815,0,0,1,0,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE guid IN (56807,56808,56809,56810,56811,56814,56815);

-- Riplash Siren
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (94786,94790,94791);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(94786,0,0,1,0,0,0,29266),
(94790,0,0,1,0,0,0,29266),
(94791,0,0,1,0,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE guid IN (94786,94790,94791);

-- Slain Iron Vrykul
-- s.29266 should be used instead of DeathState
DELETE FROM creature_template_addon WHERE entry = 33774;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(33774,0,0,1,0,0,0,29266);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 33774);
UPDATE creature SET DeathState = 0 WHERE guid IN (137569,137570,137571,137572,137573);
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 33774;

-- Slain Iron Dwarf
-- s.29266 should be used instead of DeathState
DELETE FROM creature_template_addon WHERE entry = 33775;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(33775,0,0,1,0,0,0,29266);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 33775);
UPDATE creature SET DeathState = 0 WHERE guid IN (137574,137575,137576,137577,137578,137579);
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 33775;

-- Dead Death's Rise Vrykul
-- s.29266 should be used instead of DeathState
DELETE FROM creature_template_addon WHERE entry = 29515;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(29515,0,0,1,0,0,0,29266);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29515);
UPDATE creature SET DeathState = 0 WHERE guid BETWEEN 122258 AND 122267;
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 29515;

-- Terrifying Abomination
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (130501,130502,130503,130504);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(130501,0,0,1,0,0,0,29266),
(130502,0,0,1,0,0,0,29266),
(130503,0,0,1,0,0,0,29266),
(130504,0,0,1,0,0,0,29266);
UPDATE creature SET SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE guid IN (130501,130502,130503,130504);

-- Knight of the Ebon Blade
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid BETWEEN 130471 AND 130484;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(130471,0,0,1,0,0,0,29266),
(130472,0,0,1,0,0,0,29266),
(130473,0,0,1,0,0,0,29266),
(130474,0,0,1,0,0,0,29266),
(130475,0,0,1,0,0,0,29266),
(130476,0,0,1,0,0,0,29266),
(130477,0,0,1,0,0,0,29266),
(130478,0,0,1,0,0,0,29266),
(130479,0,0,1,0,0,0,29266),
(130480,0,0,1,0,0,0,29266),
(130481,0,0,1,0,0,0,29266),
(130482,0,0,1,0,0,0,29266),
(130483,0,0,1,0,0,0,29266),
(130484,0,0,1,0,0,0,29266);
UPDATE creature SET equipment_id = 0, SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE guid BETWEEN 130471 AND 130484;
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 31094;

-- Death Knight Initiate 28390/28391/28392/28393/28394
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM creature_template_addon WHERE entry IN (28390,28391,28392,28393,28394);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(28390,0,0,1,1,0,0,29266),
(28391,0,0,1,1,0,0,29266),
(28392,0,0,1,1,0,0,29266),
(28393,0,0,1,1,0,0,29266),
(28394,0,0,1,1,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE id IN (28390,28391,28392,28393,28394);
UPDATE creature_template SET UnitFlags = 32768, DynamicFlags = 0 WHERE entry IN (28390,28391,28392,28393,28394);

-- Scarlet Land Cannon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28885);
UPDATE creature SET DeathState = 0 WHERE id = 28885;
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 0 WHERE entry = 28885;

-- Scarlet Fleet Guardian
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28884);
UPDATE creature SET DeathState = 0 WHERE id = 28884;
UPDATE creature_template SET UnitFlags = 32768, DynamicFlags = 0 WHERE entry = 28884;

-- Scarlet Marksman
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (130001,130002);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(130001,0,0,1,0,0,0,29266),
(130002,0,0,1,0,0,0,29266);
UPDATE creature SET SpawnDist = 0, MovementType = 0, equipment_id = 0, DeathState = 0 WHERE guid IN (130001,130002);

-- Scarlet Inquisitor
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29029);
UPDATE creature SET SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE id = 29029;
UPDATE creature_template SET UnitFlags = 32768, DynamicFlags = 0 WHERE entry = 29029;

-- Citizen of New Avalon 28941 / 28942
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (129727,129769);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(129727,0,0,1,0,0,0,29266),
(129769,0,0,1,0,0,0,29266);
UPDATE creature SET equipment_id = 0, SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE guid IN (129727,129769);

-- Scarlet Preacher
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid = 129664;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(129664,0,0,1,0,0,0,29266);
UPDATE creature SET equipment_id = 0, SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE guid = 129664;

-- Scarlet Crusader
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (129682,129683);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(129682,0,0,1,0,0,0,29266),
(129683,0,0,1,0,0,0,29266);
UPDATE creature SET equipment_id = 0, SpawnDist = 0, MovementType = 0, DeathState = 0 WHERE guid IN (129682,129683);

-- Destroyed Siege Tank
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28150);
UPDATE creature SET DeathState = 0 WHERE id = 28150;
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 0 WHERE entry = 28150;
DELETE FROM creature_template_addon WHERE entry = 28150;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(28150,0,0,1,0,0,0,29266);

-- Slain Apothecary
-- s.29266 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24280);
UPDATE creature SET DeathState = 0 WHERE id = 24280;
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 0 WHERE entry = 24280;
DELETE FROM creature_template_addon WHERE entry = 24280;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24280,0,0,1,0,0,0,29266);
