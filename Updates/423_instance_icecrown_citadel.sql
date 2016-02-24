-- ####################
-- ICC entrance scripts
-- ####################

-- Deathbound ward and Nerub'ar Broodkeeper flags
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE entry=37007; -- not selectable is handled by aura
UPDATE creature_template SET UnitFlags=UnitFlags|768 WHERE entry=36725;
SET @DB_STRING_ENTRY:=2000005895;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+6;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(@DB_STRING_ENTRY+0,'I... awaken!',0,1,0,0,'Deathbound Ward - say awake 1'),
(@DB_STRING_ENTRY+1,'The master\'s sanctum has been disturbed!',0,1,0,0,'Deathbound Ward - say awake 2'),
(@DB_STRING_ENTRY+2,'Who... goes there...?',0,1,0,0,'Deathbound Ward - say awake 3');

-- Spirit alarms
-- ToDo: research why the trap has two charges
DELETE FROM dbscripts_on_event WHERE id IN (22900,22907,22908,22909);
INSERT INTO dbscripts_on_event (id,delay,command,datalong,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,comments) VALUES
(22900,1,14,70733,37007,120289,16,0,0,0,'Deathbound Ward - remove Stoneform'), -- front left
(22900,1,0,0,37007,120289,16,@DB_STRING_ENTRY+0,@DB_STRING_ENTRY+1,@DB_STRING_ENTRY+2,'Deathbound Ward - random text'),
(22900,2,20,2,37007,120289,16,0,0,0,'Deathbound Ward - start wp movement'),
(22900,3,40,0,201814,15,1,0,0,0,'Spirit Alarm - despawn'),
(22907,1,14,70733,37007,120290,16,0,0,0,'Deathbound Ward - remove Stoneform'), -- front right
(22907,1,0,0,37007,120290,16,@DB_STRING_ENTRY+0,@DB_STRING_ENTRY+1,@DB_STRING_ENTRY+2,'Deathbound Ward - random text'),
(22907,2,20,2,37007,120290,16,0,0,0,'Deathbound Ward - start wp movement'),
(22907,3,40,0,201815,15,1,0,0,0,'Spirit Alarm - despawn'),
(22908,1,14,70733,37007,120287,16,0,0,0,'Deathbound Ward - remove Stoneform'), -- back left
(22908,1,0,0,37007,120287,16,@DB_STRING_ENTRY+0,@DB_STRING_ENTRY+1,@DB_STRING_ENTRY+2,'Deathbound Ward - random text'),
(22908,2,20,2,37007,120287,16,0,0,0,'Deathbound Ward - start wp movement'),
(22908,3,40,0,201816,15,1,0,0,0,'Spirit Alarm - despawn'),
(22909,1,14,70733,37007,120288,16,0,0,0,'Deathbound Ward - remove Stoneform'), -- back right
(22909,1,0,0,37007,120288,16,@DB_STRING_ENTRY+0,@DB_STRING_ENTRY+1,@DB_STRING_ENTRY+2,'Deathbound Ward - random text'),
(22909,2,20,2,37007,120288,16,0,0,0,'Deathbound Ward - start wp movement'),
(22909,3,40,0,201817,15,1,0,0,0,'Spirit Alarm - despawn');

-- Deathbound Ward Movement
-- Credit to Ulduar
DELETE FROM creature_movement WHERE id IN (120289,120290,120287,120288);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(120289,1,-195.556,2159.72,37.9852,4.8476),
(120289,2,-177.204,2175.84,37.9853,0.9251),
(120289,3,-173.591,2189.46,35.2335,1.5183),
(120289,4,-174.655,2209.46,35.2335,1.7422),
(120289,5,-177.094,2235.97,35.2338,1.5867),
(120289,6,-177.294,2248.54,37.9852,1.5867),
(120289,7,-194.825,2260.38,37.9852,3.0334),
(120289,8,-212.611,2250.77,37.9852,3.5423),
(120289,9,-230.955,2237.90,37.9852,3.8887),
(120289,10,-229.738,2212.02,40.0204,4.7424),
(120289,11,-228.991,2187.19,37.9851,4.7424),
(120289,12,-200.224,2163.78,37.9851,5.7768);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(120290,1,-193.596,2271.73,37.9852,4.6262),
(120290,2,-215.129,2248.31,37.9852,3.6428),
(120290,3,-234.258,2234.39,37.9852,3.8620),
(120290,4,-243.419,2223.15,42.5645,4.0835),
(120290,5,-251.311,2213.30,42.5645,3.5674),
(120290,6,-284.737,2211.21,42.5645,3.1551),
(120290,7,-262.889,2211.46,42.5645,0.1753),
(120290,8,-246.708,2211.03,42.5645,0.0324),
(120290,9,-241.257,2222.37,42.5645,1.1225),
(120290,10,-234.768,2235.86,37.9852,1.1225),
(120290,11,-228.336,2242.90,37.9852,0.5821),
(120290,12,-197.483,2254.77,37.9852,0.2688);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(120287,1,-301.039,2197.79,41.9719,4.8280),
(120287,2,-300.855,2213.11,42.0115,6.2488),
(120287,3,-277.915,2212.32,42.5645,6.2488),
(120287,4,-254.976,2211.53,42.5645,6.2488),
(120287,5,-241.460,2211.07,42.5645,6.2488),
(120287,6,-278.073,2211.25,42.5645,3.2227),
(120287,7,-301.564,2211.86,42.0141,3.0978),
(120287,8,-321.138,2212.72,42.5647,3.0978),
(120287,9,-346.401,2210.41,42.4983,3.0617);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(120288,1,-300.993,2235.42,44.1816,1.4649),
(120288,2,-299.781,2224.62,41.9728,1.6322),
(120288,3,-298.953,2211.19,42.0133,1.6322),
(120288,4,-310.497,2211.32,42.2247,3.1622),
(120288,5,-329.218,2210.93,42.5644,3.1622),
(120288,6,-352.145,2210.46,42.4098,3.1622),
(120288,7,-313.843,2212.41,42.5646,6.2143),
(120288,8,-291.802,2212.29,42.0142,6.2779),
(120288,9,-244.783,2212.04,42.5645,6.2779),
(120288,10,-298.511,2211.16,42.0141,3.1166),
(120288,11,-300.285,2226.74,42.2408,1.6841),
(120288,12,-300.820,2242.31,44.1815,1.5286);
