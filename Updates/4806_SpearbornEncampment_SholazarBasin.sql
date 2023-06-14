--  Spearborn Encampment - Sholazar Basin

-- Frenzyheart Spearbearer 28080 & Frenzyheart Scavenger 28081
UPDATE creature SET position_x = 6570.671, position_y = 5095.3013, position_z = -45.892788, spawndist = 0, MovementType = 4 WHERE guid = 520526; -- linear
UPDATE creature SET position_x = 6588.851, position_y = 5058.4517, position_z = -44.806923, spawndist = 0, MovementType = 4 WHERE guid = 520517; -- linear
UPDATE creature SET position_x = 6650.2656, position_y = 5119.9087, position_z = -35.613758, spawndist = 0, MovementType = 4 WHERE guid = 520518; -- linear
UPDATE creature SET position_x = 6646.736, position_y = 5118.662, position_z = -36.214222, spawndist = 0, MovementType = 4 WHERE guid = 520520; -- linear
UPDATE creature SET position_x = 6595.75, position_y = 5178.45, position_z = -44.2415, spawndist = 0, MovementType = 2 WHERE guid = 520527;
UPDATE creature SET position_x = 6553.0215, position_y = 5112.19, position_z = -50.700676, spawndist = 0, MovementType = 2 WHERE guid = 520522;
UPDATE creature SET position_x = 6546.077, position_y = 5159.5176, position_z = -49.394085, spawndist = 0, MovementType = 2 WHERE guid = 520516;
UPDATE creature SET position_x = 6559.3853, position_y = 5226.3564, position_z = -48.311924, spawndist = 0, MovementType = 2 WHERE guid = 520524;
UPDATE creature SET position_x = 6579.1133, position_y = 5160.2314, position_z = -45.63119, orientation = 5.55, spawndist = 0, MovementType = 0 WHERE guid = 520523;
UPDATE creature SET position_x = 6665.501, position_y = 5135.0254, position_z = -35.38736, orientation = 0, spawndist = 0, MovementType = 0 WHERE guid = 520537;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (520523,520537);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(520523,0,0,1,0,0,0,52550),
(520537,0,0,1,0,0,0,52550);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520526,520517,520518,520520,520527,520522,520516,520524);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520526
(520526,1,6570.671,5095.3013,-45.892788,100,1000,0),
(520526,2,6559.5474,5103.604,-49.1892,100,0,0),
(520526,3,6552.5073,5099,-51.272625,100,0,0),
(520526,4,6546.803,5080.2104,-53.457317,100,0,0),
(520526,5,6533.05,5069.7124,-57.86126,100,1000,0),
-- 520517
(520517,1,6588.851,5058.4517,-44.806923,100,1000,0),
(520517,2,6604.238,5068.67,-42.02065,100,0,0),
(520517,3,6611.9565,5061.1626,-40.81487,100,0,0),
(520517,4,6628.4575,5046.603,-37.212696,100,0,0),
(520517,5,6635.846,5036.705,-33.611435,100,0,0),
(520517,6,6645.6147,5030.552,-30.281216,100,1000,0),
-- 520518
(520518,1,6650.2656,5119.9087,-35.613758,100,1000,0),
(520518,2,6629.0923,5103.568,-36.932785,100,0,0),
(520518,3,6613.2656,5065.3735,-41.005787,100,0,0),
-- 520520
(520520,1,6646.736,5118.662,-36.214222,100,1000,12),
(520520,2,6650.071,5132.2407,-37.585438,100,0,0),
(520520,3,6643.6025,5149.8384,-41.324413,100,0,0),
(520520,4,6656.3057,5159.5723,-39.906322,100,1000,0),
-- 520527
(520527,1,6595.75,5178.45,-44.2415,100,100,6),
(520527,2,6598.242,5161.0728,-44.68235,100,0,0),
(520527,3,6620.496,5155.276,-42.34746,100,0,0),
(520527,4,6625.1973,5173.115,-41.174,100,0,0),
(520527,5,6610.714,5187.3403,-41.825855,100,100,5),
(520527,6,6601.62,5185.89,-42.308887,100,10,2808001),
-- 520522
(520522,1,6553.0215,5112.19,-50.700676,100,0,0),
(520522,2,6539.9634,5135.1597,-52.80302,100,0,0),
(520522,3,6524.4775,5128.6743,-54.22255,100,55000,0),
(520522,4,6540.7554,5131.988,-52.39721,100,0,0),
(520522,5,6546.1763,5113.8276,-51.468742,100,0,0),
(520522,6,6568.366,5119.746,-44.23522,100,10000,0),
(520522,7,6566.481,5119.1304,-45.18981,100,30000,0),
-- 520516
(520516,1,6546.077,5159.5176,-49.394085,100,1000,0),
(520516,2,6542.9863,5159.924,-50.60966,100,35000,0),
(520516,3,6531.1006,5148.703,-56.763813,100,0,0),
(520516,4,6517.892,5152.9883,-60.104877,100,35000,0),
(520516,5,6529.804,5149.721,-57.07485,100,0,0),
-- 520524
(520524,1,6559.3853,5226.3564,-48.311924,100,35000,0),
(520524,2,6555.2046,5197.408,-52.08195,100,0,0),
(520524,3,6547.772,5180.137,-53.919964,100,0,0),
(520524,4,6532.469,5170.8623,-57.49529,100,55000,0),
(520524,5,6550.3423,5182.1978,-53.135906,100,0,0),
(520524,6,6559.327,5209.6157,-50.452915,100,0,0),
(520524,7,6560.8813,5218.076,-49.114414,100,0,0),
(520524,8,6562.557,5226.4673,-47.793125,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2808001;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2808001,1,0,20,15,0,0,0,0,0x04,0,0,0,0,1.3,6595.75,5178.45,-44.2415,100,17,0,'jump');
-- special scripts
DELETE FROM creature_spawn_data WHERE Guid IN (520518);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(520518,80);
DELETE FROM dbscripts_on_relay WHERE id IN (20744,20745,20746);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20744,1,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: pause WP'),
(20744,2,3,0,0,0,0,0,0x04,0,0,0,0,6625.52,5113.71,-36.912155,100,'Part of Frenzyheart Spearbearer 28080 EAI: move to'),
(20744,15000,15,52550,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: cast 52550'),
(20744,40000,14,52550,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: remove 52550'),
(20744,41000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: unpause WP'),
(20745,1,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: pause WP'),
(20745,2,3,0,0,0,0,0,0x04,0,0,0,0,6657.04,5117.55,-34.70812,6.021385669708251953,'Part of Frenzyheart Spearbearer 28080 EAI: move to'),
(20745,8000,15,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: cast 46581'),
(20745,30000,14,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: remove 46581'),
(20745,31000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Spearbearer 28080 EAI: unpause WP'),
(20746,2000,15,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Scavenger 28080 EAI: cast 46581'),
(20746,15000,14,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Scavenger 28080 EAI: remove 46581'),
(20746,15100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Scavenger 28080 EAI: STATE_STAND ');
