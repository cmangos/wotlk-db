-- Update for some game_events to keep sync with other DBs

-- Remove old guids & assign new range
DELETE FROM `game_event` WHERE `entry` BETWEEN 1024 AND 1168;
DELETE FROM `game_event_quest` WHERE `event` BETWEEN 1024 AND 1168;
DELETE FROM `game_event_creature` WHERE `event` BETWEEN 1024 AND 1168;

-- Add event for bells
-- Source: https://github.com/cmangos/tbc-db/commit/ed1886dbd5ea084dbcdf061578fc58ce04919cc5
DELETE FROM `game_event` WHERE `entry`=1024;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `linkedTo`, `EventGroup`, `description`) VALUES
(1024, '2010-01-01 01:00:00', '2025-01-01 01:00:00', 60, 1, 0, 0, 0, 'Hourly Bells');

-- 1025 - 1028 Reserved for: Random Daily PVP - Call to Arms: Quests
-- Removed in Patch: 3.3.3

-- Random Weekly Raid
DELETE FROM `game_event` WHERE `entry` BETWEEN 1100 AND 1111;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1100,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Anub''Rekhan Must Die!'),
(1101,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Flame Leviathan Must Die!'),
(1102,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Ignis the Furnace Master Must Die!'),
(1103,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Instructor Razuvious Must Die!'),
(1104,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Lord Jaraxxus Must Die!'),
(1105,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Lord Marrowgar Must Die!'),
(1106,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Malygos Must Die!'),
(1107,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Noth the Plaguebringer Must Die!'),
(1108,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Patchwerk Must Die!'),
(1109,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Razorscale Must Die!'),
(1110,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - Sartharion Must Die!'),
(1111,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,4,'Random Weekly Raid - XT-002 Deconstructor Must Die!');
DELETE FROM `game_event_quest` WHERE `event` BETWEEN 1100 AND 1111;
INSERT INTO `game_event_quest` (event,quest) VALUES
(1100,24580),
(1101,24585),
(1102,24587),
(1103,24582),
(1104,24589),
(1105,24590),
(1106,24584),
(1107,24581),
(1108,24583),
(1109,24586),
(1110,24579),
(1111,24588);
DELETE FROM `game_event_creature` WHERE `event` BETWEEN 1100 AND 1111;
INSERT INTO `game_event_creature` (`guid`,`event`) VALUES
(136996,1110),
(136997,1100),
(136998,1107),
(136999,1103),
(137000,1108),
(137001,1106),
(137002,1101),
(137003,1109),
(137004,1102),
(137005,1104),
(137006,1105),
(137007,1105);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1112 AND 1114;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1112,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,5,'Love is in the Air - Random Daily - A Perfect Puff of Perfume'),
(1113,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,5,'Love is in the Air - Random Daily - A Cloudlet of Classy Cologne'),
(1114,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,5,'Love is in the Air - Random Daily - Bonbon Blitz');
DELETE FROM `game_event_quest` WHERE `quest` in (24629,24635,24636);
DELETE FROM game_event_quest WHERE event BETWEEN 1112 AND 1114;
INSERT INTO game_event_quest(event,quest) VALUES
(1112,24629), (1113,24635), (1114,24636);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1115 AND 1118;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1115,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Tournament - Random Daily - Drottinn Hrothgar'),
(1116,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Tournament - Random Daily - Mistcaller Yngvar'),
(1117,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Tournament - Random Daily - Ornolf The Scarred'),
(1118,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Tournament - Random Daily - Deathspeaker Kharos');
DELETE FROM `game_event_quest` WHERE `quest` in (14101,14102,14104,14105);
DELETE FROM game_event_quest WHERE event BETWEEN 1115 AND 1118;
INSERT INTO game_event_quest(event,quest) VALUES
(1115,14101), (1116,14102), (1117,14104), (1118,14105);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1119 AND 1122;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1119,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 1 - Random Daily - Hungry, Hungry Hatchling'),
(1120,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 1 - Random Daily - Gorishi Grub'),
(1121,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 1 - Random Daily - Poached, Scrambled, Or Raw?'),
(1122,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 1 - Random Daily - Searing Roc Feathers');
DELETE FROM `game_event_quest` WHERE `quest` in (13889,13903,13904,13905);
DELETE FROM game_event_quest WHERE event BETWEEN 1119 AND 1122;
INSERT INTO game_event_quest(event,quest) VALUES
(1119,13889), (1120,13903), (1121,13904), (1122,13905);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1123 AND 1126;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1123,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Un''Goro Crater 2 - Random Daily - Hungry, Hungry Hatchling'),
(1124,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Un''Goro Crater 2 - Random Daily - Gorishi Grub'),
(1125,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Un''Goro Crater 2 - Random Daily - Poached, Scrambled, Or Raw?'),
(1126,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Un''Goro Crater 2 - Random Daily - Searing Roc Feathers');
DELETE FROM `game_event_quest` WHERE `quest` in (13915,13917,13916,13914);
DELETE FROM game_event_quest WHERE event BETWEEN 1123 AND 1126;
INSERT INTO game_event_quest(event,quest) VALUES
(1123,13915), (1124,13917), (1125,13916), (1126,13914);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1127 AND 1130;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1127,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Cooking - Random Daily - Revenge is Tasty'),
(1128,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Cooking - Random Daily - Super Hot Stew'),
(1129,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Cooking - Random Daily - Manalicious'),
(1130,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Cooking - Random Daily - Soup for the Soul');
DELETE FROM `game_event_quest` WHERE `quest` in (11377,11379,11380,11381);
DELETE FROM game_event_quest WHERE event BETWEEN 1127 AND 1130;
INSERT INTO game_event_quest(event,quest) VALUES
(1127,11377), (1128,11379), (1129,11380), (1130,11381);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1131 AND 1135;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1131,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Fishing - Random Daily - Crocolisks in the City'),
(1132,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Fishing - Random Daily - Bait Bandits'),
(1133,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Fishing - Random Daily - The One That Got Away'),
(1134,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Fishing - Random Daily - Shrimpin Aint Easy'),
(1135,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Fishing - Random Daily - Felblood Fillet');
DELETE FROM `game_event_quest` WHERE `quest` in (11665,11666,11667,11668,11669);
DELETE FROM game_event_quest WHERE event BETWEEN 1131 AND 1135;
INSERT INTO game_event_quest(event,quest) VALUES
(1131,11665), (1132,11666), (1133,11667), (1134,11668), (1135,11669);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1136 AND 1139;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1136,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Gretta the Arbiter - Random Daily - Back to the Pit'),
(1137,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Gretta the Arbiter - Random Daily - Defending Your Title'),
(1138,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Gretta the Arbiter - Random Daily - Maintaining Discipline'),
(1139,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Gretta the Arbiter - Random Daily - The Aberrations Must Die');
DELETE FROM `game_event_quest` WHERE `quest` in (13424,13423,13422,13425);
DELETE FROM game_event_quest WHERE event BETWEEN 1136 AND 1139;
INSERT INTO game_event_quest(event,quest) VALUES
(1136,13424), (1137,13423), (1138,13422), (1139,13425);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1164 AND 1167;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1164,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-nee - Random Daily - A Cleansing Song'),
(1165,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-nee - Random Daily - Song of Fecundity'),
(1166,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-nee - Random Daily - Song of Reflection'),
(1167,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-nee - Random Daily - Song of Wind and Water');
DELETE FROM `game_event_quest` WHERE `quest` in (12735,12737,12736,12726);
DELETE FROM game_event_quest WHERE event BETWEEN 1164 AND 1167;
INSERT INTO game_event_quest(event,quest) VALUES
(1164,12735), (1165,12737), (1166,12736), (1167,12726);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1140 AND 1142;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1140,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Oracle Soo-dow - Random Daily - Mastery of the Crystals'),
(1141,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Oracle Soo-dow - Random Daily - Power of the Great Ones'),
(1142,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Oracle Soo-dow - Random Daily - Will of the Titans');
DELETE FROM `game_event_quest` WHERE `quest` in (12761,12762,12705);
DELETE FROM game_event_quest WHERE event BETWEEN 1140 AND 1142;
INSERT INTO game_event_quest(event,quest) VALUES
(1140,12761), (1141,12762), (1142,12705);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1143 AND 1146;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1143,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Rejek - Random Daily - A Hero''s Headgear'),
(1144,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Rejek - Random Daily - Rejek: First Blood'),
(1145,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Rejek - Random Daily - Strength of the Tempest'),
(1146,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Rejek - Random Daily - The Heartblood''s Strength');
DELETE FROM `game_event_quest` WHERE `quest` in (12732,12734,12741,12758);
DELETE FROM game_event_quest WHERE event BETWEEN 1143 AND 1146;
INSERT INTO game_event_quest(event,quest) VALUES
(1143,12758), (1144,12734), (1145,12741), (1146,12732);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1147 AND 1149;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1147,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Vekgar - Random Daily - Kartak''s Rampage'),
(1148,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Vekgar - Random Daily - Secret Strength of the Frenzyheart'),
(1149,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Vekgar - Random Daily - Tools of War');
DELETE FROM `game_event_quest` WHERE `quest` in (12760,12759,12703);
DELETE FROM game_event_quest WHERE event BETWEEN 1147 AND 1149;
INSERT INTO game_event_quest(event,quest) VALUES
(1147,12703), (1148,12760), (1149,12759);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1150 AND 1153;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1150,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 1 - Random Daily - A Leg Up'),
(1151,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 1 - Random Daily - Rescue at Sea'),
(1152,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 1 - Random Daily - Stop The Aggressors'),
(1153,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 1 - Random Daily - The Light''s Mercy');
DELETE FROM `game_event_quest` WHERE `quest` in (14074,14152,14080,14077);
DELETE FROM game_event_quest WHERE event BETWEEN 1150 AND 1153;
INSERT INTO game_event_quest(event,quest) VALUES
(1150,14074), (1151,14152), (1152,14080), (1153,14077);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1154 AND 1156;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1154,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 2 - Random Daily - Breakfast of Champions'),
(1155,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 2 - Random Daily - Gormok Wants His Snobolds'),
(1156,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 2 - Random Daily - What Do You Feed a Yeti, Anyway?');
DELETE FROM `game_event_quest` WHERE `quest` in (14076,14090,14112);
DELETE FROM game_event_quest WHERE event BETWEEN 1154 AND 1156;
INSERT INTO game_event_quest(event,quest) VALUES
(1154,14076), (1155,14090), (1156,14112);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1157 AND 1160;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1157,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 3 - Random Daily - A Leg Up'),
(1158,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 3 - Random Daily - Rescue at Sea'),
(1159,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 3 - Random Daily - Stop The Aggressors'),
(1160,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 3 - Random Daily - The Light''s Mercy');
DELETE FROM `game_event_quest` WHERE `quest` in (14144,14140,14143,14136);
DELETE FROM game_event_quest WHERE event BETWEEN 1157 AND 1160;
INSERT INTO game_event_quest(event,quest) VALUES
(1157,14143), (1158,14136), (1159,14140), (1160,14144);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1161 AND 1163;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1161,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,19,'Tournament 4 - Random Daily - Breakfast of Champions'),
(1162,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,19,'Tournament 4 - Random Daily - Gormok Wants His Snobolds'),
(1163,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,19,'Tournament 4 - Random Daily - What Do You Feed a Yeti, Anyway?');
DELETE FROM `game_event_quest` WHERE `quest` in (14092,14141,14145);
DELETE FROM game_event_quest WHERE event BETWEEN 1161 AND 1163;
INSERT INTO game_event_quest(event,quest) VALUES
(1161,14092), (1162,14141), (1163,14145);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1168 AND 1169;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1168,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,20,'Crusader Silverdawn - Random Daily - Get Kraken'),
(1169,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,20,'Crusader Silverdawn - Random Daily - The Fate of the Fallen');
DELETE FROM `game_event_quest` WHERE `quest` in (14108,14107);
DELETE FROM game_event_quest WHERE event BETWEEN 1168 AND 1169;
INSERT INTO game_event_quest(event,quest) VALUES
(1168,14108), (1169,14107);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1170 AND 1172;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1170,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Commander Kunz - Random Daily - Troll Patrol 1'),
(1171,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Commander Kunz - Random Daily - Troll Patrol 2'),
(1172,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Commander Kunz - Random Daily - Troll Patrol 3');
DELETE FROM `game_event_quest` WHERE `quest` in (14076,14090,14112);
DELETE FROM game_event_quest WHERE event BETWEEN 1170 AND 1172;
INSERT INTO game_event_quest(event,quest) VALUES
(1170,12587), (1171,12501), (1172,12563);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1173 AND 1177;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1173,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2A - Random Daily - Infused mushroom Meatloaf'),
(1174,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2A - Random Daily - Convention at the Legerdemain'),
(1175,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2A - Random Daily - Sewer Stew'),
(1176,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2A - Random Daily - Cheese for Glowergold'),
(1177,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2A - Random Daily - Mustard Dogs!');
DELETE FROM `game_event_quest` WHERE `quest` in (13100,13101,13102,13103,13107);
DELETE FROM game_event_quest WHERE event BETWEEN 1173 AND 1177;
INSERT INTO game_event_quest(event,quest) VALUES
(1173,13100), (1174,13101), (1175,13102), (1176,13103), (1177,13107);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1178 AND 1182;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1178,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Cooking 2H - Random Daily - Infused mushroom Meatloaf'),
(1179,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Cooking 2H - Random Daily - Convention at the Legerdemain'),
(1180,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Cooking 2H - Random Daily - Sewer Stew'),
(1181,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Cooking 2H - Random Daily - Cheese for Glowergold'),
(1182,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Cooking 2H - Random Daily - Mustard Dogs!');
DELETE FROM `game_event_quest` WHERE `quest` in (13112,13113,13114,13115,13116);
DELETE FROM game_event_quest WHERE event BETWEEN 1178 AND 1182;
INSERT INTO game_event_quest(event,quest) VALUES
(1178,13112), (1179,13113), (1180,13114), (1181,13115), (1182,13116);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1183 AND 1187;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1183,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Fishing 2 - Random Daily - The Ghostfish'),
(1184,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Fishing 2 - Random Daily - Jewel Of The Sewers'),
(1185,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Fishing 2 - Random Daily - Blood Is Thicker'),
(1186,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Fishing 2 - Random Daily - Dangerously Delicious'),
(1187,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Fishing 2 - Random Daily - Disarmed!');
DELETE FROM `game_event_quest` WHERE `quest` in (13830,13832,13833,13834,13836);
DELETE FROM game_event_quest WHERE event BETWEEN 1178 AND 1187;
INSERT INTO game_event_quest(event,quest) VALUES
(1183,13830), (1184,13832), (1185,13833), (1186,13834), (1187,13836);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1188 AND 1193;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1188,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Blood Jade Amulet'),
(1189,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Bright Armor Relic'),
(1190,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Glowing Ivory Figurine'),
(1191,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Intrincate Bone Figurine'),
(1192,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Shifting Sun Curio'),
(1193,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,25,'Jewelcrafting - Random Daily - Shipment: Wicked Sun Brooch');
DELETE FROM `game_event_quest` WHERE `quest` in (12958,12962,12959,12961,12963,12960);
DELETE FROM game_event_quest WHERE event BETWEEN 1188 AND 1193;
INSERT INTO game_event_quest(event,quest) VALUES
(1188,12958), (1189,12962), (1190,12959), (1191,12961), (1192,12963), (1193,12960);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1194 AND 1197;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1194,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A - Random Weekly - A Rare Herb'),
(1195,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A - Random Weekly - Bones and Arrows'),
(1196,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A - Random Weekly - Fueling the Demolishers '),
(1197,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A - Random Weekly - Warding the Warriors');
DELETE FROM `game_event_quest` WHERE `quest` in (13195,13196,13197,13198);
DELETE FROM game_event_quest WHERE event BETWEEN 1194 AND 1197;
INSERT INTO game_event_quest(event,quest) VALUES
(1194,13195), (1195,13196), (1196,13197), (1197,13198);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1198 AND 1201;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1198,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp A2 - Random Weekly - A Rare Herb'),
(1199,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp A2 - Random Weekly - Bones and Arrows'),
(1200,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp A2 - Random Weekly - Fueling the Demolishers '),
(1201,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp A2 - Random Weekly - Warding the Warriors');
DELETE FROM `game_event_quest` WHERE `quest` in (13156,13154,236,13153);
DELETE FROM game_event_quest WHERE event BETWEEN 1198 AND 1201;
INSERT INTO game_event_quest(event,quest) VALUES
(1198,13156), (1199,13154), (1200,236), (1201,13153);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1202 AND 1205;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1202,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H - Random Weekly - A Rare Herb'),
(1203,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H - Random Weekly - Bones and Arrows'),
(1204,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H - Random Weekly - Fueling the Demolishers '),
(1205,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H - Random Weekly - Jinxing the Walls');
DELETE FROM `game_event_quest` WHERE `quest` in (13201,13199,13200,13202);
DELETE FROM game_event_quest WHERE event BETWEEN 1202 AND 1205;
INSERT INTO game_event_quest(event,quest) VALUES
(1202,13201), (1203,13199), (1204,13200), (1205,13202);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1206 AND 1209;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1206,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,29,'Wintergrasp H2 - Random Weekly - Healing with Roses'),
(1207,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,29,'Wintergrasp H2 - Random Weekly - Bones and Arrows'),
(1208,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,29,'Wintergrasp H2 - Random Weekly - Fueling the Demolishers '),
(1209,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,29,'Wintergrasp H2 - Random Weekly - Warding the Walls');
DELETE FROM `game_event_quest` WHERE `quest` in (13194,13193,13191,13192);
DELETE FROM game_event_quest WHERE event BETWEEN 1206 AND 1209;
INSERT INTO game_event_quest(event,quest) VALUES
(1206,13194), (1207,13193), (1208,13191), (1209,13192);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1210 AND 1212;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1210,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Sunreavers - Random Daily - A Blade Fit For A Champion'),
(1211,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Sunreavers - Random Daily - A Worthy Weapon'),
(1212,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Sunreavers - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13673,13674,13675);
DELETE FROM game_event_quest WHERE event BETWEEN 1210 AND 1212;
INSERT INTO game_event_quest(event,quest) VALUES
(1210,13673), (1211,13674), (1212,13675);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1213 AND 1215;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1213,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Orks - Random Daily - A Blade Fit For A Champion'),
(1214,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Orks - Random Daily - A Worthy Weapon'),
(1215,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Orks - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13762,13763,13764);
DELETE FROM game_event_quest WHERE event BETWEEN 1213 AND 1215;
INSERT INTO game_event_quest(event,quest) VALUES
(1213,13762), (1214,13763), (1215,13764);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1216 AND 1218;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1216,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Trolls - Random Daily - A Blade Fit For A Champion'),
(1217,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Trolls - Random Daily - A Worthy Weapon'),
(1218,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Trolls - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13768,13769,13770);
DELETE FROM game_event_quest WHERE event BETWEEN 1216 AND 1216;
INSERT INTO game_event_quest(event,quest) VALUES
(1216,13768), (1217,13769), (1218,13770);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1219 AND 1221;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1219,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Taurens - Random Daily - A Blade Fit For A Champion'),
(1220,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Taurens - Random Daily - A Worthy Weapon'),
(1221,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Taurens - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13773,13774,13775);
DELETE FROM game_event_quest WHERE event BETWEEN 1219 AND 1221;
INSERT INTO game_event_quest(event,quest) VALUES
(1219,13773), (1220,13774), (1221,13775);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1222 AND 1224;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1222,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Undeads - Random Daily - A Blade Fit For A Champion'),
(1223,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Undeads - Random Daily - A Worthy Weapon'),
(1224,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Undeads - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13778,13779,13780);
DELETE FROM game_event_quest WHERE event BETWEEN 1222 AND 1224;
INSERT INTO game_event_quest(event,quest) VALUES
(1222,13778), (1223,13779), (1224,13780);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1225 AND 1227;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1225,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Bloodelfs - Random Daily - A Blade Fit For A Champion'),
(1226,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Bloodelfs - Random Daily - A Worthy Weapon'),
(1227,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Bloodelfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13783,13784,13785);
DELETE FROM game_event_quest WHERE event BETWEEN 1225 AND 1227;
INSERT INTO game_event_quest(event,quest) VALUES
(1225,13783), (1226,13784), (1227,13785);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1228 AND 1230;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1228,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Convenant - Random Daily - A Blade Fit For A Champion'),
(1229,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Convenant - Random Daily - A Worthy Weapon'),
(1230,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Convenant - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13666,13669,13670);
DELETE FROM game_event_quest WHERE event BETWEEN 1228 AND 1230;
INSERT INTO game_event_quest(event,quest) VALUES
(1228,13666), (1229,13669), (1230,13670);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1231 AND 1233;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1231,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Humans - Random Daily - A Blade Fit For A Champion'),
(1232,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Humans - Random Daily - A Worthy Weapon'),
(1233,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Humans - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13603,13600,13616);
DELETE FROM game_event_quest WHERE event BETWEEN 1231 AND 1233;
INSERT INTO game_event_quest(event,quest) VALUES
(1231,13603), (1232,13600), (1233,13616);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1234 AND 1236;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1234,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Dwarfs - Random Daily - A Blade Fit For A Champion'),
(1235,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Dwarfs - Random Daily - A Worthy Weapon'),
(1236,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Dwarfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13741,13742,13743);
DELETE FROM game_event_quest WHERE event BETWEEN 1234 AND 1236;
INSERT INTO game_event_quest(event,quest) VALUES
(1234,13741), (1235,13742), (1236,13743);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1237 AND 1239;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1237,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Gnomes - Random Daily - A Blade Fit For A Champion'),
(1238,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Gnomes - Random Daily - A Worthy Weapon'),
(1239,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Gnomes - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13746,13747,13748);
DELETE FROM game_event_quest WHERE event BETWEEN 1237 AND 1239;
INSERT INTO game_event_quest(event,quest) VALUES
(1237,13746), (1238,13747), (1239,13748);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1240 AND 1242;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1240,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Nightelfs - Random Daily - A Blade Fit For A Champion'),
(1241,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Nightelfs - Random Daily - A Worthy Weapon'),
(1242,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Nightelfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13757,13758,13759);
DELETE FROM game_event_quest WHERE event BETWEEN 1240 AND 1242;
INSERT INTO game_event_quest(event,quest) VALUES
(1240,13757), (1241,13758), (1242,13759);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1243 AND 1245;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1243,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,41,'Tournament Draenei - Random Daily - A Blade Fit For A Champion'),
(1244,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,41,'Tournament Draenei - Random Daily - A Worthy Weapon'),
(1245,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,41,'Tournament Draenei - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13752,13753,13754);
DELETE FROM game_event_quest WHERE event BETWEEN 1243 AND 1245;
INSERT INTO game_event_quest(event,quest) VALUES
(1243,13752), (1244,13753), (1245,13754);
