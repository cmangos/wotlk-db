-- q.11695 'The Horn of Elemental Fury'
-- Duplicates in quest area
DELETE FROM creature_addon WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM creature_movement WHERE id IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM game_event_creature WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM game_event_creature_data WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM creature_battleground WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM creature_linking WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015)
 OR master_guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);
DELETE FROM creature WHERE guid IN (105010,102977,102949,102927,102993,102992,102852,102978,102853,102879,102941,102987,102885,102889,102873,103127,103014,103015);

-- Steam Frog 
UPDATE creature SET SpawnDist = 7, MovementType = 1 WHERE id = 25679;
-- addon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25679);
DELETE FROM creature_template_addon WHERE entry = 25679;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25679,0,0,0,0,0,0,36151);
-- updates
UPDATE creature SET position_x = 3798.257813, position_y = 4049.399902, position_z = 25.583445, spawndist = 7, MovementType = 1 WHERE guid = 102932;
UPDATE creature SET position_x = 3792.669434, position_y = 4023.287598, position_z = 25.780495, spawndist = 7, MovementType = 1 WHERE guid = 102948;

-- q script
DELETE FROM dbscripts_on_quest_end WHERE id = 11695;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11695,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11695,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'npcflags removed'),
(11695,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.35,''),
(11695,3,15,43320,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11695,3,10,25771,15000,0,0,0,0x08,0,0,0,0,3526.857,4215.892,16.89778,4.363323,'summon - Ice Elemental Target'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3524.509,4220.787,12.59916,3.630285,'summon - Small Elemental'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3528.847,4221.306,12.52278,2.75762,'summon - Small Elemental'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3531.661,4218.423,12.57833,0.9250245,'summon - Small Elemental'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3533.227,4213.772,12.55055,2.80998,'summon - Small Elemental'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3530.082,4210.271,12.5575,1.029744,'summon - Small Elemental'),
(11695,4,10,25769,15000,0,0,0,0x08,0,0,0,0,3526.76,4208.782,12.51583,0.9599311,'summon - Small Elemental'),
(11695,12,10,25742,11000,0,0,0,0x08,0,0,0,0,3526.815,4215.751,13.3075,3.752458,'summon - Alluvius'),
(11695,15,1,35,0,0,25742,500,7,0,0,0,0,0,0,0,0,'Alluvius - emote'),
(11695,18,0,0,0,0,0,0,0,2000001543,0,0,0,0,0,0,0,''),
(11695,23,14,43320,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(11695,24,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.36136,''),
(11695,24,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'npcflags added'),
(11695,25,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000, CompleteScript = 11695 WHERE entry = 11695;
DELETE FROM dbscript_string WHERE entry = 2000001543;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001543,'With the power of the horn, I bind you to its wielder\'s will!',0,0,0,1,NULL);

DELETE FROM spell_script_target WHERE entry = 45979;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(45979,1,25771,0);

-- Ice Elemental Target
UPDATE creature_template SET Expansion = 2, UnitClass = 2, InhabitType = 4, UnitFlags = 33555200, FactionAlliance = 634, FactionHorde = 634, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 288.5, MaxMeleeDmg = 412 WHERE entry = 25771;

-- Small Elemental
UPDATE creature_template SET Expansion = 2, UnitClass = 2, UnitFlags = 33555200, FactionAlliance = 35, FactionHorde = 35, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 288.5, MaxMeleeDmg = 412 WHERE entry = 25769;
