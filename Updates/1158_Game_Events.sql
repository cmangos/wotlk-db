-- Random Weekly Raid
DELETE FROM `game_event` WHERE `entry` BETWEEN 1024 AND 1035;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1024,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Anub''Rekhan Must Die!'),
(1025,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Flame Leviathan Must Die!'),
(1026,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Ignis the Furnace Master Must Die!'),
(1027,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Instructor Razuvious Must Die!'),
(1028,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Lord Jaraxxus Must Die!'),
(1029,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Lord Marrowgar Must Die!'),
(1030,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Malygos Must Die!'),
(1031,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Noth the Plaguebringer Must Die!'),
(1032,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Patchwerk Must Die!'),
(1033,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Razorscale Must Die!'),
(1034,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - Sartharion Must Die!'),
(1035,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,3,'Random Weekly Raid - XT-002 Deconstructor Must Die!');
DELETE FROM game_event_quest WHERE event BETWEEN 1024 AND 1035;
INSERT INTO game_event_quest(event,quest) VALUES
(1024,24580),
(1025,24585),
(1026,24587),
(1027,24582),
(1028,24589),
(1029,24590),
(1030,24584),
(1031,24581),
(1032,24583),
(1033,24586),
(1034,24579),
(1035,24588);

DELETE FROM `creature` WHERE `id` IN (37849,37850,37851,37853,37854,37855,37856,37858,37859,37861,37862,37864);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(136996, 37849, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(136997, 37850, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(136998, 37851, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(136999, 37853, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137000, 37854, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137001, 37855, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137002, 37856, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137003, 37858, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137004, 37859, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137005, 37861, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137006, 37862, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0),
(137007, 37864, 571, 1, 1, 0, 0, 5703.08, 583.976, 654.934, 3.90954, 300, 300, 0, 0, 13481, 0, 0, 0);
-- All images should be flying/levitating
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (37849,37850,37851,37853,37854,37855,37856,37858,37859,37861,37862,37864);

DELETE FROM `game_event_creature` WHERE `event` BETWEEN 1024 AND 1035;
INSERT INTO `game_event_creature` (`guid`,`event`) VALUES
(136996,1034),
(136997,1024),
(136998,1031),
(136999,1027),
(137000,1032),
(137001,1030),
(137002,1025),
(137003,1033),
(137004,1026),
(137005,1028),
(137006,1029),
(137007,1029);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1036 AND 1038;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1036,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,4,'Love is in the Air - Random Daily - A Perfect Puff of Perfume'),
(1037,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,4,'Love is in the Air - Random Daily - A Cloudlet of Classy Cologne'),
(1038,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,8,4,'Love is in the Air - Random Daily - Bonbon Blitz');
DELETE FROM `game_event_quest` WHERE `quest` in (24629,24635,24636);
DELETE FROM game_event_quest WHERE event BETWEEN 1036 AND 1038;
INSERT INTO game_event_quest(event,quest) VALUES
(1036,24629), (1037,24635), (1038,24636);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1039 AND 1042;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1039,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,5,'Tournament - Random Daily - Drottinn Hrothgar'),
(1040,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,5,'Tournament - Random Daily - Mistcaller Yngvar'),
(1041,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,5,'Tournament - Random Daily - Ornolf The Scarred'),
(1042,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,5,'Tournament - Random Daily - Deathspeaker Kharos');
DELETE FROM `game_event_quest` WHERE `quest` in (14101,14102,14104,14105);
DELETE FROM game_event_quest WHERE event BETWEEN 1039 AND 1042;
INSERT INTO game_event_quest(event,quest) VALUES
(1039,14101), (1040,14102), (1041,14104), (1042,14105);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1043 AND 1046;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1043,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Un''Goro Crater 1 - Random Daily - Hungry, Hungry Hatchling'),
(1044,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Un''Goro Crater 1 - Random Daily - Gorishi Grub'),
(1045,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Un''Goro Crater 1 - Random Daily - Poached, Scrambled, Or Raw?'),
(1046,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,6,'Un''Goro Crater 1 - Random Daily - Searing Roc Feathers');
DELETE FROM `game_event_quest` WHERE `quest` in (13889,13903,13904,13905);
DELETE FROM game_event_quest WHERE event BETWEEN 1043 AND 1046;
INSERT INTO game_event_quest(event,quest) VALUES
(1043,13889), (1044,13903), (1045,13904), (1046,13905);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1047 AND 1050;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1047,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 2 - Random Daily - Hungry, Hungry Hatchling'),
(1048,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 2 - Random Daily - Gorishi Grub'),
(1049,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 2 - Random Daily - Poached, Scrambled, Or Raw?'),
(1050,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,7,'Un''Goro Crater 2 - Random Daily - Searing Roc Feathers');
DELETE FROM `game_event_quest` WHERE `quest` in (13915,13917,13916,13914);
DELETE FROM game_event_quest WHERE event BETWEEN 1047 AND 1050;
INSERT INTO game_event_quest(event,quest) VALUES
(1047,13915), (1048,13917), (1049,13916), (1050,13914);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1051 AND 1054;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1051,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Cooking - Random Daily - Revenge is Tasty'),
(1052,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Cooking - Random Daily - Super Hot Stew'),
(1053,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Cooking - Random Daily - Manalicious'),
(1054,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,8,'Cooking - Random Daily - Soup for the Soul');
DELETE FROM `game_event_quest` WHERE `quest` in (11377,11379,11380,11381);
DELETE FROM game_event_quest WHERE event BETWEEN 1051 AND 1054;
INSERT INTO game_event_quest(event,quest) VALUES
(1051,11377), (1052,11379), (1053,11380), (1054,11380);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1055 AND 1059;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1055,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Fishing - Random Daily - Crocolisks in the City'),
(1056,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Fishing - Random Daily - Bait Bandits'),
(1057,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Fishing - Random Daily - The One That Got Away'),
(1058,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Fishing - Random Daily - Shrimpin Aint Easy'),
(1059,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,9,'Fishing - Random Daily - Felblood Fillet');
DELETE FROM `game_event_quest` WHERE `quest` in (11665,11666,11667,11668,11669);
DELETE FROM game_event_quest WHERE event BETWEEN 1055 AND 1059;
INSERT INTO game_event_quest(event,quest) VALUES
(1055,11665), (1056,11666), (1057,11667), (1058,11668), (1059,11669);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1060 AND 1063;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1060,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Gretta the Arbiter - Random Daily - Back to the Pit'),
(1061,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Gretta the Arbiter - Random Daily - Defending Your Title'),
(1062,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Gretta the Arbiter - Random Daily - Maintaining Discipline'),
(1063,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,10,'Gretta the Arbiter - Random Daily - The Aberrations Must Die');
DELETE FROM `game_event_quest` WHERE `quest` in (11377,11379,11380,11381);
DELETE FROM game_event_quest WHERE event BETWEEN 1060 AND 1063;
INSERT INTO game_event_quest(event,quest) VALUES
(1060,13424), (1061,13423), (1062,13422), (1063,13425);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1088 AND 1091;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1088,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Oracle Soo-nee - Random Daily - A Cleansing Song'),
(1089,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Oracle Soo-nee - Random Daily - Song of Fecundity'),
(1090,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Oracle Soo-nee - Random Daily - Song of Reflection'),
(1091,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,11,'Oracle Soo-nee - Random Daily - Song of Wind and Water');
DELETE FROM `game_event_quest` WHERE `quest` in (12735,12737,12736,12726);
DELETE FROM game_event_quest WHERE event BETWEEN 1088 AND 1091;
INSERT INTO game_event_quest(event,quest) VALUES
(1088,12735), (1089,12737), (1090,12736), (1091,12726);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1064 AND 1066;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1064,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-dow - Random Daily - Mastery of the Crystals'),
(1065,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-dow - Random Daily - Power of the Great Ones'),
(1066,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,12,'Oracle Soo-dow - Random Daily - Will of the Titans');
DELETE FROM `game_event_quest` WHERE `quest` in (12761,12762,12705);
DELETE FROM game_event_quest WHERE event BETWEEN 1064 AND 1066;
INSERT INTO game_event_quest(event,quest) VALUES
(1064,12761), (1065,12762), (1066,12705);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1067 AND 1070;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1067,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Rejek - Random Daily - A Hero''s Headgear'),
(1068,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Rejek - Random Daily - Rejek: First Blood'),
(1069,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Rejek - Random Daily - Strength of the Tempest'),
(1070,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,13,'Rejek - Random Daily - The Heartblood''s Strength');
DELETE FROM `game_event_quest` WHERE `quest` in (12732,12734,12741,12758);
DELETE FROM game_event_quest WHERE event BETWEEN 1067 AND 1070;
INSERT INTO game_event_quest(event,quest) VALUES
(1067,12758), (1068,12734), (1069,12741), (1070,12732);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1071 AND 1073;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1071,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Vekgar - Random Daily - Kartak''s Rampage'),
(1072,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Vekgar - Random Daily - Secret Strength of the Frenzyheart'),
(1073,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,14,'Vekgar - Random Daily - Tools of War');
DELETE FROM `game_event_quest` WHERE `quest` in (12760,12759,12703);
DELETE FROM game_event_quest WHERE event BETWEEN 1071 AND 1073;
INSERT INTO game_event_quest(event,quest) VALUES
(1071,12703), (1072,12760), (1073,12759);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1074 AND 1077;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1074,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Tournament 1 - Random Daily - A Leg Up'),
(1075,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Tournament 1 - Random Daily - Rescue at Sea'),
(1076,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Tournament 1 - Random Daily - Stop The Aggressors'),
(1077,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,15,'Tournament 1 - Random Daily - The Light''s Mercy');
DELETE FROM `game_event_quest` WHERE `quest` in (14074,14152,14080,14077);
DELETE FROM game_event_quest WHERE event BETWEEN 1074 AND 1077;
INSERT INTO game_event_quest(event,quest) VALUES
(1074,14074), (1075,14152), (1076,14080), (1077,14077);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1078 AND 1080;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1078,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 2 - Random Daily - Breakfast of Champions'),
(1079,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 2 - Random Daily - Gormok Wants His Snobolds'),
(1080,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,16,'Tournament 2 - Random Daily - What Do You Feed a Yeti, Anyway?');
DELETE FROM `game_event_quest` WHERE `quest` in (14076,14090,14112);
DELETE FROM game_event_quest WHERE event BETWEEN 1078 AND 1080;
INSERT INTO game_event_quest(event,quest) VALUES
(1078,14076), (1079,14090), (1080,14112);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1081 AND 1084;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1081,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 3 - Random Daily - A Leg Up'),
(1082,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 3 - Random Daily - Rescue at Sea'),
(1083,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 3 - Random Daily - Stop The Aggressors'),
(1084,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,17,'Tournament 3 - Random Daily - The Light''s Mercy');
DELETE FROM `game_event_quest` WHERE `quest` in (14144,14140,14143,14136);
DELETE FROM game_event_quest WHERE event BETWEEN 1081 AND 1084;
INSERT INTO game_event_quest(event,quest) VALUES
(1081,14143), (1082,14136), (1083,14140), (1084,14144);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1085 AND 1087;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1085,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 4 - Random Daily - Breakfast of Champions'),
(1086,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 4 - Random Daily - Gormok Wants His Snobolds'),
(1087,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,18,'Tournament 4 - Random Daily - What Do You Feed a Yeti, Anyway?');
DELETE FROM `game_event_quest` WHERE `quest` in (14092,14141,14145);
DELETE FROM game_event_quest WHERE event BETWEEN 1085 AND 1087;
INSERT INTO game_event_quest(event,quest) VALUES
(1085,14092), (1086,14141), (1087,14145);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1092 AND 1093;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1092,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,19,'Crusader Silverdawn - Random Daily - Get Kraken'),
(1093,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,19,'Crusader Silverdawn - Random Daily - The Fate of the Fallen');
DELETE FROM `game_event_quest` WHERE `quest` in (14108,14107);
DELETE FROM game_event_quest WHERE event BETWEEN 1092 AND 1093;
INSERT INTO game_event_quest(event,quest) VALUES
(1092,14108), (1093,14107);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1094 AND 1096;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1094,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,20,'Commander Kunz - Random Daily - Troll Patrol 1'),
(1095,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,20,'Commander Kunz - Random Daily - Troll Patrol 2'),
(1096,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,20,'Commander Kunz - Random Daily - Troll Patrol 3');
DELETE FROM `game_event_quest` WHERE `quest` in (14076,14090,14112);
DELETE FROM game_event_quest WHERE event BETWEEN 1094 AND 1096;
INSERT INTO game_event_quest(event,quest) VALUES
(1094,12587), (1095,12501), (1096,12563);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1097 AND 1101;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1097,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Cooking 2A - Random Daily - Infused mushroom Meatloaf'),
(1098,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Cooking 2A - Random Daily - Convention at the Legerdemain'),
(1099,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Cooking 2A - Random Daily - Sewer Stew'),
(1100,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Cooking 2A - Random Daily - Cheese for Glowergold'),
(1101,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,21,'Cooking 2A - Random Daily - Mustard Dogs!');
DELETE FROM `game_event_quest` WHERE `quest` in (13100,13101,13102,13103,13107);
DELETE FROM game_event_quest WHERE event BETWEEN 1097 AND 1101;
INSERT INTO game_event_quest(event,quest) VALUES
(1097,13100), (1098,13101), (1099,13102), (1100,13103), (1101,13107);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1102 AND 1106;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1102,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2H - Random Daily - Infused mushroom Meatloaf'),
(1103,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2H - Random Daily - Convention at the Legerdemain'),
(1104,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2H - Random Daily - Sewer Stew'),
(1105,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2H - Random Daily - Cheese for Glowergold'),
(1106,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,22,'Cooking 2H - Random Daily - Mustard Dogs!');
DELETE FROM `game_event_quest` WHERE `quest` in (13112,13113,13114,13115,13116);
DELETE FROM game_event_quest WHERE event BETWEEN 1102 AND 1106;
INSERT INTO game_event_quest(event,quest) VALUES
(1102,13112), (1103,13113), (1104,13114), (1105,13115), (1106,13116);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1107 AND 1111;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1107,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Fishing 2 - Random Daily - The Ghostfish'),
(1108,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Fishing 2 - Random Daily - Jewel Of The Sewers'),
(1109,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Fishing 2 - Random Daily - Blood Is Thicker'),
(1110,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Fishing 2 - Random Daily - Dangerously Delicious'),
(1111,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,23,'Fishing 2 - Random Daily - Disarmed!');
DELETE FROM `game_event_quest` WHERE `quest` in (13830,13832,13833,13834,13836);
DELETE FROM game_event_quest WHERE event BETWEEN 1102 AND 1111;
INSERT INTO game_event_quest(event,quest) VALUES
(1107,13830), (1108,13832), (1109,13833), (1110,13834), (1111,13836);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1112 AND 1117;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1112,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Blood Jade Amulet'),
(1113,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Bright Armor Relic'),
(1114,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Glowing Ivory Figurine'),
(1115,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Intrincate Bone Figurine'),
(1116,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Shifting Sun Curio'),
(1117,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,24,'Jewelcrafting - Random Daily - Shipment: Wicked Sun Brooch');
DELETE FROM `game_event_quest` WHERE `quest` in (12958,12962,12959,12961,12963,12960);
DELETE FROM game_event_quest WHERE event BETWEEN 1112 AND 1117;
INSERT INTO game_event_quest(event,quest) VALUES
(1112,12958), (1113,12962), (1114,12959), (1115,12961), (1116,12963), (1117,12960);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1118 AND 1121;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1118,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,25,'Wintergrasp A - Random Weekly - A Rare Herb'),
(1119,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,25,'Wintergrasp A - Random Weekly - Bones and Arrows'),
(1120,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,25,'Wintergrasp A - Random Weekly - Fueling the Demolishers '),
(1121,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,25,'Wintergrasp A - Random Weekly - Warding the Warriors');
DELETE FROM `game_event_quest` WHERE `quest` in (13195,13196,13197,13198);
DELETE FROM game_event_quest WHERE event BETWEEN 1118 AND 1121;
INSERT INTO game_event_quest(event,quest) VALUES
(1118,13195), (1119,13196), (1120,13197), (1121,13198);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1122 AND 1125;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1122,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A2 - Random Weekly - A Rare Herb'),
(1123,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A2 - Random Weekly - Bones and Arrows'),
(1124,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A2 - Random Weekly - Fueling the Demolishers '),
(1125,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,26,'Wintergrasp A2 - Random Weekly - Warding the Warriors');
DELETE FROM `game_event_quest` WHERE `quest` in (13156,13154,236,13153);
DELETE FROM game_event_quest WHERE event BETWEEN 1122 AND 1125;
INSERT INTO game_event_quest(event,quest) VALUES
(1122,13156), (1123,13154), (1124,236), (1125,13153);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1126 AND 1129;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1126,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp H - Random Weekly - A Rare Herb'),
(1127,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp H - Random Weekly - Bones and Arrows'),
(1128,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp H - Random Weekly - Fueling the Demolishers '),
(1129,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,27,'Wintergrasp H - Random Weekly - Jinxing the Walls');
DELETE FROM `game_event_quest` WHERE `quest` in (13201,13199,13200,13202);
DELETE FROM game_event_quest WHERE event BETWEEN 1126 AND 1129;
INSERT INTO game_event_quest(event,quest) VALUES
(1126,13201), (1127,13199), (1128,13200), (1129,13202);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1130 AND 1133;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1130,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H2 - Random Weekly - Healing with Roses'),
(1131,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H2 - Random Weekly - Bones and Arrows'),
(1132,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H2 - Random Weekly - Fueling the Demolishers '),
(1133,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,10080,0,0,28,'Wintergrasp H2 - Random Weekly - Warding the Walls');
DELETE FROM `game_event_quest` WHERE `quest` in (13194,13193,13191,13192);
DELETE FROM game_event_quest WHERE event BETWEEN 1130 AND 1133;
INSERT INTO game_event_quest(event,quest) VALUES
(1130,13194), (1131,13193), (1132,13191), (1133,13192);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1134 AND 1136;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1134,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,29,'Tournament Sunreavers - Random Daily - A Blade Fit For A Champion'),
(1135,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,29,'Tournament Sunreavers - Random Daily - A Worthy Weapon'),
(1136,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,29,'Tournament Sunreavers - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13673,13674,13675);
DELETE FROM game_event_quest WHERE event BETWEEN 1134 AND 1136;
INSERT INTO game_event_quest(event,quest) VALUES
(1134,13673), (1135,13674), (1136,13675);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1137 AND 1139;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1137,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Orks - Random Daily - A Blade Fit For A Champion'),
(1138,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Orks - Random Daily - A Worthy Weapon'),
(1139,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,30,'Tournament Orks - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13762,13763,13764);
DELETE FROM game_event_quest WHERE event BETWEEN 1137 AND 1139;
INSERT INTO game_event_quest(event,quest) VALUES
(1137,13762), (1138,13763), (1139,13764);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1140 AND 1142;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1140,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Trolls - Random Daily - A Blade Fit For A Champion'),
(1141,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Trolls - Random Daily - A Worthy Weapon'),
(1142,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,31,'Tournament Trolls - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13768,13769,13770);
DELETE FROM game_event_quest WHERE event BETWEEN 1140 AND 1140;
INSERT INTO game_event_quest(event,quest) VALUES
(1140,13768), (1141,13769), (1142,13770);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1143 AND 1145;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1143,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Taurens - Random Daily - A Blade Fit For A Champion'),
(1144,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Taurens - Random Daily - A Worthy Weapon'),
(1145,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,32,'Tournament Taurens - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13773,13774,13775);
DELETE FROM game_event_quest WHERE event BETWEEN 1143 AND 1145;
INSERT INTO game_event_quest(event,quest) VALUES
(1143,13773), (1144,13774), (1145,13775);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1146 AND 1148;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1146,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Undeads - Random Daily - A Blade Fit For A Champion'),
(1147,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Undeads - Random Daily - A Worthy Weapon'),
(1148,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,33,'Tournament Undeads - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13778,13779,13780);
DELETE FROM game_event_quest WHERE event BETWEEN 1146 AND 1148;
INSERT INTO game_event_quest(event,quest) VALUES
(1146,13778), (1147,13779), (1148,13780);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1148 AND 1150;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1148,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Bloodelfs - Random Daily - A Blade Fit For A Champion'),
(1149,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Bloodelfs - Random Daily - A Worthy Weapon'),
(1150,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,34,'Tournament Bloodelfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13783,13784,13785);
DELETE FROM game_event_quest WHERE event BETWEEN 1148 AND 1150;
INSERT INTO game_event_quest(event,quest) VALUES
(1148,13783), (1149,13784), (1150,13785);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1151 AND 1153;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1151,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Convenant - Random Daily - A Blade Fit For A Champion'),
(1152,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Convenant - Random Daily - A Worthy Weapon'),
(1153,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,35,'Tournament Convenant - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13666,13669,13670);
DELETE FROM game_event_quest WHERE event BETWEEN 1151 AND 1153;
INSERT INTO game_event_quest(event,quest) VALUES
(1151,13666), (1152,13669), (1153,13670);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1154 AND 1156;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1154,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Humans - Random Daily - A Blade Fit For A Champion'),
(1155,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Humans - Random Daily - A Worthy Weapon'),
(1156,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,36,'Tournament Humans - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13603,13600,13616);
DELETE FROM game_event_quest WHERE event BETWEEN 1154 AND 1156;
INSERT INTO game_event_quest(event,quest) VALUES
(1154,13603), (1155,13600), (1156,13616);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1157 AND 1159;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1157,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Dwarfs - Random Daily - A Blade Fit For A Champion'),
(1158,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Dwarfs - Random Daily - A Worthy Weapon'),
(1159,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,37,'Tournament Dwarfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13741,13742,13743);
DELETE FROM game_event_quest WHERE event BETWEEN 1157 AND 1159;
INSERT INTO game_event_quest(event,quest) VALUES
(1157,13741), (1158,13742), (1159,13743);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1160 AND 1162;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1160,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Gnomes - Random Daily - A Blade Fit For A Champion'),
(1161,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Gnomes - Random Daily - A Worthy Weapon'),
(1162,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,38,'Tournament Gnomes - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13746,13747,13748);
DELETE FROM game_event_quest WHERE event BETWEEN 1160 AND 1162;
INSERT INTO game_event_quest(event,quest) VALUES
(1160,13746), (1161,13747), (1162,13748);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1163 AND 1165;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1163,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Nightelfs - Random Daily - A Blade Fit For A Champion'),
(1164,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Nightelfs - Random Daily - A Worthy Weapon'),
(1165,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,39,'Tournament Nightelfs - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13757,13758,13759);
DELETE FROM game_event_quest WHERE event BETWEEN 1163 AND 1165;
INSERT INTO game_event_quest(event,quest) VALUES
(1163,13757), (1164,13758), (1165,13759);

DELETE FROM `game_event` WHERE `entry` BETWEEN 1166 AND 1168;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1166,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Draenei - Random Daily - A Blade Fit For A Champion'),
(1167,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Draenei - Random Daily - A Worthy Weapon'),
(1168,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,40,'Tournament Draenei - Random Daily - The Edge of Winter');
DELETE FROM `game_event_quest` WHERE `quest` in (13752,13753,13754);
DELETE FROM game_event_quest WHERE event BETWEEN 1166 AND 1168;
INSERT INTO game_event_quest(event,quest) VALUES
(1166,13752), (1167,13753), (1168,13754);
