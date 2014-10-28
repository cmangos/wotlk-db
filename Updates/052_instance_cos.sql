-- ###########################
-- Culling of Stratholme intro
-- ###########################

-- #####
-- Texts
-- #####
SET @DB_STRING_ENTRY:=2000005785;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+35;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- bridge
(@DB_STRING_ENTRY+0,'The Lightbringer...',0,0,0,396,'Soldier - salute 1'),
(@DB_STRING_ENTRY+1,'Lord Uther...',0,0,0,396,'Soldier - salute 2'),
(@DB_STRING_ENTRY+2,'Glad you could make it, Uther.',12828,0,0,396,'Arthas - intro 1'), -- music 14947
(@DB_STRING_ENTRY+3,'Watch your tone with me, boy. You may be the prince, but I\'m still your superior as a paladin!',12839,0,0,397,'Uther - intro 2'),
(@DB_STRING_ENTRY+4,'As if I could forget. Listen, Uther, there\'s something about the plague you should know...',12829,0,0,0,'Arthas - intro 3'),
(@DB_STRING_ENTRY+5,'Oh, no. We\'re too late. These people have all been infected! They may look fine now, but it\'s just a matter of time before they turn into the undead!',12830,0,0,5,'Arthas - intro 4'),
(@DB_STRING_ENTRY+6,'What?',12840,0,0,5,'Uther - intro 5'),
(@DB_STRING_ENTRY+7,'This entire city must be purged.',12831,0,0,396,'Arthas - intro 6'),
(@DB_STRING_ENTRY+8,'How can you even consider that? There\'s got to be some other way.',12841,0,0,6,'Uther - intro 7'),
(@DB_STRING_ENTRY+9,'Damn it, Uther! As your future king, I order you to purge this city!',12832,0,0,5,'Arthas - intro 8'),
(@DB_STRING_ENTRY+10,'You are not my king yet, boy! Nor would I obey that command even if you were!',12842,0,0,396,'Uther - intro 9'),
(@DB_STRING_ENTRY+11,'Then I must consider this an act of treason.',12833,0,0,396,'Arthas - intro 10'),
(@DB_STRING_ENTRY+12,'Treason? Have you lost your mind, Arthas?',12843,0,0,5,'Arthas - intro 11'), -- music 14948
(@DB_STRING_ENTRY+13,'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.',12834,0,0,378,'Arthas - intro 12'),
(@DB_STRING_ENTRY+14,'Arthas! You can\'t just--',12837,0,0,396,'Jaina - intro 13'),
(@DB_STRING_ENTRY+15,'It\'s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!',12835,0,0,1,'Arthas - intro 14'),
(@DB_STRING_ENTRY+16,'You\'ve just crossed a terrible threshold, Arthas.',12844,0,0,397,'Uther - intro 15'),
(@DB_STRING_ENTRY+17,'Jaina?',12836,0,0,0,'Arthas - intro 16'),
(@DB_STRING_ENTRY+18,'I\'m sorry, Arthas. I can\'t watch you do this.',12838,0,0,396,'Jaina - intro 17'), -- music 14949
(@DB_STRING_ENTRY+19,'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!',14327,1,0,0,'Arthas - intro 18'),
(@DB_STRING_ENTRY+20,'All officers should check in with me when their squads are ready. We\'ll enter Stratholme on my order.',0,0,0,0,'Arthas - city entrance'),
-- city entrance
(@DB_STRING_ENTRY+21,'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let\'s go.',14293,0,0,396,'Arthas - city 1'),
(@DB_STRING_ENTRY+22,'Everyone I know seems to be coming down with something really bad.',0,0,0,1,'Citizen - gossip 1'),
(@DB_STRING_ENTRY+23,'Have you talked to anyone who hasn\'t started getting sick?',0,0,0,1,'Citizen - gossip 2'),
(@DB_STRING_ENTRY+24,'It must be something in the water, I tell you.',0,0,0,1,'Citizen - gossip 3'),
(@DB_STRING_ENTRY+25,'My bed is looking pretty good right now.',0,0,0,1,'Citizen - gossip 4'),
(@DB_STRING_ENTRY+26,'Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?',0,0,0,1,'Citizen - query'),
(@DB_STRING_ENTRY+27,'I can only help you with a clean death.',14294,0,0,0,'Arthas - city 2'),
(@DB_STRING_ENTRY+28,'What? This can\'t be!',0,0,0,274,'Citizen - attack'),
(@DB_STRING_ENTRY+29,'Oh, no...',0,0,0,431,'Citizen - attack 2'),
(@DB_STRING_ENTRY+30,'Did you see that?',0,0,0,5,'Citizen - attack 3'),
(@DB_STRING_ENTRY+31,'That was just the beginning.',14295,0,0,1,'Arthas - city 3'),
(@DB_STRING_ENTRY+32,'Yes, this is the beginning. I\'ve been waiting for you, young prince. I am Mal\'Ganis.',14410,1,0,0,'Malganis - city 4'),
(@DB_STRING_ENTRY+33,'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.',14411,1,0,378,'Malganis - city 5'),
(@DB_STRING_ENTRY+34,'I won\'t allow it, Mal\'Ganis! Better that these people die by my hand than serve as your slaves in death!',14296,1,0,397,'Arthas - city 6'),
(@DB_STRING_ENTRY+35,'Mal\'Ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.',14885,1,0,1,'Arthas - city 7');


-- ############
-- Arthas intro
-- ############
-- Movement
SET @DB_STRING_ENTRY:=2000005785;
DELETE FROM creature_movement_template WHERE entry=26499;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(26499, 1, 1939.171, 1288.315, 145.4922, 0, 0, 0),
(26499, 2, 1924.883, 1289.172, 143.8736, 0, 0, 0),
(26499, 3, 1912.860, 1290.030, 142.2913, 0, 0, 0),
(26499, 4, 1903.254, 1291.568, 143.3867, 1000, 2649904, 3.80),
(26499, 5, 1903.257, 1298.676, 143.5107, 0, 0, 0),
(26499, 6, 1907.603, 1311.531, 149.7067, 1000, 2649906, 0.20),
(26499, 7, 1907.603, 1311.531, 149.7067, 1000, 2649907, 4.40),
(26499, 8, 1903.257, 1298.676, 143.5107, 0, 0, 0),
(26499, 9, 1903.254, 1291.568, 143.3867, 0, 0, 0),
(26499, 10, 1908.119, 1287.726, 142.679, 0, 0, 0),
(26499, 11, 1916.920, 1287.297, 142.008, 12000, 2649911, 3.04),
(26499, 12, 1924.738, 1287.323, 143.839, 0, 0, 0),
(26499, 13, 1940.938, 1287.586, 145.672, 0, 0, 0),
(26499, 14, 1987.673, 1287.515, 145.474, 0, 0, 0),
(26499, 15, 1993.607, 1293.707, 145.457, 0, 0, 0),
(26499, 16, 1996.356, 1301.102, 145.371, 0, 0, 0),
(26499, 17, 1996.892, 1314.195, 143.166, 0, 0, 0),
(26499, 18, 2004.018, 1323.278, 142.977, 0, 0, 0),
(26499, 19, 2013.225, 1324.761, 142.971, 0, 0, 0),
(26499, 20, 2020.775, 1317.646, 142.936, 0, 0, 0),
(26499, 21, 2023.479, 1307.916, 143.463, 0, 0, 0),
(26499, 22, 2029.591, 1289.071, 143.576, 0, 0, 0),
(26499, 23, 2047.948, 1287.598, 142.865, 1000, 2649923, 3.22),
(26499, 24, 2047.948, 1287.598, 142.865, 12000, 2649924, 3.22),
(26499, 25, 2072.355, 1287.635, 141.675, 0, 0, 0),
(26499, 26, 2083.011, 1287.590, 141.237, 10000, 2649926, 5.36),
(26499, 27, 2087.105, 1281.529, 140.683, 3000, 2649927, 5.32),
(26499, 28, 2091.994, 1277.257, 140.470, 3000, 2649928, 5.58),
(26499, 29, 2091.994, 1277.257, 140.470, 3000, 2649929, 2.47),
(26499, 30, 2091.994, 1277.257, 140.470, 57000, 2649930, 0.43),
(26499, 31, 2091.994, 1277.257, 140.470, 1000, 2649931, 0.43);
-- Movement scripts
-- Front bridge dialogue
DELETE FROM dbscripts_on_creature_movement WHERE id=2649904;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649904,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649904,0,35,5,70,0,0,0,0,'Arthas - Send AI event'),
(2649904,8,0,0,0,0,0,0,@DB_STRING_ENTRY+2,'Arthas - say intro 1'),
(2649904,8,16,14947,0,0,0,8,0,'Arthas - change music'),
(2649904,13,0,0,0,26528,30,0,@DB_STRING_ENTRY+3,'Uther - say intro 2'),
(2649904,19,25,0,0,26528,30,0,0,'Uther - set run off'),
(2649904,19,25,0,0,26497,30,0,0,'Jaina - set run off'),
(2649904,19,25,0,0,0,0,0,0,'Arthas - set run off'),
(2649904,20,0,0,0,0,0,0,@DB_STRING_ENTRY+4,'Arthas - say intro 3'),
(2649904,20,32,0,0,26528,30,0,0,'Uther - unpause WP movement'),
(2649904,20,32,0,0,26497,30,0,0,'Jaina - unpause WP movement'),
(2649904,20,32,0,0,0,0,0,0,'Arthas - unpause WP movement');
-- Look over the city
DELETE FROM dbscripts_on_creature_movement WHERE id=2649906;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649906,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649906,0,0,0,0,0,0,0,@DB_STRING_ENTRY+5,'Arthas - say intro 4'),
(2649906,10,0,0,0,26528,30,0,@DB_STRING_ENTRY+6,'Uther - say intro 5'),
(2649906,13,32,0,0,0,0,0,0,'Arthas - unpause WP movement');
-- Argue with Uther
DELETE FROM dbscripts_on_creature_movement WHERE id=2649907;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649907,0, 32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649907,0, 0,0,0,0,0,0,@DB_STRING_ENTRY+7,'Arthas - say intro 6'),
(2649907,4, 0,0,0,26528,30,0,@DB_STRING_ENTRY+8,'Uther - say intro 7'),
(2649907,10,0,0,0,0,0,0,@DB_STRING_ENTRY+9,'Arthas - say intro 8'),
(2649907,15,0,0,0,26528,30,0,@DB_STRING_ENTRY+10,'Uther - say intro 9'),
(2649907,22,0,0,0,0,0,0,@DB_STRING_ENTRY+11,'Arthas - say intro 10'),
(2649907,25,0,0,0,26528,30,0,@DB_STRING_ENTRY+12,'Uther - say intro 11'),
(2649907,25,16,14948,0,0,0,8,0,'Arthas - change music'),
(2649907,30,0,0,0,0,0,0,@DB_STRING_ENTRY+13,'Arthas - say intro 12'),
(2649907,42,0,0,0,26497,30,0,@DB_STRING_ENTRY+14,'Jaina - say intro 13'),
(2649907,42,1,0,0,0,0,0,0,'Arthas - cancel emote state'),
(2649907,44,0,0,0,0,0,0,@DB_STRING_ENTRY+15,'Arthas - say intro 14'),
(2649907,50,1,5,0,0,0,0,0,'Arthas - handle emote'),
(2649907,57,0,0,0,26528,30,0,@DB_STRING_ENTRY+16,'Uther - say intro 15'),
(2649907,59,32,0,0,26528,30,0,0,'Uther - unpause WP movement'),
(2649907,59,32,0,0,26497,30,0,0,'Jaina - unpause WP movement'),
(2649907,61,0,0,0,0,0,0,@DB_STRING_ENTRY+17,'Arthas - say intro 16');
-- Prepare to enter the city
DELETE FROM dbscripts_on_creature_movement WHERE id=2649911;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649911,0,0,0,0,0,0,0,@DB_STRING_ENTRY+19,'Arthas - say intro 18'),
(2649911,0,25,1,0,0,0,0,0,'Arthas - set run on');
-- Stop at the gate
DELETE FROM dbscripts_on_creature_movement WHERE id=2649923;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649923,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649923,1,0,0,0,0,0,0,@DB_STRING_ENTRY+20,'Arthas - say city entrance'),
(2649923,1,29,1,1,0,0,0,0,'Arthas - add gossip flag'),
(2649923,1,25,0,0,0,0,0,0,'Arthas - set run off'),
(2649923,0,35,5,30,0,0,0,0,'Arthas - Send AI event');
-- Enter the city
DELETE FROM dbscripts_on_creature_movement WHERE id=2649924;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649924,3,0,0,0,0,0,0,@DB_STRING_ENTRY+21,'Arthas - say city 1'),
(2649924,12,0,0,0,28167,132328,16,@DB_STRING_ENTRY+22,'Stratholme Citizen - say gossip 1'),
(2649924,12,32,0,0,27747,132436,16,0,'High Elf Mage-Priest - start WP movement'), -- left
(2649924,12,32,0,0,27747,132435,16,0,'High Elf Mage-Priest - start WP movement'), -- right
(2649924,12,32,0,0,27745,132418,16,0,'Lordaeron Footman - start WP movement'), -- left middle
(2649924,12,32,0,0,27745,132417,16,0,'Lordaeron Footman - start WP movement'), -- right middle
(2649924,12,32,0,0,27745,132419,16,0,'Lordaeron Footman - start WP movement'), -- left front
(2649924,12,32,0,0,27745,132416,16,0,'Lordaeron Footman - start WP movement'), -- right front
(2649924,24,0,0,0,28167,132330,16,@DB_STRING_ENTRY+23,'Stratholme Citizen - say gossip 2');
-- Purge the citizen
DELETE FROM dbscripts_on_creature_movement WHERE id=2649926;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649926,1,0,0,0,28167,132326,16,@DB_STRING_ENTRY+26,'Stratholme Citizen - say city query prince'),
(2649926,1,20,2,0,28167,132326,16,0,'Stratholme Citizen - start WP movement'),
(2649926,4,0,0,0,28167,132327,16,@DB_STRING_ENTRY+24,'Stratholme Resident - say gossip 3'),
(2649926,8,0,0,0,0,0,0,@DB_STRING_ENTRY+27,'Arthas - say city 2'),
(2649926,8,0,0,0,28167,132328,16,@DB_STRING_ENTRY+25,'Stratholme Resident - say gossip 4'),
(2649926,12,0,0,0,28167,132326,16,@DB_STRING_ENTRY+28,'Stratholme Citizen - say city attack');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649927;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649927,0,15,50773,0,28167,132326,18,0,'Arthas - cast Crusader Strike on Stratholme Citizen'),
(2649927,2,0,0,0,28169,132359,16,@DB_STRING_ENTRY+29,'Stratholme Resident - say city attack 2'),
(2649927,3,0,0,0,28167,132327,16,@DB_STRING_ENTRY+30,'Stratholme Resident - say city attack 3');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649928;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649928,0,15,50773,0,28169,132359,18,0,'Arthas - cast Crusader Strike on Stratholme Resident');
-- Mal'ganis appears
DELETE FROM dbscripts_on_creature_movement WHERE id=2649929;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(2649929,0,0,0,0,0,0,0,@DB_STRING_ENTRY+31,0,0,0,0,'Arthas - say city 2'),
(2649929,2,10,26533,30000,0,0,0,0,2113.454,1287.986,136.3829,3.07,'Spawn Malganis'),
(2649929,3,0,0,0,26533,30,0,@DB_STRING_ENTRY+32,0,0,0,0,'Malganis - say city 4');
DELETE FROM dbscripts_on_creature_movement WHERE id=2649930;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649930,10,35,5,100,26533,30,0,0,'Malganis - Send AI event'),
(2649930,12,0,0,0,26533,30,0,@DB_STRING_ENTRY+33,'Malganis - say city 5'),
(2649930,27,15,51908,0,26533,30,0,0,'Malganis - Cast Cosmetic - Shadowstep'),
(2649930,27,18,1000,0,26533,30,2,0,'Malganis - Despawn'),
(2649930,27,0,0,0,0,0,0,@DB_STRING_ENTRY+34,'Arthas - say city 6'),
(2649930,37,0,0,0,0,0,0,@DB_STRING_ENTRY+35,'Arthas - say city 7');
-- Last WP - set to pause and execute further events from SD2
DELETE FROM dbscripts_on_creature_movement WHERE id=2649931;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649931,0,32,1,0,0,0,0,0,'Arthas - pause WP Movement'),
(2649931,0,32,0,0,27747,132436,16,0,'High Elf Mage-Priest - resume WP movement'), -- left
(2649931,0,32,0,0,27747,132435,16,0,'High Elf Mage-Priest - resume WP movement'), -- right
(2649931,0,32,0,0,27745,132418,16,0,'Lordaeron Footman - resume WP movement'), -- left middle
(2649931,0,32,0,0,27745,132417,16,0,'Lordaeron Footman - resume WP movement'), -- right middle
(2649931,0,32,0,0,27745,132419,16,0,'Lordaeron Footman - resume WP movement'), -- left front
(2649931,0,32,0,0,27745,132416,16,0,'Lordaeron Footman - resume WP movement'); -- right front


-- ############
-- Other actors
-- ############
-- Jaina
-- Movement
DELETE FROM creature_movement_template WHERE entry=26497;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(26497, 1, 1885.484, 1297.844, 145.2992, 0, 0, 0), 
(26497, 2, 1891.239, 1294.988, 144.1697, 0, 0, 0), 
(26497, 3, 1896.754, 1292.831, 143.7381, 1000, 2649703, 5.76),
(26497, 4, 1898.829, 1299.562, 144.0106, 1000, 2649703, 1.24),
(26497, 5, 1895.119, 1293.928, 143.7991, 4000, 2649705, 3.46),
(26497, 6, 1868.875, 1283.657, 144.1956, 0, 0, 0),
(26497, 7, 1836.849, 1280.569, 143.7523, 0, 0, 0),
(26497, 8, 1785.225, 1267.401, 139.7626, 0, 2649708, 0);
-- Janina movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2649703,2649705,2649708);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2649703,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(2649705,0,0,0,0,0,0,0,@DB_STRING_ENTRY+18,'Jaina - say intro 17'),
(2649705,0,16,14949,0,0,0,8,0,'Jaina - change music'),
(2649705,10,32,0,0,26499,50,0,0,'Arthas - unpause WP movement'),
(2649708,0,18,0,0,0,0,0,0,'Jaina - despawn');

-- Uther
-- Movement
DELETE FROM creature_movement_template WHERE entry=26528;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(26528, 1, 1807.619, 1276.471, 141.7253, 0, 0, 0),
(26528, 2, 1862.016, 1282.776, 144.1979, 0, 2652802, 0), 
(26528, 3, 1879.415, 1283.921, 143.8993, 0, 2652803, 0),
(26528, 4, 1889.687, 1285.941, 143.7088, 0, 2652804, 0), 
(26528, 5, 1899.588, 1288.324, 143.3571, 1000, 2652805, 0.76),
(26528, 6, 1903.257, 1298.676, 143.5107, 1000, 2652805, 1.37),
(26528, 7, 1896.119, 1294.928, 143.7991, 0, 0, 0),
(26528, 8, 1868.875, 1283.657, 144.1956, 0, 2652808, 0),
(26528, 9, 1836.849, 1280.569, 143.7523, 0, 0, 0),
(26528, 10, 1785.225, 1267.401, 139.7626, 0, 2652810, 0);
-- Uther movement scripts
-- 1. Soldiers salute
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2652802,2652803);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2652802,0,0,0,0,27745,30,0,@DB_STRING_ENTRY+0,'Soldier - say salute 1'),
(2652803,0,0,0,0,27745,30,0,@DB_STRING_ENTRY+1,'Soldier - say salute 2');
-- 2. Various Uther events
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2652804,2652805,2652808,2652810);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2652804,0,35,5,30,0,'Uther - Send AI event'),
(2652805,0,32,1,0,0,'Uther - pause WP Movement'),
(2652808,0,35,6,30,0,'Uther - Send AI event'),
(2652810,0,18,0,0,0,'Uther - despawn');

-- Soldiers and Citizen
-- priest-mages movement
UPDATE creature SET MovementType=2 WHERE guid IN (132436,132435,132418,132417,132419,132416);
DELETE FROM creature_movement WHERE id=132436;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132436, 1, 2037.91, 1293.03, 143.399, 1000, 2774701, 4.729),
(132436, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(132436, 3, 2074.805, 1292.172, 141.6728, 1000, 2774701, 6.27),
(132436, 4, 2091.476, 1294.284, 139.8228, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=132435;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132435, 1, 2037.59, 1281.81, 143.566, 1000, 2774701, 1.483),
(132435, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(132435, 3, 2074.624, 1282.958, 141.6344, 1000, 2774701, 6.27),
(132435, 4, 2091.26, 1281.715, 139.9222, 1000, 2774701, 6.27);
-- footmen movement
DELETE FROM creature_movement WHERE id=132418;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132418, 1,2042.13, 1293.14, 143.236, 1000, 2774701, 4.642),
(132418, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(132418, 3, 2077.737, 1290.441, 141.5698, 1000, 2774701, 6.27),
(132418, 4, 2096.125, 1290.533, 138.8193, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=132417;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132417, 1,2041.97, 1281.66, 143.454, 1000, 2774701, 1.623),
(132417, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(132417, 3, 2077.590, 1284.609, 141.5710, 1000, 2774701, 6.27),
(132417, 4, 2096.411, 1284.227, 138.799, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=132419;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132419, 1, 2046.86, 1293.33, 143.032, 1000, 2774701, 4.782),
(132419, 2, 2064.724, 1292.197, 141.9911, 0, 0, 0), 
(132419, 3, 2078.055, 1293.624, 141.5544, 1000, 2774701, 6.27),
(132419, 4, 2096.939, 1297.57, 138.9689, 1000, 2774701, 6.27);
DELETE FROM creature_movement WHERE id=132416;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132416, 1, 2046.71, 1281.91, 143.221, 1000, 2774701, 1.518),
(132416, 2, 2060.791, 1282.987, 142.1430, 0, 0, 0), 
(132416, 3, 2078.365, 1281.254, 141.5182, 1000, 2774701, 6.27),
(132416, 4, 2096.328, 1278.988, 139.4345, 1000, 2774701, 6.27);
-- citizen movement
DELETE FROM creature_movement WHERE id=132326;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(132326, 1, 2088.094, 1279.229, 140.827, 1000, 2774701, 2.19);
-- soldiers script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2774701);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2774701,0,32,1,0,0,'Soldier - pause WP Movement'); 
 
-- Misc
-- addon for knights
DELETE FROM creature_template_addon WHERE entry=28612;
INSERT INTO creature_template_addon (entry,mount) VALUES
(28612, 14584);
DELETE FROM dbscripts_on_spell WHERE id=53435;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,datalong2,data_flags,comments) VALUES
(53435,0,15,53436,0,6,'Cast Teleport to CoT Stratholme Phase 4'); 
