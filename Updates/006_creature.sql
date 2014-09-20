-- The Ebdon Hold - DK start Area 
-- Unworthy Initiate - aura should come from another creature
UPDATE creature_template_addon SET auras = NULL WHERE entry IN (29519,29520,29565,29566,29567);
-- Enslaved Laborer - emote is part of his movement
UPDATE creature_template_addon SET emote = 0 WHERE entry = 28505;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 128579;
DELETE FROM creature_movement WHERE id = 128579; -- 1st phase
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(128579,1,2434.574,-5648.207,420.6473,25000,2850502,0,0,0,0,0,0,0,0,3.01641,0,0),
(128579,2,2461.164,-5656.579,420.6482,25000,2850501,0,0,0,0,0,0,0,0,5.85012,0,0),
(128579,3,2434.574,-5641.89,420.645,25000,2850501,0,0,0,0,0,0,0,0,2.60172,0,0),
(128579,4,2466.634,-5649.536,420.6456,25000,2850502,0,0,0,0,0,0,0,0,6.074382,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2850501,2850502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2850501,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2850501,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2850502,3,1,233,0,0,0,0,18,0,0,0,0,0,0,0,'random emote'),
(2850502,15,1,233,0,0,0,0,18,0,0,0,0,0,0,0,'random emote'),
(2850502,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Mindless Laborer
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 128580;
DELETE FROM creature_movement WHERE id = 128580; -- 1st phase
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(128580,1,2435.539,-5640.577,420.6444,22000,2850601,0,0,0,0,0,0,0,0,2.60172,0,0),
(128580,2,2461.646,-5656.121,420.648,22000,2850601,0,0,0,0,0,0,0,0,5.85012,0,0),
(128580,3,2433.65,-5649.92,420.648,22000,2850601,0,0,0,0,0,0,0,0,3.02234,0,0),
(128580,4,2466.89,-5648.816,420.6453,22000,2850601,0,0,0,0,0,0,0,0,6.074382,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2850601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2850601,2,1,438,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2850601,19,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Riden Drudge 128465 29212
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 128465;
DELETE FROM creature_movement WHERE id = 128465; -- 1st phase
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(128465,1,2404.152,-5562.793,420.6501,30000,0,0,0,0,0,0,0,0,0,1.42023,0,0), -- current
(128465,2,2402.91,-5570.57,420.649,0,0,0,0,0,0,0,0,0,0,5.01442,0,0),
(128465,3,2400.59,-5581.73,420.647,0,0,0,0,0,0,0,0,0,0,5.0904,0,0),
(128465,4,2404.56,-5587.23,420.647,0,0,0,0,0,0,0,0,0,0,5.63153,0,0),
(128465,5,2410.21,-5592.32,420.644,0,0,0,0,0,0,0,0,0,0,5.31423,0,0),
(128465,6,2411.94,-5596.91,420.644,0,0,0,0,0,0,0,0,0,0,4.61837,0,0),
(128465,7,2411.62,-5599.78,420.644,0,0,0,0,0,0,0,0,0,0,4.27908,0,0),
(128465,8,2409.17,-5603.85,420.644,30000,0,0,0,0,0,0,0,0,0,4.57145,0,0), -- last
(128465,9,2411.62,-5599.78,420.644,0,0,0,0,0,0,0,0,0,0,1.85377,0,0),
(128465,10,2411.94,-5596.91,420.644,0,0,0,0,0,0,0,0,0,0,1.90717,0,0),
(128465,11,2410.21,-5592.32,420.644,0,0,0,0,0,0,0,0,0,0,2.42554,0,0),
(128465,12,2404.56,-5587.23,420.647,0,0,0,0,0,0,0,0,0,0,2.42554,0,0),
(128465,13,2400.59,-5581.73,420.647,0,0,0,0,0,0,0,0,0,0,1.73753,0,0),
(128465,14,2402.91,-5570.57,420.649,0,0,0,0,0,0,0,0,0,0,1.42023,0,0);  