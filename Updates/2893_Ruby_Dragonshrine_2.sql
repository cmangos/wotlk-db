-- Ruby Dragonshrine - Dragonblight
-- Part 2: Frigid Invasion

-- Generic Script added
DELETE FROM dbscripts_on_creature_movement WHERE id = 13;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13,0,35,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 8 (C) to Self');

-- Ruby Controller Bunny 27572
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5713829,5713830,5713831);
DELETE FROM creature_movement WHERE id IN (5713829,5713830,5713831);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713829,1,3653.47,1183.16,142.386,3.71755,300000,11), -- horde
(5713830,1,3827.087,679.385,57.67332,0,300000,12), -- Alliance 1
(5713831,1,3601.899,784.695,71.867,0,300000,13); -- Alliance 2
-- Part of Ruby Controller Bunny EAI
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20163 AND 20165;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- horde
(20163,1,20298,30,'Part of Ruby Controller Bunny EAI: 26652 - Horde Side Invasion - Random Script - 1'),
(20163,1,20299,35,'Part of Ruby Controller Bunny EAI: 26652 - Horde Side Invasion - Random Script - 2'),
(20163,1,20300,35,'Part of Ruby Controller Bunny EAI: 26652 - Horde Side Invasion - Random Script - 3'),
-- alliance 1
(20164,1,20301,30,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 1 Invasion - Random Script - 1'),
(20164,1,20302,35,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 1 Invasion - Random Script - 2'),
(20164,1,20303,35,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 1 Invasion - Random Script - 3'),
-- alliance 2
(20165,1,20304,30,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 2 Invasion - Random Script - 1'),
(20165,1,20305,35,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 2 Invasion - Random Script - 2'),
(20165,1,20306,35,'Part of Ruby Controller Bunny EAI: 26652 - Alliance Side 2 Invasion - Random Script - 3');
-- Horde Invasion Scripts
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20298 AND 20306;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- HORDE side
-- Option 1
(20298,90,10,27530,30000,1,0,0,0,1,0,0,0,3630.405,1323.575,177.0786,0,'Part of Ruby Controller Bunny EAI: summon Ruby Keeper - Horde Side Invasion - Random Script 1'), 
(20298,100,10,27686,120000,2,0,0,0,1,0,0,0,3638.52,1115.96,81.3305,1.7376,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 1'),
(20298,101,10,27686,120000,4,0,0,0,1,0,0,0,3642.91,1117.16,80.9243,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 1'),
(20298,100,10,27687,120000,1,0,0,0,1,0,0,0,3640.91,1113.36,78.8297,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Horde Side Invasion - Random Script 1'),
(20298,103,10,27686,120000,1,0,0,0,1,0,0,0,3636.38,1112.24,79.6771,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 1'),
(20298,104,10,27686,120000,4,0,0,0,1,0,0,0,3643.4,1111.17,77.1742,1.7219,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 1'),
(20298,105,10,27686,120000,2,0,0,0,1,0,0,0,3638.82,1110.61,77.9503,1.63943,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 1'),
(20298,4000,31,27751,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27751 - Horde Side Invasion - Random Script 1'),
(20298,4100,0,0,0,0,27751,210,7,2000020394,2000020395,2000020396,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Horde Side Invasion - Random Script 1'),
-- Option 2
(20299,100,10,27687,120000,1,0,0,0,1,0,0,0,3640.91,1113.36,78.8297,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Horde Side Invasion - Random Script 2'),
(20299,101,10,27686,120000,1,0,0,0,1,0,0,0,3636.38,1112.24,79.6771,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 2'),
(20299,102,10,27686,120000,2,0,0,0,1,0,0,0,3638.52,1115.96,81.3305,1.7376,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 2'),
(20299,103,10,27686,120000,4,0,0,0,1,0,0,0,3642.91,1117.16,80.9243,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 2'),
(20299,104,10,27686,120000,5,0,0,0,1,0,0,0,3645.79,1115.18,78.9363,1.79651,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 2'),
(20299,5000,31,27751,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27751 - Horde Side Invasion - Random Script 2'),
(20299,5100,0,0,0,0,27751,210,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Horde Side Invasion - Random Script 2'),
-- Option 3
(20300,100,10,27531,180000,1,0,0,0,1,0,0,0,3640.91,1113.36,78.8297,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Abomination Attacker - Horde Side Invasion - Random Script 3'),
(20300,101,10,27686,120000,1,0,0,0,1,0,0,0,3636.38,1112.24,79.6771,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 3'),
(20300,102,10,27686,120000,2,0,0,0,1,0,0,0,3638.52,1115.96,81.3305,1.7376,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 3'),
(20300,103,10,27686,120000,4,0,0,0,1,0,0,0,3642.91,1117.16,80.9243,1.65514,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 3'),
(20300,104,10,27686,120000,5,0,0,0,1,0,0,0,3645.79,1115.18,78.9363,1.79651,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Horde Side Invasion - Random Script 3'),
(20300,5000,31,27751,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27751 - Horde Side Invasion - Random Script 3'),
(20300,5100,0,0,0,0,27751,210,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Horde Side Invasion - Random Script 3'),
-- ALLIANCE side 1
-- Option 1 - will happen only if Captain Iskandar 27567 is there
(20301,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 1'),
(20301,90,10,27530,30000,3,0,0,0,1,0,0,0,3883.297,567.1484,119.0785,0,'Part of Ruby Controller Bunny EAI: summon Ruby Keeper - Alliance 1 Side Invasion - Random Script 1'),
(20301,100,10,27686,120000,7,0,0,0,1,0,0,0,3757.41,786.372,66.578,5.09229,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,101,10,27686,120000,9,0,0,0,1,0,0,0,3760.95,787.614,66.976,5.03339,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,102,10,27687,120000,2,0,0,0,1,0,0,0,3758.54,789.583,67.4813,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,103,10,27686,120000,6,0,0,0,1,0,0,0,3754.86,787.997,66.9047,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,104,10,27686,120000,10,0,0,0,1,0,0,0,3762.67,790.582,67.9752,5.0133,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,105,10,27686,120000,7,0,0,0,1,0,0,0,3755.43,790.788,67.7038,5.05257,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 1'),
(20301,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 1'),
(20301,4100,0,0,0,0,27567,45,7,2000020394,2000020395,2000020396,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 1 Side Invasion - Random Script 1'),
-- Option 2 - will happen only if Captain Iskandar 27567 is there
(20302,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 2'),
(20302,100,10,27686,120000,7,0,0,0,1,0,0,0,3757.41,786.372,66.578,5.09229,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,101,10,27686,120000,9,0,0,0,1,0,0,0,3760.95,787.614,66.976,5.03339,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,102,10,27687,120000,2,0,0,0,1,0,0,0,3758.54,789.583,67.4813,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,103,10,27686,120000,6,0,0,0,1,0,0,0,3754.86,787.997,66.9047,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,104,10,27686,120000,10,0,0,0,1,0,0,0,3762.67,790.582,67.9752,5.0133,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,105,10,27686,120000,7,0,0,0,1,0,0,0,3755.43,790.788,67.7038,5.05257,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,106,10,27686,120000,9,0,0,0,1,0,0,0,3759.85,792.278,68.24,5.02901,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 2'),
(20302,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 2'),
(20302,4100,0,0,0,0,27567,45,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 1 Side Invasion - Random Script 2'),
-- Option 3 - will happen only if Captain Iskandar 27567 is there
(20303,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 3'),
(20303,100,10,27686,120000,7,0,0,0,1,0,0,0,3757.41,786.372,66.578,5.09229,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,101,10,27686,120000,9,0,0,0,1,0,0,0,3760.95,787.614,66.976,5.03339,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,102,10,27531,180000,2,0,0,0,1,0,0,0,3758.54,789.583,67.4813,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Abomination Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,103,10,27686,120000,6,0,0,0,1,0,0,0,3754.86,787.997,66.9047,5.06435,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,104,10,27686,120000,10,0,0,0,1,0,0,0,3762.67,790.582,67.9752,5.0133,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,105,10,27686,120000,7,0,0,0,1,0,0,0,3755.43,790.788,67.7038,5.05257,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,106,10,27686,120000,9,0,0,0,1,0,0,0,3759.85,792.278,68.24,5.02901,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 1 Side Invasion - Random Script 3'),
(20303,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 1 Side Invasion - Random Script 3'),
(20303,4100,0,0,0,0,27567,45,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 1 Side Invasion - Random Script 3'),
-- ALLIANCE side 2
-- Option 1 - will happen only if Captain Iskandar 27567 is there
(20304,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20304,90,10,27530,30000,2,0,0,0,1,0,0,0,3541.692,609.7336,134.6131,0,'Part of Ruby Controller Bunny EAI: summon Ruby Keeper - Alliance 2 Side Invasion - Random Script 1'),
(20304,100,10,27686,120000,12,0,0,0,1,0,0,0,3668.59,865.907,56.1694,3.80849,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,101,10,27686,120000,14,0,0,0,1,0,0,0,3672.23,861.288,56.8514,3.69068,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,102,10,27687,120000,3,0,0,0,1,0,0,0,3674.66,866.688,56.158,3.70955,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,103,10,27686,120000,15,0,0,0,1,0,0,0,3677.63,860.495,57.8271,3.57603,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,104,10,27686,120000,14,0,0,0,1,0,0,0,3679.45,866.484,56.4316,3.82343,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,105,10,27686,120000,12,0,0,0,1,0,0,0,3674.9,872.157,56.0522,3.87841,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20304,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20304,4100,0,0,0,0,27567,45,7,2000020394,2000020395,2000020396,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 2 Side Invasion - Random Script 1'),
-- Option 2 - will happen only if Captain Iskandar 27567 is there
(20305,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20305,100,10,27686,120000,12,0,0,0,1,0,0,0,3668.59,865.907,56.1694,3.80849,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,101,10,27686,120000,14,0,0,0,1,0,0,0,3672.23,861.288,56.8514,3.69068,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,102,10,27687,120000,3,0,0,0,1,0,0,0,3674.66,866.688,56.158,3.70955,'Part of Ruby Controller Bunny EAI: summon Frigid Necromancer Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,103,10,27686,120000,15,0,0,0,1,0,0,0,3677.63,860.495,57.8271,3.57603,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,104,10,27686,120000,14,0,0,0,1,0,0,0,3679.45,866.484,56.4316,3.82343,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,105,10,27686,120000,12,0,0,0,1,0,0,0,3674.9,872.157,56.0522,3.87841,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,105,10,27686,120000,13,0,0,0,1,0,0,0,3674.66,866.688,56.158,3.70955,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20305,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20305,4100,0,0,0,0,27567,45,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 2 Side Invasion - Random Script 1'),
-- Option 3 - will happen only if Captain Iskandar 27567 is there
(20306,50,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20306,100,10,27686,120000,12,0,0,0,1,0,0,0,3668.59,865.907,56.1694,3.80849,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,101,10,27686,120000,14,0,0,0,1,0,0,0,3672.23,861.288,56.8514,3.69068,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,102,10,27531,180000,3,0,0,0,1,0,0,0,3674.66,866.688,56.158,3.70955,'Part of Ruby Controller Bunny EAI: summon Frigid Abomination Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,103,10,27686,120000,15,0,0,0,1,0,0,0,3677.63,860.495,57.8271,3.57603,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,104,10,27686,120000,14,0,0,0,1,0,0,0,3679.45,866.484,56.4316,3.82343,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,105,10,27686,120000,12,0,0,0,1,0,0,0,3674.9,872.157,56.0522,3.87841,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,105,10,27686,120000,13,0,0,0,1,0,0,0,3674.66,866.688,56.158,3.70955,'Part of Ruby Controller Bunny EAI: summon Frigid Geist Attacker - Alliance 2 Side Invasion - Random Script 1'),
(20306,4000,31,27567,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: search for 27567 - Alliance 2 Side Invasion - Random Script 1'),
(20306,4100,0,0,0,0,27567,45,7,2000020391,2000020392,2000020393,0,0,0,0,0,'Part of Ruby Controller Bunny EAI: buddy random text - Alliance 2 Side Invasion - Random Script 1');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020391 AND 2000020408;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
-- horde & alliance
(2000020391,'Incoming!  Get your heads down!',0,1,0,0,NULL),
(2000020392,'Fire on the way, clear the field!',0,1,0,0,NULL),
(2000020393,'Burn, you fiends!',0,1,0,0,NULL),
(2000020394,'Heads up!  Strafe incoming!',0,1,0,0,NULL),
(2000020395,'Make way!  A wyrm is coming to our aid!',0,1,0,0,NULL),
(2000020396,'Red dragon incoming!',0,1,0,0,NULL),
-- alliance only
(2000020397,'On the move to the southern pass!',0,1,0,0,NULL),
(2000020398,'They\'re backing off here... get to the south pass! Quickly!',0,1,0,0,NULL),
(2000020399,'They\'re pushing in the south!',0,1,0,0,NULL),
(2000020400,'To the south! Move!',0,1,0,0,NULL),
(2000020401,'There are more to the south!',0,1,0,0,NULL),
(2000020402,'South! Now!',0,1,0,0,NULL),
(2000020403,'On the move back up to the eastern pass!',0,1,0,0,NULL),
(2000020404,'They\'re backing off here... get to the east pass! Quickly!',0,1,0,0,NULL),
(2000020405,'Head back up to the east pass! They\'re pushing hard!',0,1,0,0,NULL),
(2000020406,'Up to the eastern pass! Move!',0,1,0,0,NULL),
(2000020407,'There are more at the east pass!',0,1,0,0,NULL),
(2000020408,'East Pass! Now!',0,1,0,0,NULL);

-- Frigid Geist Attacker 27686
UPDATE creature_template SET MovementType = 2 WHERE entry = 27686;
DELETE FROM creature_movement_template WHERE entry = 27686;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Horde side
(27686,1,1,3636.22,1120.44,85.8407,100,0,0),
(27686,1,2,3635.85,1127.19,90.058,100,0,0),
(27686,1,3,3634.39,1133.44,95.3928,100,0,0),
(27686,1,4,3630.45,1140.51,100.813,100,0,0),
(27686,1,5,3627.91,1147.15,105.082,100,0,0),
(27686,1,6,3629.73,1155.48,110.544,100,0,0),
(27686,1,7,3633.17,1163.66,116.203,100,0,0),
(27686,1,8,3633.87,1170.26,119.872,100,0,0),
(27686,1,9,3633.14,1182.46,123.889,100,0,0),
(27686,1,10,3634.31,1195.83,127.679,100,0,0),
(27686,1,11,3634.76,1208.25,130.911,100,0,0),
(27686,1,12,3633.77,1222.32,134.559,100,1000,1),
(27686,2,1,3637.81,1124.92,88.283,100,0,0),
(27686,2,2,3635.97,1132.65,94.6089,100,0,0),
(27686,2,3,3632.47,1140.56,100.686,100,0,0),
(27686,2,4,3631.04,1148.25,106.372,100,0,0),
(27686,2,5,3633.11,1159.63,113.625,100,0,0),
(27686,2,6,3634.31,1168.43,119.006,100,0,0),
(27686,2,7,3635.02,1181.59,123.936,100,0,0),
(27686,2,8,3636.45,1192.59,126.97,100,0,0),
(27686,2,9,3638.05,1204.61,129.67,100,0,0),
(27686,2,10,3639.39,1222.34,134.212,100,1000,1),
(27686,3,1,3639.48,1122.56,86.3604,100,0,0),
(27686,3,2,3637.56,1130.64,92.7899,100,0,0),
(27686,3,3,3633.75,1140.11,100.271,100,0,0),
(27686,3,4,3631.56,1150.26,107.898,100,0,0),
(27686,3,5,3634.01,1160.8,114.48,100,0,0),
(27686,3,6,3635.69,1171.85,120.565,100,0,0),
(27686,3,7,3636.82,1182.65,124.601,100,0,0),
(27686,3,8,3638.71,1196.66,128.041,100,0,0),
(27686,3,9,3640.26,1209.86,131.134,100,0,0),
(27686,3,10,3641.25,1223.03,134.285,100,1000,1),
(27686,4,1,3640.37,1125.67,88.6587,100,0,0),
(27686,4,2,3636.94,1133.86,95.5557,100,0,0),
(27686,4,3,3633.28,1141.7,101.413,100,0,0),
(27686,4,4,3632.4,1149.03,107.266,100,0,0),
(27686,4,5,3634.89,1160.47,114.409,100,0,0),
(27686,4,6,3635.85,1169.53,119.552,100,0,0),
(27686,4,7,3637.37,1184.86,125.337,100,0,0),
(27686,4,8,3640.54,1193.64,127.752,100,0,0),
(27686,4,9,3644.69,1206.78,130.8,100,0,0),
(27686,4,10,3647.35,1222.67,133.853,100,1000,1),
(27686,5,1,3642.81,1123.09,86.2843,100,0,0),
(27686,5,2,3638.92,1132.72,94.697,100,0,0),
(27686,5,3,3635.06,1141.1,101.086,100,0,0),
(27686,5,4,3634.56,1148.87,107.89,100,0,0),
(27686,5,5,3636.32,1160.12,114.43,100,0,0),
(27686,5,6,3637.62,1171.98,120.751,100,0,0),
(27686,5,7,3638.37,1180.25,124.147,100,0,0),
(27686,5,8,3639.86,1188.98,127.041,100,0,0),
(27686,5,9,3644.41,1199.18,129.308,100,0,0),
(27686,5,10,3647.49,1208.14,131.404,100,0,0),
(27686,5,11,3650.93,1223.03,133.686,100,1000,1),
-- Alliance 1
(27686,6,1,3758.55,776.357,64.2068,100,0,0),
(27686,6,2,3764.04,762.962,61.256,100,0,0),
(27686,6,3,3769.58,755.079,58.8276,100,0,0),
(27686,6,4,3778.08,745.918,58.6504,100,0,0),
(27686,6,5,3785.47,737.482,60.591,100,0,0),
(27686,6,6,3794.58,725.35,60.1619,100,0,0),
(27686,6,7,3802.09,716.076,60.1092,100,0,0),
(27686,6,8,3814.34,701.795,60.1077,100,0,0),
(27686,6,9,3823.82,689.037,58.7809,100,0,0),
(27686,6,10,3832.48,677.122,57.5865,100,0,0),
(27686,6,11,3841.51,664.761,59.3065,100,1000,1),
(27686,7,1,3761.08,775.435,63.6175,100,0,0),
(27686,7,2,3768.37,761.395,60.1505,100,0,0),
(27686,7,3,3774.26,752.984,58.1857,100,0,0),
(27686,7,4,3788.29,737.565,60.4518,100,0,0),
(27686,7,5,3799.51,724.528,60.2152,100,0,0),
(27686,7,6,3809.86,713.399,60.1073,100,0,0),
(27686,7,7,3820.05,701.819,60.0968,100,0,0),
(27686,7,8,3830.25,689.781,58.8794,100,0,0),
(27686,7,9,3841.83,676.934,57.9548,100,0,0),
(27686,7,10,3852.69,667.176,58.8911,100,1000,1),
(27686,8,1,3763.83,771.075,62.3136,100,0,0),
(27686,8,2,3773.04,755.152,58.4632,100,0,0),
(27686,8,3,3778.9,747.891,58.0757,100,0,0),
(27686,8,4,3787.46,738.298,60.326,100,0,0),
(27686,8,5,3801.7,724.074,60.2346,100,0,0),
(27686,8,6,3818.45,706.647,60.1088,100,0,0),
(27686,8,7,3829.67,694.578,59.4388,100,0,0),
(27686,8,8,3841.39,682.02,58.2953,100,0,0),
(27686,8,9,3855.9,670.545,59.2255,100,1000,1),
(27686,9,1,3765.64,770.561,61.9165,100,0,0),
(27686,9,2,3774.18,754.473,58.3038,100,0,0),
(27686,9,3,3786.24,742.701,59.4534,100,0,0),
(27686,9,4,3799.01,730.744,60.4484,100,0,0),
(27686,9,5,3812.23,718.647,60.2584,100,0,0),
(27686,9,6,3824.02,706.845,60.1984,100,0,0),
(27686,9,7,3834.87,695.992,59.539,100,0,0),
(27686,9,8,3844.76,686.089,58.7904,100,0,0),
(27686,9,9,3858.12,675.328,59.6005,100,1000,1),
(27686,10,1,3765.25,779.641,64.032,100,0,0),
(27686,10,2,3768.46,764.362,60.5202,100,0,0),
(27686,10,3,3774.49,755.872,58.6323,100,0,0),
(27686,10,4,3787.17,743.243,59.8794,100,0,0),
(27686,10,5,3798.77,728.998,60.2918,100,0,0),
(27686,10,6,3811.16,716.641,60.1679,100,0,0),
(27686,10,7,3824.64,704.146,60.1353,100,0,0),
(27686,10,8,3842.24,690.722,59.0967,100,0,0),
(27686,10,9,3856.36,682.55,59.8917,100,1000,1),
-- Alliance 2
(27686,11,1,3659.96,865.481,56.4955,100,0,0),
(27686,11,2,3644.79,852.694,58.2422,100,0,0),
(27686,11,3,3633.99,839.096,61.2158,100,0,0),
(27686,11,4,3624.52,822.04,63.792,100,0,0),
(27686,11,5,3616.49,805.541,66.2064,100,0,0),
(27686,11,6,3610.03,789.283,69.0841,100,0,0),
(27686,11,7,3599.01,755.483,73.4472,100,1000,1),
(27686,12,1,3659.58,858.975,56.9312,100,0,0),
(27686,12,2,3645.32,844.916,59.2966,100,0,0),
(27686,12,3,3637.07,833.623,62.008,100,0,0),
(27686,12,4,3626.56,816.238,63.994,100,0,0),
(27686,12,5,3617.61,798.473,66.6215,100,0,0),
(27686,12,6,3593.6,758.671,73.7865,100,1000,1),
(27686,13,1,3661.29,854.234,57.1648,100,0,0),
(27686,13,2,3646.99,840.719,59.6029,100,0,0),
(27686,13,3,3634.77,823.191,62.9389,100,0,0),
(27686,13,4,3622.77,801.633,65.8123,100,0,0),
(27686,13,5,3614.05,783.058,69.4998,100,0,0),
(27686,13,6,3604.05,752.433,73.1473,100,1000,1),
(27686,14,1,3661.92,851.553,57.2157,100,0,0),
(27686,14,2,3649.22,837.321,59.9017,100,0,0),
(27686,14,3,3638.94,823.181,62.6265,100,0,0),
(27686,14,4,3628.49,804.998,65.2557,100,0,0),
(27686,14,5,3622.75,792.232,67.0859,100,0,0),
(27686,14,6,3615.46,774.949,70.5937,100,0,0),
(27686,14,7,3608.19,752.715,73.0848,100,1000,1),
(27686,15,1,3663.18,848.023,57.1992,100,0,0),
(27686,15,2,3658.42,842.815,57.6575,100,0,0),
(27686,15,3,3649.98,831.649,60.9293,100,0,0),
(27686,15,4,3642.17,820.046,62.6651,100,0,0),
(27686,15,5,3633.53,804.841,65.3331,100,0,0),
(27686,15,6,3625.87,789.112,67.5616,100,0,0),
(27686,15,7,3618.66,767.636,71.5576,100,0,0),
(27686,15,8,3614.62,749.866,73.7354,100,1000,1);
DELETE FROM dbscripts_on_creature_death WHERE id = 27686; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27686,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(27686,10,18,30000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Frigid Necromancer Attacker 27687
UPDATE creature_template SET MovementType = 2 WHERE entry = 27687;
DELETE FROM creature_movement_template WHERE entry = 27687;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Horde side
(27687,1,1,3639.48,1122.56,86.3604,100,0,0),
(27687,1,2,3637.56,1130.64,92.7899,100,0,0),
(27687,1,3,3633.75,1140.11,100.271,100,0,0),
(27687,1,4,3631.56,1150.26,107.898,100,0,0),
(27687,1,5,3634.01,1160.8,114.48,100,0,0),
(27687,1,6,3635.69,1171.85,120.565,100,0,0),
(27687,1,7,3636.82,1182.65,124.601,100,0,0),
(27687,1,8,3638.71,1196.66,128.041,100,0,0),
(27687,1,9,3640.26,1209.86,131.134,100,0,0),
(27687,1,10,3641.25,1223.03,134.285,100,1000,1),
-- Alliance 1
(27687,2,1,3763.83,771.075,62.3136,100,0,0),
(27687,2,2,3773.04,755.152,58.4632,100,0,0),
(27687,2,3,3778.9,747.891,58.0757,100,0,0),
(27687,2,4,3787.46,738.298,60.326,100,0,0),
(27687,2,5,3801.7,724.074,60.2346,100,0,0),
(27687,2,6,3818.45,706.647,60.1088,100,0,0),
(27687,2,7,3829.67,694.578,59.4388,100,0,0),
(27687,2,8,3841.39,682.02,58.2953,100,0,0),
(27687,2,9,3855.9,670.545,59.2255,100,1000,1),
-- Alliance 2
(27687,3,1,3661.29,854.234,57.1648,100,0,0),
(27687,3,2,3646.99,840.719,59.6029,100,0,0),
(27687,3,3,3634.77,823.191,62.9389,100,0,0),
(27687,3,4,3622.77,801.633,65.8123,100,0,0),
(27687,3,5,3614.05,783.058,69.4998,100,0,0),
(27687,3,6,3604.05,752.433,73.1473,100,1000,1);
DELETE FROM dbscripts_on_creature_death WHERE id = 27687; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27687,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(27687,1,18,30000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Frigid Abomination Attacker 27531
UPDATE creature_template SET MovementType = 2 WHERE entry = 27531;
DELETE FROM creature_movement_template WHERE entry = 27531;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- Horde side
(27531,1,1,3639.48,1122.56,86.3604,100,0,0),
(27531,1,2,3637.56,1130.64,92.7899,100,0,0),
(27531,1,3,3633.75,1140.11,100.271,100,0,0),
(27531,1,4,3631.56,1150.26,107.898,100,0,0),
(27531,1,5,3634.01,1160.8,114.48,100,0,0),
(27531,1,6,3635.69,1171.85,120.565,100,0,0),
(27531,1,7,3636.82,1182.65,124.601,100,0,0),
(27531,1,8,3638.71,1196.66,128.041,100,0,0),
(27531,1,9,3640.26,1209.86,131.134,100,0,0),
(27531,1,10,3641.25,1223.03,134.285,100,1000,1),
-- Alliance 1
(27531,2,1,3763.83,771.075,62.3136,100,0,0),
(27531,2,2,3773.04,755.152,58.4632,100,0,0),
(27531,2,3,3778.9,747.891,58.0757,100,0,0),
(27531,2,4,3787.46,738.298,60.326,100,0,0),
(27531,2,5,3801.7,724.074,60.2346,100,0,0),
(27531,2,6,3818.45,706.647,60.1088,100,0,0),
(27531,2,7,3829.67,694.578,59.4388,100,0,0),
(27531,2,8,3841.39,682.02,58.2953,100,0,0),
(27531,2,9,3855.9,670.545,59.2255,100,1000,1),
-- Alliance 2
(27531,3,1,3661.29,854.234,57.1648,100,0,0),
(27531,3,2,3646.99,840.719,59.6029,100,0,0),
(27531,3,3,3634.77,823.191,62.9389,100,0,0),
(27531,3,4,3622.77,801.633,65.8123,100,0,0),
(27531,3,5,3614.05,783.058,69.4998,100,0,0),
(27531,3,6,3604.05,752.433,73.1473,100,1000,1);
-- updates
DELETE FROM dbscripts_on_creature_death WHERE id = 27531; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27531,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(27531,10,18,60000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Vargastrasz 27763
-- Part of Vargastrasz EAI:
DELETE FROM dbscript_random_templates WHERE id = 20166;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20166,1,20307,0,'Part of Vargastrasz EAI: Horde Side Invasion - Random Script - 1'),
(20166,1,20308,0,'Part of Vargastrasz EAI: Horde Side Invasion - Random Script - 2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20307 AND 20308;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20307,100,10,27686,240000,2,0,0,0,1,0,0,0,3638.52,1115.96,81.3305,1.7376,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 1 - Random Script 1'),
(20307,110,10,27686,240000,1,0,0,0,1,0,0,0,3636.38,1112.24,79.6771,1.65514,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 2 - Random Script 1'),
(20307,3000,10,27686,240000,1,0,0,0,1,0,0,0,3643.4,1111.17,77.1742,1.7219,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 3 - Random Script 1'),
(20308,100,10,27686,240000,4,0,0,0,1,0,0,0,3642.91,1117.16,80.9243,1.65514,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 1 - Random Script 2'),
(20308,110,10,27686,240000,5,0,0,0,1,0,0,0,3645.79,1115.18,78.9363,1.79651,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 2 - Random Script 2'),
(20308,4000,10,27686,240000,2,0,0,0,1,0,0,0,3638.82,1110.61,77.9503,1.63943,'Part of Vargastrasz EAI: summon Frigid Geist Attacker 3 - Random Script 2');

-- Captain Iskandar 27567 -- Random text added for changing possition
UPDATE creature_movement_template SET script_id = 2756701 WHERE entry = 27567 AND point = 2;
UPDATE creature_movement_template SET script_id = 2756702 WHERE entry = 27567 AND point = 22;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2756701 AND 2756702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2756701,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2756701,100,0,20167,0,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script - 1'),
(2756702,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2756702,100,0,20168,0,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script - 2');
DELETE FROM dbscript_random_templates WHERE id IN (20167,20168);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20167,0,2000020397,0,'Part of Captain Iskandar: Random Say 1-1'),
(20167,0,2000020398,0,'Part of Captain Iskandar: Random Say 1-2'),
(20167,0,2000020399,0,'Part of Captain Iskandar: Random Say 1-3'),
(20167,0,2000020400,0,'Part of Captain Iskandar: Random Say 1-4'),
(20167,0,2000020401,0,'Part of Captain Iskandar: Random Say 1-5'),
(20167,0,2000020402,0,'Part of Captain Iskandar: Random Say 1-6'),
(20168,0,2000020403,0,'Part of Captain Iskandar: Random Say 2-1'),
(20168,0,2000020404,0,'Part of Captain Iskandar: Random Say 2-2'),
(20168,0,2000020405,0,'Part of Captain Iskandar: Random Say 2-3'),
(20168,0,2000020406,0,'Part of Captain Iskandar: Random Say 2-4'),
(20168,0,2000020407,0,'Part of Captain Iskandar: Random Say 2-5'),
(20168,0,2000020408,0,'Part of Captain Iskandar: Random Say 2-6');

-- Ruby Strafe Bunny 27589
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5713819,5713824);
DELETE FROM creature_movement WHERE id IN (5713819,5713824);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(5713819,1,3823.37,701.901,60.1855,5.98648,300000,12),
(5713824,1,3624.12,806.301,65.2626,2.53073,300000,13);
-- Part of Ruby Strafe Bunny EAI:
DELETE FROM dbscript_random_templates WHERE id IN (20169,20170);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20169,1,20309,0,'Part of Ruby Strafe Bunny EAI: Alliance 1 Side Invasion - Random Script - 1-1'),
(20169,1,20310,0,'Part of Ruby Strafe Bunny EAI: Alliance 1 Side Invasion - Random Script - 1-2'),
(20170,1,20311,0,'Part of Ruby Strafe Bunny EAI: Alliance 2 Side Invasion - Random Script - 2-1'),
(20170,1,20312,0,'Part of Ruby Strafe Bunny EAI: Alliance 2 Side Invasion - Random Script - 2-2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20309 AND 20312;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20309,50,31,27567,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Strafe Bunny EAI: search for 27567 - Random Script 1-1'),
(20309,100,10,27686,120000,7,0,0,0,1,0,0,0,3757.41,786.372,66.578,5.09229,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-1'),
(20309,110,10,27686,120000,6,0,0,0,1,0,0,0,3754.86,787.997,66.9047,5.06435,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-1'),
(20309,3000,10,27686,120000,9,0,0,0,1,0,0,0,3759.85,792.278,68.24,5.02901,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-1'),
(20310,50,31,27567,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Strafe Bunny EAI: search for 27567 - Random Script 1-2'),
(20310,100,10,27686,120000,9,0,0,0,1,0,0,0,3760.95,787.614,66.976,5.03339,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-2'),
(20310,110,10,27686,120000,10,0,0,0,1,0,0,0,3762.67,790.582,67.9752,5.0133,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-2'),
(20310,4000,10,27686,120000,7,0,0,0,1,0,0,0,3755.43,790.788,67.7038,5.05257,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 1-2'),
(20311,50,31,27567,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Strafe Bunny EAI: search for 27567 - Random Script 2-1'),
(20311,100,10,27686,120000,12,0,0,0,1,0,0,0,3668.59,865.907,56.1694,3.80849,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-1'),
(20311,110,10,27686,120000,11,0,0,0,1,0,0,0,3669.83,871.494,55.9676,3.83914,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-1'),
(20311,3000,10,27686,120000,14,0,0,0,1,0,0,0,3679.45,866.484,56.4316,3.82343,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-1'),
(20312,50,31,27567,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ruby Strafe Bunny EAI: search for 27567 - Random Script 2-2'),
(20312,100,10,27686,120000,14,0,0,0,1,0,0,0,3672.23,861.288,56.8514,3.69068,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-2'),
(20312,110,10,27686,120000,15,0,0,0,1,0,0,0,3677.63,860.495,57.8271,3.57603,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-2'),
(20312,3000,10,27686,120000,12,0,0,0,1,0,0,0,3674.9,872.157,56.0522,3.87841,'Part of Ruby Strafe Bunny EAI: summon Frigid Geist Attacker - Random Script 2-2');
