-- Instructor Razuvious -- The Ebdon Hold
SET @DB_STRING_ENTRY = 2000000349;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 129307;
DELETE FROM creature_movement WHERE id = 129307;
UPDATE creature_template SET MovementType = 2, SpeedWalk = 1.8, SpeedRun = 1.714286 WHERE entry = 28357; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 28357;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(28357,1,2481.1,-5560.54,420.493,0,0,0,0,0,0,0,0,0,0,5.58015,0,0),(28357,2,2491.86,-5571.77,420.459,0,0,0,0,0,0,0,0,0,0,5.3508,0,0),(28357,3,2497.91,-5588.32,420.462,0,0,0,0,0,0,0,0,0,0,4.9212,0,0),
(28357,4,2494.03,-5612.09,420.491,0,0,0,0,0,0,0,0,0,0,1.24868,0,0),(28357,5,2498.68,-5591.69,420.494,0,0,0,0,0,0,0,0,0,0,1.78118,0,0),(28357,6,2492.94,-5573.05,420.475,0,0,0,0,0,0,0,0,0,0,2.14717,0,0),
(28357,7,2475.93,-5558.57,420.485,0,0,0,0,0,0,0,0,0,0,2.79199,0,0),(28357,8,2455.66,-5554.78,420.508,0,0,0,0,0,0,0,0,0,0,0.040735,0,0),(28357,9,2472.56,-5558.04,420.453,0,0,0,0,0,0,0,0,0,0,6.06788,0,0),
(28357,10,2481.1,-5560.54,420.493,0,0,0,0,0,0,0,0,0,0,5.58015,0,0),(28357,11,2491.86,-5571.77,420.459,0,0,0,0,0,0,0,0,0,0,5.3508,0,0),(28357,12,2497.91,-5588.32,420.462,0,0,0,0,0,0,0,0,0,0,4.9212,0,0),
(28357,13,2494.03,-5612.09,420.491,0,0,0,0,0,0,0,0,0,0,1.24868,0,0),(28357,14,2498.68,-5591.69,420.494,0,0,0,0,0,0,0,0,0,0,1.78118,0,0),(28357,15,2492.94,-5573.05,420.475,0,0,0,0,0,0,0,0,0,0,2.14717,0,0),
(28357,16,2475.93,-5558.57,420.485,0,0,0,0,0,0,0,0,0,0,2.79199,0,0),(28357,17,2455.66,-5554.78,420.508,0,0,0,0,0,0,0,0,0,0,0.040735,0,0),(28357,18,2472.56,-5558.04,420.453,0,0,0,0,0,0,0,0,0,0,6.06788,0,0),
(28357,19,2481.1,-5560.54,420.493,0,0,0,0,0,0,0,0,0,0,5.58,0,0),(28357,20,2482.32,-5552.39,420.641,70000,2835701,0,0,0,0,0,0,0,0,1.51,0,0),(28357,21,2491.86,-5571.77,420.459,0,0,0,0,0,0,0,0,0,0,5.351,0,0),
(28357,22,2497.91,-5588.32,420.462,0,0,0,0,0,0,0,0,0,0,4.9212,0,0),(28357,23,2494.03,-5612.09,420.491,0,0,0,0,0,0,0,0,0,0,1.24868,0,0),(28357,24,2498.68,-5591.69,420.494,0,0,0,0,0,0,0,0,0,0,1.78118,0,0),
(28357,25,2492.94,-5573.05,420.475,0,0,0,0,0,0,0,0,0,0,2.14717,0,0),(28357,26,2475.93,-5558.57,420.485,0,0,0,0,0,0,0,0,0,0,2.79199,0,0),(28357,27,2455.66,-5554.78,420.508,0,0,0,0,0,0,0,0,0,0,0.040735,0,0),
(28357,28,2472.56,-5558.04,420.453,0,0,0,0,0,0,0,0,0,0,6.06788,0,0),(28357,29,2481.1,-5560.54,420.493,0,0,0,0,0,0,0,0,0,0,5.58015,0,0),(28357,30,2491.86,-5571.77,420.459,0,0,0,0,0,0,0,0,0,0,5.3508,0,0),
(28357,31,2497.91,-5588.32,420.462,0,0,0,0,0,0,0,0,0,0,4.9212,0,0),(28357,32,2494.03,-5612.09,420.491,0,0,0,0,0,0,0,0,0,0,1.24868,0,0),(28357,33,2498.68,-5591.69,420.494,0,0,0,0,0,0,0,0,0,0,1.78118,0,0),
(28357,34,2492.94,-5573.05,420.475,0,0,0,0,0,0,0,0,0,0,2.14717,0,0),(28357,35,2475.93,-5558.57,420.485,0,0,0,0,0,0,0,0,0,0,2.79199,0,0),(28357,36,2455.66,-5554.78,420.508,0,0,0,0,0,0,0,0,0,0,0.040735,0,0),
(28357,37,2472.56,-5558.04,420.453,0,0,0,0,0,0,0,0,0,0,6.06788,0,0),(28357,38,2481.1,-5560.54,420.493,0,0,0,0,0,0,0,0,0,0,5.58015,0,0),(28357,39,2491.86,-5571.77,420.459,0,0,0,0,0,0,0,0,0,0,5.3508,0,0),
(28357,40,2497.91,-5588.32,420.462,0,0,0,0,0,0,0,0,0,0,4.9212,0,0),(28357,41,2494.03,-5612.09,420.491,0,0,0,0,0,0,0,0,0,0,1.24868,0,0),(28357,42,2498.68,-5591.69,420.494,0,0,0,0,0,0,0,0,0,0,1.78118,0,0),
(28357,43,2510.38,-5592.75,420.643,75000,2835702,0,0,0,0,0,0,0,0,6.19,0,0),(28357,44,2492.94,-5573.05,420.475,0,0,0,0,0,0,0,0,0,0,2.147,0,0),(28357,45,2475.93,-5558.57,420.485,0,0,0,0,0,0,0,0,0,0,2.79,0,0),
(28357,46,2455.66,-5554.78,420.508,0,0,0,0,0,0,0,0,0,0,0.040735,0,0),(28357,47,2472.56,-5558.04,420.453,0,0,0,0,0,0,0,0,0,0,6.06788,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2835701,2835702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2835701,1,0,0,0,0,0,0,@DB_STRING_ENTRY,0,0,0,0,0,0,0,''),
(2835701,2,20,2,0,28383,129391,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2835702,1,0,0,0,0,0,0,@DB_STRING_ENTRY,0,0,0,0,0,0,0,''),
(2835702,2,20,2,0,28383,129390,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+19;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(@DB_STRING_ENTRY,'This one...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(@DB_STRING_ENTRY+1,'I hurt... suffering unbearable... end my pain... I beg of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@DB_STRING_ENTRY+2,'Who... who are you? Who.. what am I?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@DB_STRING_ENTRY+3,'I return from the grave to do my master\'s bidding.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@DB_STRING_ENTRY+4,'Another failure...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+5,'This one has awoken too soon. It retains emotion and memory...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+6,'The Lich King will be pleased with this initiate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(@DB_STRING_ENTRY+7,'Useless...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+8,'You have been measured and found wanting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(@DB_STRING_ENTRY+9,'Place upon it the trappings befitting a herald of Arthas.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+10,'Dispose of it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+11,'Yes, instructor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+12,'Right away, instructor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@DB_STRING_ENTRY+13,'Rise, minions. Rise and feast upon the weak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,NULL),
(@DB_STRING_ENTRY+14,'Stand and be measured! Rise, for your master awaits your arrival. Go now!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(@DB_STRING_ENTRY+15,'Listen, death knight... Listen for the voice of your master. He calls to you now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(@DB_STRING_ENTRY+16,'Victory to the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,66,NULL),
(@DB_STRING_ENTRY+17,'Death to all that oppose us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,66,NULL),
(@DB_STRING_ENTRY+18,'I have awoken to a nightmare?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@DB_STRING_ENTRY+19,'Pathetic...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Acherus Necromancer #1 -- First EVENT
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 129391;
DELETE FROM creature_movement WHERE id = 129391;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(129391,1,2477.37,-5551,420.647,300000,2838301,0,0,0,0,0,0,0,0,0.746414,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2838301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2838301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Acherus Necromancer - active'),
(2838301,3,15,51516,0,28391,10,1,0,0,0,0,0,0,0,0,''),
(2838301,7,15,51517,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838301,8,14,29266,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838301,10,22,1770,0x01 | 0x80,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(2838301,11,3,0,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,4.16204,''),
(2838301,11,28,8,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2838301,15,0,0,0,28391,129440,7 | 0x10,@DB_STRING_ENTRY+3,0,0,0,0,0,0,0,''),
(2838301,20,0,0,0,28357,10,7,@DB_STRING_ENTRY+6,0,0,0,0,0,0,0,''),
(2838301,25,3,0,0,28357,10,7,0,0,0,0,0,0,0,2.78367,''),
(2838301,28,0,0,0,28357,10,7,@DB_STRING_ENTRY+9,0,0,0,0,0,0,0,''),
(2838301,31,3,0,0,28357,10,7,0,0,0,0,0,0,0,1.50472,''),
(2838301,31,0,0,0,0,0,0,@DB_STRING_ENTRY+11,@DB_STRING_ENTRY+12,0,0,0,0,0,0,''),
(2838301,35,3,0,0,0,0,0,0,0,0,0,2482.23,-5546.44,420.644,0.761266,''),
(2838301,39,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2838301,44,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2838301,44,15,51537,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838301,46,15,51519,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838301,48,28,0,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2838301,50,3,0,0,0,0,0,0,0,0,0,2477.37,-5551,420.647,0.77,''),
(2838301,54,3,0,0,0,0,0,0,0,0,0,0,0,0,0.746414,''),
(2838301,55,0,0,0,28357,10,7,@DB_STRING_ENTRY+14,@DB_STRING_ENTRY+15,0,0,0,0,0,0,''),
(2838301,60,0,0,0,28391,129440,7 | 0x10,@DB_STRING_ENTRY+16,@DB_STRING_ENTRY+17,0,0,0,0,0,0,''),
(2838301,61,21,1,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'Death Knight Initiate - active'),
(2838301,61,25,1,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(2838301,62,20,2,0,28391,129440,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2838301,63,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2838301,65,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Acherus Necromancer - unactive');
-- Death Knight Initiate #1 -- part of EVENT 1
UPDATE creature SET modelid = 25361, MovementType = 0, spawndist = 0 WHERE guid = 129440; -- movementType will be set by SCRIPT
DELETE FROM creature_movement WHERE id = 129440;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(129440,1,2453.87,-5545.37,420.643,0,0,0,0,0,0,0,0,0,0,3.84632,0,0),
(129440,2,2423.38,-5574.52,420.631,0,0,0,0,0,0,0,0,0,0,4.3346,0,0),
(129440,3,2423.38,-5610.59,420.6,0,0,0,0,0,0,0,0,0,0,4.31103,0,0),
(129440,4,2410.19,-5626.02,420.654,0,0,0,0,0,0,0,0,0,0,3.70549,0,0),
(129440,5,2381.18,-5637.17,420.858,0,0,0,0,0,0,0,0,0,0,3.73062,0,0),
(129440,6,2372.68,-5645.34,426.017,0,0,0,0,0,0,0,0,0,0,3.99137,0,0),
(129440,7,2348.248,-5666.514,426.029,11000,2839101,0,0,0,0,0,0,0,0,4.10762,0,0),
(129440,8,2373.07,-5652.69,426.126,0,0,0,0,0,0,0,0,0,0,0.618087,0,0), -- jump missing
(129440,9,2382.63,-5645.56,421.512,3000,2839102,0,0,0,0,0,0,0,0,0.402889,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2839101,2839102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2839101,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2839101,9,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2839102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(2839102,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2839102,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Death Knight Initiate- unactive'),
(2839102,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Acherus Necromancer #2  -- 2nd EVENT
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 129390;
DELETE FROM creature_movement WHERE id = 129390;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(129390,1,2511.04,-5590.1,420.646,300000,2838302,0,0,0,0,0,0,0,0,6.03884,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2838302; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2838302,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Acherus Necromancer - active'),
(2838302,3,15,51516,0,28394,129459,1,0,0,0,0,0,0,0,0,''),
(2838302,7,15,51517,0,28394,129459,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,8,14,29266,0,28394,129459,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,10,22,1770,0x01 | 0x80,28394,129459,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(2838302,11,3,0,0,28394,129459,7 | 0x10,0,0,0,0,0,0,0,3.07005,''),
(2838302,11,28,8,0,28394,129459,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2838302,15,0,0,0,28394,129459,7 | 0x10,@DB_STRING_ENTRY+2,@DB_STRING_ENTRY+1,@DB_STRING_ENTRY+18,0,0,0,0,0,''),
(2838302,20,0,0,0,28357,20,7,@DB_STRING_ENTRY+4,@DB_STRING_ENTRY+7,@DB_STRING_ENTRY+5,@DB_STRING_ENTRY+19,0,0,0,0,''),
(2838302,26,0,0,0,28357,20,7,@DB_STRING_ENTRY+8,0,0,0,0,0,0,0,''),
(2838302,31,3,0,0,28357,20,7,0,0,0,0,0,0,0,1.26755,''),
(2838302,35,0,0,0,28357,20,7,@DB_STRING_ENTRY+10,0,0,0,0,0,0,0,''),
(2838302,41,3,0,0,28357,20,7,0,0,0,0,0,0,0,6.19669,''),
(2838302,41,0,0,0,0,0,0,@DB_STRING_ENTRY+11,@DB_STRING_ENTRY+12,0,0,0,0,0,0,''),
(2838302,46,0,0,0,0,0,0,@DB_STRING_ENTRY+13,0,0,0,0,0,0,0,''),
(2838302,50,15,26047,0,28405,129480,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,50,15,26047,0,28405,129481,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,50,15,26047,0,28405,129482,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,52,1,0,0,28405,129480,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,52,1,0,0,28405,129481,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,52,1,0,0,28405,129482,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,53,22,2093,0x01 | 0x80,28405,129480,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(2838302,53,22,2093,0x01 | 0x80,28405,129481,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(2838302,53,22,2093,0x01 | 0x80,28405,129482,7 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(2838302,53,20,2,0,28394,129459,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2838302,67,1,374,0,28405,129480,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,67,1,374,0,28405,129481,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,67,1,374,0,28405,129482,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,69,18,0,0,28405,129480,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,69,18,0,0,28405,129481,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,69,18,0,0,28405,129482,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2838302,72,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2838302,73,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Acherus Necromancer - unactive');
-- Death Knight Initiate -- update
UPDATE creature SET deathState = 0 WHERE id  = 28394;
UPDATE creature SET spawntimesecs = 20 WHERE id IN (28390,28391,28392,28393,28394);
UPDATE creature_template SET UnitFlags = 0x2000000 + 0x8000 WHERE entry = 28394;
UPDATE creature_template SET UnitFlags = 33587200 WHERE entry = 28391;
DELETE FROM creature_addon WHERE guid = 129459;
DELETE FROM creature_template_addon WHERE entry = 28394;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28394,0,0,1,1,0,0,29266);
DELETE FROM creature_movement WHERE id = 129459;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(129459,1,2516.23,-5593.2,420.647,100000,2839401,0,0,0,0,0,0,0,0,3.07005,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2839401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2839401,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2839401,1,26,0,0,28405,129480,0 | 0x10,0,0,0,0,0,0,0,0,''),
(2839401,1,26,0,0,28405,129481,0 | 0x10,0,0,0,0,0,0,0,0,''),
(2839401,1,26,0,0,28405,129482,0 | 0x10,0,0,0,0,0,0,0,0,'');
-- Acherus Ghoul  -- update
UPDATE creature SET spawntimesecs = 20 WHERE id = 28405;
UPDATE creature_template SET UnitFlags = 33587200 WHERE entry = 28405; -- correct
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (129480,129481,129482);
DELETE FROM creature_movement WHERE id IN (129480,129481,129482);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(129480,1,2520.44,-5593.01,420.727,10000,2840501,0,0,0,0,0,0,0,0,3.4383,0,0),
(129481,1,2516.65,-5596.68,420.727,10000,2840501,0,0,0,0,0,0,0,0,1.39626,0,0),
(129482,1,2515.93,-5589.89,420.727,10000,2840501,0,0,0,0,0,0,0,0,4.92183,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2840501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840501,0,1,373,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2840501,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 51516;
INSERT INTO spell_script_target (entry,type,targetEntry) VALUES
(51516,1,28390),
(51516,1,28391),
(51516,1,28392),
(51516,1,28393),
(51516,1,28394);
-- Duplicates removed
DELETE FROM creature WHERE guid IN (129452,129446,129458,129435);
DELETE FROM creature_addon WHERE guid IN (129452,129446,129458,129435);
DELETE FROM creature_movement WHERE id IN (129452,129446,129458,129435);
DELETE FROM game_event_creature WHERE guid IN (129452,129446,129458,129435);
DELETE FROM game_event_creature_data WHERE guid IN (129452,129446,129458,129435);
DELETE FROM creature_battleground WHERE guid IN (129452,129446,129458,129435);
DELETE FROM creature_linking WHERE guid IN (129452,129446,129458,129435) OR master_guid IN (129452,129446,129458,129435);