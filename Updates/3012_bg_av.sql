
-- ***  Alterac Valles updates ***

-- disable random movement for these creatures
UPDATE creature SET movementType=0, spawndist=0 WHERE id IN (12053,12050);

-- spawn difficulty 3 data
UPDATE creature SET spawnMask = spawnMask|8 WHERE map=30;
UPDATE gameobject SET spawnMask = spawnMask|8 WHERE map=30;

-- missing gossips
UPDATE creature_template SET GossipMenuId=4942 WHERE Entry=11997;
DELETE FROM gossip_menu WHERE entry=4942;
INSERT INTO gossip_menu (entry, text_id) VALUES
(4942, 8900);
DELETE FROM npc_text WHERE ID=8900;
INSERT INTO npc_text (ID, text0_0) VALUES
(8900, 'Soldier! You are now in the middle of the battle for Alterac Valley. We don\'t have a lot of time, so let me give you the basics real quick.$B$BDrek\'thar is your main goal. He needs to die. But before you can get to him, you need to peel away the layers, as you would an onion.$B$BYou will want to hunt down the Captain, Galvangar they call him. He\'s a real tough lad, but he needs to fall. His presence bolsters the morale. When the Horde shall see his demise, our victory will surely be ripe for the taking.');
-- Frostwolf Herald
UPDATE creature_template SET NpcFlags=NpcFlags|1, GossipMenuId=4947 WHERE Entry=11998;
DELETE FROM gossip_menu WHERE entry=4947;
INSERT INTO gossip_menu (entry, text_id) VALUES
(4947, 8905);
DELETE FROM npc_text WHERE ID=8905;
INSERT INTO npc_text (ID, text0_0) VALUES
(8905, 'Soldier! You are now in the middle of the battle for Alterac Valley. We don\'t have a lot of time, so let me give you the basics real quick.$B$BVanndar is your main goal. He needs to die. But before you can get to him, you need to peel away the layers, as you would an onion.$B$BYou will want to hunt down the Captain, Balinda they call her. She\'s a real tough gal, but she needs to fall. Her presencebolsters the morale. When the Horde shall see her head upon a pike, the victory will be ours.');


-- *** Fix broken creature templates

-- Grimtooth
UPDATE creature_template SET DifficultyEntry1 = 22555, DifficultyEntry2 = 32000, DifficultyEntry3 = 37319 WHERE entry = 603;
UPDATE creature_template SET EquipmentTemplateId = 164 WHERE entry = 603;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22555;
UPDATE creature_template SET faction = 14, MinLevel = 80, MaxLevel = 80 WHERE entry = 32000;
UPDATE creature_template SET faction = 14, MinLevel = 80, MaxLevel = 80 WHERE entry = 37319;

-- Zora Guthrek
UPDATE creature_template SET DifficultyEntry1 = 22661, DifficultyEntry2 = 32764, DifficultyEntry3 = 37486 WHERE entry = 2225;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 2225;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22661;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|128 WHERE entry = 32764;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|128 WHERE entry = 37486;

-- Grelkor
UPDATE creature_template SET DifficultyEntry1 = 22650, DifficultyEntry2 = 31999, DifficultyEntry3 = 37318 WHERE entry = 3343;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 3343;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22650;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|4224 WHERE entry = 31999;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|4224 WHERE entry = 37318;

-- Rarck
UPDATE creature_template SET DifficultyEntry1 = 22654, DifficultyEntry2 = 32052, DifficultyEntry3 = 37373 WHERE entry = 3625;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 3625;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22654;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|384 WHERE entry = 32052;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|384 WHERE entry = 37373;

-- Brogus Thunderbrew
UPDATE creature_template SET DifficultyEntry1 = 22646, DifficultyEntry2 = 31926, DifficultyEntry3 = 37242 WHERE entry = 4255;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 4255;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22646;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|640 WHERE entry = 31926;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|640 WHERE entry = 37242;

-- Lana Thunderbrew
UPDATE creature_template SET DifficultyEntry1 = 22653, DifficultyEntry2 = 32029, DifficultyEntry3 = 37349 WHERE entry = 4257;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 4257;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22653;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|4224 WHERE entry = 32029;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|4224 WHERE entry = 37349;

-- Jonivera Farmountain
UPDATE creature_template SET DifficultyEntry1 = 22651, DifficultyEntry2 = 32024, DifficultyEntry3 = 37344 WHERE entry = 5134;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5134;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22651;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|384 WHERE entry = 32024;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|384 WHERE entry = 37344;

-- Svalbrad Farmountain
UPDATE creature_template SET DifficultyEntry1 = 22659, DifficultyEntry2 = 32106, DifficultyEntry3 = 37427 WHERE entry = 5135;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5135;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22659;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|128 WHERE entry = 32106;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|128 WHERE entry = 37427;

-- Kurdrum Barleybeard
UPDATE creature_template SET DifficultyEntry1 = 22652, DifficultyEntry2 = 32028, DifficultyEntry3 = 37348 WHERE entry = 5139;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5139;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22652;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|3200 WHERE entry = 32028;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3200 WHERE entry = 37348;

-- Yaelika Farclaw
UPDATE creature_template SET DifficultyEntry1 = 22660, DifficultyEntry2 = 32765, DifficultyEntry3 = 37485 WHERE entry = 10364;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 10364;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22660;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|3200 WHERE entry = 32765;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3200 WHERE entry = 37485;

-- Shrye Ragefist
UPDATE creature_template SET DifficultyEntry1 = 22655, DifficultyEntry2 = 32078, DifficultyEntry3 = 37399 WHERE entry = 10367;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 10367;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22655;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|640 WHERE entry = 32078;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|640 WHERE entry = 37399;

-- Frostwolf
UPDATE creature_template SET DifficultyEntry1 = 22737, DifficultyEntry2 = 31975, DifficultyEntry3 = 37294 WHERE entry = 10981;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 22737;
UPDATE creature_template SET faction = 38, MinLevel = 70, MaxLevel = 71 WHERE entry = 31975;
UPDATE creature_template SET faction = 38, MinLevel = 80, MaxLevel = 80 WHERE entry = 37294;

-- Whitewhisker Vermin
UPDATE creature_template SET DifficultyEntry1 = 22782, DifficultyEntry2 = 32143, DifficultyEntry3 = 37473 WHERE entry = 10982;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10982;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22782;
UPDATE creature_template SET faction = 26, MinLevel = 72, MaxLevel = 73 WHERE entry = 32143;
UPDATE creature_template SET faction = 26, MinLevel = 80, MaxLevel = 80 WHERE entry = 37473;

-- Snowblind Harpy
UPDATE creature_template SET DifficultyEntry1 = 22762, DifficultyEntry2 = 32082, DifficultyEntry3 = 37403 WHERE entry = 10986;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10986;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22762;
UPDATE creature_template SET faction = 514, MinLevel = 72, MaxLevel = 73 WHERE entry = 32082;
UPDATE creature_template SET faction = 514, MinLevel = 80, MaxLevel = 80 WHERE entry = 37403;

-- Irondeep Trogg
UPDATE creature_template SET DifficultyEntry1 = 22750, DifficultyEntry2 = 32021, DifficultyEntry3 = 37340 WHERE entry = 10987;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10987;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22750;
UPDATE creature_template SET faction = 59, MinLevel = 72, MaxLevel = 73 WHERE entry = 32021;
UPDATE creature_template SET faction = 59, MinLevel = 80, MaxLevel = 80 WHERE entry = 37340;

-- Alterac Ram
UPDATE creature_template SET DifficultyEntry1 = 22727, DifficultyEntry2 = 31921, DifficultyEntry3 = 37237 WHERE entry = 10990;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 10990;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22727;
UPDATE creature_template SET faction = 1274, MinLevel = 70, MaxLevel = 71 WHERE entry = 31921;
UPDATE creature_template SET faction = 1274, MinLevel = 80, MaxLevel = 80 WHERE entry = 37237;

-- Irondeep Shaman
UPDATE creature_template SET DifficultyEntry1 = 22747, DifficultyEntry2 = 32018, DifficultyEntry3 = 37337 WHERE entry = 11600;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 11600;
UPDATE creature_template SET MinLevel = 73, MaxLevel = 74 WHERE entry = 22747;
UPDATE creature_template SET faction = 59, MinLevel = 73, MaxLevel = 74 WHERE entry = 32018;
UPDATE creature_template SET faction = 59, MinLevel = 80, MaxLevel = 80 WHERE entry = 37337;

-- Whitewhisker Digger
UPDATE creature_template SET DifficultyEntry1 = 22778, DifficultyEntry2 = 32139, DifficultyEntry3 = 37469 WHERE entry = 11603;
UPDATE creature_template SET EquipmentTemplateId = 53, MinLevel = 52, MaxLevel = 53 WHERE entry = 11603;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22778;
UPDATE creature_template SET faction = 26, MinLevel = 72, MaxLevel = 73 WHERE entry = 32139;
UPDATE creature_template SET faction = 26, MinLevel = 80, MaxLevel = 80 WHERE entry = 37469;

-- Whitewhisker Geomancer
UPDATE creature_template SET DifficultyEntry1 = 22779, DifficultyEntry2 = 32140, DifficultyEntry3 = 37470 WHERE entry = 11604;
UPDATE creature_template SET EquipmentTemplateId = 19, MinLevel = 53, MaxLevel = 54 WHERE entry = 11604;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22779;
UPDATE creature_template SET faction = 26, MinLevel = 73, MaxLevel = 74 WHERE entry = 32140;
UPDATE creature_template SET faction = 26, MinLevel = 80, MaxLevel = 80 WHERE entry = 37470;

-- Morloch
UPDATE creature_template SET DifficultyEntry1 = 22685, DifficultyEntry2 = 32045, DifficultyEntry3 = 37366 WHERE entry = 11657;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 11657;
UPDATE creature_template SET faction = 59, MinLevel = 78, MaxLevel = 78 WHERE entry = 32045;
UPDATE creature_template SET faction = 59, MinLevel = 80, MaxLevel = 80 WHERE entry = 37366;

-- Snowblind Windcaller
UPDATE creature_template SET DifficultyEntry1 = 22763, DifficultyEntry2 = 32083, DifficultyEntry3 = 37404 WHERE entry = 11675;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 11675;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22763;
UPDATE creature_template SET faction = 514, MinLevel = 73, MaxLevel = 74 WHERE entry = 32083;
UPDATE creature_template SET faction = 514, MinLevel = 80, MaxLevel = 80 WHERE entry = 37404;

-- Taskmaster Snivvle
UPDATE creature_template SET DifficultyEntry1 = 22694, DifficultyEntry2 = 32110, DifficultyEntry3 = 37431 WHERE entry = 11677;
UPDATE creature_template SET EquipmentTemplateId = 462, MinLevel = 58, MaxLevel = 58 WHERE entry = 11677;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22694;
UPDATE creature_template SET faction = 26, MinLevel = 78, MaxLevel = 78 WHERE entry = 32110;
UPDATE creature_template SET faction = 26, MinLevel = 80, MaxLevel = 80 WHERE entry = 37431;

-- Snowblind Ambusher
UPDATE creature_template SET DifficultyEntry1 = 22761, DifficultyEntry2 = 32081, DifficultyEntry3 = 37402 WHERE entry = 11678;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 11678;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22761;
UPDATE creature_template SET faction = 514, MinLevel = 72, MaxLevel = 73 WHERE entry = 32081;
UPDATE creature_template SET faction = 514, MinLevel = 80, MaxLevel = 80 WHERE entry = 37402;

-- Wildpaw Brute
UPDATE creature_template SET DifficultyEntry1 = 22784, DifficultyEntry2 = 32145, DifficultyEntry3 = 37475 WHERE entry = 11839;
UPDATE creature_template SET MinLevel = 56, MaxLevel = 57 WHERE entry = 11839;
UPDATE creature_template SET MinLevel = 66, MaxLevel = 67 WHERE entry = 22784;
UPDATE creature_template SET faction = 39, MinLevel = 76, MaxLevel = 77 WHERE entry = 32145;
UPDATE creature_template SET faction = 39, MinLevel = 80, MaxLevel = 80 WHERE entry = 37475;

-- Dreakthar
UPDATE creature_template SET DifficultyEntry1 = 22641, DifficultyEntry2 = 31819, DifficultyEntry3 = 37283 WHERE entry = 11946;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62 WHERE entry = 11946;
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72 WHERE entry = 22641;
UPDATE creature_template SET faction = 1214, MinLevel = 82, MaxLevel = 82 WHERE entry = 31819;
UPDATE creature_template SET faction = 1214, MinLevel = 83, MaxLevel = 83, DamageMultiplier = 63.4, NpcFlags=NpcFlags|1 WHERE entry = 37283;

-- Captain Galvangar
UPDATE creature_template SET DifficultyEntry1 = 22606, DifficultyEntry2 = 31055, DifficultyEntry3 = 37244 WHERE entry = 11947;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 11947;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22606;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81 WHERE entry = 31055;
UPDATE creature_template SET faction = 1214, MinLevel = 83, MaxLevel = 83, DamageMultiplier = 38 WHERE entry = 37244;

-- Vanndar Stormpike
UPDATE creature_template SET DifficultyEntry1 = 22644, DifficultyEntry2 = 31818, DifficultyEntry3 = 37444 WHERE entry = 11948;
UPDATE creature_template SET MinLevel = 73, MaxLevel = 73 WHERE entry = 22644;
UPDATE creature_template SET faction = 1216, MinLevel = 83, MaxLevel = 83 WHERE entry = 31818;
UPDATE creature_template SET faction = 1216, MinLevel = 83, MaxLevel = 83, DamageMultiplier = 62, NpcFlags=NpcFlags|1 WHERE entry = 37444;

-- Captain Balinda Stonehearth
UPDATE creature_template SET DifficultyEntry1 = 22605, DifficultyEntry2 = 31820, DifficultyEntry3 = 37243 WHERE entry = 11949;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 11949;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22605;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81 WHERE entry = 31820;
UPDATE creature_template SET faction = 1216, MinLevel = 83, MaxLevel = 83, DamageMultiplier = 40.9 WHERE entry = 37243;

-- Stormpike Herald
UPDATE creature_template SET DifficultyEntry1 = 22574, DifficultyEntry2 = 32095, DifficultyEntry3 = 37416 WHERE entry = 11997;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 11997;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22574;
UPDATE creature_template SET faction = 1334, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 32095;
UPDATE creature_template SET faction = 1334, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 37416;

-- Frostwolf Herald
UPDATE creature_template SET DifficultyEntry1 = 22549, DifficultyEntry2 = 31982, DifficultyEntry3 = 37301 WHERE entry = 11998;
UPDATE creature_template SET EquipmentTemplateId = 52514, faction = 1335, MinLevel = 60, MaxLevel = 60 WHERE entry = 11998;
UPDATE creature_template SET faction = 1335, MinLevel = 70, MaxLevel = 70, NpcFlags=NpcFlags|1 WHERE entry = 22549;
UPDATE creature_template SET faction = 1335, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|1 WHERE entry = 31982;
UPDATE creature_template SET faction = 1335, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|1 WHERE entry = 37301;
DELETE FROM creature_equip_template WHERE entry=52514;
INSERT INTO creature_equip_template VALUES
(52514, 1906,0,2550);

-- Stormpike Defender
UPDATE creature_template SET DifficultyEntry1 = 22690, DifficultyEntry2 = 32091, DifficultyEntry3 = 37412 WHERE entry = 12050;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37412;

-- Frostwolf Legionnaire
UPDATE creature_template SET DifficultyEntry1 = 22665, DifficultyEntry2 = 31983, DifficultyEntry3 = 37302 WHERE entry = 12051;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37302;

-- Frostwolf Guardian
UPDATE creature_template SET DifficultyEntry1 = 22674, DifficultyEntry2 = 31981, DifficultyEntry3 = 37300 WHERE entry = 12053;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37300;

-- Stormpike Quartermaster
UPDATE creature_template SET DifficultyEntry1 = 22658, DifficultyEntry2 = 32099, DifficultyEntry3 = 37420 WHERE entry = 12096;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 12096;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22658;
UPDATE creature_template SET faction = 1217, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|3715 WHERE entry = 32099;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3715 WHERE entry = 37420;

-- Frostwolf Quartermaster
UPDATE creature_template SET DifficultyEntry1 = 22648, DifficultyEntry2 = 31986, DifficultyEntry3 = 37305 WHERE entry = 12097;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 12097;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22648;
UPDATE creature_template SET faction = 1215, MinLevel = 75, MaxLevel = 75, NpcFlags=NpcFlags|3715 WHERE entry = 31986;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3715 WHERE entry = 37305;

-- Drakan
UPDATE creature_template SET DifficultyEntry1 = 22540, DifficultyEntry2 = 31964, DifficultyEntry3 = 37282 WHERE entry = 12121;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 7.5 WHERE entry = 37282;

-- Duros
UPDATE creature_template SET DifficultyEntry1 = 22546, DifficultyEntry2 = 31970, DifficultyEntry3 = 37289 WHERE entry = 12122;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 7.5 WHERE entry = 37289;

-- Stormpike Guardsman
UPDATE creature_template SET DifficultyEntry1 = 22666, DifficultyEntry2 = 32094, DifficultyEntry3 = 37415 WHERE entry = 12127;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37415;

-- Umi Thorson
UPDATE creature_template SET DifficultyEntry1 = 22696, DifficultyEntry2 = 32119, DifficultyEntry3 = 37442 WHERE entry = 13078;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13078;
UPDATE creature_template SET faction = 1216, MinLevel = 78, MaxLevel = 78 WHERE entry = 32119;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37442;

-- Keetar
UPDATE creature_template SET DifficultyEntry1 = 22683, DifficultyEntry2 = 32026, DifficultyEntry3 = 37346 WHERE entry = 13079;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13079;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22683;
UPDATE creature_template SET faction = 1214, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|2 WHERE entry = 32026;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 37346;

-- Irondeep Guard
UPDATE creature_template SET DifficultyEntry1 = 22743, DifficultyEntry2 = 32014, DifficultyEntry3 = 37333 WHERE entry = 13080;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13080;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22743;
UPDATE creature_template SET faction = 1216, MinLevel = 74, MaxLevel = 75 WHERE entry = 32014;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37333;

-- Aggi Rumblestomp
UPDATE creature_template SET DifficultyEntry1 = 22670, DifficultyEntry2 = 31918, DifficultyEntry3 = 37234 WHERE entry = 13086;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13086;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22670;
UPDATE creature_template SET faction = 1216, MinLevel = 78, MaxLevel = 78 WHERE entry = 31918;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37234;

-- Masha Swiftcut
UPDATE creature_template SET DifficultyEntry1 = 22684, DifficultyEntry2 = 32043, DifficultyEntry3 = 37364 WHERE entry = 13088;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13088;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22684;
UPDATE creature_template SET faction = 1214, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|2 WHERE entry = 32043;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 37364;

-- Coldmine Explorer
UPDATE creature_template SET DifficultyEntry1 = 22729, DifficultyEntry2 = 31946, DifficultyEntry3 = 37264 WHERE entry = 13096;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13096;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22729;
UPDATE creature_template SET faction = 1216, MinLevel = 74, MaxLevel = 75 WHERE entry = 31946;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37264;

-- Coldmine Surveyor
UPDATE creature_template SET DifficultyEntry1 = 22734, DifficultyEntry2 = 31951, DifficultyEntry3 = 37269 WHERE entry = 13097;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13097;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22734;
UPDATE creature_template SET faction = 1214, MinLevel = 74, MaxLevel = 75, NpcFlags=NpcFlags|2 WHERE entry = 31951;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 37269;

-- Irondeep Explorer
UPDATE creature_template SET DifficultyEntry1 = 22741, DifficultyEntry2 = 32012, DifficultyEntry3 = 37331 WHERE entry = 13099;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13099;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22741;
UPDATE creature_template SET faction = 1214, MinLevel = 74, MaxLevel = 75 WHERE entry = 32012;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37331;

-- Alliance Spirit Guide
UPDATE creature_template SET DifficultyEntry1 = 22526, DifficultyEntry2 = 31920, DifficultyEntry3 = 37236 WHERE entry = 13116;
UPDATE creature_template SET faction = 84, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|32768 WHERE entry = 31920;
UPDATE creature_template SET faction = 84, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|32768 WHERE entry = 37236;

-- Horde Spirit Guide
UPDATE creature_template SET DifficultyEntry1 = 22558, DifficultyEntry2 = 32004, DifficultyEntry3 = 37323 WHERE entry = 13117;
UPDATE creature_template SET faction = 83, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|32768 WHERE entry = 32004;
UPDATE creature_template SET faction = 83, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|32768 WHERE entry = 37323;

-- Smith Regzar
UPDATE creature_template SET DifficultyEntry1 = 22571, DifficultyEntry2 = 32080, DifficultyEntry3 = 37401 WHERE entry = 13176;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13176;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22571;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 32080;
UPDATE creature_template SET faction = 1215, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3 WHERE entry = 37401;

-- Wing Commander Guse
UPDATE creature_template SET DifficultyEntry1 = 22721, DifficultyEntry2 = 31828, DifficultyEntry3 = 37479 WHERE entry = 13179;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13179;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22721;
UPDATE creature_template SET faction = 1215, MinLevel = 79, MaxLevel = 79, NpcFlags=NpcFlags|3 WHERE entry = 31828;
UPDATE creature_template SET faction = 1215, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3 WHERE entry = 37479;

-- Wing Commander Jeztor
UPDATE creature_template SET DifficultyEntry1 = 22697, DifficultyEntry2 = 31826, DifficultyEntry3 = 37481 WHERE entry = 13180;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13180;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22697;
UPDATE creature_template SET faction = 1215, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|3 WHERE entry = 31826;
UPDATE creature_template SET faction = 1215, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3 WHERE entry = 37481;

-- Gaelden Hammersmith
UPDATE creature_template SET DifficultyEntry1 = 22680, DifficultyEntry2 = 31996, DifficultyEntry3 = 37315 WHERE entry = 13216;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13216;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22680;
UPDATE creature_template SET faction = 1217, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|4224 WHERE entry = 31996;
UPDATE creature_template SET faction = 1217, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|4224 WHERE entry = 37315;

-- Grunnda Wolfheart
UPDATE creature_template SET DifficultyEntry1 = 22681, DifficultyEntry2 = 32001, DifficultyEntry3 = 37320 WHERE entry = 13218;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13218;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22681;
UPDATE creature_template SET faction = 1215, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|4224 WHERE entry = 32001;
UPDATE creature_template SET faction = 1215, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|4224 WHERE entry = 37320;

-- Primalist Thurloga
UPDATE creature_template SET DifficultyEntry1 = 22568, DifficultyEntry2 = 32050, DifficultyEntry3 = 37371 WHERE entry = 13236;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13236;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22568;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 32050;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3 WHERE entry = 37371;

-- Murgot Deepforge
UPDATE creature_template SET DifficultyEntry1 = 22567, DifficultyEntry2 = 32048, DifficultyEntry3 = 37369 WHERE entry = 13257;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13257;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22567;
UPDATE creature_template SET faction = 1216, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|3 WHERE entry = 32048;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3 WHERE entry = 37369;

-- Frostwolf Shaman
UPDATE creature_template SET DifficultyEntry1 = 22678, DifficultyEntry2 = 31989, DifficultyEntry3 = 37308 WHERE entry = 13284;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13284;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22678;
UPDATE creature_template SET faction = 1214, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|1 WHERE entry = 31989;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|1 WHERE entry = 37308;

-- Coldmine Peon
UPDATE creature_template SET DifficultyEntry1 = 22733, DifficultyEntry2 = 31950, DifficultyEntry3 = 37268 WHERE entry = 13316;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13316;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22733;
UPDATE creature_template SET faction = 1214, MinLevel = 72, MaxLevel = 73, NpcFlags=NpcFlags|2 WHERE entry = 31950;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 37268;

-- Coldmine Miner
UPDATE creature_template SET DifficultyEntry1 = 22732, DifficultyEntry2 = 31949, DifficultyEntry3 = 37267 WHERE entry = 13317;
UPDATE creature_template SET EquipmentTemplateId = 53, MinLevel = 52, MaxLevel = 53 WHERE entry = 13317;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22732;
UPDATE creature_template SET faction = 1216, MinLevel = 72, MaxLevel = 73 WHERE entry = 31949;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37267;

-- Seasoned Defender
UPDATE creature_template SET DifficultyEntry1 = 22714, DifficultyEntry2 = 32062, DifficultyEntry3 = 37383 WHERE entry = 13326;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13326;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22714;
UPDATE creature_template SET faction = 1216, MinLevel = 79, MaxLevel = 79 WHERE entry = 32062;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37383;

-- Seasoned Guardian
UPDATE creature_template SET DifficultyEntry1 = 22715, DifficultyEntry2 = 32063, DifficultyEntry3 = 37384 WHERE entry = 13328;
UPDATE creature_template SET faction = 1214, MinLevel = 59, MaxLevel = 59 WHERE entry = 13328;
UPDATE creature_template SET faction = 1214, MinLevel = 69, MaxLevel = 69 WHERE entry = 22715;
UPDATE creature_template SET faction = 1214, MinLevel = 79, MaxLevel = 79 WHERE entry = 32063;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37384;

-- Veteran Defender
UPDATE creature_template SET DifficultyEntry1 = 22588, DifficultyEntry2 = 32125, DifficultyEntry3 = 37450 WHERE entry = 13331;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13331;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22588;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 32125;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37450;

-- Veteran Guardian
UPDATE creature_template SET DifficultyEntry1 = 22589, DifficultyEntry2 = 32126, DifficultyEntry3 = 37451 WHERE entry = 13332;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13332;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22589;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 32126;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37451;

-- Stormpike Bowman
UPDATE creature_template SET DifficultyEntry1 = 22766, DifficultyEntry2 = 32089, DifficultyEntry3 = 37410 WHERE entry = 13358;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 60 WHERE entry = 13358;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 70 WHERE entry = 22766;
UPDATE creature_template SET faction = 1216, MinLevel = 79, MaxLevel = 80 WHERE entry = 32089;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37410;

-- Frostwolf Bowman
UPDATE creature_template SET DifficultyEntry1 = 22739, DifficultyEntry2 = 31978, DifficultyEntry3 = 37297 WHERE entry = 13359;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 60 WHERE entry = 13359;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 70 WHERE entry = 22739;
UPDATE creature_template SET faction = 1214, MinLevel = 79, MaxLevel = 80 WHERE entry = 31978;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 37297;

-- Irondeep Miner
UPDATE creature_template SET DifficultyEntry1 = 22744, DifficultyEntry2 = 32015, DifficultyEntry3 = 37334 WHERE entry = 13396;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13396;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22744;
UPDATE creature_template SET faction = 1216, MinLevel = 72, MaxLevel = 73 WHERE entry = 32015;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80 WHERE entry = 37334;

-- Irondeep Peon
UPDATE creature_template SET DifficultyEntry1 = 22745, DifficultyEntry2 = 32016, DifficultyEntry3 = 37335 WHERE entry = 13397;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13397;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22745;
UPDATE creature_template SET faction = 1214, MinLevel = 72, MaxLevel = 73, NpcFlags=NpcFlags|2 WHERE entry = 32016;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 37335;

-- Champion Guardian
UPDATE creature_template SET DifficultyEntry1 = 22609, DifficultyEntry2 = 31933, DifficultyEntry3 = 37251 WHERE entry = 13421;
UPDATE creature_template SET faction = 1214, MinLevel = 61, MaxLevel = 61 WHERE entry = 13421;
UPDATE creature_template SET faction = 1214, MinLevel = 71, MaxLevel = 71 WHERE entry = 22609;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81 WHERE entry = 31933;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, DamageMultiplier = 1.4 WHERE entry = 37251;

-- Champion Defender
UPDATE creature_template SET DifficultyEntry1 = 22608, DifficultyEntry2 = 31932, DifficultyEntry3 = 37250 WHERE entry = 13422;
UPDATE creature_template SET faction = 1216, MinLevel = 61, MaxLevel = 61 WHERE entry = 13422;
UPDATE creature_template SET faction = 1216, MinLevel = 71, MaxLevel = 71 WHERE entry = 22608;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81 WHERE entry = 31932;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, DamageMultiplier = 1.4 WHERE entry = 37250;

-- Wing Commander Ichman
UPDATE creature_template SET DifficultyEntry1 = 22597, DifficultyEntry2 = 32766, DifficultyEntry3 = 37480 WHERE entry = 13437;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13437;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22597;
UPDATE creature_template SET faction = 1217, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 32766;
UPDATE creature_template SET faction = 1217, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3, DamageMultiplier = 6.9 WHERE entry = 37480;

-- Wing Commander Slidore
UPDATE creature_template SET DifficultyEntry1 = 22698, DifficultyEntry2 = 31824, DifficultyEntry3 = 37483 WHERE entry = 13438;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13438;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22698;
UPDATE creature_template SET faction = 1217, MinLevel = 78, MaxLevel = 78, NpcFlags=NpcFlags|3  WHERE entry = 31824;
UPDATE creature_template SET faction = 1217, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3, DamageMultiplier = 4.8 WHERE entry = 37483;

-- Wing Commander Vipore
UPDATE creature_template SET DifficultyEntry1 = 22722, DifficultyEntry2 = 31823, DifficultyEntry3 = 37484 WHERE entry = 13439;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13439;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22722;
UPDATE creature_template SET faction = 1217, MinLevel = 79, MaxLevel = 79, NpcFlags=NpcFlags|3 WHERE entry = 31823;
UPDATE creature_template SET faction = 1217, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3, DamageMultiplier = 4.5 WHERE entry = 37484;

-- Frostwolf Wolf Rider Commander
UPDATE creature_template SET DifficultyEntry1 = 22552, DifficultyEntry2 = 31994, DifficultyEntry3 = 37313 WHERE entry = 13441;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13441;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22552;
UPDATE creature_template SET faction = 1214, MinLevel = 79, MaxLevel = 79, NpcFlags=NpcFlags|2 WHERE entry = 31994;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|2, DamageMultiplier = 7.4 WHERE entry = 37313;

-- Arch Druid Renferal
UPDATE creature_template SET DifficultyEntry1 = 22527, DifficultyEntry2 = 31923, DifficultyEntry3 = 37239 WHERE entry = 13442;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13442;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22527;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 31923;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3, DamageMultiplier = 8.2, UnitClass = 2 WHERE entry = 37239;

-- Druid of the Grove
UPDATE creature_template SET DifficultyEntry1 = 22541, DifficultyEntry2 = 31965, DifficultyEntry3 = 37284 WHERE entry = 13443;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13443;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22541;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|1 WHERE entry = 31965;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|1, DamageMultiplier = 7.8 WHERE entry = 37284;

-- Corporal Noreg Stormpike
UPDATE creature_template SET DifficultyEntry1 = 22735, DifficultyEntry2 = 31960, DifficultyEntry3 = 37278 WHERE entry = 13447;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 59 WHERE entry = 13447;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 69 WHERE entry = 22735;
UPDATE creature_template SET faction = 1216, MinLevel = 78, MaxLevel = 79, NpcFlags=NpcFlags|3 WHERE entry = 31960;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3, DamageMultiplier = 4.8 WHERE entry = 37278;

-- Sergeant Yazra Bloodsnarl
UPDATE creature_template SET DifficultyEntry1 = 22760, DifficultyEntry2 = 32077, DifficultyEntry3 = 37398 WHERE entry = 13448;
UPDATE creature_template SET MinLevel = 56, MaxLevel = 57 WHERE entry = 13448;
UPDATE creature_template SET MinLevel = 66, MaxLevel = 67 WHERE entry = 22760;
UPDATE creature_template SET faction = 1214, MinLevel = 76, MaxLevel = 77, NpcFlags=NpcFlags|3 WHERE entry = 32077;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 37398;

-- Stormpike Ram Rider Commander
UPDATE creature_template SET DifficultyEntry1 = 22575, DifficultyEntry2 = 32101, DifficultyEntry3 = 37422 WHERE entry = 13577;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13577;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22575;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|3 WHERE entry = 32101;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|3, DamageMultiplier = 8.2 WHERE entry = 37422;

-- Frostwolf Stable Master
UPDATE creature_template SET DifficultyEntry1 = 22551, DifficultyEntry2 = 31991, DifficultyEntry3 = 37310 WHERE entry = 13616;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13616;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22551;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|4194306 WHERE entry = 31991;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|4194306, DamageMultiplier = 7.9 WHERE entry = 37310;

-- Stormpike Stable Master
UPDATE creature_template SET DifficultyEntry1 = 22577, DifficultyEntry2 = 32105, DifficultyEntry3 = 37426 WHERE entry = 13617;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13617;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22577;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|4194307 WHERE entry = 32105;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|4194307, DamageMultiplier = 7.3 WHERE entry = 37426;

-- Mountaineer Boombellow
UPDATE creature_template SET DifficultyEntry1 = 22724, DifficultyEntry2 = 32046, DifficultyEntry3 = 37367 WHERE entry = 13797;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13797;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22724;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 32046;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|2, DamageMultiplier = 3.2 WHERE entry = 37367;

-- Jotek
UPDATE creature_template SET DifficultyEntry1 = 22723, DifficultyEntry2 = 32025, DifficultyEntry3 = 37345 WHERE entry = 13798;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 13798;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 71 WHERE entry = 22723;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 81, NpcFlags=NpcFlags|2 WHERE entry = 32025;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|2, DamageMultiplier = 7.7 WHERE entry = 37345;

-- Prospector Stonehewer
UPDATE creature_template SET DifficultyEntry1 = 22630, DifficultyEntry2 = 32051, DifficultyEntry3 = 37372 WHERE entry = 13816;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 13816;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22630;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, NpcFlags=NpcFlags|2 WHERE entry = 32051;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2, DamageMultiplier = 1.1 WHERE entry = 37372;

-- Najak Hexxen
UPDATE creature_template SET DifficultyEntry1 = 22712, DifficultyEntry2 = 32049, DifficultyEntry3 = 37370 WHERE entry = 14185;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 14185;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22712;
UPDATE creature_template SET faction = 877, MinLevel = 79, MaxLevel = 79, NpcFlags=NpcFlags|2 WHERE entry = 32049;
UPDATE creature_template SET faction = 877, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2, DamageMultiplier = 1.1 WHERE entry = 37370;

-- Ravak Grimtotem
UPDATE creature_template SET DifficultyEntry1 = 22569, DifficultyEntry2 = 32053, DifficultyEntry3 = 37374 WHERE entry = 14186;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14186;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22569;
UPDATE creature_template SET faction = 105, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 32053;
UPDATE creature_template SET faction = 105, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2, DamageMultiplier = 1.2 WHERE entry = 37374;

-- Athramanis
UPDATE creature_template SET DifficultyEntry1 = 22528, DifficultyEntry2 = 31924, DifficultyEntry3 = 37240 WHERE entry = 14187;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14187;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22528;
UPDATE creature_template SET faction = 1594, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2 WHERE entry = 31924;
UPDATE creature_template SET faction = 1594, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2, DamageMultiplier = 1.4 WHERE entry = 37240;

-- Dirk Swindle
UPDATE creature_template SET DifficultyEntry1 = 22699, DifficultyEntry2 = 31963, DifficultyEntry3 = 37281 WHERE entry = 14188;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 14188;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22699;
UPDATE creature_template SET faction = 57, MinLevel = 79, MaxLevel = 79, NpcFlags=NpcFlags|2 WHERE entry = 31963;
UPDATE creature_template SET faction = 57, MinLevel = 80, MaxLevel = 80, NpcFlags=NpcFlags|2, DamageMultiplier = 1.1 WHERE entry = 37281;

-- Frostwolf Bloodhound
UPDATE creature_template SET DifficultyEntry1 = 22738, DifficultyEntry2 = 31977, DifficultyEntry3 = 37296 WHERE entry = 14282;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 14282;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22738;
UPDATE creature_template SET faction = 1214, MinLevel = 73, MaxLevel = 74 WHERE entry = 31977;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80, DamageMultiplier = 0.9 WHERE entry = 37296;

-- Stormpike Owl
UPDATE creature_template SET DifficultyEntry1 = 22767, DifficultyEntry2 = 32098, DifficultyEntry3 = 37419 WHERE entry = 14283;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 14283;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22767;
UPDATE creature_template SET faction = 1216, MinLevel = 73, MaxLevel = 74 WHERE entry = 32098;
UPDATE creature_template SET faction = 1216, MinLevel = 80, MaxLevel = 80, DamageMultiplier = 0.9 WHERE entry = 37419;

-- Stormpike Battleguard
UPDATE creature_template SET DifficultyEntry1 = 22633, DifficultyEntry2 = 32088, DifficultyEntry3 = 37409 WHERE entry = 14284;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 14284;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22633;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81 WHERE entry = 32088;
UPDATE creature_template SET faction = 1216, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 7.2 WHERE entry = 37409;

-- Dun Baldar North Marshal
UPDATE creature_template SET DifficultyEntry1 = 22542, DifficultyEntry2 = 31966, DifficultyEntry3 = 37285 WHERE entry = 14762;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14762;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22542;
UPDATE creature_template SET faction = 1534, MinLevel = 80, MaxLevel = 80 WHERE entry = 31966;
UPDATE creature_template SET faction = 1534, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 13.8 WHERE entry = 37285;

-- Dun Baldar South Marshal
UPDATE creature_template SET DifficultyEntry1 = 22544, DifficultyEntry2 = 31968, DifficultyEntry3 = 37287 WHERE entry = 14763;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14763;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22544;
UPDATE creature_template SET faction = 1534, MinLevel = 80, MaxLevel = 80 WHERE entry = 31968;
UPDATE creature_template SET faction = 1534, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 13.8 WHERE entry = 37287;

-- Icewing Marshal
UPDATE creature_template SET DifficultyEntry1 = 22561, DifficultyEntry2 = 32008, DifficultyEntry3 = 37327 WHERE entry = 14764;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14764;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22561;
UPDATE creature_template SET faction = 1534, MinLevel = 80, MaxLevel = 80 WHERE entry = 32008;
UPDATE creature_template SET faction = 1534, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 13.8 WHERE entry = 37327;

-- Stonehearth Marshal
UPDATE creature_template SET DifficultyEntry1 = 22572, DifficultyEntry2 = 32086, DifficultyEntry3 = 37407 WHERE entry = 14765;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14765;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22572;
UPDATE creature_template SET faction = 1534, MinLevel = 80, MaxLevel = 80 WHERE entry = 32086;
UPDATE creature_template SET faction = 1534, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 13.8 WHERE entry = 37407;

-- East Frostwolf Warmaster
UPDATE creature_template SET DifficultyEntry1 = 22548, DifficultyEntry2 = 31972, DifficultyEntry3 = 37291 WHERE entry = 14772;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14772;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22548;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 31972;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 51.4 WHERE entry = 37291;

-- Iceblood Warmaster
UPDATE creature_template SET DifficultyEntry1 = 22560, DifficultyEntry2 = 32007, DifficultyEntry3 = 37326 WHERE entry = 14773;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14773;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22560;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 32007;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 51.4 WHERE entry = 37326;

-- Tower Point Warmaster
UPDATE creature_template SET DifficultyEntry1 = 22580, DifficultyEntry2 = 31909, DifficultyEntry3 = 37435 WHERE entry = 14776;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14776;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22580;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 31909;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 51.4 WHERE entry = 37435;

-- West Frostwolf Warmaster
UPDATE creature_template SET DifficultyEntry1 = 22596, DifficultyEntry2 = 31829, DifficultyEntry3 = 37468 WHERE entry = 14777;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14777;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22596;
UPDATE creature_template SET faction = 1214, MinLevel = 80, MaxLevel = 80 WHERE entry = 31829;
UPDATE creature_template SET faction = 1214, MinLevel = 81, MaxLevel = 81, DamageMultiplier = 51.4 WHERE entry = 37468;

-- Missing creatures
SET @CGUID := 3000000;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID + 6;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CGUID+0, 13180, 30, 15, 1, 0, 0, 367.083, -516.744, 72.016, 1.66462, 430, 430, 0, 0, 0, 0, 0, 0),
(@CGUID+1, 13437, 30, 15, 1, 0, 0, -1297.57, -264.627, 114.151, 3.77232, 430, 430, 0, 0, 0, 0, 0, 0),
(@CGUID+2, 13439, 30, 15, 1, 0, 0, -1218.89, -350.261, 57.6939, 4.75778, 430, 430, 0, 0, 0, 0, 0, 0),
(@CGUID+3, 13441, 30, 15, 1, 0, 0, -1252.27, -636.148, 52.5507, 0.014754, 6300, 6300, 0, 0, 0, 0, 0, 0),
(@CGUID+4, 13448, 30, 15, 1, 0, 0, -1212.11, -261.774, 73.456, 5.79449, 430, 430, 0, 0, 0, 0, 0, 0),
(@CGUID+5, 13616, 30, 15, 1, 0, 0, -1243.74, -640.959, 52.5777, 2.27432, 490, 490, 0, 0, 0, 0, 0, 0),
(@CGUID+6, 11998, 30, 15, 1, 0, 0, -1503.121, -705.124, 47.3355, 5.8865, 120, 120, 0, 0, 0, 0, 0, 0);

-- fix orientations:
UPDATE creature SET orientation=6.00393 WHERE guid=150145;
-- remove herald duplication
DELETE FROM creature WHERE guid IN (150155);
DELETE FROM creature_battleground WHERE guid IN (150155);

