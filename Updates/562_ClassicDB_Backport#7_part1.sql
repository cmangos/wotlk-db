-- Classic Backport #7 Part1.

-- Classic [1319]
-- Homing Robots run way too fast.
UPDATE creature_template SET SpeedWalk = ( 5.0  /  2.5 ), SpeedRun = ( 5.0  /  7.0 ) WHERE Entry = 7784;
UPDATE creature_template SET SpeedWalk = ( 5.0  /  2.5 ), SpeedRun = ( 5.0  /  7.0 ) WHERE Entry = 7807;
UPDATE creature_template SET SpeedWalk = ( 5.0  /  2.5 ), SpeedRun = ( 5.0  /  7.0 ) WHERE Entry = 7806;

-- Classic [1320]
-- Prevent Horde Warlock to take twice the quest "In Search of Menara Voidrender"
-- Alliance quests already had their exclusive group set.
-- This closes #825
UPDATE quest_template SET ExclusiveGroup = 4737 WHERE entry IN (4736, 4739);

-- Classic [1321]
-- Prevent Shamans to take twice the quest "Call of Water"
UPDATE quest_template SET ExclusiveGroup = 1528 WHERE entry = 2986;

-- Classic [1322]
-- Fixed stats of NPC 5458 (Centipaad Worker)
UPDATE creature_template SET DamageMultiplier = 1, MinMeleeDmg = 81, MaxMeleeDmg = 110, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 200, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 5458;

-- Classic [1323]
-- Added start scripts for quest 5821 and 5943 in Desolace
-- Quest start scripts
DELETE FROM dbscripts_on_quest_start WHERE id IN (5943, 5821);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5821, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5821, 1, 25, 0, 0, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5821, 2, 25, 0, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5821, 3, 25, 0, 0, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5821, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5821, 4, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
(5821, 5, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5821, 6, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5821, 6, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5943, 0, 25, 0, 0, 11625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5943, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5943, 0, 25, 0, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5943, 0, 25, 0, 0, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5943, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11625, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5943, 2, 32, 0, 0, 11625, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - unpause WP movement');
UPDATE quest_template SET StartScript = 5821 WHERE entry = 5821;
UPDATE quest_template SET StartScript = 5943 WHERE entry = 5943;
-- Prevent Rigger from being too far on some scripts
UPDATE dbscripts_on_creature_movement SET search_radius = 100 WHERE id IN (1162501, 11625209, 11625197) AND search_radius IN (40, 60);
-- Add reinit faction/speed script after "Gizelton Caravan" quest completion
UPDATE creature_movement_template SET script_id = 1162501 WHERE entry = 11625 AND point = 241;
-- Various NPC flag updates now SD2 is also in to ensure quests are only available when needed
DELETE FROM dbscripts_on_creature_movement WHERE id = 1162577 AND command = 29 AND delay = 300;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1162577, 300, 29, 2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver status');
DELETE FROM dbscripts_on_creature_movement WHERE id = 11625209 AND command = 29 AND delay = 300;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11625209, 300, 29, 2, 0x02, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver status');

-- Classic [1324]
-- Kobold Laborer 
UPDATE creature_template SET ExtraFlags = 0 WHERE Entry = 80;

-- Classic [1325]
-- Fixed spawn location of NPC 14467 (Kroshius) in Felwood
UPDATE creature SET position_x = 5800.89, position_y = -985.82, position_z = 409.78 WHERE id = 14467;

-- Classic [1331]
-- Silithid Mound contain 1-3 eggs.
UPDATE gameobject_loot_template SET mincountOrRef = 1, maxcount = 3 WHERE entry = 2620 and item = 5058;

-- Classic [1337]
-- Fixed flags of GO 176631 in Stratholme it shouldn't be targetable
UPDATE gameobject_template SET flags = 4 WHERE entry = 176631;

-- Classic [1342]
-- Rewrote script for quest 1886 
DELETE FROM dbscripts_on_gossip WHERE id = 125;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(125, 1, 22, 168, 0x01+0x04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor change faction'),
(125, 2, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor attack start');

-- Classic [1344]
-- Fixed event scripts used in Darkmaster Gandling encounter in Scholomance
-- The wrong NPC was used.
-- Sources: https://www.youtube.com/watch?v=SlPU8fF785k
-- https://www.youtube.com/watch?v=-cXIkndubFw
-- https://www.youtube.com/watch?v=lC3-w771En0
UPDATE dbscripts_on_event SET datalong = 11598 WHERE id IN (5618, 5619, 5620, 5621, 5622, 5623);

-- Classic [1346] 
-- Fixed teleport position of a few spells in Scholomance 
-- Players put "in detention" by Darkmaster Gandling should
-- appears in the position of one of the six mini-bosses
-- and not in the middle of the room. That prevents them
-- from aggroing the adds before load
DELETE FROM spell_target_position WHERE id IN (17863, 17939, 17943, 17944, 17946, 17948);
INSERT INTO spell_target_position VALUES 
(17943, 289, 86.6634, -1.96039, 85.3117, 0.017453),
(17948, 289, 103.305, -1.67752, 75.2183, 6.17846),
(17939, 289, 182.246, -95.4371, 85.3117, 1.5694),
(17946, 289, 178.724, -91.0232, 70.8568, 1.64061),
(17863, 289, 274.877, 1.33366, 85.3117, 3.22886),
(17944, 289, 265.956, 0.903429, 75.3334, 3.07178);

-- Classic [1347]
-- Mor'ladim was incredibly overbuffed, about 6 or 7 times stronger than he is supposed to be.
UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 2, ArmorMultiplier = 1, MinLevelHealth = 3660, MaxLevelHealth = 3660, MinMeleeDmg = 48.6, MaxMeleeDmg = 64.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1373, MeleeAttackPower = 118, RangedAttackPower = 11, MeleeBaseAttackTime = 2000 WHERE Entry = 522;

-- Classic [1347]
-- Fix Defias Messenger being a dishonourable kill
UPDATE creature_template SET ExtraFlags = 0 WHERE Entry = 550;

-- Classic [1351]
-- Fixed Hunter pets base attack time
-- Alright, so here: http://web.archive.org/web/20061112230516/http://tkasomething.com/attackspeeds.php
-- are some attack speeds. Going to check each and every one so here goes;
-- Attack Speed: 1.00:
-- Frenzied Bloodseeker Bat
UPDATE creature_template SET MeleeBaseAttackTime = 1000 WHERE Entry = 14965;
-- Attack Speed: 1.20:
-- The Rake
UPDATE creature_template SET MeleeBaseAttackTime = 1200 WHERE Entry = 5807;
-- Spriteflayer
UPDATE creature_template SET MeleeBaseAttackTime = 1200 WHERE Entry = 8299;

-- Attack Speed 1.30:
-- Mist Howler
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 10644;
-- Enraged Stanley
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 2275;
-- Ravage
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 8300;
-- Attack Speed 1.40:
-- King Bangalash
UPDATE creature_template SET MeleeBaseAttackTime = 1400 WHERE Entry = 731;
-- Spawn of Mar'li
UPDATE creature_template SET MeleeBaseAttackTime = 1400 WHERE Entry = 15041;
-- Attack Speed 1.50:
-- Bhag'thera
UPDATE creature_template SET MeleeBaseAttackTime = 1500 WHERE Entry = 728;
-- Bloodaxe Worg
UPDATE creature_template SET MeleeBaseAttackTime = 1500 WHERE Entry = 9696;
-- Attack Speed 1.60:
-- Death Flayer
UPDATE creature_template SET MeleeBaseAttackTime = 1600 WHERE Entry = 5823;
-- Zulian Prowler
UPDATE creature_template SET MeleeBaseAttackTime = 1600 WHERE Entry = 15101;
-- Attack Speed 1.70:
-- Vilebranch Raiding Wolf
UPDATE creature_template SET MeleeBaseAttackTime = 1700 WHERE Entry = 2681;
-- Attack Speed 2.00:
-- Longsnout
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 119;
-- Vultros
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 462;
-- Lupos
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 521;
-- Naraxis
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 574;
-- Chatter
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 616;
-- Ragged Timber Wolf
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 704;
-- Small Crag Boar
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 708;
-- Tethis
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 730;
-- Leech Widow
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1112;
-- Bjarn
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1130;
-- Timber
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1132;
-- Razormaw Matriarch
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1140;
-- Cliff Lurker
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1184;
-- Wood Lurker
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1185;
-- Black Bear Patriarch
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1189;
-- Elder Mountain Boar
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1192;
-- Mountain Buzzard
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1194;
-- Ol' Sooty
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1225;
-- Enraged Silverback Gorilla
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1511;
-- Konda
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1516;
-- Scarred Crag Boar
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1689;
-- Mangeclaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 1961;
-- Strider Clutchmother
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 2172;
-- Elder Saltwater Crocolisk
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 2635;
-- Barnabus
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 2753;
-- Mazzranache
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 3068;
-- Ishamuhale
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 3257;
-- Echeyakee
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 3475;
-- Ghost Saber
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 3619;
-- Deepmoss Hatchling
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4263;
-- Deepmoss Matriarch
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4264;
-- Drywallow Vicejaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4342;
-- Drywallow Daggermaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4345;
-- Bloodfen Scytheclaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4355;
-- Darkmist Widow
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4380;
-- Mudrock Tortoise
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4396;
-- Mudrock Burrower
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4398;
-- Mudrock Borer
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4399;
-- Mudrock Snapjaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4400;
-- Darkfang Lurker
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4411;
-- Darkfang Spider
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4413;
-- Blind Hunter
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 4425;
-- Arash-ethis
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 5349;
-- Snarler
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 5356;
-- Giant Surf Glider
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 5432;
-- Snort the Heckler
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 5829;
-- Azzere the Skyblade
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 5834;
-- Uhk'loc
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 6585;
-- Lady Sathrah
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 7319;
-- Old Cliff Jumper
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 8211;
-- Ironback
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 8213;
-- Clack the Reaver
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 8301;
-- Ressan the Needler
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 10357;
-- Sri'skulk
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 10359;
-- Zulian Tiger
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 11361;
-- Zulian Panther
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 11365;
-- Besseleth
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 11921;
-- Dart
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 14232;
-- Lord Condar
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 14268;
-- Creepthess
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 14279;
-- Gorefang
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 12431;
-- Old visejaw
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 12432;
-- Krethis Shadowspinner
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 12433;
-- Razzashi Venombrood
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 14532;
-- Razzashi Raptor
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 14821;
-- Zulian Crocolisk
UPDATE creature_template SET MeleeBaseAttackTime = 2000 WHERE Entry = 15043;
-- Attack Speed 2.40:
-- Ursius
UPDATE creature_template SET MeleeBaseAttackTime = 2400 WHERE Entry = 10806;

-- Classic [1352]
-- Fixed spawn/despawn of Strongbox GOs 
-- Made Buccaneer's Strongbox despawn after being picked
UPDATE gameobject_template SET data2 = 0 WHERE entry = 123330 OR entry = 123331 OR entry = 123332 OR entry = 123333;
UPDATE gameobject SET spawntimesecs = 5 WHERE id = 123330 OR id = 123331 OR id = 123332 OR id = 123333 OR id = 178246;

-- Classic [1352]
-- Cyclonian 
-- Some questionable data about lil Cyclonian got changed.
UPDATE creature_template SET MaxLevel = 40, SpeedWalk = 1, DamageMultiplier = 2, ArmorMultiplier = 1, MinMeleeDmg = 56.0, MaxMeleeDmg = 74.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1964, MeleeAttackPower = 136, RangedAttackPower = 14, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, DamageSchool = 3, MinLootGold = 0, MaxLootGold = 0, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 6239;

-- Classic [1353]
-- Fixed drop table for GO 1701 (Fel Cone) in Teldrassil.  They should only drop the quest item.
DELETE FROM gameobject_loot_template WHERE entry = 1701 AND ChanceOrQuestChance >= 0;

-- Classic [1354] 
-- Fixed some spawn points of NPCs 11598 in Scholomance
DELETE FROM dbscripts_on_event WHERE id = 5622;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 181.825, -42.5812, 75.4812, 4.66003, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 177.746, -42.7475, 75.4812, 4.88692, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 185.616, -42.912, 75.4812, 4.45059, 'Scholomance - Summons in Barov Vault');

-- Classic [1356]
-- Added immunities for a few creatures
UPDATE creature_template SET SchoolImmuneMask = 124 WHERE entry = 10485; -- Risen Aberration immune to magic except holy
UPDATE creature_template SET SchoolImmuneMask = 1 WHERE entry = 11284; -- Dark Shade immune to physical damage
UPDATE creature_template SET SchoolImmuneMask = 4 WHERE entry = 2760; -- Burning Exile immune to fire damage
UPDATE creature_template SET SchoolImmuneMask = 16 WHERE entry = 2761; -- Cresting Exile immune to frost damage

-- Classic [1359]
-- Fixed stats of NPC 14564 in Eastern Plaguelands
-- They were doing twice their expected damage output
UPDATE creature_template SET DamageMultiplier = 1, MinMeleeDmg = 102, MaxMeleeDmg = 138, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14564;

-- Classic [1362]
-- Fixed respawn time of GO 176248 in Stratholme
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 WHERE id = 176248;

-- Classic [1363]
-- Added missing GO 176295 in Stratholme
-- Added missing GO 176295 (Archive Fire) in Stratholme
-- Made it spawn on event (GO use)
-- Added missing GO 176295 (Archive Fire) in Stratholme
-- Made it spawn on event (GO use)
DELETE FROM gameobject WHERE guid = 85477;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(85477, 176295, 329, 1, 1, 3458.875, -3106.348, 137.889, 3.14159, 0, 0, 1, 0, -30, 100, 1);
DELETE FROM dbscripts_on_event WHERE id = 5258;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5258, 1, 9, 85477, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');

-- Classic [1364]
-- Fixed reward text of quests 5404, 5406 and 5508 (Corruptor's Scourgestones)
UPDATE quest_template SET OfferRewardText = "Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!$B$BTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!$B$BFor the Dawn, my $Gbrother:sister;!" WHERE entry IN (5404, 5406, 5508);

-- Classic [1365] 
-- Fixed drop of item 22890 (Tome of Frost Ward rank V)
-- It should drop from world bosses, not basic NPCs in dungeons lvl 55+
DELETE FROM creature_loot_template WHERE item = 22890;
INSERT INTO creature_loot_template VALUES
(6109, 22890, 5, 0, 1, 1, 0),
(14887, 22890, 5, 0, 1, 1, 0),
(14888, 22890, 5, 0, 1, 1, 0),
(14889, 22890, 5, 0, 1, 1, 0),
(14890, 22890, 5, 0, 1, 1, 0);

-- Classic [1366]
-- Elwynn Forest - creature_movement
UPDATE creature SET position_x = -9135.247, position_y = -590.7052, position_z = 57.63183, orientation = 4.921828, spawndist = 0, MovementType = 2 WHERE guid = 80977;
DELETE FROM creature_movement WHERE id = 80977;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80977, 1, -9136.168, -596.7232, 57.54046, 0, 0, 100, 0, 0),
(80977, 2, -9145.280, -596.9583, 58.28343, 0, 0, 100, 0, 0),
(80977, 3, -9151.679, -592.2198, 58.31500, 0, 0, 100, 0, 0),
(80977, 4, -9160.135, -594.1770, 59.13434, 0, 0, 100, 0, 0),
(80977, 5, -9168.364, -597.8492, 62.27327, 0, 0, 100, 0, 0),
(80977, 6, -9176.890, -602.5500, 63.21548, 0, 0, 100, 0, 0),
(80977, 7, -9182.027, -604.5135, 63.24406, 30000, 0, 100, 0, 0),
(80977, 8, -9166.246, -598.0614, 61.80346, 0, 0, 100, 0, 0),
(80977, 9, -9158.225, -593.8230, 58.95638, 0, 0, 100, 0, 0),
(80977, 10, -9149.229, -593.6427, 58.08143, 0, 0, 100, 0, 0),
(80977, 11, -9142.528, -597.2371, 57.96902, 0, 0, 100, 0, 0),
(80977, 12, -9133.249, -593.9049, 57.54119, 0, 0, 100, 0, 0),
(80977, 13, -9134.566, -589.2764, 57.57470, 30000, 0, 100, 0, 0);
UPDATE creature SET position_x = -9079.772, position_y = -586.9499, position_z = 62.24374, orientation = 2.111848, spawndist = 0, MovementType = 2 WHERE guid = 80977;
DELETE FROM creature_movement WHERE id = 80978;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80978, 1, -9088.729, -573.6836, 62.58135, 0, 0, 100, 0, 0),
(80978, 2, -9093.982, -563.0015, 61.92558, 0, 0, 100, 0, 0),
(80978, 3, -9107.356, -564.8509, 60.70168, 0, 0, 100, 0, 0),
(80978, 4, -9116.427, -568.4710, 59.15052, 30000, 0, 100, 0, 0),
(80978, 5, -9103.889, -564.5217, 60.98942, 0, 0, 100, 0, 0),
(80978, 6, -9092.170, -566.2786, 61.83733, 0, 0, 100, 0, 0),
(80978, 7, -9083.018, -578.5235, 62.52438, 0, 0, 100, 0, 0),
(80978, 8, -9079.747, -586.9783, 62.14604, 30000, 0, 100, 0, 0);

-- Classic [1367]
-- Dire Maul - Dusty Tome
UPDATE gameobject_template SET size = 1.5 WHERE entry IN (179547, 179548);
DELETE FROM gameobject WHERE id IN (179547, 179548);
DELETE FROM gameobject WHERE guid BETWEEN 85478 AND 85486;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(85478, 179548, 429, 836.3329, 493.3791, 37.3182, 0.2967052, 0, 0, 0.147809,  0.9890159, 7200, 0, 1),
(85479, 179548, 429, 512.7841, 588.0363, -25.40232, 3.281239, 0, 0, -0.9975634, 0.06976615, 7200, 0, 1),
(85480, 179548, 429, 288.2057, 341.1553, 2.852959, 5.497789, 0, 0, -0.3826828, 0.9238798, 7200, 0, 1),
(85481, 179548, 429, -144.4642, 742.0172, -24.58036, 3.857183, 0, 0, -0.9366713, 0.3502098, 7200, 0, 1),
(85482, 179548, 429, -86.39826, 569.308, 28.60788, 1.780234, 0, 0, 0.7771454,  0.6293211, 7200, 0, 1),
(85483, 179548, 429, 285.1641, -431.0629, -119.9618, 4.694937, 0, 0, -0.7132502, 0.7009096, 7200, 0, 1),
(85484, 179548, 429, -10.1152, -353.7714, -54.04335, 3.787367, 0, 0, -0.9483232, 0.3173059, 7200, 0, 1),
(85485, 179548, 429, 118.0176, -261.4722, -4.14639, 0.087266, 0, 0, 0.04361916, 0.9990482, 7200, 0, 1),
(85486, 179548, 429, 4.497807, -437.5673, 16.41252, 4.136433, 0, 0, -0.8788166, 0.4771597, 7200, 0, 1);
DELETE FROM pool_gameobject_template WHERE id = 179548 OR pool_entry = 25560;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(179548, 25560, 0, 'DM - Dusty Tome (179548)');
DELETE FROM pool_template WHERE entry = 25560;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25560, 1, 'DM - Dusty Tome'); 

-- Classic [1370]
-- Fixed drop chance of item 3693
UPDATE creature_loot_template SET ChanceOrQuestChance = -8 WHERE item = 3693 AND ChanceOrQuestChance = -100;

-- Classic [1376]
-- Diremaul - Tsu'zee + missing rare added
DELETE FROM creature WHERE guid = 128976;
DELETE FROM creature_addon WHERE guid = 128976;
DELETE FROM creature_movement WHERE id = 128976;
DELETE FROM game_event_creature WHERE guid = 128976;
DELETE FROM game_event_creature_data WHERE guid = 128976;
DELETE FROM creature_battleground WHERE guid = 128976;
DELETE FROM creature_linking WHERE guid = 128976 OR master_guid = 128976;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128976, 11467, 429, 0, 0, 128.6425, 561.7593, -4.312211, 3.124139, 604800, 0, 0, 17766, 0, 0, 0);
UPDATE creature_template SET EquipmentTemplateId = 1574 WHERE Entry = 11467;
DELETE FROM pool_template WHERE entry = 25561;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25561, 1, 'DM - Tsu\zee / Eldreth Apparition');
DELETE FROM pool_creature WHERE pool_entry = 25561;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(128976, 25561, 0, 'DM - Tsu\zee / Eldreth Apparition'),
(136205, 25561, 25, 'DM - Tsu\zee / Eldreth Apparition');

-- Classic [1379]
-- Fixed event for Cannon Master Willey in Stratholme
-- Summoned Crimson Rifleman at the right place
DELETE FROM spell_script_target WHERE entry = 17279;
INSERT INTO spell_script_target VALUES
(17279, 0, 176211, 0);
-- Updated Cannonball trap: it was damaging players getting close to it
UPDATE gameobject_template SET data2 = 0 WHERE entry = 176211;
-- Added scripts for activating the Scarlet Cannons
DELETE FROM dbscripts_on_go_template_use WHERE id IN (176216, 176217);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(176216, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap'),
(176217, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap');

-- Classic [1380]
-- Fixed fight with NPC 16387 (Atiesh) in Stratholme
-- Fixed stats
-- Added equipment
-- Added or fixed GO and items involved in the encounter
-- Sources:
-- https://www.youtube.com/watch?v=ZNHCkd5AvKI
-- https://www.youtube.com/watch?v=D5wP695sdao
-- http://wowwiki.wikia.com/wiki/Atiesh
-- http://www.wowhead.com/npc=16387/atiesh#comments
-- Fixed stats of creature 16387 (Atiesh)
UPDATE creature_template SET SpeedWalk = 1, MinLevel = 63, MaxLevel = 63, HealthMultiplier = 75, ArmorMultiplier = 1, DamageMultiplier = 40, MinMeleeDmg = 110, MaxMeleeDmg = 146, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 268, RangedAttackPower = 32, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, EquipmentTemplateId = 2515 WHERE Entry = 16387;
-- Added equipment template for Atiesh
DELETE FROM creature_equip_template WHERE entry = 2515;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2515, 42544, 42543, 2551);
-- Updated the tooltip of the corrupted Atiesh's staff
UPDATE item_template SET description = "An entity of great evil is imprisoned within the staff." WHERE entry  =  22737;
-- Added missing GO 181207 (Runed Demonic Blade)
DELETE FROM gameobject_template WHERE entry = 181207;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(181207, 3, 4175,'Runed Demonic Blade','','','',0,0,1.5,0,0,0,0,0,0,1085,181207,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Added loot for GO 181207
DELETE FROM gameobject_loot_template WHERE entry = 181207;
INSERT INTO gameobject_loot_template VALUES
(181207, 22736, 100, 0, 1, 1, 0);

-- Classic [1381]
-- Added missing spawns for NPCs 10516 & 10387 in Stratholme 
-- Spawned NPC 10516 (The Unforgiven) and its adds 10387 (Vengeful Phantom) in Stratholme
DELETE FROM creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_addon WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_movement WHERE id BETWEEN 128977 AND 128981;;
DELETE FROM game_event_creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_battleground WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_linking WHERE guid BETWEEN 128977 AND 128981 OR master_guid BETWEEN 128977 AND 128981;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128977, 10516, 329, 0, 0, 3718.479, -3426.675, 131.759, 3.176403, 7200, 0, 0, 11136, 0, 0, 0),
(128978, 10387, 329, 0, 0, 3716.03, -3423.4, 131.745, 4.3506, 3600, 0, 0, 5960, 0, 0, 0),
(128979, 10387, 329, 0, 0, 3706.85, -3425.96, 131.697, 5.69441, 3600, 0, 0, 5960, 0, 0, 0),
(128980, 10387, 329, 0, 0, 3718.34, -3430.62, 131.484, 2.6722, 3600, 0, 0, 5960, 0, 0, 0),
(128981, 10387, 329, 0, 0, 3709.38, -3434.97, 130.49, 0.969456, 3600, 0, 0, 5960, 0, 0, 0);
-- link
DELETE FROM creature_linking_template WHERE entry = 10387;
INSERT INTO creature_linking_template VALUES
(10387, 329, 10516, 3, 0);

-- Classic [1383]
-- Fixed items 23247 & 23379 for MidSummer Festival 
-- Fixed charges and duration of item 23379 (Cinder Bracers) from MidSummer Festival
-- Made items 23379 and 23247 (Burning Blossom) used realtime duration
UPDATE item_template SET spellcharges_1 = -3, Duration = 14*24*60*60 WHERE entry = 23379;
UPDATE item_template SET ExtraFlags = 2 WHERE entry IN (23247, 23379);

-- Classic [1387]
-- Fixed stats of NPCs 1836 & 1842 in Western Plaguelands
UPDATE creature_template SET DamageMultiplier = 2, MinMeleeDmg = 96, MaxMeleeDmg = 132, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 1836;
UPDATE creature_template SET DamageMultiplier = 5, MinMeleeDmg = 102, MaxMeleeDmg = 135, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 27, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 1842; 

-- Classic [1390]
-- Death Howl - Pooling
DELETE FROM pool_creature_template WHERE id = 14339;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(14339, 25562, 0, 'Felwood - Death Howl');
DELETE FROM pool_template WHERE entry = 25562;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25562, 1, 'Felwood - Death Howl');

-- Classic [1397] 
-- Fixed drop chance of item 18704 
-- Fixed drop chance of item 18704 (Mature Blue Dragon Sinew)
-- It was very low on elite mob and guaranteed on Azuregos
UPDATE creature_loot_template SET ChanceOrQuestChance = 0.1 WHERE item = 18704;                     -- Elite blue dragons
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE item = 18704 AND entry = 6109;    -- Azuregos

-- Classic [1398]
-- Updated drop chance for item 14493 
-- Updated drop chance for item 14493 (Pattern: Robe of Winter Night) that was insanely high
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 7437 AND item = 14493;

-- Classic [1401]
-- Made quests 7907, 7929, 7927 & 7928 repeatable 
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN (7907,7929,7927,7928);
