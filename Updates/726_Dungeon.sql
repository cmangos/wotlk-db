-- ============================================================
-- ==========          Karazhan Development          ==========
-- ============================================================
-- Converted into WoTLKDB #Grz3s

-- ==========
-- MISC FIXES
-- ==========
-- Fix Side Door
DELETE FROM areatrigger_teleport WHERE id = 4520;
INSERT INTO areatrigger_teleport (id, name, required_level, required_item, required_item2, heroic_key, heroic_key2, required_quest_done, required_quest_done_heroic, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(4520,'Karazhan, Service (Exit)',0,0,0,0,0,0,0,0,-11034.8,-2003.8,92.98,0);

-- Fix Attumen the Huntsman
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16 WHERE entry = 16152;

-- Fix Kilrek (Should Not Be able to Charm or Banish)
UPDATE creature_template SET MechanicImmuneMask = 131073 WHERE entry IN (17229);

-- Fix Blizzard (Shade of Aran) - Should Be Unselectable and Ignore Aggro also Noticed Wrong Faction - SLOWED NPC DOWN 0.64 Speed Was Too Fast
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 33554688, ExtraFlags = 2, SpeedWalk = 0.642857, SpeedRun = 1.8, Expansion = 1, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE entry IN (17161);
-- Blizzard (Shade of Aran) (17161)
UPDATE creature_template SET MinLevel = 73, MaxLevel = 73, HealthMultiplier = 0.7, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 5312, MaxLevelHealth = 5312, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 283, MaxMeleeDmg = 402, MinRangedDmg = 246, MaxRangedDmg = 364, MeleeAttackPower = 320.0, RangedAttackPower = 58.0, Armor = 7684.0 WHERE entry = 17161;

-- Fix Shade of Aran Teleport
UPDATE spell_script_target SET targetEntry = 17176 WHERE entry = 29967 AND type = 1 AND targetEntry = 16524;
UPDATE creature_template SET UnitFlags=UnitFlags|33554432, ModelId2 = 1126, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE entry BETWEEN 17168 AND 17175;
UPDATE creature_template SET UnitFlags=UnitFlags|33554688, ModelId2 = 1126 WHERE entry IN (17176);
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, HealthMultiplier = 0.7, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 2835, MaxLevelHealth = 2835, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 125, MaxMeleeDmg = 165, MinRangedDmg = 87, MaxRangedDmg = 128, MeleeAttackPower = 304.0, RangedAttackPower = 44.0, Armor = 6792.0 WHERE entry BETWEEN 17168 AND 17176;

-- Fix NPC Movement Speeds
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.42857 WHERE entry = 15548; -- Spectral Stallion
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 15551; -- Spectral Stable Hand

-- Add Missing Gossip
UPDATE creature_template SET GossipMenuId = 8178 WHERE entry = 16813;
UPDATE creature_template SET GossipMenuId = 8176 WHERE entry = 16814;
UPDATE creature_template SET GossipMenuId = 8177 WHERE entry = 16815;
DELETE FROM gossip_menu WHERE entry IN (8176,8177,8178);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8176,10124,0,0),
(8177,10125,0,0),
(8178,10126,0,0);

-- Fix Infernals at Price Encounter -- Infernal Target (17644)
UPDATE creature_template SET ModelId2 = 20577, ExtraFlags = 128 WHERE entry = 17644;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, HealthMultiplier = 1.35, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 4120, MaxLevelHealth = 4120, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 104, MaxMeleeDmg = 138, MinRangedDmg = 72, MaxRangedDmg = 106, MeleeAttackPower = 252.0, RangedAttackPower = 26.0, Armor = 3791.0 WHERE entry = 17644;

-- Netherspite Improvements
UPDATE creature_model_info SET gender = 0 WHERE modelid = 15363;
DELETE FROM creature_template_addon WHERE entry = 15689;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(15689,0,0,0,0,0,0,NULL);

-- Fix Netherspite Portals
UPDATE creature_template SET ModelID1 = 16946, UnitFlags = 33554688, ExtraFlags = 2, CreatureTypeFlags = 4 WHERE entry IN (17367,17368,17369);
-- Nether Portal - Serenity (17367)
UPDATE creature_template SET HealthMultiplier = 0.007, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 1, MaxLevelHealth = 1, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 2, MaxMeleeDmg = 2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 9.0, RangedAttackPower = 0.0, Armor = 15.0 WHERE entry = 17367;
-- Nether Portal - Dominance (17368)
UPDATE creature_template SET HealthMultiplier = 0.007, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 1, MaxLevelHealth = 1, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 2, MaxMeleeDmg = 2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 9.0, RangedAttackPower = 0.0, Armor = 15.0 WHERE entry = 17368;
-- Nether Portal - Perseverence (17369)
UPDATE creature_template SET HealthMultiplier = 0.007, PowerMultiplier = 1, DamageMultiplier = 1.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 1, MaxLevelHealth = 1, MinLevelMana = 0, MaxLevelMana = 0, MinMeleeDmg = 2, MaxMeleeDmg = 2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 9.0, RangedAttackPower = 0.0, Armor = 15.0 WHERE entry = 17369;

-- Fix Ghostly Philanthropist Gold Drop Amount
UPDATE creature_template SET MinLootGold = 110000, MaxLootGold = 130000 WHERE entry IN (16470);

-- =============================================
-- Linking Wing Trash To The Boss For Respawning
-- =============================================
UPDATE creature SET SpawnTimeSecs = 14400 WHERE id IN (16424,16425); -- General Guards

-- ----------------------------
-- Attumen the Huntsman (15550)
-- ----------------------------
DELETE FROM creature_linking_template WHERE master_entry IN (15550);
DELETE FROM creature_linking_template WHERE entry IN (15547,15548,15551);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(15547,532,15550,1024,200),
(15548,532,15550,1024,200),
(15551,532,15550,1024,200);
UPDATE creature SET SpawnTimeSecs = 14400 WHERE id IN (15547,15548,15551);

-- --------------
-- Moroes (15687)
-- --------------
DELETE FROM creature_linking_template WHERE entry IN (16389,16407,16409,16411,16412,16414,16415,16408,16406,16410);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(16389,532,15687,1024,300),
(16407,532,15687,1024,300),
(16409,532,15687,1024,300),
(16411,532,15687,1024,300),
(16412,532,15687,1024,300),
(16414,532,15687,1024,300),
(16415,532,15687,1024,300),
(16408,532,15687,1024,300),
(16406,532,15687,1024,300),
(16410,532,15687,1024,300);

UPDATE creature SET SpawnTimeSecs = 14400 WHERE id IN (16389,16407,16409,16411,16412,16414,16415,16408,16406,16410);

-- ------------------------
-- Maiden of Virtue (16457)
-- ------------------------
DELETE FROM creature_linking_template WHERE entry IN (16459,16460,16461);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(16459,532,16457,1024,300),
(16460,532,16457,1024,300),
(16461,532,16457,1024,300);
UPDATE creature SET SpawnTimeSecs = 14400 WHERE id IN (16459,16460,16461);

-- ------------------------
-- OPERA HOUSE BOSSES
-- ------------------------
-- REQUIRED SD2 IMPLEMENTATION DUE TO SAME TRASH FOR DIFFERENT BOSSES

-- -------------------
-- The Curator (15691)
-- -------------------
DELETE FROM creature_linking_template WHERE entry IN (16485,16488,16492);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(16485,532,15691,1024,300),
(16488,532,15691,1024,300),
(16492,532,15691,1024,300);
UPDATE creature SET SpawnTimeSecs = 14400 WHERE id IN (16485,16488,16492);

-- =======================================
-- Widespread Model Fixes For Karazhan NPC
-- =======================================
-- Fix Wrong Models -- Phantom Guest
UPDATE creature_template SET ModelId1 = 16464, ModelId2 = 16465, ModelId3 = 16466, ModelId4 = 16467 WHERE entry = 16409;
DELETE FROM creature_model_info WHERE ModelId IN (16464,16465,16466,16467); -- Phantom Guest
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16464,0.3519,1.725,0,16466,0),
(16465,0.3519,1.725,0,16467,0),
(16466,0.2392,1.725,1,16464,0),
(16467,0.2392,1.725,1,16465,0);

-- Fix Wrong Models -- Phantom Attendant
UPDATE creature_template SET ModelId1 = 16514, ModelId2 = 16515, ModelId3 = 16516, ModelId4 = 16517 WHERE entry = 16406;
DELETE FROM creature_model_info WHERE ModelId IN (16514,16515,16516,16517); -- Phantom Attendant
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16514,0.306,1.5,0,16516,0),
(16515,0.306,1.5,0,16517,0),
(16516,0.208,1.5,1,16514,0),
(16517,0.208,1.5,1,16515,0);

-- Fix Wrong Models -- Spectral Retainer
UPDATE creature_template SET ModelId1 = 16509, ModelId2 = 16510, ModelId3 = 16511, ModelId4 = 16512 WHERE entry = 16410;
DELETE FROM creature_model_info WHERE ModelId IN (16509,16510,16511,16512); -- Spectral Retainer
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16509,0.3519,1.725,0,16511,0),
(16510,0.3519,1.725,0,16512,0),
(16511,0.3519,1.725,1,16509,0),
(16512,0.3519,1.725,1,16510,0);

-- Fix Wrong Models -- Spectral Servant
UPDATE creature_template SET ModelId1 = 16485, ModelId2 = 16486, ModelId3 = 16487, ModelId4 = 16488 WHERE entry = 16407;
DELETE FROM creature_model_info WHERE ModelId IN (16485,16486,16487,16488); -- Spectral Servant
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16485,0.3519,1.725,0,16487,0),
(16486,0.3519,1.725,0,16488,0),
(16487,0.2392,1.725,1,16485,0),
(16488,0.2392,1.725,1,16486,0);

-- Fix Wrong Models -- Phantom Valet
UPDATE creature_template SET ModelId1=16494, ModelId2 = 16495, ModelId3 = 16496, ModelId4 = 16497 WHERE entry = 16408;
DELETE FROM creature_model_info WHERE ModelId IN (16494,16495,16496,16497); -- Phantom Valet
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16494,0.4131,2.025,0,16496,0),
(16495,0.3672,1.8,0,16497,0),
(16496,0.2808,2.025,1,16494,0),
(16497,0.2808,2.025,1,16495,0);

-- Fix Wrong Models -- Spectral Sentry
UPDATE creature_template SET ModelId1 = 16458, ModelId2 = 16459, ModelId3 = 16460, ModelId4 = 16461 WHERE entry = 16424;
DELETE FROM creature_model_info WHERE ModelId IN (16458,16459,16460,16461); -- Spectral Sentry
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16458,0.3519,1.725,0,16460,0),
(16459,0.3519,1.725,0,16461,0),
(16460,0.2392,1.725,1,16458,0),
(16461,0.2392,1.725,1,16459,0);

-- Fix Wrong Models -- Phantom Guardsman
UPDATE creature_template SET ModelId1 = 16454, ModelId2 = 16455, ModelId3 = 16456, ModelId4 = 16457 WHERE entry = 16425;
DELETE FROM creature_model_info WHERE ModelId IN (16454,16455,16456,16457); -- Phantom Guardsman
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16454,0.3519,1.725,0,16456,0),
(16455,0.3519,1.725,0,16457,0),
(16456,0.2392,1.725,1,16454,0),
(16457,0.2392,1.725,1,16455,0);

-- Fix Wrong Models -- Wanton Hostess
UPDATE creature_template SET ModelId1 = 16543, ModelId2 = 16544, ModelId3 = 16545, ModelId4 = 16546 WHERE entry = 16459;
DELETE FROM creature_model_info WHERE ModelId IN (16543,16544,16545,16546); -- Wanton Hostess
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16543,0.44045,1.725,1,0,0),
(16544,0.44045,1.725,1,0,0),
(16545,0.44045,1.725,1,0,0),
(16546,0.44045,1.725,1,0,0);

-- Fix Wrong Models -- Concubine
UPDATE creature_template SET ModelId1 = 16551, ModelId2 = 16552, ModelId3 = 16553, ModelId4 = 16554 WHERE entry = 16461;
DELETE FROM creature_model_info WHERE ModelId IN (16551,16552,16553,16554); -- Concubine
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16551,0.2392,1.725,1,0,0),
(16552,0.2392,1.725,1,0,0),
(16553,0.2392,1.725,1,0,0),
(16554,0.2392,1.725,1,0,0);

-- Fix Wrong Models -- Night Mistress
UPDATE creature_template SET ModelId1 = 16547, ModelId2 = 16548, ModelId3 = 16549, ModelId4 = 16550 WHERE entry = 16460;
DELETE FROM creature_model_info WHERE ModelId IN (16547,16548,16549,16550); -- Night Mistress
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16547,0.208,1.5,1,0,0),
(16548,0.208,1.5,1,0,0),
(16549,0.208,1.5,1,0,0),
(16550,0.208,1.5,1,0,0);

-- Fix Wrong Models -- Ghostly Steward
UPDATE creature_template SET ModelId1 = 16535, ModelId2 = 16536, ModelId3 = 16537, ModelId4 = 16538 WHERE entry = 16414;
DELETE FROM creature_model_info WHERE ModelId IN (16535,16536,16537,16538); -- Ghostly Steward
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16535,0.3978,1.95,0,16537,0),
(16536,0.3978,1.95,0,16538,0),
(16537,0.2704,1.95,1,16535,0),
(16538,0.2704,1.95,1,16536,0);

-- Fix Wrong Models -- Ghostly Baker
UPDATE creature_template SET ModelId1 = 16529, ModelId2 = 16530, ModelId3 = 16531, ModelId4 = 16532 WHERE entry = 16412;
DELETE FROM creature_model_info WHERE ModelId IN (16529,16530,16531,16532); -- Ghostly Baker
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16529,0.3519,1.725,0,16531,0),
(16530,0.3519,1.725,0,16532,0),
(16531,0.2392,1.725,1,16529,0),
(16532,0.3519,1.725,1,16530,0);

-- Fix Wrong Models -- Spectral Chef
UPDATE creature_template SET ModelId1 = 16524, ModelId2 = 16525, ModelId3 = 16526, ModelId4 = 16527 WHERE entry = 16411;
DELETE FROM creature_model_info WHERE ModelId IN (16524,16525,16526,16527); -- Spectral Chef
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16524,0.3519,1.725,0,16526,0),
(16525,0.3519,1.725,0,16527,0),
(16526,0.2392,1.725,1,16524,0),
(16527,0.3519,1.725,1,16525,0);

-- Fix Wrong Models -- Spectral Apprentice
UPDATE creature_template SET ModelId1 = 16417, ModelId2 = 16437, ModelId3 = 16440, ModelId4 = 16441 WHERE entry = 16389;
DELETE FROM creature_model_info WHERE ModelId IN (16417,16437,16440,16441); -- Spectral Apprentice
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16417,0.3519,1.725,0,16440,0),
(16437,0.3519,1.725,0,16441,0),
(16440,0.2392,1.725,1,16417,0),
(16441,0.2392,1.725,1,16437,0);

-- Fix Wrong Models -- Spectral Stable Hand
UPDATE creature_template SET ModelId1 = 16397, ModelId2 = 16398, ModelId3 = 16399, ModelId4 = 16400 WHERE entry = 15551;
DELETE FROM creature_model_info WHERE ModelId IN (16397,16398,16399,16400); -- Spectral Stable Hand
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16397,0.3519,1.725,0,16399,0),
(16398,0.3519,1.725,0,16400,0),
(16399,0.2392,1.725,1,16397,0),
(16400,0.2392,1.725,1,16398,0);

-- Fix Wrong Models -- Spectral Patron
UPDATE creature_template SET ModelId1 = 16555, ModelId2 = 16556, ModelId3 = 16557, ModelId4 = 16558 WHERE entry = 16468;
DELETE FROM creature_model_info WHERE ModelId IN (16555,16556,16557,16558); -- Spectral Patron
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16555,0.3519,1.725,0,16557,0),
(16556,0.3519,1.725,0,16558,0),
(16557,0.2392,1.725,1,16555,0),
(16558,0.2392,1.725,1,16556,0);

-- Fix Wrong Models -- Spectral Performer
UPDATE creature_template SET ModelId1 = 16567, ModelId2 = 16568, ModelId3 = 16569, ModelId4 = 18979 WHERE entry = 16473;
DELETE FROM creature_model_info WHERE ModelId IN (16567,16568,16569,18979); -- Spectral Performer
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16567,0.3519,1.725,0,16569,0),
(16568,0.3519,1.725,0,18979,0),
(16569,0.2392,1.725,1,16567,0),
(18979,0.2392,1.725,1,16568,0);

-- Fix Wrong Models -- Phantom Stagehand
UPDATE creature_template SET ModelId1 = 16563, ModelId2 = 16564, ModelId3 = 16565, ModelId4 = 16566 WHERE entry = 16472;
DELETE FROM creature_model_info WHERE ModelId IN (16563,16564,16565,16566); -- Phantom Stagehand
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16563,0.3519,1.725,0,16565,0),
(16564,0.2392,1.725,0,16566,0),
(16565,0.2392,1.725,1,16563,0),
(16566,0.2392,1.725,1,16564,0);

-- Fix Wrong Models -- Ghostly Philanthropist
UPDATE creature_template SET ModelId1 = 16559, ModelId2 = 16560, ModelId3 = 16561, ModelId4 = 16562 WHERE entry = 16470;
DELETE FROM creature_model_info WHERE ModelId IN (16559,16560,16561,16562); -- Ghostly Philanthropist
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender, modelid_alternative) VALUES
(16559,0.3519,1.725,0,16561,0),
(16560,0.3519,1.725,0,16562,0),
(16561,0.2392,1.725,1,16559,0),
(16562,0.2392,1.725,1,16560,0);


-- =======================================
-- Scripted Event Just Outside of Karazhan
-- =======================================
UPDATE creature_template SET MovementType = 2 WHERE entry IN (17613);
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE id IN (17613);
DELETE FROM creature_movement_template WHERE entry IN (17613);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(17613,1,-11127,-2008.77,47.4291,0,0,100),
(17613,2,-11126.1,-2008.21,47.3546,7000,1761301,0.623984), -- Say and Points at Guy Sequenceat Guy
(17613,3,-11126.7,-2004.61,47.5918,0,0,100),
(17613,4,-11127.4,-2005.35,47.6565,0,0,4.295723),
(17613,5,-11127.76,-2006.436,47.62901,230000,1761302,4.295723),
(17613,6,-11126.1,-2008.8,47.3341,0,0,100),
(17613,7,-11122.1,-2014.27,47.0827,0,0,100),
(17613,8,-11118.1,-2018.79,47.0789,7000,1761304,5.575922), -- Text Emote and working
(17613,9,-11118.1,-2018.79,47.0789,10000,1761303,5.575922), -- Say
(17613,10,-11118.1,-2018.79,47.0789,0,0,5.575922),
(17613,11,-11121.7,-2014.38,47.0856,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1761301,1761302,1761303,1761304);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1761301,1,0,0,0,0,0,0,2000001057,0,0,0,0,0,0,0,''),
(1761301,4,31,18255,30,0,0,0,0,0,0,0,0,0,0,0,'search for 18255'),
(1761301,5,0,0,0,18255,30,3,2000001058,0,0,0,0,0,0,0,''),
(1761301,5,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1761302,4,31,18255,30,0,0,0,0,0,0,0,0,0,0,0,'search for 18255'),
(1761302,5,0,0,0,18253,30,3,2000001062,0,0,0,0,0,0,0,''),
(1761303,0,0,0,0,0,0,0,2000001060,0,0,0,0,0,0,0,''),
(1761303,11,31,18255,30,0,0,0,0,0,0,0,0,0,0,0,'search for 18255'),
(1761303,12,0,0,0,18255,30,3,2000001061,0,0,0,0,0,0,0,''),
(1761304,0,0,0,0,0,0,0,2000001059,0,0,0,0,0,0,0,''),
(1761304,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1761304,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000001057,2000001058,2000001059,2000001060,2000001061,2000001062);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001057,'I ought to give your head a good shake! I\'ve a feeling the ley-lines are clouding up your brain. No, Darius, what we need is a large depository of mineral-heavy water. Even faint arcane signals will accumulate in sulphur and lime.',0,0,0,1,NULL),
(2000001058,'S-sorry, sir.',0,0,0,1,NULL),
(2000001059,'Archmage Alturus begins to perform an arcane scrying.',0,2,0,0,NULL),
(2000001060,'Blasted scrying crystal! I\'m not getting anything over here.',0,0,0,0,NULL),
(2000001061,'S-sir... have you tried giving the crystal a good shake? It\'s possible that the ley-lines are clouding up the reading.',0,0,0,0,NULL),
(2000001062,'Do not be so harsh on the child, Alturus. Remember that Cedric himself assigned him to you.',0,0,0,1,NULL);

-- =============================================
-- Fix Teleport Location Into Karazhan Main Door - Used Location From Video
-- =============================================
DELETE FROM areatrigger_teleport WHERE id = 4131;
INSERT INTO areatrigger_teleport (id, name, required_level, required_item, required_item2, heroic_key, heroic_key2, required_quest_done, required_quest_done_heroic, target_map, target_position_x, target_position_y, target_position_z, target_orientation, condition_id) VALUES
(4131,'Karazhan, Main (Entrance)',70,0,0,0,0,0,0,532,-11101.827148,-1998.31189,49.8927,0.007069,0);

-- ===================
-- Fix Berthold Gossip
-- ===================
UPDATE creature_template SET GossipMenuId = 7139 WHERE entry = 16153;
DELETE FROM gossip_menu WHERE entry IN (7139,8167,8168,8169);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7139,8401,0,0),
(7139,10741,0,1130),
(8167,10113,0,0),
(8168,10114,0,0),
(8169,10115,0,0);
DELETE FROM gossip_menu_option WHERE menu_id = 7139;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7139,0,0,'What is this place?',1,1,8167,0,0,0,0,NULL,0),
(7139,1,0,'Where is Medivh?',1,1,8168,0,0,0,0,NULL,0),
(7139,2,0,'How do you navigate the tower?',1,1,8169,0,0,0,0,NULL,0),
(7139,3,0,'Teleport me to the Guardian\'s Library.',1,1,-1,0,713901,0,0,NULL,1130);
DELETE FROM dbscripts_on_gossip WHERE id = 713901;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(713901,0,15,39567,0,0,0,2,0,0,0,0,0,0,0,0,'Cast Teleport to the Shade of Aran');
DELETE FROM conditions WHERE condition_entry = 1130;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1130,31,658,0);

-- Calliard with Correct Pathing - Need to add ACID Random Says
UPDATE creature SET position_x = -11097.052734, position_y = -1932.945190, position_z = 49.889278, orientation = 1.461623 WHERE guid = 135307;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16159;
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135307;
DELETE FROM creature_movement WHERE id = 135307;
DELETE FROM creature_movement_template WHERE entry = 16159;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(16159,1,-11096.7,-1928.49,49.8893,0,0,100),
(16159,2,-11097.4,-1933.38,49.8893,0,0,100),
(16159,3,-11103.4,-1941.87,49.8893,0,0,100),
(16159,4,-11108.1,-1946.38,49.8893,0,0,100),
(16159,5,-11115.9,-1948.88,49.8893,0,0,100),
(16159,6,-11121.9,-1949.24,49.8893,0,0,100),
(16159,7,-11126.8,-1949.37,49.8893,0,0,100),
(16159,8,-11135,-1946.71,49.884,0,0,100),
(16159,9,-11142.8,-1943.9,49.8914,0,0,100),
(16159,10,-11147.9,-1940.47,49.8914,0,0,100),
(16159,11,-11142.5,-1944.04,49.8914,0,0,100),
(16159,12,-11134.6,-1946.89,49.8832,0,0,100),
(16159,13,-11126.5,-1949.67,49.8904,0,0,100),
(16159,14,-11121.5,-1949.51,49.8904,0,0,100),
(16159,15,-11115.5,-1949.03,49.8889,0,0,100),
(16159,16,-11107.9,-1946.75,49.8889,0,0,100),
(16159,17,-11103,-1942.08,49.8891,0,0,100),
(16159,18,-11096.8,-1933.63,49.8892,0,0,100);

-- Spectral Stable Hand
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135851;
DELETE FROM creature_movement WHERE id IN (135851);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135851,1,-11136,-1961.4,49.8892,30000,1555103,5.865234),
(135851,2,-11144.1,-1959.7,49.8912,0,1555101,100),
(135851,3,-11152.3,-1957.81,49.8912,40000,1555104,3.113198),
(135851,4,-11144.2,-1959.84,49.8912,0,0,100),
(135851,5,-11136,-1961.4,49.8892,20000,1555102,5.865234),
(135851,6,-11144.1,-1959.7,49.8912,0,0,100),
(135851,7,-11152.3,-1957.81,49.8912,30000,1555103,3.113198),
(135851,8,-11144.2,-1959.84,49.8912,0,1555101,100),
(135851,9,-11136,-1961.4,49.8892,40000,1555104,5.865234),
(135851,10,-11144.1,-1959.7,49.8912,0,0,100),
(135851,11,-11152.3,-1957.81,49.8912,20000,1555102,3.113198),
(135851,12,-11144.2,-1959.84,49.8912,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1555101 AND 1555105;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1555101,0,0,0,0,0,0,0,2000001063,2000001064,0,0,0,0,0,0,'Spectral Stable Hand - Random Say'),
(1555101,5,31,16159,80,0,0,0,0,0,0,0,0,0,0,0,'search for 16159'),
(1555101,6,0,0,0,16159,100,7,2000001065,2000001066,0,0,0,0,0,0,'Calliard - Random Say'),
(1555102,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555102,18,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555103,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555103,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555104,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555104,38,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555105,0,0,0,0,0,0,0,2000001063,2000001064,0,0,0,0,0,0,'Spectral Stable Hand - Random Say'),
(1555105,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1555105,5,31,16159,80,0,0,0,0,0,0,0,0,0,0,0,'search for 16159'),
(1555105,6,0,0,0,16159,100,7,2000001065,2000001066,0,0,0,0,0,0,'Calliard - Random Say'),
(1555105,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000001063,2000001064,2000001065,2000001066);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001063,'<sigh> Seems like I\'ve been at this forever...',0,0,0,1,NULL),
(2000001064,'Another day, another stable to muck out.',0,0,0,1,NULL),
(2000001065,'Am I hearing things?',0,0,0,1,NULL),
(2000001066,'Who goes there?',0,0,0,1,NULL);

-- Stable Hand and Spectral Stallion Pathing Together
UPDATE creature SET position_x = -11130.8, position_y = -1957.99, position_z = 49.8888, orientation = 0.117698, spawndist = 0, MovementType = 2 WHERE guid = 135845;
UPDATE creature SET position_x = -11133.6, position_y = -1959.09, position_z = 49.8873, orientation = 6.26894, spawndist = 0, MovementType = 0 WHERE guid = 135835;
DELETE FROM creature_addon WHERE guid = 135845;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(135845,0,0,1,0,0,0,NULL);
DELETE FROM creature_linking WHERE master_guid = 135845;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135835,135845,515);
DELETE FROM creature_movement WHERE id = 135845;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135845,1,-11126.3,-1957.68,49.8889,0,0,100),
(135845,2,-11117.6,-1956.5,49.8889,0,0,100),
(135845,3,-11110.8,-1953.2,49.8875,0,0,100),
(135845,4,-11103.7,-1948.03,49.8818,0,0,100),
(135845,5,-11110.7,-1953.61,49.8872,0,0,100),
(135845,6,-11118.2,-1957.08,49.8867,0,0,100),
(135845,7,-11127.1,-1957.87,49.889,0,0,100),
(135845,8,-11132.7,-1958.22,49.8879,0,0,100),
(135845,9,-11139.3,-1959.97,49.8872,0,0,100),
(135845,10,-11146.4,-1956.93,49.8911,0,0,100),
(135845,11,-11152.7,-1949.94,49.8911,0,0,100),
(135845,12,-11154.6,-1939.97,49.8911,0,0,100),
(135845,13,-11153.2,-1934.92,49.889,0,0,100),
(135845,14,-11149.1,-1926.86,49.8859,0,0,100),
(135845,15,-11146.8,-1919.61,49.889,0,0,100),
(135845,16,-11141.7,-1913.86,49.889,0,0,100),
(135845,17,-11133,-1905.59,49.889,0,0,100),
(135845,18,-11141.6,-1913.93,49.8901,0,0,100),
(135845,19,-11146.9,-1920.1,49.8901,0,0,100),
(135845,20,-11148.9,-1927.68,49.8846,0,0,100),
(135845,21,-11153.6,-1935.44,49.8877,0,0,100),
(135845,22,-11155.1,-1941.44,49.8888,0,0,100),
(135845,23,-11152.2,-1951.02,49.8888,0,0,100),
(135845,24,-11146.2,-1957.34,49.8888,0,0,100),
(135845,25,-11138.6,-1960.31,49.888,0,0,100),
(135845,26,-11132,-1958.08,49.8879,0,0,100);

-- 2 Spectral Horses Together
DELETE FROM creature_linking WHERE master_guid = 135841;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135842,135841,3);

-- Stable Hand and Spectral Charger Standing Together
DELETE FROM creature_linking WHERE master_guid = 135849;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135830,135849,3);

-- Spectral Stable Hand Pathing Between Horses
DELETE FROM creature_addon WHERE guid = 135850;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(135850,0,0,1,0,0,0,NULL);
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135850;
DELETE FROM creature_movement WHERE id = 135850;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135850,1,-11147,-1929.18,49.8892,30000,1555105,6.1095),
(135850,2,-11164.5,-1938.01,49.8904,20000,1555102,1.569114),
(135850,3,-11147,-1929.18,49.8892,40000,1555104,6.1095),
(135850,4,-11164.5,-1938.01,49.8904,20000,1555102,1.569114),
(135850,5,-11147,-1929.18,49.8892,40000,1555104,6.1095),
(135850,6,-11164.5,-1938.01,49.8904,30000,1555105,1.569114),
(135850,7,-11147,-1929.18,49.8892,40000,1555104,6.1095),
(135850,8,-11164.5,-1938.01,49.8904,20000,1555102,1.569114),
(135850,9,-11147,-1929.18,49.8892,30000,1555103,6.1095),
(135850,10,-11164.5,-1938.01,49.8904,30000,1555103,1.569114);

-- Group of 3 Stable hands and 2 Horses Before Midnight
DELETE FROM creature_linking WHERE master_guid = 135844;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135832,135844,3),
(135838,135844,3),
(135843,135844,3),
(135846,135844,3);

-- Fix Some Spectral Stable Hands To Carry Shovels instead of Pitch Forks
UPDATE creature SET equipment_id = 281 WHERE guid IN (135845,135847,135850,135851);

-- Group of 5 NPC After Midnight
UPDATE creature SET position_x = -11091.561523, position_y = -1911.222046, position_z = 49.848724, orientation = 5.009161 WHERE guid = 135125;
UPDATE creature SET position_x = -11096.168945, position_y = -1904.782471, position_z = 49.861694, orientation = 1.849504 WHERE guid = 135124;
UPDATE creature SET position_x = -11097.2, position_y = -1901.61, position_z = 49.8417, orientation = 5.02565 WHERE guid = 135126;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (135157,135158);

DELETE FROM creature_movement WHERE id IN (135157,135158);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135157
(135157,1,-11092,-1914.46,49.9406,90000,0,2.21657),
(135157,2,-11092,-1914.46,49.9406,60000,0,2.21657),
(135157,3,-11092,-1914.46,49.9406,45000,1640701,2.21657),
(135157,4,-11092,-1914.46,49.9406,90000,0,2.21657),
(135157,5,-11092,-1914.46,49.9406,20000,1640701,2.21657),
-- #135158
(135158,1,-11099.2,-1900.79,49.9305,65000,0,0.977384),
(135158,2,-11099.2,-1900.79,49.9305,55000,1640701,0.977384),
(135158,3,-11099.2,-1900.79,49.9305,50000,0,0.977384),
(135158,4,-11099.2,-1900.79,49.9305,80000,1640701,0.9773846),
(135158,5,-11099.2,-1900.79,49.9305,37000,0,0.977384);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1640701);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1640701,0,0,0,0,0,0,0,2000001067,2000001068,2000001069,0,0,0,0,0,'Spectral Servant - Random Say');
DELETE FROM db_script_string WHERE entry IN (2000001067,2000001068,2000001069);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001067,'They\'ll never know we\'re missing.',0,0,0,1,NULL),
(2000001068,'The rest are fine without us.',0,0,0,1,NULL),
(2000001069,'If we dawdle much longer, there\'ll be hell to pay!',0,0,0,1,NULL);
DELETE FROM creature_linking WHERE master_guid IN (135125);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135124,135125,3),
(135126,135125,3),
(135158,135125,3),
(135157,135125,3);

-- ========================================
-- Upstairs (Above Livery Stables) Overhaul
-- ========================================
DELETE FROM creature_linking WHERE master_guid = 135361;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135360,135361,3);

-- Group of 3 in First Room
UPDATE creature SET position_x = -11164.6, position_y = -1943.58, position_z = 74.3947, orientation = 5.764, spawndist = 0, MovementType = 2 WHERE guid = 135345;
UPDATE creature SET position_x = -11162.9, position_y = -1944.91, position_z = 74.3967, orientation = 2.24777, spawndist = 0, MovementType = 2 WHERE guid = 135346;
UPDATE creature SET position_x = -11162.9, position_y = -1942.08, position_z = 74.4, orientation = 4.50501, spawndist = 0, MovementType = 2 WHERE guid = 135364;
DELETE FROM creature_movement WHERE id IN (135345,135346,135364); 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135345 (16424)
(135345,1,-11164.6,-1943.58,74.3947,12000,1642401,5.764),
(135345,2,-11164.6,-1943.58,74.3947,20000,1642401,5.764),
(135345,3,-11164.6,-1943.58,74.3947,15000,0,5.764),
(135345,4,-11164.6,-1943.58,74.3947,8000,1642401,5.764),
(135345,5,-11164.6,-1943.58,74.3947,15000,1642401,5.764),
-- #135346 (16424)
(135346,1,-11162.9,-1944.91,74.3967,5000,1642401,2.24777),
(135346,2,-11162.9,-1944.91,74.3967,15000,1642401,2.24777),
(135346,3,-11162.9,-1944.91,74.3967,25000,1642401,2.24777),
(135346,4,-11162.9,-1944.91,74.3967,18000,0,2.24777),
(135346,5,-11162.9,-1944.91,74.3967,30000,1642401,2.24777),
-- #135364 (16425)
(135364,1,-11162.9,-1942.08,74.4,18000,1642501,4.50501),
(135364,2,-11162.9,-1942.08,74.4,23000,1642501,4.50501),
(135364,3,-11162.9,-1942.08,74.4,9000,1642501,4.50501),
(135364,4,-11162.9,-1942.08,74.4,17000,1642501,4.50501),
(135364,5,-11162.9,-1942.08,74.4,24000,0,4.50501);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1642401,1642501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1642401,1,1,1,0,0,0,0,6,273,274,0,0,0,0,0,''),
(1642501,1,1,274,0,0,0,0,273,6,1,0,0,0,0,0,'');
DELETE FROM creature_linking WHERE master_guid IN (135364);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135345,135364,3),
(135346,135364,3);

-- 2nd Group of 3 NPC in First Room
UPDATE creature SET position_x = -11139.4, position_y = -1944.71, position_z = 74.4052, orientation = 5.33203, spawndist = 0, MovementType = 2 WHERE guid = 135355;
UPDATE creature SET position_x = -11137.9, position_y = -1946.9, position_z = 74.4058, orientation = 2.39386, spawndist = 0, MovementType = 2 WHERE guid = 135372;
UPDATE creature SET position_x = -11136.8, position_y = -1945.36, position_z = 74.404, orientation = 3.0371, spawndist = 0, MovementType = 2 WHERE guid = 135371;
DELETE FROM creature_movement WHERE id IN (135355,135371,135372); 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135355 (16424)
(135355,1,-11139.4,-1944.71,74.4052,7000,1642401,5.33203),
(135355,2,-11139.4,-1944.71,74.4052,14000,1642401,5.33203),
(135355,3,-11139.4,-1944.71,74.4052,27000,0,5.33203),
(135355,4,-11139.4,-1944.71,74.4052,17000,1642401,5.33203),
(135355,5,-11139.4,-1944.71,74.4052,19000,1642401,5.33203),
-- #135372 (16425)
(135372,1,-11137.9,-1946.9,74.4058,11000,1642501,2.39386),
(135372,2,-11137.9,-1946.9,74.4058,18000,1642501,2.39386),
(135372,3,-11137.9,-1946.9,74.4058,20000,1642501,2.39386),
(135372,4,-11137.9,-1946.9,74.4058,18000,0,2.39386),
(135372,5,-11137.9,-1946.9,74.4058,16000,1642501,2.39386),
-- #135371 (16425)
(135371,1,-11136.8,-1945.36,74.404,18000,1642501,3.0371),
(135371,2,-11136.8,-1945.36,74.404,18000,1642501,3.0371),
(135371,3,-11136.8,-1945.36,74.404,24000,1642501,3.0371),
(135371,4,-11136.8,-1945.36,74.404,27000,1642501,3.0371),
(135371,5,-11136.8,-1945.36,74.404,12000,0,3.0371);
DELETE FROM creature_linking WHERE master_guid IN (135355);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135372,135355,3),
(135371,135355,3);

-- NPC Pathing Between 2 Groups in First Room
UPDATE creature SET position_x = -11141.1, position_y = -1946.75, position_z = 74.4089, orientation = 0.124058, spawndist = 0, MovementType = 2 WHERE guid = 135353;
DELETE FROM creature_movement WHERE id = 135353;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135353,1,-11161.5,-1943.55,74.4007,20000,1642401,2.916932),
(135353,2,-11141.1,-1946.8,74.4094,20000,1642401,0.142119);

-- Guardsman and Sentry Pathing in Circle
UPDATE creature SET position_x = -11139.7, position_y = -1896.96, position_z = 74.3801, orientation = 3.76044, spawndist = 0, MovementType = 2 WHERE guid = 135349;
UPDATE creature SET position_x = -11139.469727, position_y = -1896.216553, position_z = 74.382805, orientation = 3.604936, spawndist = 0, MovementType = 0 WHERE guid = 135350;
DELETE FROM creature_movement WHERE id IN (135349);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135349,1,-11146.7,-1901.95,74.3984,0,0,100),
(135349,2,-11150.2,-1905.7,74.3984,0,0,100),
(135349,3,-11156,-1912.03,74.3984,0,0,100),
(135349,4,-11158.6,-1918.91,74.4161,0,0,100),
(135349,5,-11159.8,-1928.74,74.4171,0,0,100),
(135349,6,-11157.6,-1939.25,74.4155,0,0,100),
(135349,7,-11152.7,-1947.97,74.4106,0,0,100),
(135349,8,-11146.8,-1953.86,74.4106,0,0,100),
(135349,9,-11140.5,-1957.11,74.4099,0,0,100),
(135349,10,-11133,-1958.33,74.4116,0,0,100),
(135349,11,-11122,-1959.35,74.4021,0,0,100),
(135349,12,-11113.1,-1956.19,74.3972,0,0,100),
(135349,13,-11098.4,-1944.14,74.4314,0,0,100),
(135349,14,-11092.3,-1934.64,74.4734,0,0,100),
(135349,15,-11092,-1926.03,74.413,0,0,100),
(135349,16,-11092.8,-1915.9,74.4084,0,0,100),
(135349,17,-11094.5,-1906.1,74.4087,0,0,100),
(135349,18,-11099.8,-1903.11,74.4146,0,0,100),
(135349,19,-11110,-1898.35,74.416,0,0,100),
(135349,20,-11124.6,-1891.45,74.4176,0,0,100),
(135349,21,-11129.6,-1891.72,74.414,0,0,100),
(135349,22,-11136.5,-1893.33,74.3863,0,0,100),
(135349,23,-11141.9,-1897.87,74.3827,0,0,100);
DELETE FROM creature_linking WHERE master_guid IN (135349);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135350,135349,515);

-- Group of 4 NPC in Circle Next Room Over
UPDATE creature SET position_x = -11116.1, position_y = -1944.85, position_z = 74.3978, orientation = 6.15513, spawndist = 0, MovementType = 2 WHERE guid = 135366;
UPDATE creature SET position_x = -11113.7, position_y = -1942.67, position_z = 74.3978, orientation = 4.57962, spawndist = 0, MovementType = 2 WHERE guid = 135365;
UPDATE creature SET position_x = -11112.3, position_y = -1945.03, position_z = 74.3979, orientation = 3.01668, spawndist = 0, MovementType = 2 WHERE guid = 135347;
UPDATE creature SET position_x = -11114.3, position_y = -1946.61, position_z = 74.3982, orientation = 1.32493, spawndist = 0, MovementType = 2 WHERE guid = 135348;
DELETE FROM creature_movement WHERE id IN (135366,135365,135347,135348);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135366
(135366,1,-11116.1,-1944.85,74.3978,12000,1642501,6.15513),
(135366,2,-11116.1,-1944.85,74.3978,20000,1642501,6.15513),
(135366,3,-11116.1,-1944.85,74.3978,15000,0,6.15513),
(135366,4,-11116.1,-1944.85,74.3978,8000,1642501,6.15513),
(135366,5,-11116.1,-1944.85,74.3978,15000,1642501,6.15513),
-- #135365
(135365,1,-11113.7,-1942.67,74.3978,5000,1642501,4.57962),
(135365,2,-11113.7,-1942.67,74.3978,15000,1642501,4.57962),
(135365,3,-11113.7,-1942.67,74.3978,25000,1642501,4.57962),
(135365,4,-11113.7,-1942.67,74.3978,18000,0,4.57962),
(135365,5,-11113.7,-1942.67,74.3978,30000,1642501,4.57962),
-- #135347
(135347,1,-11112.3,-1945.03,74.3979,18000,1642401,3.01668),
(135347,2,-11112.3,-1945.03,74.3979,23000,1642401,3.01668),
(135347,3,-11112.3,-1945.03,74.3979,9000,1642401,3.01668),
(135347,4,-11112.3,-1945.03,74.3979,17000,1642401,3.01668),
(135347,5,-11112.3,-1945.03,74.3979,24000,0,3.01668),
-- #135348
(135348,1,-11114.3,-1946.61,74.3982,28000,1642401,1.32493),
(135348,2,-11114.3,-1946.61,74.3982,43000,1642401,1.32493),
(135348,3,-11114.3,-1946.61,74.3982,19000,1642401,1.32493),
(135348,4,-11114.3,-1946.61,74.3982,12000,1642401,1.32493),
(135348,5,-11114.3,-1946.61,74.3982,44000,1642401,1.32493);
DELETE FROM creature_linking WHERE master_guid IN (135366);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135365,135366,3),
(135347,135366,3),
(135348,135366,3);

-- 1st Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11102.2, position_y = -1913.86, position_z = 74.4072, orientation = 6.28158, spawndist = 0, MovementType = 2 WHERE guid = 135367;
UPDATE creature SET position_x = -11100, position_y = -1914.4, position_z = 74.4094, orientation = 2.76378, spawndist = 0, MovementType = 2 WHERE guid = 135351;
DELETE FROM creature_movement WHERE id IN (135367,135351);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135367
(135367,1,-11102.2,-1913.86,74.4072,2000,1642502,6.28158),
(135367,2,-11102.2,-1913.86,74.4072,2000,1642502,6.28158),
(135367,3,-11102.2,-1913.86,74.4072,2000,1642502,6.28158),
(135367,4,-11102.2,-1913.86,74.4072,2000,1642502,6.28158),
(135367,5,-11102.2,-1913.86,74.4072,6000,0,6.28158),
-- #135351
(135351,1,-11100,-1914.4,74.4094,2000,1642402,2.76378),
(135351,2,-11100,-1914.4,74.4094,2000,1642402,2.76378),
(135351,3,-11100,-1914.4,74.4094,2000,1642402,2.76378),
(135351,4,-11100,-1914.4,74.4094,2000,1642402,2.76378),
(135351,5,-11100,-1914.4,74.4094,6000,0,2.76378);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1642402,1642502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1642402,0,1,36,0,0,0,0,43,0,0,0,0,0,0,0,''),
(1642502,0,1,43,0,0,0,0,36,0,0,0,0,0,0,0,'');
DELETE FROM creature_linking WHERE master_guid IN (135367);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135351,135367,3);

-- 2nd Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11096.1, position_y = -1910.71, position_z = 74.4159, orientation = 2.90751, spawndist = 0, MovementType = 2 WHERE guid = 135377;
UPDATE creature SET position_x = -11098.7, position_y = -1909.84, position_z = 74.4159, orientation = 5.93993, spawndist = 0, MovementType = 2 WHERE guid = 135362;
DELETE FROM creature_movement WHERE id IN (135377,135362);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135377
(135377,1,-11096.1,-1910.71,74.4159,6000,0,2.90751),
(135377,2,-11096.1,-1910.71,74.4159,2000,1642502,2.90751),
(135377,3,-11096.1,-1910.71,74.4159,2000,1642502,2.90751),
(135377,4,-11096.1,-1910.71,74.4159,2000,1642502,2.90751),
(135377,5,-11096.1,-1910.71,74.4159,2000,1642502,2.90751),
-- #135362
(135362,1,-11098.7,-1909.84,74.4159,6000,0,5.93993),
(135362,2,-11098.7,-1909.84,74.4159,2000,1642402,5.93993),
(135362,3,-11098.7,-1909.84,74.4159,2000,1642402,5.93993),
(135362,4,-11098.7,-1909.84,74.4159,2000,1642402,5.93993),
(135362,5,-11098.7,-1909.84,74.4159,2000,1642402,5.93993);
DELETE FROM creature_linking WHERE master_guid IN (135377);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135362,135377,3);

-- 3rd Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11109, position_y = -1906.77, position_z = 74.4063, orientation = 2.02237, spawndist = 0, MovementType = 2 WHERE guid = 135370;
UPDATE creature SET position_x = -11109.9, position_y = -1904.45, position_z = 74.4079, orientation = 5.0328, spawndist = 0, MovementType = 2 WHERE guid = 135354;
DELETE FROM creature_movement WHERE id IN (135370,135354);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135370
(135370,1,-11109,-1906.77,74.4063,4000,0,2.02237),
(135370,2,-11109,-1906.77,74.4063,2000,1642502,2.02237),
(135370,3,-11109,-1906.77,74.4063,2000,1642502,2.02237),
(135370,4,-11109,-1906.77,74.4063,2000,1642502,2.02237),
(135370,5,-11109,-1906.77,74.4063,2000,1642502,2.02237),
-- #135354
(135354,1,-11109.9,-1904.45,74.4079,4000,0,5.0328),
(135354,2,-11109.9,-1904.45,74.4079,2000,1642402,5.0328),
(135354,3,-11109.9,-1904.45,74.4079,2000,1642402,5.0328),
(135354,4,-11109.9,-1904.45,74.4079,2000,1642402,5.0328),
(135354,5,-11109.9,-1904.45,74.4079,2000,1642402,5.0328);
DELETE FROM creature_linking WHERE master_guid IN (135370);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135354,135370,3);


-- 4th Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11115, position_y = -1902.87, position_z = 74.4053, orientation = 0.643215, spawndist = 0, MovementType = 2 WHERE guid = 135352;
UPDATE creature SET position_x = -11113.3, position_y = -1901.62, position_z = 74.4082, orientation = 3.63087, spawndist = 0, MovementType = 2 WHERE guid = 135368;
DELETE FROM creature_movement WHERE id IN (135352,135368);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135352
(135352,1,-11115,-1902.87,74.4053,2000,1642402,0.643215),
(135352,2,-11115,-1902.87,74.4053,2000,1642402,0.643215),
(135352,3,-11115,-1902.87,74.4053,8000,0,0.643215),
(135352,4,-11115,-1902.87,74.4053,2000,1642402,0.643215),
(135352,5,-11115,-1902.87,74.4053,2000,1642402,0.643215),
-- #135368
(135368,1,-11113.3,-1901.62,74.4082,2000,1642502,3.63087),
(135368,2,-11113.3,-1901.62,74.4082,2000,1642502,3.63087),
(135368,3,-11113.3,-1901.62,74.4082,8000,0,3.63087),
(135368,4,-11113.3,-1901.62,74.4082,2000,1642502,3.63087),
(135368,5,-11113.3,-1901.62,74.4082,2000,1642502,3.63087);
DELETE FROM creature_linking WHERE master_guid IN (135352);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135368,135352,3);

-- 5th Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11109, position_y = -1890.41, position_z = 74.4053, orientation = 3.08895, spawndist = 0, MovementType = 2 WHERE guid = 135376;
UPDATE creature SET position_x = -11110.9, position_y = -1890.26, position_z = 74.4071, orientation = 0.157841, spawndist = 0, MovementType = 2 WHERE guid = 135359;
DELETE FROM creature_movement WHERE id IN (135376,135359);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135376
(135376,1,-11109,-1890.41,74.4053,2000,1642502,3.08895),
(135376,2,-11109,-1890.41,74.4053,2000,1642502,3.08895),
(135376,3,-11109,-1890.41,74.4053,6000,0,3.08895),
(135376,4,-11109,-1890.41,74.4053,2000,1642502,3.08895),
(135376,5,-11109,-1890.41,74.4053,2000,1642502,3.08895),
-- #135359
(135359,1,-11110.9,-1890.26,74.4071,2000,1642402,0.157841),
(135359,2,-11110.9,-1890.26,74.4071,2000,1642402,0.157841),
(135359,3,-11110.9,-1890.26,74.4071,6000,0,0.157841),
(135359,4,-11110.9,-1890.26,74.4071,2000,1642402,0.157841),
(135359,5,-11110.9,-1890.26,74.4071,2000,1642402,0.157841);
DELETE FROM creature_linking WHERE master_guid IN (135376);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135359,135376,3);

-- 6th Group of 2 NPC Practice Fighting
UPDATE creature SET position_x = -11105.9, position_y = -1891.95, position_z = 74.4042, orientation = 5.53075, spawndist = 0, MovementType = 2 WHERE guid = 135356;
UPDATE creature SET position_x = -11104.2, position_y = -1893.5, position_z = 74.4051, orientation = 2.27056, spawndist = 0, MovementType = 2 WHERE guid = 135373;
DELETE FROM creature_movement WHERE id IN (135356,135373);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135356
(135356,1,-11105.9,-1891.95,74.4042,2000,1642402,5.53075),
(135356,2,-11105.9,-1891.95,74.4042,2000,1642402,5.53075),
(135356,3,-11105.9,-1891.95,74.4042,4000,0,5.53075),
(135356,4,-11105.9,-1891.95,74.4042,2000,1642402,5.53075),
(135356,5,-11105.9,-1891.95,74.4042,2000,1642402,5.53075),
-- #135373
(135373,1,-11104.2,-1893.5,74.4051,2000,1642502,2.27056),
(135373,2,-11104.2,-1893.5,74.4051,2000,1642502,2.27056),
(135373,3,-11104.2,-1893.5,74.4051,4000,0,2.27056),
(135373,4,-11104.2,-1893.5,74.4051,2000,1642502,2.27056),
(135373,5,-11104.2,-1893.5,74.4051,2000,1642502,2.27056);
DELETE FROM creature_linking WHERE master_guid IN (135356);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135373,135356,3);

-- Sentry Pathing Around NPC Practice Fighting
UPDATE creature SET position_x = -11088.3, position_y = -1911.64, position_z = 74.4004, orientation = 2.67191, spawndist = 0, MovementType = 2 WHERE guid = 135369;
DELETE FROM creature_movement WHERE id IN (135369);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135369,1,-11095.1,-1902.28,74.4031,0,0,100),
(135369,2,-11100.3,-1897.5,74.4044,0,0,100),
(135369,3,-11112.6,-1892.07,74.4123,0,0,100),
(135369,4,-11115.2,-1886.89,74.4026,0,0,100),
(135369,5,-11119.4,-1886.49,74.4027,0,0,100),
(135369,6,-11125.6,-1883.15,74.3978,0,0,100),
(135369,7,-11127.3,-1887.61,74.4084,0,0,100),
(135369,8,-11123.9,-1901.43,74.4104,0,0,100),
(135369,9,-11113.5,-1898.91,74.4095,0,0,100),
(135369,10,-11107.6,-1902.64,74.4109,0,0,100),
(135369,11,-11105.3,-1908.1,74.4094,0,0,100),
(135369,12,-11105.7,-1915.44,74.4027,0,0,100),
(135369,13,-11102.8,-1919.4,74.4012,0,0,100),
(135369,14,-11085.3,-1919.29,74.3988,0,0,100),
(135369,15,-11088.5,-1911.15,74.3992,0,0,100);

-- Bennett
UPDATE creature SET position_x = -11091.975586, position_y = -1896.073120, position_z = 74.388451, orientation = 3.930908, SpawnDist = 0, MovementType = 2 WHERE guid = 135384;
UPDATE creature_template SET MovementType = 2, GossipMenuId = 8173 WHERE entry = 16426;
DELETE FROM gossip_menu WHERE entry = 8173;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8173, 10120, 0, 0);
-- missing npc_text added
DELETE FROM npc_text WHERE ID = 10120;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(10120, 'I don\'t have time for idle chitchat. I have men and women to train, and a tower to watch.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_movement_template WHERE entry = 16426;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(16426,1,-11091.975586,-1896.073120,74.388451,5000,1642601,3.930908),
(16426,2,-11095.7,-1897.08,74.3966,0,0,100),
(16426,3,-11099,-1895.49,74.3992,0,0,100),
(16426,4,-11102,-1891.24,74.3971,0,0,100),
(16426,5,-11108.3,-1888.04,74.3977,0,0,100),
(16426,6,-11113.8,-1887.94,74.4033,0,0,100),
(16426,7,-11115.7,-1893.45,74.416,0,0,100),
(16426,8,-11114.7,-1899.59,74.4094,15000,1642602,4.803489),
(16426,9,-11109.8,-1900.17,74.4126,0,0,100),
(16426,10,-11106.3,-1904.36,74.4126,0,0,100),
(16426,11,-11101.3,-1910.24,74.4111,0,0,100),
(16426,12,-11101.2,-1911.98,74.4111,15000,1642603,4.516818),
(16426,13,-11095,-1913.93,74.4122,0,0,100),
(16426,14,-11091.2,-1912.05,74.407,0,0,100),
(16426,15,-11092.3,-1905.26,74.4039,0,0,100),
(16426,16,-11096.7,-1901.01,74.4042,0,0,100),
(16426,17,-11095.4,-1897.23,74.3962,0,0,100),
(16426,18,-11091.975586,-1896.073120,74.388451,35000,0,3.930908);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1642601 AND 1642603;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1642601,0,31,16424,50,0,0,8,0,0,0,0,0,0,0,0,'Terminate Script If Spectral Sentry Found in Range'),
(1642601,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Set Movement To Idle'),
(1642602,0,31,16424,6,0,0,0,-14000,0,0,0,0,0,0,0,'Terminate Script If No Spectral Sentry Found in Range'),
(1642602,1,0,0,0,0,0,0,2000001070,0,0,0,0,0,0,0,'Bennett Say'),
(1642602,1,32,0,0,16424,6,7,1,0,0,0,0,0,0,0,'Spectral Sentry - Pause Waypoints'),
(1642602,1,32,0,0,16425,6,7,1,0,0,0,0,0,0,0,'Phantom Guardsman - Pause Waypoints'),
(1642602,3,3,0,0,16424,6,3,0,0,0,0,0,0,0,2.211673,'Spectral Sentry - Face Bennett'),
(1642602,3,3,0,0,16425,6,3,0,0,0,0,0,0,0,2.211673,'Phantom Guardsman - Face Bennett'),
(1642602,4,1,0,0,0,0,0,5,0,0,0,0,0,0,0,'Bennett Emote'),
(1642602,8,0,0,0,16424,6,3,2000001071,0,0,0,0,0,0,0,'Spectral Sentry Say'),
(1642602,8,0,0,0,16425,6,3,2000001071,0,0,0,0,0,0,0,'Phantom Guardsman Say'),
(1642602,10,32,0,0,16424,6,7,0,0,0,0,0,0,0,0,'Spectral Sentry - Resume Waypoints'),
(1642602,10,32,0,0,16425,6,7,0,0,0,0,0,0,0,0,'Phantom Guardsman - Resume Waypoints'),
(1642603,0,31,16424,6,0,0,0,-14000,0,0,0,0,0,0,0,'Terminate Script If No Spectral Sentry Found in Range'),
(1642603,1,0,0,0,0,0,0,2000001070,0,0,0,0,0,0,0,'Bennett Say'),
(1642603,1,32,0,0,16424,6,7,1,0,0,0,0,0,0,0,'Spectral Sentry - Pause Waypoints'),
(1642603,1,32,0,0,16425,6,7,1,0,0,0,0,0,0,0,'Phantom Guardsman - Pause Waypoints'),
(1642603,3,3,0,0,16424,6,3,0,0,0,0,0,0,0,1.288043,'Spectral Sentry - Face Bennett'),
(1642603,3,3,0,0,16425,6,3,0,0,0,0,0,0,0,1.288043,'Phantom Guardsman - Face Bennett'),
(1642603,4,1,0,0,0,0,0,5,0,0,0,0,0,0,0,'Bennett Emote'),
(1642603,8,0,0,0,16424,6,3,2000001071,0,0,0,0,0,0,0,'Spectral Sentry Say'),
(1642603,8,0,0,0,16425,6,3,2000001071,0,0,0,0,0,0,0,'Phantom Guardsman Say'),
(1642603,10,32,0,0,16424,6,7,0,0,0,0,0,0,0,0,'Spectral Sentry - Resume Waypoints'),
(1642603,10,32,0,0,16425,6,7,0,0,0,0,0,0,0,0,'Phantom Guardsman - Resume Waypoints');
DELETE FROM db_script_string WHERE entry IN (2000001070,2000001071);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001070,'You had better straighten up, or you\'ll answer to me!',0,0,0,1,NULL),
(2000001071,'Yes. sir!',0,0,0,1,NULL);

-- ================
-- Kitchen Overhaul
-- ================
-- 2 Spectral Chefs and Baker in Corner
UPDATE creature SET position_x = -11057.853516, position_y = -1920.440674, position_z = 77.268204, orientation = 4.332270 WHERE guid = 135298;
DELETE FROM creature_linking WHERE master_guid IN (135298);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135293,135298,3),
(135294,135298,3);

-- Group of 2 Ghostly Stewards
UPDATE creature SET position_x = -11059.6, position_y = -1939.27, position_z = 77.2682, orientation = 1.7436, SpawnDist = 0, MovementType = 2 WHERE guid = 135303;
UPDATE creature SET position_x = -11060.8, position_y = -1936.58, position_z = 77.2682, orientation = 5.37606, SpawnDist = 0, MovementType = 2 WHERE guid = 135304;
DELETE FROM creature_movement WHERE id IN (135303,135304);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135303
(135303,1,-11059.6,-1939.27,77.2682,2000,1641401,1.7436),
(135303,2,-11059.6,-1939.27,77.2682,2000,1641401,1.7436),
(135303,3,-11059.6,-1939.27,77.2682,10000,0,1.7436),
(135303,4,-11059.6,-1939.27,77.2682,2000,1641401,1.7436),
(135303,5,-11059.6,-1939.27,77.2682,6000,0,1.7436),
(135303,6,-11059.6,-1939.27,77.2682,10000,1641401,1.7436),
(135303,7,-11059.6,-1939.27,77.2682,5000,0,1.7436),
(135303,8,-11059.6,-1939.27,77.2682,3000,1641401,6.2816),
(135303,9,-11059.6,-1939.27,77.2682,9000,1641401,1.7436),
(135303,10,-11059.6,-1939.27,77.2682,10000,1641401,1.7436),
(135303,11,-11059.6,-1939.27,77.2682,8000,1641401,1.7436),
-- #135304
(135304,1,-11060.8,-1936.58,77.2682,2000,0,5.37606),
(135304,2,-11060.8,-1936.58,77.2682,2000,1641401,5.37606),
(135304,3,-11060.8,-1936.58,77.2682,2000,1641401,0.2985),
(135304,4,-11060.8,-1936.58,77.2682,10000,1641401,5.37606),
(135304,5,-11060.8,-1936.58,77.2682,2000,0,5.37606),
(135304,6,-11060.8,-1936.58,77.2682,6000,1641401,5.37606),
(135304,7,-11060.8,-1936.58,77.2682,10000,0,5.37606),
(135304,8,-11060.8,-1936.58,77.2682,5000,1641401,5.37606),
(135304,9,-11060.8,-1936.58,77.2682,8000,0,5.37606),
(135304,10,-11060.8,-1936.58,77.2682,10000,1641401,5.37606),
(135304,11,-11060.8,-1936.58,77.2682,5000,1641401,5.37606);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1641401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1641401,0,1,1,0,0,0,0,6,273,274,25,0,0,0,0,'');
DELETE FROM creature_linking WHERE master_guid IN (135303);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135304,135303,3);

-- Group of 2 Chefs and a Baker
DELETE FROM creature_linking WHERE master_guid IN (135291);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135290,135291,3),
(135295,135291,3);

-- Group of 2 Stewards
DELETE FROM creature_linking WHERE master_guid = 135305;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135306,135305,3);

-- 2 Skeletons at back of Kitchen
UPDATE creature SET position_x = -11072.2, position_y = -2007.96, position_z = 77.3515, orientation = 0.034907, SpawnDist = 0, MovementType = 2 WHERE guid = 135314;
UPDATE creature SET position_x = -11069.2, position_y = -2007.05, position_z = 77.3515, orientation = 4.7822, SpawnDist = 0, MovementType = 2 WHERE guid = 135315;
DELETE FROM creature_movement WHERE id IN (135314,135315);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135314
(135314,1,-11072.2,-2007.96,77.3515,2000,1641501,0.034907),
(135314,2,-11072.2,-2007.96,77.3515,8000,0,0.034907),
(135314,3,-11072.2,-2007.96,77.3515,6000,1641501,0.034907),
(135314,4,-11072.2,-2007.96,77.3515,10000,0,0.034907),
(135314,5,-11072.2,-2007.96,77.3515,7000,1641501,0.034907),
-- #135315
(135315,1,-11069.2,-2007.05,77.3515,5000,0,4.7822),
(135315,2,-11069.2,-2007.05,77.3515,2000,1641501,4.7822),
(135315,3,-11069.2,-2007.05,77.3515,8000,0,4.7822),
(135315,4,-11069.2,-2007.05,77.3515,10000,1641501,4.7822),
(135315,5,-11069.2,-2007.05,77.3515,6000,0,4.7822);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1641501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1641501,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_linking WHERE master_guid IN (135314);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135315,135314,3);

-- Group of 3 NPC at the Fire Pit
DELETE FROM creature_linking WHERE master_guid IN (135292);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135296,135292,3),
(135297,135292,3);

-- 2 Skeletons at Front of Kitchen
UPDATE creature SET position_x = -11044.6, position_y = -1946.25, position_z = 77.2668, orientation = 1.12313, SpawnDist = 0, MovementType = 2 WHERE guid = 135312;
UPDATE creature SET position_x = -11044.2, position_y = -1943.41, position_z = 77.2668, orientation = 5.45617, SpawnDist = 0, MovementType = 2 WHERE guid = 135313;
DELETE FROM creature_movement WHERE id IN (135312,135313);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135312
(135312,1,-11044.6,-1946.25,77.2668,2000,1641501,1.12313),
(135312,2,-11044.6,-1946.25,77.2668,8000,0,1.12313),
(135312,3,-11044.6,-1946.25,77.2668,6000,1641501,1.12313),
(135312,4,-11044.6,-1946.25,77.2668,10000,0,1.12313),
(135312,5,-11044.6,-1946.25,77.2668,7000,1641501,1.12313),
-- #135313
(135313,1,-11044.2,-1943.41,77.2668,5000,0,5.45617),
(135313,2,-11044.2,-1943.41,77.2668,2000,1641501,5.45617),
(135313,3,-11044.2,-1943.41,77.2668,8000,0,5.45617),
(135313,4,-11044.2,-1943.41,77.2668,10000,1641501,5.45617),
(135313,5,-11044.2,-1943.41,77.2668,6000,0,5.45617);
DELETE FROM creature_linking WHERE master_guid IN (135312);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135313,135312,3);

-- Spectral Servant Pathing In The Kitchen
UPDATE creature SET position_x = -11047.6, position_y = -1921.25, position_z = 77.2686, orientation = 3.53822, SpawnDist = 0, MovementType = 2 WHERE guid = 135153;
DELETE FROM creature_movement WHERE id = 135153;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135153,1,-11052.7,-1923.2,77.2686,0,0,100),
(135153,2,-11060.8,-1924.69,77.2686,0,0,100),
(135153,3,-11066.5,-1934.07,77.2686,0,0,100),
(135153,4,-11067.9,-1944.23,77.2686,0,0,100),
(135153,5,-11066.4,-1960.82,77.2686,0,0,100),
(135153,6,-11066.1,-1973.73,77.2686,0,0,100),
(135153,7,-11067.5,-1986.12,77.2686,0,0,100),
(135153,8,-11073.9,-1993.72,77.2686,0,0,100),
(135153,9,-11069.7,-2001.22,77.2686,0,0,100),
(135153,10,-11065.4,-2006.88,77.2686,0,0,100),
(135153,11,-11057.7,-2006.96,77.2686,0,0,100),
(135153,12,-11053.8,-2001.26,77.2686,0,0,100),
(135153,13,-11052.5,-1992.84,77.2686,0,0,100),
(135153,14,-11055,-1986.18,77.2686,0,0,100),
(135153,15,-11053.2,-1969.57,77.2686,0,0,100),
(135153,16,-11048.8,-1959.82,77.2686,0,0,100),
(135153,17,-11048.9,-1952.02,77.2686,0,0,100),
(135153,18,-11050.9,-1945.56,77.2686,0,0,100),
(135153,19,-11046.4,-1935.58,77.2686,0,0,100),
(135153,20,-11044.2,-1927.46,77.2686,0,0,100),
(135153,21,-11046.6,-1921.64,77.2686,0,0,100);

-- Skeletal Waiter Pathing into Banquet Room (waypoint redone)
UPDATE creature SET position_x = -11051.2, position_y = -1973.9, position_z = 77.2686, orientation = 1.41373, SpawnDist = 0, MovementType = 2 WHERE guid = 135309;
UPDATE creature_addon SET emote = 0 WHERE guid = 135309;
DELETE FROM creature_movement WHERE id = 135309;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135309,1,-11046.2,-1975.23,77.2682,8000,1641502,6.1909),
(135309,2,-11049.4,-1969.97,77.2682,0,0,1.76911),
(135309,3,-11047.1,-1947.76,77.2682,0,0,1.46673),
(135309,4,-11044.8,-1931.96,77.2682,0,0,1.06382),
(135309,5,-11041.4,-1926.7,77.2682,0,0,0.935682),
(135309,6,-11037.7,-1924.25,77.2682,0,0,0.0128384),
(135309,7,-11026.2,-1925.88,78.8681,0,0,0.127348),
(135309,8,-11018.8,-1923.41,78.8681,0,0,0.650878),
(135309,9,-10998.3,-1907.25,78.8483,0,0,0.638026),
(135309,10,-10985.5,-1896.71,78.8825,0,0,1.39358),
(135309,11,-10985.3,-1890.52,81.7294,0,0,1.51375),
(135309,12,-10985.4,-1882.17,81.7294,0,0,1.72188),
(135309,13,-10987,-1875.36,81.7291,4000,1641501,0.944332),
(135309,14,-10985.5,-1882.51,81.729,0,0,4.87495),
(135309,15,-10985,-1890.4,81.729,0,0,4.66289),
(135309,16,-10985.7,-1896.79,78.8763,0,0,4.35266),
(135309,17,-10989.2,-1901.23,78.8647,0,0,3.74791),
(135309,18,-10999.7,-1907.61,78.8589,0,0,3.31987),
(135309,19,-11013,-1909.29,78.867,0,0,3.86965),
(135309,20,-11024.4,-1922.9,78.867,0,0,3.65837),
(135309,21,-11027.7,-1923.68,78.867,0,0,3.04576),
(135309,22,-11039.1,-1922.47,77.2681,0,0,3.42432),
(135309,23,-11046.6,-1926.97,77.2681,0,0,4.30789),
(135309,24,-11049.6,-1935.37,77.2681,0,0,4.49639),
(135309,25,-11051.1,-1949.57,77.2681,0,0,4.62612),
(135309,26,-11052.5,-1964.88,77.2681,0,0,4.64183),
(135309,27,-11051.1,-1974.01,77.2681,0,0,5.51911);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1641502;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1641502,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1641502,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Skeletal Waiter Pathing into Banquet Room
UPDATE creature SET position_x = -11024.8, position_y = -1926.2, position_z = 78.8669, orientation = 6.13634, SpawnDist = 0, MovementType = 2 WHERE guid = 135310;
DELETE FROM creature_movement WHERE id IN (135310);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135310,1,-11009.4,-1927.91,78.8675,0,0,100),
(135310,2,-11002.4,-1933.29,78.8675,0,0,100),
(135310,3,-10987,-1934.73,78.8675,0,0,100),
(135310,4,-10965.9,-1937.04,78.8675,0,0,100),
(135310,5,-10961,-1929.86,78.8675,0,0,100),
(135310,6,-10965,-1919.92,78.8675,0,0,100),
(135310,7,-10979.7,-1917.72,78.8675,0,0,100),
(135310,8,-11005,-1915.37,78.8675,0,0,100),
(135310,9,-11015.4,-1926.26,78.8684,0,0,100),
(135310,10,-11028.1,-1923.68,78.8684,0,0,100),
(135310,11,-11039.5,-1922.52,77.2689,0,0,100),
(135310,12,-11067,-1928.65,77.2689,0,0,100),
(135310,13,-11038.5,-1925.01,77.2681,0,0,100),
(135310,14,-11024.8,-1926.17,78.868,0,0,100);

-- Skeletal Waiter Pathing in Banqet Room (redone)
UPDATE creature SET position_x = -10967.281250, position_y = -1910.214478, position_z = 78.868141, orientation = 2.993973, SpawnDist = 0, MovementType = 2 WHERE guid = 135311;
DELETE FROM creature_movement WHERE id = 135311;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135311,1,-10974.7,-1909.16,78.8977,0,0,2.42848),
(135311,2,-10979.9,-1902.24,78.8827,0,0,2.73872),
(135311,3,-10994,-1900.67,78.8243,0,0,3.57988),
(135311,4,-10998.9,-1904.66,78.8164,0,0,3.28453),
(135311,5,-11009.3,-1904.52,78.8667,0,0,2.97202),
(135311,6,-11016.6,-1901.67,78.8667,0,0,2.31307),
(135311,7,-11019.1,-1894.62,78.8667,0,0,1.59757),
(135311,8,-11019.1,-1894.62,78.8667,5000,1641501,6.1466),
(135311,9,-11013.5,-1888.45,78.8667,0,0,0.401407),
(135311,10,-11004.3,-1887.7,78.8592,0,0,6.09947),
(135311,11,-10997.2,-1890.31,78.8183,0,0,5.65966),
(135311,12,-10997.2,-1890.31,78.8183,5000,1641501,3.98204),
(135311,13,-10993.2,-1897.44,78.8227,0,0,6.15917),
(135311,14,-10979.6,-1898.8,78.8858,0,0,0.457959),
(135311,15,-10975.9,-1896.31,78.9165,0,0,0.769319),
(135311,16,-10968.6,-1890.83,78.9176,0,0,0.128915),
(135311,17,-10957.7,-1892.04,78.8697,0,0,5.84897),
(135311,18,-10953,-1896.01,78.8682,0,0,5.33061),
(135311,19,-10952,-1902.34,78.8682,0,0,4.60491),
(135311,20,-10952,-1902.34,78.8682,5000,1641501,3.08438),
(135311,21,-10954.6,-1907.65,78.8682,0,0,3.92417),
(135311,22,-10958.7,-1910.65,78.8682,0,0,3.36889),
(135311,23,-10966.9,-1910.31,78.8682,0,0,3.02253);

-- Skeletal Waiter Pathing in Banqet Room (missing one)
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135308;
DELETE FROM creature_movement WHERE id = 135308;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135308,1,-10957.4,-1916.64,78.868,0,0,5.26131),
(135308,2,-10955.6,-1923.82,78.868,0,0,4.57567),
(135308,3,-10957.5,-1940.2,78.868,0,0,4.05151),
(135308,4,-10961.1,-1943.49,78.868,0,0,3.45854),
(135308,5,-10970.5,-1947.69,78.8684,0,0,4.36431),
(135308,6,-10971.9,-1952.92,79.9729,0,0,4.61092),
(135308,7,-10971.2,-1957.9,79.9729,0,0,5.8008),
(135308,8,-10959,-1958.58,79.9729,0,0,1.10804),
(135308,9,-10957.8,-1951.71,79.9729,0,0,1.49681),
(135308,10,-10956.1,-1919.08,78.8686,0,0,2.33719),
(135308,11,-10967.2,-1913.56,78.8686,0,0,2.98907),
(135308,12,-10993.6,-1910.32,78.8686,0,0,3.0519),
(135308,13,-11009.2,-1908.76,78.8686,0,0,3.47994),
(135308,14,-11017,-1911.21,78.8686,0,0,4.17885),
(135308,15,-11019.8,-1922.81,78.8686,0,0,3.62514),
(135308,16,-11025.9,-1923.98,78.8686,0,0,3.06779),
(135308,17,-11037.4,-1922.65,77.2689,0,0,3.02852),
(135308,18,-11049.9,-1921.76,77.2689,0,0,3.30734),
(135308,19,-11064,-1923.67,77.2689,0,0,2.85181),
(135308,20,-11067.9,-1922.59,77.2689,0,0,2.78505),
(135308,21,-11063.5,-1926.5,77.2689,0,0,6.0091),
(135308,22,-11049.4,-1927.18,77.2689,0,0,0.238484),
(135308,23,-11035.5,-1923.72,77.2689,0,0,6.1918),
(135308,24,-11028.9,-1924.7,78.8687,0,0,6.05043),
(135308,25,-11016.4,-1923.3,78.8687,0,0,0.63354),
(135308,26,-11008.2,-1910.39,78.8687,0,0,0.0460618),
(135308,27,-10975.8,-1914.62,78.8687,0,0,6.1761);


-- =====================
-- Banquet Hall Overhaul
-- =====================
-- Left Front Table
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 135230;
DELETE FROM creature_linking WHERE master_guid = 135234;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135238,135234,3),
(135237,135234,3),
(135236,135234,3),
(135235,135234,3),
(135233,135234,3),
(135232,135234,3),
(135231,135234,3),
(135230,135234,3);

-- Right Side Large Table (Outside of Table)
DELETE FROM creature_linking WHERE master_guid = 135220;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135214,135220,3),
(135213,135220,3),
(135212,135220,3),
(135216,135220,3),
(135219,135220,3),
(135218,135220,3),
(135217,135220,3);

-- Right Side Large Table (Inside of Table)
DELETE FROM creature_linking WHERE master_guid = 135222;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135226,135222,3),
(135225,135222,3),
(135227,135222,3),
(135224,135222,3),
(135228,135222,3),
(135221,135222,3),
(135223,135222,3);

-- Far Left Table
DELETE FROM creature_linking WHERE master_guid = 135211;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135205,135211,3),
(135209,135211,3),
(135210,135211,3),
(135207,135211,3),
(135204,135211,3),
(135203,135211,3),
(135208,135211,3),
(135206,135211,3);

-- 2 Ghostly Stewards Far End
DELETE FROM creature_linking WHERE master_guid = 135299;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135300,135299,3);

-- Moroes and Adds OOC Scripting
UPDATE creature SET position_x = -10982.7, position_y = -1877.93, position_z = 81.8119, orientation = 4.62512, SpawnDist = 0, MovementType = 2 WHERE guid = 135472;
UPDATE creature_template SET MovementType = 2 WHERE entry = 15687;
DELETE FROM creature_movement_template WHERE entry = 15687;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(15687,1,-10982.7,-1877.93,81.8119,30000,1568701,4.62512),
(15687,2,-10982.7,-1877.93,81.8119,30000,1568702,4.62512),
(15687,3,-10982.7,-1877.93,81.8119,30000,1568703,4.62512),
(15687,4,-10982.7,-1877.93,81.8119,30000,1568704,4.62512),
(15687,5,-10982.7,-1877.93,81.8119,30000,1568705,4.62512),
(15687,6,-10982.7,-1877.93,81.8119,30000,1568706,4.62512);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1568701 AND 1568706;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1568701,0,31,17007,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Lady Keira Berrybuck Is Not Found in Range'),
(1568701,1,0,0,0,17007,30,3,2000001072,2000001073,0,0,0,0,0,0,'Lady Keira Berrybuck Random Say'),
(1568701,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say'),
(1568702,0,31,19872,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Lady Catriona Von\'Indi Is Not Found in Range'),
(1568702,1,0,0,0,19872,30,3,2000001072,2000001073,0,0,0,0,0,0,'Lady Catriona Von\'Indi Random Say'),
(1568702,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say'),
(1568703,0,31,19873,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Lord Crispin Ference Is Not Found in Range'),
(1568703,1,0,0,0,19873,30,3,2000001072,2000001073,0,0,0,0,0,0,'Lord Crispin Ference Random Say'),
(1568703,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say'),
(1568704,0,31,19874,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Baron Rafe Dreuger Is Not Found in Range'),
(1568704,1,0,0,0,19874,30,3,2000001072,2000001073,0,0,0,0,0,0,'Baron Rafe Dreuger Random Say'),
(1568704,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say'),
(1568705,0,31,19875,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Baroness Dorothea Millstipe Is Not Found in Range'),
(1568705,1,0,0,0,19875,30,3,2000001072,2000001073,0,0,0,0,0,0,'Baroness Dorothea Millstipe Random Say'),
(1568705,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say'),
(1568706,0,31,19876,30,0,0,0,-25000,0,0,0,0,0,0,0,'Terminate Script If Lord Robin Daris Is Not Found in Range'),
(1568706,1,0,0,0,19876,30,3,2000001072,2000001073,0,0,0,0,0,0,'Lord Robin Daris Random Say'),
(1568706,6,0,0,0,0,0,0,2000001074,2000001075,2000001076,0,0,0,0,0,'Moroes Random Say');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001072 AND 2000001076;
DELETE FROM db_script_string WHERE entry IN (2000001072,2000001073,2000001074,2000001075,2000001076);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001072,'Where is the master?',0,0,0,1,NULL),
(2000001073,'Why can we not talk to the master?',0,0,0,1,NULL),
(2000001074,'The Master is deep in study.',0,0,0,1,NULL),
(2000001075,'The Master will return from Stormwind soon...',0,0,0,1,NULL),
(2000001076,'The Master is meeting with his apprentice.',0,0,0,1,NULL);

/*
-- Moroes Is Only One Spawned

-- NEW SD2 SPAWN LOCATIONS FOR MOROES ADDS (MOROES.CPP)
{
    { -10987.086f, -1884.002f, 81.73f, 1.352331f},
    { -10989.889f, -1882.592f, 81.73f, 0.932928f},
    { -10979.159f, -1885.326f, 81.73f, 2.017563f},
    { -10976.789f, -1883.946f, 81.73f, 2.328581f}
};

*/

-- =================
-- Ballroom Overhaul
-- =================
-- Group of 8 NPC Dancing
DELETE FROM creature_linking WHERE master_guid = 135198;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135199,135198,3),
(135200,135198,3),
(135201,135198,3),
(135202,135198,3),
(135196,135198,3),
(135197,135198,3),
(135195,135198,3);

-- Group of 5 NPC
DELETE FROM creature_linking WHERE master_guid = 135286;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135134,135286,3),
(135135,135286,3),
(135136,135286,3),
(135137,135286,3);
-- Spectral Retainer
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135286;
DELETE FROM creature_movement WHERE id = 135286;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135286,1,-10954.3,-1970.09,80.0568,18000,1641001,3.45575);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1641001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1641001,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Group of 8 NPC Dancing
UPDATE creature SET position_x = -10954.237305, position_y = -1985.398071, position_z = 79.972359, orientation = 3.320733 WHERE guid = 135275;
DELETE FROM creature_linking WHERE master_guid IN (135275);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135271,135275,3),
(135273,135275,3),
(135278,135275,3),
(135272,135275,3),
(135276,135275,3),
(135277,135275,3),
(135274,135275,3);

-- Group of 5 NPC
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135287;
DELETE FROM creature_movement WHERE id = 135287;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135287,1,-10967.7,-1997.78,80.0562,16000,1641001,3.97935);
DELETE FROM creature_linking WHERE master_guid = 135287;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135140,135287,3),
(135139,135287,3),
(135141,135287,3),
(135142,135287,3);

-- Group of 8 NPC Dancing
DELETE FROM creature_linking WHERE master_guid = 135186;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135180,135186,3),
(135181,135186,3),
(135185,135186,3),
(135182,135186,3),
(135183,135186,3),
(135184,135186,3),
(135179,135186,3);

-- Group of 8 NPC Dancing
UPDATE creature SET position_x = -10980.891602, position_y = -2018.158936, position_z = 79.972565, orientation = 2.278517 WHERE guid = 135268;
DELETE FROM creature_linking WHERE master_guid = 135268;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135270,135268,3),
(135264,135268,3),
(135266,135268,3),
(135265,135268,3),
(135269,135268,3),
(135263,135268,3),
(135267,135268,3);

-- Group of 8 NPC Dancing
DELETE FROM creature_linking WHERE master_guid = 135190;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135192,135190,3),
(135193,135190,3),
(135194,135190,3),
(135191,135190,3),
(135187,135190,3),
(135188,135190,3),
(135189,135190,3);

-- Waypoints
-- Spectral Servant
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid IN (135164,135163,135152,135151);
DELETE FROM creature_movement WHERE id IN (135164,135163,135152,135151);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135164
(135164,1,-10948.6,-1984.56,79.974,0,0,4.59992),
(135164,2,-10951.7,-2011.5,79.974,0,0,4.56458),
(135164,3,-10954.4,-2031.75,79.974,0,0,3.05269),
(135164,4,-10977.5,-2029.19,79.974,0,0,3.04968),
(135164,5,-10993.1,-2027.61,79.974,0,0,1.55192),
(135164,6,-10989.7,-1996.76,79.974,0,0,1.46379),
(135164,7,-10993.2,-2027.23,79.974,0,0,6.18402),
(135164,8,-10954.5,-2032.12,79.974,0,0,1.41155),
(135164,9,-10950.8,-2001.39,79.974,0,0,1.4194),
(135164,10,-10945.7,-1963.17,79.974,0,0,2.98941),
(135164,11,-10969.5,-1960.53,79.974,0,0,3.09698),
(135164,12,-10946.2,-1963.09,79.974,0,0,4.63086),
-- #135163
(135163,1,-10953.8,-1967.26,79.9729,0,0,5.71001),
(135163,2,-10952,-1971.75,79.9729,0,0,4.7212),
(135163,3,-10951.8,-1984.99,79.9729,0,0,4.53585),
(135163,4,-10953.5,-1990.16,79.9729,0,0,4.09449),
(135163,5,-10961.9,-2001.33,79.9729,0,0,4.49945),
(135163,6,-10961.8,-2013.76,79.9729,0,0,3.97402),
(135163,7,-10977.1,-2024.79,79.9729,0,0,3.32921),
(135163,8,-10984.8,-2022.64,79.9729,0,0,2.53752),
(135163,9,-10988.5,-2017.52,79.973,0,0,1.81496),
(135163,10,-10988.1,-2011.43,79.973,0,0,1.09946),
(135163,11,-10980.8,-2006.9,79.973,0,0,0.380819),
(135163,12,-10973.2,-2002.28,79.973,0,0,2.48961),
(135163,13,-10980.1,-1997.87,79.973,0,0,2.87053),
(135163,14,-10985.9,-1994.31,79.973,0,0,1.84402),
(135163,15,-10984.4,-1987.21,79.973,0,0,0.428728),
(135163,16,-10973.7,-1983.14,79.973,0,0,0.801007),
(135163,17,-10966.2,-1972.9,79.973,0,0,0.523762),
(135163,18,-10957.9,-1966.86,79.973,0,0,0.463656),
-- #135152
(135152,1,-10955.3,-2028.18,79.9735,0,0,4.13896),
(135152,2,-10958.8,-2031.09,79.9735,0,0,3.12265),
(135152,3,-10971.6,-2030.48,79.9735,0,0,3.00877),
(135152,4,-10982.9,-2028.29,79.9735,0,0,2.65927),
(135152,5,-10988.8,-2023.36,79.9735,0,0,1.4906),
(135152,6,-10986.4,-1995.25,79.9735,0,0,1.43405),
(135152,7,-10987.9,-2024.98,79.9735,0,0,5.73566),
(135152,8,-10978.9,-2029.31,79.9735,0,0,6.08751),
(135152,9,-10957.2,-2031.2,79.9735,0,0,0.698891),
(135152,10,-10955.2,-2027.43,79.9735,0,0,1.4557),
(135152,11,-10952.2,-2001.52,79.9735,0,0,1.45177),
(135152,12,-10948.4,-1965.08,79.9735,0,0,3.02649),
(135152,13,-10975.4,-1961.8,79.9735,0,0,3.02257),
(135152,14,-10948.8,-1965.45,79.9735,0,0,4.62479),
(135152,15,-10951.6,-1995.5,79.9735,0,0,4.61301),
(135152,16,-10954.4,-2021.87,79.9735,0,0,4.58944),
-- #135151
(135151,1,-10973.2,-2003.83,79.9733,0,0,1.90236),
(135151,2,-10976.1,-1995.56,79.9733,0,0,1.51364),
(135151,3,-10973.1,-1986.25,79.9733,0,0,1.57412),
(135151,4,-10973.4,-1976.02,79.9733,0,0,0.480845),
(135151,5,-10967.8,-1974.64,79.9733,0,0,0.711752),
(135151,6,-10965.1,-1971.49,79.9733,0,0,0.445502),
(135151,7,-10959.7,-1971.15,79.9733,0,0,5.72365),
(135151,8,-10958.4,-1976.18,79.9733,0,0,4.6241),
(135151,9,-10963.9,-1984.81,79.9733,0,0,4.54477),
(135151,10,-10967,-1994.32,79.9733,0,0,5.37336),
(135151,11,-10961.3,-2000.06,79.9733,0,0,4.90605),
(135151,12,-10960.9,-2011.9,79.9733,0,0,4.2581),
(135151,13,-10969.5,-2022.21,79.9733,0,0,3.37451),
(135151,14,-10974.4,-2021.32,79.9733,0,0,2.30483),
(135151,15,-10977.5,-2016.61,79.9733,0,0,1.99852);

-- ==========================
-- Upstairs Ballroom Overhaul
-- ==========================
-- Group of Phantom Guests At Top Of Stairs
DELETE FROM creature_linking WHERE master_guid = 135245;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135246,135245,3),
(135250,135245,3),
(135249,135245,3),
(135242,135245,3),
(135244,135245,3),
(135243,135245,3),
(135247,135245,3),
(135248,135245,3);

-- Group of Spectral and Phantom Attendants
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135288;
DELETE FROM creature_movement WHERE id = 135288;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135288,1,-10929.9,-1969.78,92.2645,16000,1641001,3.68265);
DELETE FROM creature_linking WHERE master_guid = 135288;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135143,135288,3),
(135144,135288,3),
(135145,135288,3),
(135146,135288,3);

-- Group of 9 Phantom NPC Standing Around
DELETE FROM creature_linking WHERE master_guid = 135252;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135251,135252,3),
(135256,135252,3),
(135254,135252,3),
(135253,135252,3),
(135259,135252,3),
(135257,135252,3),
(135255,135252,3),
(135258,135252,3);

-- Rear Most Group of 5 Spectral and Phantom Attendants
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135289;
DELETE FROM creature_movement WHERE id = 135289;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135289,1,-10936,-1933.27,93.9036,12000,1641001,3.03687);
DELETE FROM creature_linking WHERE master_guid = 135289;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135147,135289,3),
(135148,135289,3),
(135149,135289,3),
(135150,135289,3);

-- Waypoints
-- Spectral Servant
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid IN (135162,135166,135160,135165,135161);
DELETE FROM creature_movement WHERE id IN (135162,135166,135160,135165,135161);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135162
(135162,1,-10916.9,-2002.36,92.183,0,0,4.20329),
(135162,2,-10919.7,-2026.27,92.1834,0,0,4.59992),
(135162,3,-10920.8,-2036.76,86.0722,0,0,4.38157),
(135162,4,-10922.9,-2042.15,86.0722,0,0,3.93547),
(135162,5,-10928.7,-2043.93,86.0726,0,0,3.04247),
(135162,6,-10934.2,-2042.9,86.0726,0,0,2.43065),
(135162,7,-10937.1,-2039.5,86.0726,0,0,1.7935),
(135162,8,-10937.6,-2034.7,86.0712,0,0,1.49427),
(135162,9,-10936.3,-2023.85,79.9743,0,0,1.49034),
(135162,10,-10936.4,-2020.46,79.9743,0,0,2.1917),
(135162,11,-10938.4,-2018.53,79.9743,0,0,3.08077),
(135162,12,-10947.8,-2018.26,79.9743,0,0,3.05642),
(135162,13,-10937,-2019.36,79.9743,0,0,5.57677),
(135162,14,-10936,-2021.73,79.9743,0,0,4.64948),
(135162,15,-10936.1,-2024.25,79.974,0,0,4.61021),
(135162,16,-10937.5,-2034.22,86.0707,0,0,4.5788),
(135162,17,-10936.9,-2039.84,86.0712,0,0,5.25263),
(135162,18,-10933.3,-2043.53,86.072,0,0,5.97912),
(135162,19,-10927.8,-2043.82,86.0725,0,0,0.112188),
(135162,20,-10922.8,-2041.88,86.0725,0,0,1.0044),
(135162,21,-10920.7,-2036.8,86.0714,0,0,1.4238),
(135162,22,-10919.6,-2026.59,92.183,0,0,1.45129),
(135162,23,-10917.2,-2002.8,92.1832,0,0,0.567719),
(135162,24,-10911.4,-2000.2,92.1832,0,0,1.00597),
(135162,25,-10907.8,-1994.65,92.1843,0,0,1.19247),
(135162,26,-10905.8,-1976.78,92.1846,0,0,1.4595),
(135162,27,-10904,-1963.18,92.1732,0,0,1.4006),
(135162,28,-10887.2,-1964.69,92.1718,0,0,6.16944),
(135162,29,-10904,-1962.55,92.1727,0,0,4.52403),
(135162,30,-10905.6,-1976.29,92.1855,0,0,4.6065),
(135162,31,-10908,-1995.75,92.1855,0,0,4.1111),
(135162,32,-10911.1,-1999.73,92.184,0,0,3.84642),
-- #135166
(135166,1,-10943.3,-1919.21,93.8204,0,0,1.4064),
(135166,2,-10940.9,-1898.83,93.8204,0,0,1.41504),
(135166,3,-10943.3,-1918.74,93.8204,0,0,4.58334),
(135166,4,-10945.3,-1937.43,93.8204,0,0,5.45314),
(135166,5,-10937.8,-1944.18,93.82,0,0,4.59706),
(135166,6,-10940,-1960.04,93.8244,0,0,4.56172),
(135166,7,-10940.9,-1967.86,93.8244,0,0,4.76749),
(135166,8,-10941.9,-1976.56,93.8244,0,0,4.49522),
(135166,9,-10944,-1994.69,93.8244,0,0,4.55805),
(135166,10,-10946.8,-2020.59,93.8244,0,0,4.58946),
(135166,11,-10949,-2039.38,93.8244,0,0,2.94484),
(135166,12,-10970.8,-2036.96,93.823,0,0,3.0383),
(135166,13,-10998.5,-2034.09,93.8234,0,0,1.5107),
(135166,14,-10996.4,-2015.4,93.8226,0,0,1.4518),
(135166,15,-10993.9,-1987.12,93.8331,0,0,2.68095),
(135166,16,-10999.5,-1984.85,93.8331,0,0,2.42334),
(135166,17,-11003.9,-1981.12,93.8328,0,0,2.34235),
(135166,18,-11010.1,-1972.48,93.8336,0,0,0.502162),
(135166,19,-10999.1,-1964.65,93.8336,0,0,0.485668),
(135166,20,-10992.3,-1960.35,93.829,0,0,0.976542),
(135166,21,-10990.1,-1956.12,93.8219,0,0,1.41087),
(135166,22,-10989.6,-1951.54,93.8257,0,0,2.98324),
(135166,23,-10992.5,-1951.31,93.8238,0,0,4.51398),
(135166,24,-10993.6,-1957.15,93.8189,0,0,4.19831),
(135166,25,-10996.6,-1960.65,93.8319,0,0,3.62026),
(135166,26,-11001.8,-1963.04,93.8319,0,0,3.38778),
(135166,27,-11007,-1963.55,93.8319,0,0,3.0422),
(135166,28,-11016.4,-1961.16,93.8271,0,0,2.27487),
(135166,29,-11019.6,-1955.1,93.8272,0,0,1.66461),
(135166,30,-11018.6,-1944.95,93.8269,0,0,1.39679),
(135166,31,-11019.3,-1956.88,93.828,0,0,5.00727),
(135166,32,-11015.2,-1961.86,93.8266,0,0,5.80679),
(135166,33,-11004.9,-1963.63,93.8304,0,0,0.041585),
(135166,34,-10997.8,-1961.53,93.8313,0,0,0.489262),
(135166,35,-10993.1,-1956.71,93.8188,0,0,1.05868),
(135166,36,-10992.6,-1950.81,93.8228,0,0,6.22738),
(135166,37,-10989.4,-1951.63,93.8255,0,0,4.57019),
(135166,38,-10990.8,-1957.83,93.823,0,0,4.16314),
(135166,39,-10992.9,-1960.72,93.8268,0,0,3.72646),
(135166,40,-11010,-1972.64,93.8339,0,0,5.43156),
(135166,41,-11003.5,-1981.47,93.8339,0,0,5.54495),
(135166,42,-10998.5,-1985.22,93.8324,0,0,5.91408),
(135166,43,-10993.5,-1987.31,93.8346,0,0,4.53964),
(135166,44,-10996.3,-2014.51,93.8233,0,0,4.61032),
(135166,45,-10998.7,-2033.83,93.8239,0,0,6.21253),
(135166,46,-10971,-2037.04,93.8226,0,0,6.16148),
(135166,47,-10949.1,-2039.68,93.8233,0,0,1.41767),
(135166,48,-10945.8,-2011.43,93.8233,0,0,1.44486),
(135166,49,-10942,-1977.16,93.8233,0,0,1.16447),
(135166,50,-10940.4,-1972.92,93.8233,0,0,1.7221),
(135166,51,-10941.3,-1967.79,93.8234,0,0,1.48727),
(135166,52,-10937.7,-1944.51,93.8204,0,0,2.31351),
(135166,53,-10945.7,-1937.36,93.8204,0,0,2.43524),
-- #135160
(135160,1,-10940.2,-1973.64,93.8247,0,0,4.85444),
(135160,2,-10938.7,-1978.97,93.8247,0,0,5.44741),
(135160,3,-10934.2,-1983.91,92.1832,0,0,5.36102),
(135160,4,-10930.3,-1990.17,92.1832,0,0,4.93926),
(135160,5,-10929.7,-1997.99,92.1832,0,0,6.05924),
(135160,6,-10927.3,-1997.9,92.1832,0,0,0.672978),
(135160,7,-10923,-1993.13,92.1832,0,0,0.556801),
(135160,8,-10907.6,-1987.53,92.1841,0,0,1.07752),
(135160,9,-10907.7,-1983.21,92.1841,0,0,2.12659),
(135160,10,-10914.9,-1976.66,92.1841,0,0,2.07289),
(135160,11,-10918.9,-1961.26,92.1772,0,0,1.48751),
(135160,12,-10913.8,-1945.75,92.1905,0,0,1.48123),
(135160,13,-10913.4,-1934.54,92.1977,0,0,2.28234),
(135160,14,-10917.7,-1933.11,92.1978,0,0,3.38111),
(135160,15,-10928.9,-1939.34,92.1833,0,0,3.36881),
(135160,16,-10931.9,-1938.4,93.8243,0,0,2.1216),
(135160,17,-10932.5,-1924.93,93.8227,0,0,1.82315),
(135160,18,-10936.5,-1913.97,93.8196,0,0,2.48367),
(135160,19,-10940.7,-1913.28,93.8197,0,0,3.51176),
(135160,20,-10943.7,-1916.1,93.8197,0,0,4.41953),
(135160,21,-10946.4,-1934.47,93.8197,0,0,4.81537),
(135160,22,-10945.4,-1939.65,93.8197,0,0,5.45153),
(135160,23,-10941.3,-1943.85,93.8189,0,0,5.27953),
(135160,24,-10938.7,-1949.25,93.8197,0,0,4.92139),
(135160,25,-10939,-1959.69,93.8231,0,0,4.66221),
-- #135165
(135165,1,-10977.5,-2040.33,93.8186,0,0,3.02724),
(135165,2,-11003,-2036.79,93.8234,0,0,1.43288),
(135165,3,-11000.3,-2011.53,93.8187,0,0,1.48001),
(135165,4,-10998.5,-1988.94,93.8268,0,0,2.55993),
(135165,5,-11002.3,-1986.53,93.8273,0,0,3.02567),
(135165,6,-11020.8,-1984.43,93.8285,0,0,2.45626),
(135165,7,-11022.6,-1979.85,93.8285,0,0,1.69938),
(135165,8,-11021.5,-1971.8,93.827,0,0,3.01329),
(135165,9,-11025.8,-1971.1,93.8255,0,0,3.04628),
(135165,10,-11021.5,-1971.75,93.8259,0,0,4.65399),
(135165,11,-11022.5,-1981.15,93.8274,0,0,5.10778),
(135165,12,-11020.2,-1984.48,93.8288,0,0,5.92302),
(135165,13,-11000.4,-1987.18,93.8292,0,0,5.65484),
(135165,14,-10998.5,-1989.25,93.8276,0,0,4.86631),
(135165,15,-11001,-2017.83,93.8186,0,0,4.59771),
(135165,16,-11002.4,-2036.59,93.8234,0,0,5.66977),
(135165,17,-10995.9,-2038.62,93.8234,0,0,6.19991),
(135165,18,-10965.6,-2041.46,93.8209,0,0,6.17635),
(135165,19,-10946.6,-2043.22,93.8234,0,0,1.51501),
(135165,20,-10943.2,-2014.11,93.8234,0,0,1.46907),
(135165,21,-10941,-2001.39,93.8234,0,0,0.3538),
(135165,22,-10935,-2000.37,92.183,0,0,6.17203),
(135165,23,-10940.6,-2001.14,93.8254,0,0,4.36954),
(135165,24,-10943.5,-2018.75,93.8254,0,0,4.6033),
(135165,25,-10947,-2042.79,93.8254,0,0,3.06785),
(135165,26,-10954,-2042.51,93.8254,0,0,3.06392),
-- #135161
(135161,1,-10930.2,-1974.14,92.1811,0,0,4.97965),
(135161,2,-10924.1,-1986.02,92.1835,0,0,5.25061),
(135161,3,-10920.9,-1992.06,92.1835,0,0,5.48622),
(135161,4,-10916.6,-1995.72,92.1835,0,0,5.8852),
(135161,5,-10909.6,-1997.67,92.1837,0,0,1.17045),
(135161,6,-10906.3,-1973.6,92.1844,0,0,1.41393),
(135161,7,-10903.4,-1951.48,92.1859,0,0,1.46105),
(135161,8,-10899.8,-1928.96,92.1844,0,0,1.8514),
(135161,9,-10902.5,-1922.91,92.1844,0,0,2.44732),
(135161,10,-10908,-1921.64,92.2038,0,0,3.26715),
(135161,11,-10916.9,-1922.34,92.1969,0,0,3.01975),
(135161,12,-10926.9,-1919.77,92.1837,0,0,3.10615),
(135161,13,-10932.5,-1917.74,93.8192,0,0,2.32252),
(135161,14,-10943.6,-1903.07,93.8198,0,0,2.13795),
(135161,15,-10944.7,-1919.94,93.8198,0,0,5.07533),
(135161,16,-10942.9,-1925,93.8198,0,0,5.61198),
(135161,17,-10938.1,-1929.66,93.8198,0,0,6.18672),
(135161,18,-10916.3,-1932.04,92.1985,0,0,5.63301),
(135161,19,-10913.1,-1936.05,92.1969,0,0,4.79264),
(135161,20,-10916.5,-1946.13,92.1907,0,0,4.24287),
(135161,21,-10918.6,-1950.79,92.1862,0,0,5.38562),
(135161,22,-10915.8,-1954.34,92.1848,0,0,5.06284),
(135161,23,-10914.7,-1956.37,92.18,0,0,4.13372),
(135161,24,-10928.8,-1971.05,92.1806,0,0,3.76305);

-- Ebonlocke (Data Backported From UDB 4.3.4 Sniff Data)
UPDATE creature_template SET GossipMenuId = 8175 WHERE entry = 16806;
DELETE FROM gossip_menu WHERE entry = 8175;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8175,10123,0,0);
DELETE FROM npc_text WHERE ID = 10123;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(10123, 'This party is pointless. Those foolish nobles will never get to see Medivh. Can\t they see this? I should have just stayed in Darkshire with my family instead of wasting my time here.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- =======================
-- Guest Chambers Overhaul
-- =======================
-- 2 Phantom Guardsman Along Wall
DELETE FROM creature_linking WHERE master_guid = 135381;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135380,135381,3);

-- 2 Phantom Guardsman by Statues
DELETE FROM creature_linking WHERE master_guid = 135378;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135379,135378,3);

-- Group of 4 NPC in Hallway
DELETE FROM creature_linking WHERE master_guid = 135502;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135490,135502,3),
(135491,135502,3),
(135516,135502,3);

-- 2 Pathing Spectral Sentries in Hallway
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid IN (135357);
UPDATE creature SET SpawnDist = 0, MovementType = 0 WHERE guid IN (135358);
UPDATE creature SET position_x = -10875.659180, position_y = -1973.648438, position_z = 92.172157, orientation = 4.546555 WHERE guid = 135358;
UPDATE creature SET position_x = -10877.576172, position_y = -1973.369385, position_z = 92.172157, orientation = 4.581897 WHERE guid = 135357;
DELETE FROM creature_movement WHERE id IN (135357);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135357,1,-10878.9,-1979.7,92.1722,0,0,100),
(135357,2,-10881.7,-1994.58,92.1724,0,0,100),
(135357,3,-10886.1,-2007.44,92.1736,0,0,100),
(135357,4,-10893,-2026.14,92.1736,0,0,100),
(135357,5,-10895.8,-2033.46,92.1736,0,0,100),
(135357,6,-10902.4,-2047.18,92.1736,0,0,100),
(135357,7,-10907.8,-2056.71,92.1718,0,0,100),
(135357,8,-10914.9,-2067.97,92.1718,0,0,100),
(135357,9,-10910.8,-2064.34,92.1718,0,0,100),
(135357,10,-10904.2,-2053.52,92.1718,0,0,100),
(135357,11,-10899.1,-2044.32,92.172,0,0,100),
(135357,12,-10893.6,-2032.75,92.1735,0,0,100),
(135357,13,-10890.1,-2022.88,92.1736,0,0,100),
(135357,14,-10884.4,-2007.2,92.1736,0,0,100),
(135357,15,-10880.2,-1995.82,92.1736,0,0,100),
(135357,16,-10877.4,-1982.46,92.172,0,0,100),
(135357,17,-10875.8,-1969.99,92.172,0,0,100),
(135357,18,-10874.7,-1956.86,92.1659,0,0,100),
(135357,19,-10876.4,-1962.09,92.1662,0,0,100),
(135357,20,-10878.1,-1973.58,92.1705,0,0,100);
DELETE FROM creature_linking WHERE master_guid IN (135357);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135358,135357,515);

-- Pathing Concubine and Hostess in Hallway
UPDATE creature SET position_x = -10877.645508, position_y = -2019.309448, position_z = 92.173325, orientation = 5.953989, spawntimesecs = 86400, spawndist = 0, MovementType = 2 WHERE guid = 135481;
UPDATE creature SET position_x = -10877.1, position_y = -2017.91, position_z = 92.1733, orientation = 5.96891, spawntimesecs = 86400, spawndist = 0, MovementType = 0 WHERE guid = 135509;
DELETE FROM creature_movement WHERE id = 135481;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135481,1,-10864,-2024.6,92.1733,0,0,100),
(135481,2,-10850.8,-2028.87,92.1733,0,0,100),
(135481,3,-10844.6,-2031.06,90.9263,0,0,100),
(135481,4,-10850.9,-2027.18,92.1753,0,0,100),
(135481,5,-10863.9,-2023.09,92.1753,0,0,100),
(135481,6,-10878.5,-2017.45,92.1753,0,0,100),
(135481,7,-10887.3,-2021.99,92.1753,0,0,100),
(135481,8,-10891.7,-2029.94,92.1753,0,0,100),
(135481,9,-10895.5,-2038.29,92.1753,0,0,100),
(135481,10,-10902,-2051.27,92.1723,0,0,100),
(135481,11,-10908.9,-2062.9,92.1723,0,0,100),
(135481,12,-10899.7,-2069.48,92.1723,0,0,100),
(135481,13,-10888.4,-2077.46,92.1646,0,0,100),
(135481,14,-10876.3,-2086.04,90.4968,0,0,100),
(135481,15,-10861,-2095.83,90.4968,0,0,100),
(135481,16,-10864.8,-2090.72,90.4968,0,0,100),
(135481,17,-10875.2,-2084.16,90.4968,0,0,100),
(135481,18,-10884,-2078.08,92.1638,0,0,100),
(135481,19,-10896.6,-2069.5,92.1704,0,0,100),
(135481,20,-10905.7,-2063.45,92.1704,0,0,100),
(135481,21,-10904.8,-2060.19,92.1704,0,0,100),
(135481,22,-10899,-2051.44,92.1707,0,0,100),
(135481,23,-10892.4,-2037.66,92.1726,0,0,100),
(135481,24,-10888.5,-2028.83,92.1733,0,0,100),
(135481,25,-10884,-2017.45,92.1733,0,0,100),
(135481,26,-10878,-2019.43,92.1733,0,0,100);
DELETE FROM creature_linking WHERE master_guid IN (135481);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135509,135481,515);

-- 2 Phantom Guardsman Before Boss
DELETE FROM creature_linking WHERE master_guid = 135374;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135375,135374,3);

-- =========================
-- First Room Guest Chambers
-- =========================
-- First Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135482;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135510,135482,3),
(135483,135482,3),
(135498,135482,3);

-- Second Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135494;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135504,135494,3),
(135505,135494,3),
(135478,135494,3);

-- Last Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135507;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135495,135507,3),
(135479,135507,3),
(135506,135507,3);

-- ==========================
-- Middle Room Guest Chambers
-- ==========================
-- Group of 2 on Right and 2 on Left
DELETE FROM creature_linking WHERE master_guid = 135512;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135499,135512,3),
(135511,135512,3),
(135484,135512,3);

-- Group of 4 At Back of Room
DELETE FROM creature_linking WHERE master_guid = 135500;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135513,135500,3),
(135485,135500,3),
(135486,135500,3);

-- =======================
-- Far Room Guest Chambers
-- =======================
-- First Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135497;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135508,135497,3),
(135480,135497,3),
(135496,135497,3);

-- Second Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135492;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135493,135492,3),
(135503,135492,3),
(135517,135492,3);

-- Rear Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid = 135514;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135487,135514,3),
(135488,135514,3),
(135501,135514,3);

-- =================
-- Servants Quarters
-- =================

-- Duplicate + missing added
DELETE FROM creature WHERE guid = 135419;
DELETE FROM creature_addon WHERE guid = 135419;
DELETE FROM creature_movement WHERE id = 135419;
DELETE FROM game_event_creature WHERE guid = 135419;
DELETE FROM game_event_creature_data WHERE guid = 135419;
DELETE FROM creature_battleground WHERE guid = 135419;
DELETE FROM creature_linking WHERE guid = 135419 OR master_guid = 135419;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Vampiric Shadowbat
(135419,16175,532,1,1,0,0,-10930.5,-1977.77,49.4747,1.50579,14400,0,0,30160,0,0,2);
DELETE FROM creature_movement WHERE id = 135419;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135419,1,-10928.1,-1959.1,49.4771,0,0,1.32515),
(135419,2,-10922.1,-1942.87,49.4369,0,0,1.36834),
(135419,3,-10930.2,-1970,49.4766,0,0,4.48637),
(135419,4,-10933.2,-2002.81,49.4754,0,0,4.67094),
(135419,5,-10931,-2030.3,49.4754,0,0,4.82801),
(135419,6,-10927.6,-2047.29,49.4754,0,0,4.96938),
(135419,7,-10931.5,-2024.9,49.4754,0,0,1.64715),
(135419,8,-10932.7,-1993.16,49.4978,0,0,1.57646),
(135419,9,-10930.8,-1976.4,49.4748,0,0,1.43116);
-- First group
UPDATE creature SET position_x = -10915.115234, position_y = -1950.065796, position_z = 49.480614, spawndist = 7, MovementType = 1 WHERE guid = 135415;
UPDATE creature SET position_x = -10930.905273, position_y = -1947.119507, position_z = 49.454479, spawndist = 7, MovementType = 1 WHERE guid = 135414;
UPDATE creature SET position_x = -10935.738281, position_y = -1966.129761, position_z = 49.476105, spawndist = 7, MovementType = 1 WHERE guid = 135413;
UPDATE creature SET position_x = -10919.125977, position_y = -1965.793091, position_z = 49.476135, spawndist = 7, MovementType = 1 WHERE guid = 135412;
UPDATE creature SET position_x = -10923.682617, position_y = -1955.458008, position_z = 49.477154, spawndist = 7, MovementType = 1 WHERE guid = 135421;
-- Second group
UPDATE creature SET position_x = -10938.646484, position_y = -1994.639038, position_z = 49.475376, spawndist = 7, MovementType = 1 WHERE guid = 135409;
UPDATE creature SET position_x = -10920.833984, position_y = -1995.744385, position_z = 49.492596, spawndist = 7, MovementType = 1 WHERE guid = 135410;
UPDATE creature SET position_x = -10922.098633, position_y = -2011.394653, position_z = 49.475075, spawndist = 7, MovementType = 1 WHERE guid = 135405;
UPDATE creature SET position_x = -10938.553711, position_y = -2008.662842, position_z = 49.475075, spawndist = 7, MovementType = 1 WHERE guid = 135408;
UPDATE creature SET position_x = -10930.285156, position_y = -2008.540039, position_z = 49.475075, spawndist = 7, MovementType = 1 WHERE guid = 135418;
UPDATE creature SET position_x = -10929.882813, position_y = -1994.277222, position_z = 49.491642, spawndist = 7, MovementType = 1 WHERE guid = 135420;
-- third group
UPDATE creature SET position_x = -10880.775391, position_y = -2008.340576, position_z = 49.474476, spawndist = 7, MovementType = 1 WHERE guid = 135407;
UPDATE creature SET position_x = -10896.197266, position_y = -2000.795166, position_z = 49.474476, spawndist = 7, MovementType = 1 WHERE guid = 135406;
UPDATE creature SET position_x = -10887.706055, position_y = -2007.982910, position_z = 49.474476, spawndist = 7, MovementType = 1 WHERE guid = 135417;
-- 2 Phase Hounds Pathing in Hall
UPDATE creature SET position_x = -10896.9, position_y = -2067.24, position_z = 49.4749, orientation = 1.39481, spawndist = 0, MovementType = 0 WHERE guid = 135435;
UPDATE creature SET position_x = -10895.4, position_y = -2067.46, position_z = 49.4749, orientation = 1.44507, spawndist = 0, MovementType = 2 WHERE guid = 135436;
DELETE FROM creature_movement WHERE id = 135436;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135436,1,-10890.5,-2041.62,49.4749,0,0,100),
(135436,2,-10887.9,-2018.66,49.4749,0,0,100),
(135436,3,-10905.9,-2004.69,49.4749,0,0,100),
(135436,4,-10887.4,-2018.75,49.4749,0,0,100),
(135436,5,-10890.3,-2042.18,49.4749,0,0,100),
(135436,6,-10894.4,-2067.36,49.4749,0,0,100),
(135436,7,-10898.9,-2080.08,49.4749,0,0,100),
(135436,8,-10895.6,-2066.25,49.4749,0,0,100);
DELETE FROM creature_linking WHERE master_guid = 135436;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135435,135436,515);

-- Dreadbeast links
DELETE FROM creature_linking WHERE master_guid = 135430;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135427,135430,3),
(135422,135430,3);
DELETE FROM creature_linking WHERE master_guid = 135431;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135425,135431,3),
(135437,135431,3),
(135438,135431,3);
DELETE FROM creature_linking WHERE master_guid = 135432;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135426,135432,3);
DELETE FROM creature_linking WHERE master_guid = 135428;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135423,135428,3),
(135434,135428,3),
(135433,135428,3);
DELETE FROM creature_linking WHERE master_guid = 135429;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135424,135429,3);

-- Group of 4 Spiders
DELETE FROM creature_linking WHERE master_guid = 135399;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135398,135399,3),
(135389,135399,3),
(135390,135399,3);
-- Group of 4 Spiders
UPDATE creature SET position_x = -10979.911133, position_y = -1934.003662, position_z = 46.882626, spawndist = 2, MovementType = 1 WHERE guid = 135392;
DELETE FROM creature_linking WHERE master_guid = 135400;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135391,135400,3),
(135392,135400,3),
(135401,135400,3);
-- Group of 3 Spiders
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 135402;
-- missing added
DELETE FROM creature WHERE guid IN (135411,77804);
DELETE FROM creature_addon WHERE guid IN (135411,77804);
DELETE FROM creature_movement WHERE id IN (135411,77804);
DELETE FROM game_event_creature WHERE guid IN (135411,77804);
DELETE FROM game_event_creature_data WHERE guid IN (135411,77804);
DELETE FROM creature_battleground WHERE guid IN (135411,77804);
DELETE FROM creature_linking WHERE guid IN (135411,77804) OR master_guid IN (135411,77804);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(135411,16170,532,1,1,0,0,-10996.4,-2008.25,46.0205,0.800785,14400,1,0,14671,0,0,1),
(77804,16170,532,1,1,0,0,-10989.8,-2013.63,46.0206,1.21705,14400,1,0,14671,0,0,1);
DELETE FROM creature_linking WHERE master_guid = 135402;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135411,135402,3),
(77804,135402,3);
-- Pathing Coldmist Stalker
UPDATE creature SET position_x = -10984.5, position_y = -1956.05, position_z = 46.0463, spawndist = 0, MovementType = 2 WHERE guid = 135383;
DELETE FROM creature_movement WHERE id = 135383;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135383,1,-10987.6,-1941.79,47.4489,30000,0,5.70),
(135383,2,-10983.4,-1968.25,45.8071,0,0,100),
(135383,3,-10989,-2016.58,45.4387,30000,0,1.66),
(135383,4,-10983.3,-1968.52,45.8041,0,0,100);
-- Coldmist Widow Pathing
UPDATE creature SET position_x = -10978.4, position_y = -1955.46, position_z = 46.0747, spawndist = 0, MovementType = 2 WHERE guid = 135394;
DELETE FROM creature_movement WHERE id = 135394;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135394,1,-10954.7,-1957.12,46.0198,0,0,100),
(135394,2,-10935.9,-1958.35,49.4753,0,0,100),
(135394,3,-10954.4,-1957.12,46.0206,0,0,100),
(135394,4,-10979,-1955.32,46.073,0,0,100),
(135394,5,-10984.4,-1959.96,46.0528,0,0,100),
(135394,6,-10988.4,-1974.44,45.8945,0,0,100),
(135394,7,-10996.2,-1973.62,46.0204,0,0,100),
(135394,8,-11005.6,-1971.85,48.5265,0,0,100),
(135394,9,-11010.8,-1972.5,48.5265,0,0,100),
(135394,10,-11028.9,-1993.95,48.5265,0,0,100),
(135394,11,-11044.3,-1992.01,49.9127,0,0,100),
(135394,12,-11028.5,-1994.22,48.5284,0,0,100),
(135394,13,-11010.5,-1972.82,48.5284,0,0,100),
(135394,14,-11004.6,-1972.46,48.5284,0,0,100),
(135394,15,-10987.5,-1974.74,45.8735,0,0,100),
(135394,16,-10984,-1960.05,46.0532,0,0,100),
(135394,17,-10978.4,-1955.46,46.0747,0,0,100);
-- Group of 3 Spiders
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid IN (135397,135387,135388);
DELETE FROM creature_linking WHERE master_guid = 135397;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135387,135397,3),
(135388,135397,3);
-- Group of 4 Spiders
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid IN (135396,135395,135386);
DELETE FROM creature_linking WHERE master_guid = 135396;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135395,135396,3),
(135385,135396,3),
(135386,135396,3);
-- Last Group of 3 Spiders
-- missing added
DELETE FROM creature WHERE guid = 77855;
DELETE FROM creature_addon WHERE guid = 77855;
DELETE FROM creature_movement WHERE id = 77855;
DELETE FROM game_event_creature WHERE guid = 77855;
DELETE FROM game_event_creature_data WHERE guid = 77855;
DELETE FROM creature_battleground WHERE guid = 77855;
DELETE FROM creature_linking WHERE guid = 77855 OR master_guid = 77855;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77855,16170,532,1,1,0,0,-11042.3,-2005.05,49.9115,1.71576,14400,1,0,14671,0,0,1);
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid IN (135393,135382);
DELETE FROM creature_linking WHERE master_guid = 135393;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135382,135393,3),
(77855,135393,3);

-- Fix Hastings Gossip
DELETE FROM gossip_menu_option WHERE menu_id IN (7143,8172);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7143,0,0,'Help you with what situation?',1,1,8172,0,0,0,0,NULL,0),
(8172,0,0,'Big ones?',1,1,8171,0,0,0,0,NULL,0);

-- ====================
-- Opera House Overhaul
-- ====================
-- duplicate objects on "The Opera Hall"
DELETE FROM gameobject WHERE guid IN (93926,93927,93928,93929,93930);
DELETE FROM game_event_gameobject WHERE guid IN (93926,93927,93928,93929,93930);
DELETE FROM gameobject_battleground WHERE guid IN (93926,93927,93928,93929,93930);

-- Fix Sebastian Gossip (Missing Data)
UPDATE creature_template SET GossipMenuId = 8174 WHERE entry = 16811;
DELETE FROM gossip_menu WHERE entry = 8174;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8174,10122,0,0);
DELETE FROM npc_text WHERE id IN (10122);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(10122,'Greetings! Behold one of the finest musical instruments in all of Lordaeron. It\'s a true honor to perform for the Master and all his guests. Take a seat in the audience, I hear a show is starting soon.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Pathing Phantom Stagehand
UPDATE creature SET position_x = -10862.6, position_y = -1752.14, position_z = 89.4798, spawndist = 0, MovementType = 2 WHERE guid = 135588;
DELETE FROM creature_movement WHERE id = 135588;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135588,1,-10861.9,-1748.85,89.4881,0,0,100),
(135588,2,-10857.3,-1744.91,89.4902,0,0,100),
(135588,3,-10856.5,-1739.71,90.4698,0,0,100),
(135588,4,-10858.6,-1729.95,90.4683,0,0,100),
(135588,5,-10863.9,-1733.45,90.4701,0,0,100),
(135588,6,-10898.8,-1729.58,90.4697,0,0,100),
(135588,7,-10863.3,-1733.78,90.4704,0,0,100),
(135588,8,-10858.2,-1729.86,90.4671,0,0,100),
(135588,9,-10856.1,-1740.41,90.4688,0,0,100),
(135588,10,-10857.2,-1745.18,89.4894,0,0,100),
(135588,11,-10862.1,-1749.41,89.4881,0,0,100),
(135588,12,-10862.6,-1752.14,89.4798,0,0,100);

-- Pathing Phantom Stagehand Upstairs
UPDATE creature SET position_x = -10844, position_y = -1749.79, position_z = 94.4427, spawndist = 0, MovementType = 2 WHERE guid = 135589;
DELETE FROM creature_movement WHERE id = 135589;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135589,1,-10844.2,-1740.08,96.1494,0,0,100),
(135589,2,-10842.4,-1727.83,96.2236,0,0,100),
(135589,3,-10841.1,-1718.59,96.1961,0,0,100),
(135589,4,-10839.9,-1715.83,96.1961,20000,1647201,0.52),
(135589,5,-10840.9,-1718.93,96.1961,0,0,100),
(135589,6,-10842.3,-1728.75,96.2484,0,0,100),
(135589,7,-10844.5,-1744.1,94.4577,0,0,100),
(135589,8,-10844.1,-1750.57,94.4427,0,0,100),
(135589,9,-10845.5,-1760.39,97.6679,0,0,100),
(135589,10,-10848.4,-1779.67,97.6679,0,0,100),
(135589,11,-10846.5,-1781.69,97.6679,20000,1647201,5.323),
(135589,12,-10848.2,-1779.54,97.6679,0,0,100),
(135589,13,-10845.5,-1758.39,97.546,0,0,100),
(135589,14,-10844,-1749.79,94.4427,0,0,100);

-- Pathing Phantom Stagehand Upstairs to Back-Stage
UPDATE creature SET position_x = -10843.7, position_y = -1724.27, position_z = 96.1957, spawndist = 0, MovementType = 2 WHERE guid = 135587;
UPDATE creature SET MovementType = 2 WHERE guid = 135587;
DELETE FROM creature_movement WHERE id = 135587;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135587,1,-10846,-1739.05,96.2012,0,0,100),
(135587,2,-10849.1,-1755.69,94.4463,0,0,100),
(135587,3,-10860.5,-1753.58,89.471,0,0,100),
(135587,4,-10859.5,-1748.2,89.4777,0,0,100),
(135587,5,-10857.1,-1745.18,89.4889,0,0,100),
(135587,6,-10856.2,-1735.53,90.468,0,0,100),
(135587,7,-10873.1,-1732.49,90.4686,0,0,100),
(135587,8,-10882.6,-1722.88,90.4688,0,0,100),
(135587,9,-10882.3,-1719.77,90.4688,20000,1647201,1.74),
(135587,10,-10882.5,-1723.45,90.4688,0,0,100),
(135587,11,-10872.7,-1732.8,90.4689,0,0,100),
(135587,12,-10861.3,-1733.87,90.4701,0,0,100),
(135587,13,-10855.4,-1735.83,90.4671,0,0,100),
(135587,14,-10857.2,-1745.44,89.4881,0,0,100),
(135587,15,-10859.6,-1748.69,89.4771,0,0,100),
(135587,16,-10860.3,-1754,89.4732,0,0,100),
(135587,17,-10849.5,-1755.59,94.4471,0,0,100),
(135587,18,-10848,-1750.51,94.4553,0,0,100),
(135587,19,-10845.6,-1746.09,94.456,0,0,100),
(135587,20,-10845.3,-1738.75,96.2052,0,0,100),
(135587,21,-10843.8,-1724.91,96.1957,0,0,100),
(135587,22,-10841.2,-1714.61,96.1957,20000,1647201,0.748),
(135587,23,-10843.7,-1724.27,96.1957,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1647201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1647201,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1647201,18,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Group of 6 NPC in Upper Opera House
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (135575,135576,135528,135529,135530,135531);
DELETE FROM creature_movement WHERE id IN (135575,135576,135528,135529,135530,135531);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135575,1,-10926.5,-1865.88,110.599,3000,1647001,2.1293),
(135575,2,-10926.5,-1865.88,110.599,14000,0,2.1293),
(135576,1,-10927.2,-1862.6,110.599,5000,0,4.29351),
(135576,2,-10927.2,-1862.6,110.599,6000,1647001,4.29351),
(135528,1,-10935.7,-1875.22,110.602,6000,0,1.309),
(135528,2,-10935.7,-1875.22,110.602,7000,1646801,1.309),
(135529,1,-10941.3,-1869.12,110.601,1000,0,0.994838),
(135529,2,-10941.3,-1869.12,110.601,13000,1646801,0.994838),
(135530,1,-10939.4,-1867.83,110.6,8000,1646801,3.05433),
(135530,2,-10939.4,-1867.83,110.6,3000,1646801,3.05433),
(135531,1,-10935.8,-1871.22,110.6,10000,1646801,4.81711),
(135531,2,-10935.8,-1871.22,110.6,2000,1646801,4.81711);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1646801,1647001);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1646801,1,1,1,0,0,0,0,6,273,274,11,0,0,0,0,''),
(1647001,1,1,274,0,0,0,0,1,11,6,273,0,0,0,0,'');
DELETE FROM creature_linking WHERE master_guid = 135575;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135576,135575,3),
(135528,135575,3),
(135529,135575,3),
(135530,135575,3),
(135531,135575,3); 
-- Rat
UPDATE creature SET position_x = -10935.636719, position_y = -1879.532227, position_z = 110.519699, spawndist = 1, MovementType = 1 WHERE guid = 135908;

-- Group of 6 NPC in Upper Opera House
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (135524,135525,135526,135527,135573,135574);
DELETE FROM creature_movement WHERE id IN (135524,135525,135526,135527,135573,135574);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135524,1,-10883.4,-1869.55,110.599,19000,1646801,4.46804),
(135525,1,-10882.7,-1886.03,110.601,4000,1646801,0.802851),
(135525,2,-10882.7,-1886.03,110.601,22000,0,0.802851),
(135526,1,-10875.8,-1881.21,110.602,7000,0,2.35619),
(135526,2,-10875.8,-1881.21,110.602,5000,1646801,2.35619),
(135527,1,-10875,-1878.74,110.601,17000,0,4.01426),
(135527,2,-10875,-1878.74,110.601,5000,1646801,4.01426),
(135573,1,-10880.7,-1885.19,110.602,3000,0,2.93215),
(135573,2,-10880.7,-1885.19,110.602,16000,1647001,2.93215),
(135574,1,-10884.3,-1873.28,110.599,16000,0,1.20428),
(135574,2,-10884.3,-1873.28,110.599,3000,1647001,1.20428);
DELETE FROM creature_linking WHERE master_guid = 135527;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135524,135527,3),
(135525,135527,3),
(135526,135527,3),
(135573,135527,3),
(135574,135527,3);
-- Rat
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 135896;

-- 3 NPC Pathing in Upper Opera House
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 135578;
DELETE FROM creature_movement WHERE id = 135578;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135578,1,-10944.9,-1807.53,107.664,0,0,100),
(135578,2,-10948.3,-1824.69,109.262,0,0,100),
(135578,3,-10946.3,-1846,109.262,0,0,100),
(135578,4,-10938.9,-1862.23,110.517,0,0,100),
(135578,5,-10928.1,-1874.46,110.517,0,0,100),
(135578,6,-10916.9,-1879.99,111.398,0,0,100),
(135578,7,-10893.5,-1882.83,111.398,0,0,100),
(135578,8,-10881.1,-1879.37,110.517,0,0,100),
(135578,9,-10869.3,-1868.39,110.517,0,0,100),
(135578,11,-10860.8,-1853.93,109.263,0,0,100),
(135578,12,-10855.5,-1836.76,109.263,0,0,100),
(135578,13,-10852.3,-1813.64,107.664,0,0,100),
(135578,14,-10855.1,-1832.07,109.263,0,0,100),
(135578,15,-10862.1,-1852.07,109.263,0,0,100),
(135578,16,-10872.5,-1867.94,110.516,0,0,100),
(135578,17,-10884.3,-1877.68,110.516,0,0,100),
(135578,18,-10897.5,-1880.44,111.395,0,0,100),
(135578,19,-10917.8,-1877.28,111.395,0,0,100),
(135578,20,-10926.8,-1871.01,110.517,0,0,100),
(135578,21,-10937,-1859.16,110.517,0,0,100),
(135578,22,-10944.1,-1844.2,109.262,0,0,100),
(135578,23,-10945.8,-1829.83,109.262,0,0,100);
DELETE FROM creature_linking WHERE master_guid = 135578;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135534,135578,515),
(135535,135578,515);
-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid = 135570;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135518,135570,3),
(135519,135570,3);
-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid = 135571;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135520,135571,3),
(135521,135571,3);
-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid = 135577;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135532,135577,3),
(135533,135577,3);
-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid = 135572;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135522,135572,3),
(135523,135572,3);

-- Group of 3 Pathing Top of Opera House
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135579;
UPDATE creature SET SpawnDist = 0, MovementType = 0 WHERE guid IN (135536,135537);
DELETE FROM creature_linking WHERE master_guid = 135579;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135536,135579,515),
(135537,135579,515);
DELETE FROM creature_movement WHERE id = 135579;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(135579,1,-10906.3,-1878.73,125.419,0,0,100),
(135579,2,-10920.7,-1876.48,125.425,0,0,100),
(135579,3,-10930.6,-1871.89,124.559,0,0,100),
(135579,4,-10937.9,-1859.6,124.559,0,0,100),
(135579,5,-10944.6,-1847.56,123.304,0,0,100),
(135579,6,-10945.9,-1834.07,123.304,0,0,100),
(135579,7,-10943.5,-1802.8,121.705,0,0,100),
(135579,8,-10946.1,-1829.07,123.304,0,0,100),
(135579,9,-10943.2,-1849.35,123.749,0,0,100),
(135579,10,-10937.7,-1861.77,124.559,0,0,100),
(135579,11,-10928.3,-1872.33,124.559,0,0,100),
(135579,12,-10919.2,-1878.01,125.422,0,0,100),
(135579,13,-10894.6,-1881.75,125.419,0,0,100),
(135579,14,-10881.1,-1877.94,124.559,0,0,100),
(135579,15,-10867.2,-1865.99,124.559,0,0,100),
(135579,16,-10858.9,-1852.72,123.304,0,0,100),
(135579,17,-10854.2,-1839.68,123.304,0,0,100),
(135579,18,-10854.7,-1820.73,121.704,0,0,100),
(135579,19,-10856.7,-1835.42,123.304,0,0,100),
(135579,20,-10862.4,-1852.07,123.304,0,0,100),
(135579,21,-10867.4,-1862.19,124.558,0,0,100),
(135579,22,-10879.6,-1873.37,124.558,0,0,100),
(135579,23,-10892.6,-1879.28,125.424,0,0,100);

-- ==========================
-- The Broken Stairs Overhaul
-- ==========================

-- Random spawns for Trapped Souls and Ghastly Haunts
-- missing creatures added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 77805 AND 77814;
DELETE FROM creature_addon WHERE guid BETWEEN 77805 AND 77814;
DELETE FROM creature_movement WHERE id BETWEEN 77805 AND 77814;
DELETE FROM game_event_creature WHERE guid BETWEEN 77805 AND 77814;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 77805 AND 77814;
DELETE FROM creature_battleground WHERE guid BETWEEN 77805 AND 77814;
DELETE FROM creature_linking WHERE guid BETWEEN 77805 AND 77814 OR master_guid BETWEEN 77805 AND 77814;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77805,16481,532,1,1,0,0,-11038,-1948.52,113.32,2.59801,14400,5,0,51660,0,0,1),
(77806,16481,532,1,1,0,0,-11010.5,-1964.66,110.077,0.268507,14400,5,0,51660,0,0,1),
(77807,16482,532,1,1,0,0,-11060.5,-2014.54,97.014,5.07515,14400,5,0,41321,33090,0,1),
(77808,16482,532,1,1,0,0,-11090.3,-1968.85,92.5991,2.20059,14400,5,0,41321,33090,0,1),
(77809,16482,532,1,1,0,0,-11052.8,-1949.66,96.4722,2.09848,14400,5,0,41321,33090,0,1),
(77810,16482,532,1,1,0,0,-11057.4,-1997.93,115.226,3.16662,14400,5,0,41321,33090,0,1),
(77811,16481,532,1,1,0,0,-11061.9,-2032.53,115.17,5.24006,14400,5,0,51660,0,0,1),
(77812,16481,532,1,1,0,0,-11063.7,-1948.29,124.578,1.1929,14400,5,0,51660,0,0,1),
(77813,16481,532,1,1,0,0,-11045.2,-1973.17,143.078,5.76862,14400,5,0,51660,0,0,1),
(77814,16482,532,1,1,0,0,-11051.2,-1982.32,158.191,4.91253,14400,5,0,41321,33090,0,1);

-- Pools created

-- Pool Templates -- Pool 1
DELETE FROM pool_template WHERE entry = 25577;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25577, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25577;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(135604, 25577, 0, 'Karazhan - Trapped Soul'),
(77805, 25577, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 2
DELETE FROM pool_template WHERE entry = 25578;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25578, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25578;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(135603, 25578, 0, 'Karazhan - Trapped Soul'),
(77806, 25578, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 3
DELETE FROM pool_template WHERE entry = 25579;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25579, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 3');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25579;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(77807, 25579, 0, 'Karazhan - Trapped Soul'),
(135598, 25579, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 4
DELETE FROM pool_template WHERE entry = 25580;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25580, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 4');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25580;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(77808, 25580, 0, 'Karazhan - Trapped Soul'),
(135599, 25580, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 5
DELETE FROM pool_template WHERE entry = 25581;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25581, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 5');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25581;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(77809, 25581, 0, 'Karazhan - Trapped Soul'),
(135597, 25581, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 6
DELETE FROM pool_template WHERE entry = 25582;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25582, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 6');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25582;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(77810, 25582, 0, 'Karazhan - Trapped Soul'),
(135600, 25582, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 7
DELETE FROM pool_template WHERE entry = 25583;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25583, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 7');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25583;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(135602, 25583, 0, 'Karazhan - Trapped Soul'),
(77811, 25583, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 8
DELETE FROM pool_template WHERE entry = 25584;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25584, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 8');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25584;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(135606, 25584, 0, 'Karazhan - Trapped Soul'),
(77812, 25584, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 9
DELETE FROM pool_template WHERE entry = 25585;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25585, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 9');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25585;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(135605, 25585, 0, 'Karazhan - Trapped Soul'),
(77813, 25585, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 10
DELETE FROM pool_template WHERE entry = 25586;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25586, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 10');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25586;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(77814, 25586, 0, 'Karazhan - Trapped Soul'),
(135601, 25586, 0, 'Karazhan - Ghastly Haunt');


-- ======================
-- The Menagerie Overhaul
-- ======================
-- 2 Arcane Watchmen
DELETE FROM creature_linking WHERE master_guid = 135607;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135608,135607,3);

-- Arcane Anomaly Group 1
DELETE FROM creature_linking WHERE master_guid = 135613;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135657,135613,515),
(135658,135613,515),
(135659,135613,515),
(135660,135613,515),
(135661,135613,515);

-- Arcane Anomaly Group 2
DELETE FROM creature_linking WHERE master_guid = 135616;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135670,135616,515),
(135671,135616,515),
(135672,135616,515),
(135673,135616,515),
(135674,135616,515);

-- Arcane Anomaly Group 3
UPDATE creature SET position_x = -11073.386719, position_y = -1841.199463, position_z = 165.766541 WHERE guid = 135614;
DELETE FROM creature_linking WHERE master_guid = 135614;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135662,135614,515),
(135663,135614,515),
(135664,135614,515);

-- Arcane Anomaly Group 4
DELETE FROM creature_linking WHERE master_guid = 135611;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135652,135611,515),
(135653,135611,515),
(135654,135611,515),
(135655,135611,515);

-- Arcane Anomaly Group 5
DELETE FROM creature_linking WHERE master_guid = 135615;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135665,135615,515),
(135666,135615,515),
(135667,135615,515),
(135668,135615,515),
(135669,135615,515);

-- Arcane Anomaly Group 6
DELETE FROM creature_linking WHERE master_guid = 135612;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135656,135612,515);

-- The Curator
-- waypoints corrected
UPDATE creature_template SET MovementType = 2 WHERE entry = 15691;
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 135489;
DELETE FROM creature_movement WHERE id = 135489;
DELETE FROM creature_movement_template WHERE entry = 15691;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(15691,1,-11173.1,-1901.89,165.766,0,0,2.24672),
(15691,2,-11191.4,-1878.79,153.672,0,0,2.22708),
(15691,3,-11194.1,-1875.5,153.544,0,0,2.18781),
(15691,4,-11191,-1879.08,153.846,0,0,5.40009),
(15691,5,-11172.9,-1902.04,165.766,0,0,5.37653),
(15691,6,-11168.4,-1907.76,165.766,0,0,0.851978),
(15691,7,-11136.8,-1882.43,165.766,0,0,0.632851),
(15691,8,-11120.4,-1869.84,165.766,0,0,0.715318),
(15691,9,-11104.6,-1856.86,165.766,0,0,0.664268),
(15691,10,-11120,-1869.51,165.766,0,0,3.81371),
(15691,11,-11136.7,-1882.52,165.766,0,0,3.80193),
(15691,12,-11168.8,-1908.21,165.766,0,0,3.83335);


-- ===========================
-- Guardians Library Overhaul
-- ===========================

-- 2 Arcane Watchmen
DELETE FROM creature_linking WHERE master_guid = 135610;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135609,135610,3);

-- Mana Feeder links
-- All should do RandomMovement
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE id IN (16489,16491);
-- group 1
DELETE FROM creature_linking WHERE master_guid = 135619;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135631,135619,3),
(135632,135619,3),
(135633,135619,3);
-- group 2
DELETE FROM creature_linking WHERE master_guid = 135643;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135644,135643,3),
(135645,135643,3);
-- group 3
DELETE FROM creature_linking WHERE master_guid = 135640;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135641,135640,3),
(135642,135640,3);
-- group 4
DELETE FROM creature_linking WHERE master_guid = 135634;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135635,135634,3),
(135636,135634,3);
-- group 5
DELETE FROM creature_linking WHERE master_guid = 135618;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135637,135618,3),
(135638,135618,3),
(135639,135618,3);
-- group 6
DELETE FROM creature_linking WHERE master_guid = 135620;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135649,135620,3),
(135650,135620,3),
(135651,135620,3);
-- group 7
DELETE FROM creature_linking WHERE master_guid = 135622;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135623,135622,3),
(135624,135622,3);
-- group 8
UPDATE creature SET position_x = -11206.267578, position_y = -1726.632202, position_z = 136.023499, spawndist = 5 , MovementType = 1 WHERE guid = 135621;
DELETE FROM creature_linking WHERE master_guid = 135621;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135628,135621,3),
(135629,135621,3),
(135630,135621,3);
-- group 9
DELETE FROM creature_linking WHERE master_guid = 135646;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135647,135646,3),
(135648,135646,3);
-- group 10
UPDATE creature SET spawndist = 5 , MovementType = 1 WHERE guid=135617;
DELETE FROM creature_linking WHERE master_guid = 135617;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135625,135617,3),
(135626,135617,3),
(135627,135617,3);

-- Arcane Protector - waypoints
UPDATE creature SET position_x = -11257.628906, position_y = -1886.217163, position_z = 135.991425, orientation = 2.168849, spawndist = 0 , MovementType = 2 WHERE guid = 135685;
UPDATE creature SET position_x = -11207.451172, position_y = -1741.308228, position_z = 136.020935, orientation = 3.854690, spawndist = 0 , MovementType = 2 WHERE guid = 135690;
UPDATE creature SET position_x = -11360.822266, position_y = -1862.930176, position_z = 172.447067, orientation = 0.712778, spawndist = 0 , MovementType = 2 WHERE guid = 135691;
UPDATE creature SET spawndist = 0 , MovementType = 2 WHERE guid IN (135684,135686,135687,135688,135689,135691);
DELETE FROM creature_movement WHERE id IN (135684,135685,135686,135687,135688,135689,135690,135691);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135684
(135684,1,-11290.4,-1739.41,136.036,0,0,3.93266),
(135684,2,-11277.3,-1727.94,136.027,0,0,5.72833),
(135684,3,-11248.1,-1762.83,135.734,0,0,5.01989),
(135684,4,-11244.1,-1772.61,135.766,0,0,4.77093),
(135684,5,-11244,-1781.65,135.809,0,0,4.74187),
(135684,6,-11244.2,-1772.81,135.767,0,0,2.04717),
(135684,7,-11248.5,-1762.29,135.738,0,0,2.16027),
(135684,8,-11276.8,-1728.33,136.024,0,0,2.24431),
-- #135685
(135685,1,-11260.2,-1878.67,135.941,0,0,1.4832),
(135685,2,-11255.7,-1871.37,135.92,0,0,0.802256),
(135685,3,-11248.5,-1868.43,135.996,0,0,0.13074),
(135685,4,-11242.1,-1871.34,136.003,0,0,5.5225),
(135685,5,-11249,-1868.87,135.995,0,0,3.16238),
(135685,6,-11256.3,-1871.62,135.919,0,0,3.77892),
(135685,7,-11260.4,-1878.13,135.935,0,0,4.72218),
(135685,8,-11256.6,-1887.77,136.037,0,0,5.35824),
(135685,9,-11249.6,-1895.47,139.404,0,0,5.66612),
(135685,10,-11241.5,-1901.2,142.573,0,0,5.98833),
(135685,11,-11232.8,-1901.8,145.476,0,0,0.341313),
(135685,12,-11224,-1897.14,148.668,0,0,0.600494),
(135685,13,-11216.6,-1891.63,152.052,0,0,0.59264),
(135685,14,-11213.4,-1889.44,152.054,0,0,0.60828),
(135685,15,-11216.8,-1891.94,151.999,0,0,3.73024),
(135685,16,-11228.5,-1899.88,147.175,0,0,3.47621),
(135685,17,-11236.9,-1902.01,143.972,0,0,3.11493),
(135685,18,-11244.8,-1899.55,141.36,0,0,2.48426),
(135685,19,-11256.4,-1887.91,136.089,0,0,2.23921),
-- #135686
(135686,1,-11201.1,-1791.99,136.023,0,0,5.32377),
(135686,2,-11179.4,-1819.81,136.023,0,0,5.34206),
(135686,3,-11200.8,-1792.33,136.023,0,0,2.26723),
(135686,4,-11226.9,-1813.11,136.023,0,0,3.78697),
(135686,5,-11250.4,-1833.88,135.991,0,0,3.83898),
(135686,6,-11237.3,-1822.34,136.022,0,0,0.720946),
-- #135687
(135687,1,-11214.6,-1820.46,136.024,0,0,3.20099),
(135687,2,-11224.5,-1823.63,136.024,0,0,3.59761),
(135687,3,-11234.9,-1830.59,136.024,0,0,3.9589),
(135687,4,-11242.3,-1841.15,136.024,0,0,4.46704),
(135687,5,-11244.5,-1853.27,136.024,0,0,4.60291),
(135687,6,-11244.7,-1861.89,136.023,0,0,4.90921),
(135687,7,-11243.8,-1848.52,136.023,0,0,1.41419),
(135687,8,-11239.7,-1837.08,136.023,0,0,1.12268),
(135687,9,-11232.2,-1828.65,136.023,0,0,0.69071),
(135687,10,-11221.1,-1822.29,136.023,0,0,0.423675),
(135687,11,-11208.5,-1820.53,136.023,0,0,6.16258),
(135687,12,-11195.9,-1824.37,136.023,0,0,5.86806),
(135687,13,-11186.8,-1830.25,136.023,0,0,5.52013),
(135687,14,-11181.8,-1835.66,136.023,0,0,5.45337),
(135687,15,-11189.5,-1828.48,136.023,0,0,2.56311),
(135687,16,-11198.2,-1823.21,136.023,0,0,2.76339),
-- #135688
(135688,1,-11275,-1770.41,135.582,0,0,4.78146),
(135688,2,-11275.8,-1788.74,142.156,0,0,4.62438),
(135688,3,-11280.2,-1807.67,148.449,0,0,4.22618),
(135688,4,-11293.5,-1823.98,154.091,0,0,3.75416),
(135688,5,-11322.4,-1849.35,164.838,0,0,3.86648),
(135688,6,-11345.3,-1869.18,169.242,0,0,3.82721),
(135688,7,-11322.9,-1849.79,164.937,0,0,0.685611),
(135688,8,-11293.5,-1824.23,154.146,0,0,0.798709),
(135688,9,-11280.5,-1808.03,148.554,0,0,1.22597),
(135688,10,-11275.9,-1790.27,142.723,0,0,1.50629),
(135688,11,-11274.9,-1770.06,135.588,0,0,1.66022),
(135688,12,-11278,-1757.24,135.799,0,0,2.01994),
(135688,13,-11283.1,-1747.43,135.923,0,0,1.99245),
(135688,14,-11278.3,-1756.56,135.816,0,0,5.1576),
-- #135689
(135689,1,-11260.1,-1857.98,135.827,0,0,4.51834),
(135689,2,-11261.9,-1866.82,135.865,0,0,3.81149),
(135689,3,-11269.1,-1871.87,135.915,0,0,3.71331),
(135689,4,-11261.5,-1866.61,135.863,0,0,1.09401),
(135689,5,-11260,-1858.66,135.832,0,0,2.09932),
(135689,6,-11272.6,-1841.02,135.676,0,0,0.81912),
(135689,7,-11261.5,-1827.09,135.759,0,0,1.21025),
(135689,8,-11254.2,-1802.43,135.695,0,0,1.37675),
(135689,9,-11261.4,-1827.04,135.758,0,0,4.14685),
(135689,10,-11272.9,-1841.44,135.677,0,0,5.73179),
-- #135690
(135690,1,-11234.8,-1761.83,135.901,0,0,5.45297),
(135690,2,-11217,-1784.99,135.966,0,0,3.79186),
(135690,3,-11244.3,-1805.21,135.843,0,0,3.78793),
(135690,4,-11217.1,-1785.2,135.968,0,0,2.01293),
(135690,5,-11234.7,-1762.16,135.897,0,0,0.821476),
(135690,6,-11207.3,-1741.43,136.022,0,0,0.646332),
-- #135691
(135691,1,-11346.8,-1851.66,170.373,0,0,0.665654),
(135691,2,-11360.8,-1862.6,172.457,0,0,2.20818),
(135691,3,-11372.6,-1847.89,175.249,0,0,2.2553),
(135691,4,-11382,-1835.63,179.149,0,0,2.23167),
(135691,5,-11398.7,-1813.33,179.735,0,0,2.1492),
(135691,6,-11382.3,-1835.25,179.181,0,0,5.33399),
(135691,7,-11372.6,-1847.91,175.242,0,0,5.3497),
(135691,8,-11360.9,-1862.67,172.463,0,0,0.611387);

-- Gossips
-- Wravien
UPDATE creature_template SET GossipMenuId = 8178 WHERE entry = 16813;
DELETE FROM gossip_menu WHERE entry = 8178;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8178,10126,0,0);
-- Gradav
UPDATE creature_template SET GossipMenuId = 8176 WHERE entry = 16813;
DELETE FROM gossip_menu WHERE entry = 8176;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8176,10124,0,0);
-- Kamsis
UPDATE creature_template SET GossipMenuId = 8177 WHERE entry = 16815;
DELETE FROM gossip_menu WHERE entry = 8177;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8177,10125,0,0);

-- Magical Horror Group 1
DELETE FROM creature_linking WHERE master_guid = 135716;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135722,135716,3),
(135723,135716,3),
(135724,135716,3);
-- Magical Horror Group 2
DELETE FROM creature_linking WHERE master_guid = 135717;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135725,135717,3),
(135726,135717,3);
-- Magical Horror Group 3
DELETE FROM creature_linking WHERE master_guid = 135715;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135720,135715,3),
(135721,135715,3);
-- Magical Horror Group 4
DELETE FROM creature_linking WHERE master_guid = 135714;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135718,135714,3),
(135719,135714,3);

-- Spell Shade Group
DELETE FROM creature_linking WHERE master_guid = 135708;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135707,135708,3),
(135709,135708,3),
(135710,135708,3);

-- Shadow Pillagers and Homunculus
DELETE FROM creature_linking WHERE master_guid = 135770;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135771,135770,3),
(135772,135770,3),
(135759,135770,3),
(135760,135770,3),
(135761,135770,3);

-- Group of Spellshades
DELETE FROM creature_linking WHERE master_guid = 135696;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135693,135696,3),
(135694,135696,3),
(135695,135696,3);

-- Shade of Aran
UPDATE creature SET SpawnDist = 9, MovementType = 1 WHERE guid = 135692;

-- Shade of Aran Teleport (ALL) -- modelid corrected
UPDATE creature SET modelid = 15435 WHERE id BETWEEN 17168 AND 17176;

-- Blizzard Movement (Shade of Aran)
UPDATE creature SET position_x = -11173.654297, position_y = -1901.118408, position_z = 232.009003, orientation = 2.162093 WHERE guid = 135127;
DELETE FROM creature_movement_template WHERE entry = 17161;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(17161,1,-11173.7,-1901.06,232.009,0,0,100),
(17161,2,-11163.5,-1897.31,232.009,0,0,100),
(17161,3,-11154.1,-1903.53,232.009,0,0,100),
(17161,4,-11150.5,-1913.51,232.009,0,0,100),
(17161,5,-11156.5,-1922.95,232.009,0,0,100),
(17161,6,-11166.9,-1926.54,232.009,0,0,100),
(17161,7,-11175.9,-1920.6,232.009,0,0,100),
(17161,8,-11179.4,-1910.72,232.009,0,0,100);

-- Sorcerus Shade Group 1
-- missing creatures added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 77856 AND 77858;
DELETE FROM creature_addon WHERE guid BETWEEN 77856 AND 77858;
DELETE FROM creature_movement WHERE id BETWEEN 77856 AND 77858;
DELETE FROM game_event_creature WHERE guid BETWEEN 77856 AND 77858;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 77856 AND 77858;
DELETE FROM creature_battleground WHERE guid BETWEEN 77856 AND 77858;
DELETE FROM creature_linking WHERE guid BETWEEN 77856 AND 77858 OR master_guid BETWEEN 77856 AND 77858;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77856,16526,532,1,1,0,0,-11285.8,-1936.74,240.469,5.45703,14400,5,0,33057,33090,0,1),
(77857,16525,532,1,1,0,0,-11285.8,-1953.61,240.47,1.19938,14400,5,0,30160,0,0,1),
(77858,16525,532,1,1,0,0,-11279,-1919.11,240.47,5.44446,14400,5,0,30160,0,0,1);
DELETE FROM creature_linking WHERE master_guid = 77856;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135706,77856,3),
(77857,77856,3),
(77858,77856,3);
-- Sorcerus Shade Group 2
DELETE FROM creature_linking WHERE master_guid = 135713;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135703,135713,3),
(135704,135713,3),
(135705,135713,3);
-- Sorcerus Shade Group 3
DELETE FROM creature_linking WHERE master_guid  = 135712;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135698,135712,3),
(135699,135712,3),
(135700,135712,3);

-- Ethereal Thiefs
UPDATE creature SET spawndist = 0 , MovementType = 2 WHERE guid IN (135773,135774,135775,135776,135777,135778);
DELETE FROM creature_movement WHERE id IN (135773,135774,135775,135776,135777,135778);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #135773
(135773,1,-11347.8,-1758.06,265.165,21000,0,2.12667),
(135773,2,-11321.4,-1811.58,265.165,21000,0,5.1371),
-- #135774
(135774,1,-11305.3,-1792.52,265.165,22000,0,6.00989),
(135774,2,-11357.5,-1778.9,265.165,21000,0,2.89579),
-- #135775
(135775,1,-11359.2,-1789.79,265.165,21000,0,3.3026),
(135775,2,-11301.4,-1780.28,265.165,21000,0,0.141371),
-- #135776
(135776,1,-11357.2,-1765.93,265.165,22000,0,2.48738),
(135776,2,-11311.4,-1802.27,265.165,22000,0,5.60933),
-- #135777
(135777,1,-11334.1,-1762.16,265.165,22000,0,1.62568),
(135777,2,-11333.6,-1809.83,265.166,21000,0,4.7555),
-- #135778
(135778,1,-11324.3,-1756.72,265.165,19000,0,1.20157),
(135778,2,-11345.3,-1809.13,265.165,19000,0,4.3196);

-- Ythyar
UPDATE creature SET position_x = -11153.946289, position_y = -1849.224365, position_z = 238.166595, orientation = 3.868120 WHERE guid = 84990;

-- Fleshbeasts
DELETE FROM creature_linking WHERE master_guid = 135858;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135859,135858,3);
DELETE FROM creature_linking WHERE master_guid = 135854;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135855,135854,3);
DELETE FROM creature_linking WHERE master_guid = 135861;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135860,135861,3);
DELETE FROM creature_linking WHERE master_guid = 135853;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135852,135853,3);
DELETE FROM creature_linking WHERE master_guid = 135856;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(135857,135856,3);

-- Skeletal Gryphons
UPDATE creature SET SpawnDist = 20, MovementType = 1 WHERE id = 17660;

-- Greater Fleshbeast in Top of Tower
UPDATE creature SET SpawnDist = 3, MovementType = 1 WHERE guid = 135865;

-- Prince Malchezaar Pathing
UPDATE creature SET position_x = -10933.5, position_y = -2017.54, position_z = 275.742, SpawnDist = 0, MovementType = 2 WHERE guid = 135477;
UPDATE creature_template SET MovementType = 2 WHERE entry = 15690;
DELETE FROM creature_movement_template WHERE entry = 15690;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(15690,1,-10920.6,-1985.05,275.605,0,0,100),
(15690,2,-10936.8,-1958.72,275.349,0,0,100),
(15690,3,-10961.3,-1945.57,275.119,0,0,100),
(15690,4,-10936.8,-1959.34,275.352,0,0,100),
(15690,5,-10921.7,-1987.22,275.611,0,0,100),
(15690,6,-10926.2,-2011.05,275.74,0,0,100),
(15690,7,-10948.9,-2023.28,275.576,0,0,100),
(15690,8,-10966.6,-2022.58,275.275,0,0,100),
(15690,9,-10948.3,-2023.49,275.584,0,0,100),
(15690,10,-10933.5,-2017.54,275.742,0,0,100);

-- Stats
-- Kil'rek
UPDATE creature_template SET Expansion = 1 WHERE entry = 17229;
-- Conjured Elemental
UPDATE creature_template SET Expansion = 1 WHERE entry = 17167;
-- Prince Malchezaar's Axes
UPDATE creature_template SET Expansion = 1 WHERE entry = 17650;

-- Sealed Tome
-- Only one book should be available to loot
UPDATE gameobject_loot_template SET groupid = 1 WHERE entry = 18509;
-- should despawn after use
UPDATE gameobject_template SET data2 = 0 WHERE data1 = 18509;

-- DB issues fixed
-- Table `creature` have creature (GUID: 135133 Entry: 17173) with `creature_template`.`RegenerateStats` & REGEN_FLAG_HEALTH and low current health (28), `creature_template`.`MinLevelHealth`=2835.
-- Table `creature` have creature (GUID: 135129 Entry: 17169) with `creature_template`.`RegenerateStats` & REGEN_FLAG_HEALTH and low current health (28), `creature_template`.`MinLevelHealth`=2835.
UPDATE creature SET curhealth = 2835 WHERE guid IN (135129,135133);
