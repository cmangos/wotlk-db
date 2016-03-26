
-- Entrance area creature movement
DELETE FROM creature_movement WHERE id IN (120154,120233,120234,120247,120267,120268,120269,120270);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(120154,1,-211.29,2219.42,35.23,0.157,1000,3672501),
(120247,1,-210.37,2202.68,35.23,0.139,1000,3672501),
(120234,1,-220.38,2177.07,37.98,0.855,1000,3672501),
(120270,1,-216.48,2245.40,37.98,5.183,1000,3672501),
(120233,1,-307.451,2219.95,42.56,5.951,1000,3672501),
(120267,1,-249.854,2219.67,42.56,5.951,1000,3672501),
(120268,1,-310.799,2202.42,42.56,0.034,1000,3672501),
(120269,1,-250.613,2203.80,42.56,0.034,1000,3672501);
-- script
DELETE FROM dbscripts_on_creature_movement WHERE id = 3672501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES
(3672501,0,32,1,0,0,0,0,'Nerub\'ar Broodkeeper - pause WP Movement'),
(3672501,0,1,30,0,0,0,0,'Nerub\'ar Broodkeeper - emote state none'),
(3672501,0,39,0,0,0,0,8,'Nerub\'ar Broodkeeper - set fly off');
