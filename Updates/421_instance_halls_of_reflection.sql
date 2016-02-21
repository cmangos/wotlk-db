

-- ##############################
-- HoR Lich King escape encounter
-- ##############################

-- #####
-- Texts
-- #####
SET @DB_STRING_ENTRY:=2000005867;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+20;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- Alliance
(@DB_STRING_ENTRY+0,'There is no escape!',17217,1,0,0,'Lich King - gauntlet start'),
(@DB_STRING_ENTRY+1,'I will destroy this barrier. You must hold the undead back!',16607,1,0,0,'Jaina - first barrier'),
(@DB_STRING_ENTRY+2,'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!',16608,1,0,0,'Jaina - second barrier'),
(@DB_STRING_ENTRY+3,'We\'re almost there... Don\'t give up!',16646,1,0,0,'Jaina - third barrier'),
(@DB_STRING_ENTRY+4,'Your barriers can\'t hold us back much longer, monster. I will shatter them all!',16610,1,0,0,'Jaina - last barrier'),
(@DB_STRING_ENTRY+5,'There\'s an opening up ahead. GO NOW!',16645,1,0,0,'Jaina - epilog 1'),
(@DB_STRING_ENTRY+6,'It... It\'s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!',16647,1,0,425,'Jaina - epilog 2'),
(@DB_STRING_ENTRY+7,'Nowhere to run... You\'re mine now!',17223,1,0,0,'Lich King - epilog 3'),
(@DB_STRING_ENTRY+8,'Fire! FIRE!',16721,1,0,0,'Justin Bartlett - epilog 4'),
(@DB_STRING_ENTRY+9,'Quickly, climb aboard! We mustn\'t tarry here. There\'s no telling when this whole mountainside will collapse!',16722,1,0,0,'Justin Bartlett - epilog 5'),
(@DB_STRING_ENTRY+10,'Forgive me, heroes. I should have listened to Uther. I... I just had to see for myself. To look into his eyes one last time. I am sorry.',16648,1,0,1,'Jaina - epilog 6'),
(@DB_STRING_ENTRY+11,'We now know what must be done. I will deliver this news to King Varian and Highlord Fordring.',16649,1,0,0,'Jaina - epilog 7'),
-- Horde
(@DB_STRING_ENTRY+12,'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!!',17029,1,0,0,'Sylvanas - first barrier'),
(@DB_STRING_ENTRY+13,'Another barrier? Stand strong, champions! I will bring the wall down!',17030,1,0,0,'Sylvanas - second barrier'),
(@DB_STRING_ENTRY+14,'I grow tired of these games, Arthas! Your walls can\'t stop me!',17031,1,0,0,'Sylvanas - third barrier'),
(@DB_STRING_ENTRY+15,'You won\'t impede our escape, fiend. Keep the undead off me while I bring this barrier down!',17032,1,0,0,'Sylvanas - last barrier'),
(@DB_STRING_ENTRY+16,'We\'re almost there! Don\'t give up!',17060,1,0,0,'Sylvanas - epilog 1'),
(@DB_STRING_ENTRY+17,'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!',17061,1,0,425,'Sylvanas - epilog 2'),
(@DB_STRING_ENTRY+18,'Fire! FIRE!',16732,1,0,0,'Kom Blackscar - epilog 3'),
(@DB_STRING_ENTRY+19,'Get onboard, now! This whole mountainside could collapse at any moment.',16733,1,0,0,'Kom Blackscar - epilog 4'),
(@DB_STRING_ENTRY+20,'We are safe, for now. His strength has increased ten-fold since our last battle! It will take a mighty army to destroy the Lich King, an army greater than even the Horde can rouse.',17062,1,0,0,'Sylvanas - epilog 5');

-- #####
-- Jaina
-- #####
DELETE FROM creature_movement_template WHERE entry=36955;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(36955, 1, 5577.040, 2235.750, 733.015, 1000, 3695501, 2.687),  -- gossip
(36955, 2, 5586.116, 2229.253, 733.011, 0, 0, 0),
(36955, 3, 5599.483, 2211.999, 731.798, 0, 0, 0),
(36955, 4, 5605.983, 2188.693, 731.015, 0, 0, 0),
(36955, 5, 5599.702, 2169.191, 730.815, 0, 0, 0),
(36955, 6, 5586.928, 2148.498, 731.081, 0, 0, 0),
(36955, 7, 5569.530, 2128.215, 731.036, 0, 0, 0),
(36955, 8, 5559.329, 2105.901, 731.248, 1000, 3695508, 4.15),   -- first barrier
(36955, 9, 5536.341, 2061.499, 731.081, 0, 0, 0),
(36955, 10, 5525.786, 2028.556, 731.917, 0, 0, 0),
(36955, 11, 5522.818, 2020.705, 732.686, 1000, 3695511, 4.15),  -- second barrier
(36955, 12, 5522.818, 2020.705, 732.686, 5000, 0, 4.15),
(36955, 13, 5453.083, 1899.742, 747.892, 1000, 3695513, 4.044), -- third barrier
(36955, 14, 5453.083, 1899.742, 747.892, 3000, 0, 4.044),
(36955, 15, 5426.465, 1857.632, 755.888, 0, 0, 0),
(36955, 16, 5335.425, 1766.877, 767.661, 1000, 3695516, 3.942), -- last barrier
(36955, 17, 5335.425, 1766.877, 767.661, 2000, 3695517, 3.942),
(36955, 18, 5255.840, 1668.890, 784.300, 1000, 3695518, 0.8),   -- epilog event
(36955, 19, 5255.840, 1668.890, 784.300, 1000, 3695519, 0.8),   -- gunship event
(36955, 20, 5265.530, 1681.600, 784.300, 10000, 3695520, 0.8),
(36955, 21, 5265.530, 1681.600, 784.300, 1000, 3695521, 3.942);

-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=3695501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695501,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695501,0,14,69787,0,0,0,0,0,'Jaina - remove aura Ice Barrier'),
(3695501,0,29,1,1,0,0,0,0,'Jaina - set npc flag for gossip');
-- first barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3695508;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695508,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695508,0,15,69784,0,0,0,0,0,'Jaina - cast Destroy Wall'),
(3695508,0,0,0,0,0,0,0,@DB_STRING_ENTRY+1,'Jaina - first barrier');
-- second barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3695511;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695511,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695511,0,15,69784,0,0,0,0,0,'Jaina - cast Destroy Wall'),
(3695511,0,0,0,0,0,0,0,@DB_STRING_ENTRY+2,'Jaina - second barrier');
-- third barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3695513;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695513,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695513,0,15,69784,0,0,0,0,0,'Jaina - cast Destroy Wall'),
(3695513,0,0,0,0,0,0,0,@DB_STRING_ENTRY+3,'Jaina - third barrier');
-- last barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3695516;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695516,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695516,0,15,69784,0,0,0,0,0,'Jaina - cast Destroy Wall'),
(3695516,0,0,0,0,0,0,0,@DB_STRING_ENTRY+4,'Jaina - last barrier');
-- epilog
DELETE FROM dbscripts_on_creature_movement WHERE id=3695517;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695517,0,0,0,0,0,0,0,@DB_STRING_ENTRY+5,'Jaina - epilog 1');
DELETE FROM dbscripts_on_creature_movement WHERE id=3695518;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695518,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695518,0,0,0,0,0,0,0,@DB_STRING_ENTRY+6,'Jaina - epilog 2');
DELETE FROM dbscripts_on_creature_movement WHERE id=3695519;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695519,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695519,10,0,0,0,30344,100,0,@DB_STRING_ENTRY+8,'Captain - epilog 4'),
(3695519,11,14,69866,0,0,0,0,0,'Jaina - remove Harvest Soul aura'),
(3695519,11,15,70021,0,22515,138326,16,0,'Jaina - cast Gunship Cannon Fire on Trigger'), -- ToDo: this has to be cast from the triggers on the ship
(3695519,12,15,70021,0,22515,138326,16,0,'Jaina - cast Gunship Cannon Fire on Trigger'), -- There are many triggers on the ship, each casting every second
(3695519,13,15,70021,0,22515,138326,16,0,'Jaina - cast Gunship Cannon Fire on Trigger'),
(3695519,13,13,0,0,201596,20,2,0,'Jaina - close Cave In Door'),
(3695519,14,15,72830,0,36954,100,4,0,'Lich King - cast Achievement Check'),
(3695519,15,18,0,0,36954,100,4,0,'Lich King - despawn'),
(3695519,19,25,0,0,0,0,0,0,'Jaina - set run off'),
(3695519,20,32,0,0,0,0,0,0,'Jaina - unpause WP Movement'),
(3695519,24,0,0,0,30344,100,0,@DB_STRING_ENTRY+9,'Captain - epilog 5'); -- ToDo: respawn the ship stairs
-- post epilog (ending)
DELETE FROM dbscripts_on_creature_movement WHERE id=3695520;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695520,0,0,0,0,0,0,0,@DB_STRING_ENTRY+10,'Jaina - epilog 6');
DELETE FROM dbscripts_on_creature_movement WHERE id=3695521;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695521,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3695521,0,0,0,0,0,0,0,@DB_STRING_ENTRY+11,'Jaina - epilog 7'),
(3695521,5,29,3,1,0,0,0,0,'Jaina - set gossip and quest npc flag'),
(3695521,5,15,71352,0,0,0,0,0,'Jaina - cast Escaping Arthas Kill Credit'),
(3695521,5,18,300000,0,0,0,0,0,'Jaina - despawn in 5 min');

-- ########
-- Sylvanas
-- ########
DELETE FROM creature_movement_template WHERE entry=37554;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(37554, 1, 5577.040, 2235.750, 733.015, 1000, 3755401, 2.687),  -- gossip
(37554, 2, 5586.116, 2229.253, 733.011, 0, 0, 0),
(37554, 3, 5599.483, 2211.999, 731.798, 0, 0, 0),
(37554, 4, 5605.983, 2188.693, 731.015, 0, 0, 0),
(37554, 5, 5599.702, 2169.191, 730.815, 0, 0, 0),
(37554, 6, 5586.928, 2148.498, 731.081, 0, 0, 0),
(37554, 7, 5569.530, 2128.215, 731.036, 0, 0, 0),
(37554, 8, 5559.329, 2105.901, 731.248, 1000, 3755408, 4.15),   -- first barrier
(37554, 9, 5536.341, 2061.499, 731.081, 0, 0, 0),
(37554, 10, 5525.786, 2028.556, 731.917, 0, 0, 0),
(37554, 11, 5522.818, 2020.705, 732.686, 1000, 3755411, 4.15),  -- second barrier
(37554, 12, 5522.818, 2020.705, 732.686, 5000, 0, 4.15),
(37554, 13, 5453.083, 1899.742, 747.892, 1000, 3755413, 4.044), -- third barrier
(37554, 14, 5453.083, 1899.742, 747.892, 3000, 0, 4.044),
(37554, 15, 5426.465, 1857.632, 755.888, 0, 0, 0),
(37554, 16, 5335.425, 1766.877, 767.661, 1000, 3755416, 3.942), -- last barrier
(37554, 17, 5335.425, 1766.877, 767.661, 2000, 3755417, 3.942),
(37554, 18, 5255.840, 1668.890, 784.300, 1000, 3755418, 0.8),   -- epilog event
(37554, 19, 5255.840, 1668.890, 784.300, 1000, 3755419, 0.8),   -- gunship event
(37554, 20, 5265.530, 1681.600, 784.300, 1000, 3755420, 3.942);

-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=3755401;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755401,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755401,0,14,70188,0,0,0,0,0,'Sylvanas - remove aura Cloak of Darkness'),
(3755401,0,29,1,1,0,0,0,0,'Sylvanas - set npc flag for gossip');
-- first barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3755408;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755408,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755408,0,15,70224,0,0,0,0,0,'Sylvanas - cast Destroy Wall'),
(3755408,0,0,0,0,0,0,0,@DB_STRING_ENTRY+12,'Sylvanas - first barrier');
-- second barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3755411;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755411,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755411,0,15,70224,0,0,0,0,0,'Sylvanas - cast Destroy Wall'),
(3755411,0,0,0,0,0,0,0,@DB_STRING_ENTRY+13,'Sylvanas - second barrier');
-- third barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3755413;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755413,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755413,0,15,70224,0,0,0,0,0,'Sylvanas - cast Destroy Wall'),
(3755413,0,0,0,0,0,0,0,@DB_STRING_ENTRY+14,'Sylvanas - third barrier');
-- last barrier
DELETE FROM dbscripts_on_creature_movement WHERE id=3755416;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755416,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755416,0,15,70224,0,0,0,0,0,'Sylvanas - cast Destroy Wall'),
(3755416,0,0,0,0,0,0,0,@DB_STRING_ENTRY+15,'Sylvanas - last barrier');
-- epilog
DELETE FROM dbscripts_on_creature_movement WHERE id=3755417;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755417,0,0,0,0,0,0,0,@DB_STRING_ENTRY+16,'Sylvanas - epilog 1');
DELETE FROM dbscripts_on_creature_movement WHERE id=3755418;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755418,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755418,0,0,0,0,0,0,0,@DB_STRING_ENTRY+17,'Sylvanas - epilog 2');
DELETE FROM dbscripts_on_creature_movement WHERE id=3755419;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755419,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755419,10,0,0,0,30824,100,0,@DB_STRING_ENTRY+18,'Captain - epilog 4'),
(3755419,11,14,69866,0,0,0,0,0,'Sylvanas - remove Harvest Soul aura'),
(3755419,11,15,70021,0,22515,138326,16,0,'Sylvanas - cast Gunship Cannon Fire on Trigger'), -- ToDo: this has to be cast from the triggers on the ship
(3755419,12,15,70021,0,22515,138326,16,0,'Sylvanas - cast Gunship Cannon Fire on Trigger'), -- There are many triggers on the ship, each casting every second
(3755419,13,15,70021,0,22515,138326,16,0,'Sylvanas - cast Gunship Cannon Fire on Trigger'),
(3755419,13,13,0,0,201596,20,2,0,'Sylvanas - close Cave In Door'),
(3755419,14,15,72830,0,36954,100,4,0,'Lich King - cast Achievement Check'),
(3755419,15,18,0,0,36954,100,4,0,'Lich King - despawn'),
(3755419,19,25,0,0,0,0,0,0,'Sylvanas - set run off'),
(3755419,20,32,0,0,0,0,0,0,'Sylvanas - unpause WP Movement'),
(3755419,24,0,0,0,30824,100,0,@DB_STRING_ENTRY+19,'Captain - epilog 5'); -- ToDo: respawn the ship stairs
-- post epilog (ending)
DELETE FROM dbscripts_on_creature_movement WHERE id=3755420;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3755420,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3755420,0,0,0,0,0,0,0,@DB_STRING_ENTRY+20,'Sylvanas - epilog 7'),
(3755420,5,29,3,1,0,0,0,0,'Sylvanas - set gossip and quest npc flag'),
(3755420,5,15,71352,0,0,0,0,0,'Sylvanas - cast Escaping Arthas Kill Credit'),
(3755420,5,18,300000,0,0,0,0,0,'Sylvanas - despawn in 5 min');

-- #########
-- Lich King
-- #########
-- NOTE: this movement has a workaround; each step has a small wait timer in order to be able to pause the creature in case we need to cast a spell
DELETE FROM creature_movement_template WHERE entry=36954;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(36954, 1, 5558.784, 2254.040, 733.010, 0, 0, 0),
(36954, 2, 5570.379, 2241.007, 733.016, 0, 0, 0),
(36954, 3, 5580.032, 2231.677, 733.011, 0, 0, 0),
(36954, 4, 5593.463, 2220.451, 732.380, 0, 0, 0),
(36954, 5, 5603.269, 2203.589, 731.401, 0, 0, 0),
(36954, 6, 5604.760, 2193.403, 731.215, 3000, 3695406, 4.433), -- start ice walls (SD2 script)
(36954, 7, 5603.083, 2189.297, 731.099, 1, 0, 4.085),
(36954, 8, 5601.649, 2186.336, 731.117, 1, 0, 4.085),
(36954, 9, 5599.864, 2182.877, 731.114, 1, 0, 4.085),
(36954, 10, 5598.159, 2178.364, 731.050, 1, 0, 4.085),
(36954, 11, 5596.700, 2173.951, 731.013, 1, 0, 4.085),
(36954, 12, 5594.769, 2169.114, 730.971, 1, 0, 4.085),
(36954, 13, 5592.817, 2165.475, 730.972, 1, 0, 4.085),
(36954, 14, 5590.857, 2162.525, 730.999, 1, 0, 4.085),
(36954, 15, 5588.774, 2158.960, 731.038, 1, 0, 4.085),
(36954, 16, 5585.932, 2154.799, 731.120, 1, 0, 4.085),
(36954, 17, 5583.636, 2151.450, 731.186, 1, 0, 4.085),
(36954, 18, 5581.588, 2148.569, 731.258, 1, 0, 4.085),
(36954, 19, 5578.810, 2144.756, 731.259, 1, 0, 4.085),
(36954, 20, 5576.603, 2141.774, 731.245, 1, 0, 4.085),
(36954, 21, 5573.641, 2137.627, 731.205, 1, 0, 4.085),
(36954, 22, 5570.711, 2132.643, 731.055, 1, 0, 4.085),
(36954, 23, 5567.770, 2128.196, 730.904, 1, 0, 4.085),
(36954, 24, 5565.132, 2123.852, 730.824, 1, 0, 4.085),
(36954, 25, 5561.953, 2117.885, 730.837, 1, 0, 4.085),
(36954, 26, 5558.648, 2111.433, 730.984, 1, 0, 4.085),
(36954, 27, 5555.897, 2106.604, 731.085, 1, 0, 4.085),
(36954, 28, 5552.941, 2101.484, 731.109, 1, 0, 4.085),
(36954, 29, 5550.545, 2096.084, 731.103, 1, 0, 4.085),
(36954, 30, 5547.617, 2090.067, 731.030, 1, 0, 4.085),
(36954, 31, 5545.372, 2084.540, 731.108, 1, 0, 4.085),
(36954, 32, 5543.331, 2079.461, 731.068, 1, 0, 4.085),
(36954, 33, 5541.171, 2074.599, 730.982, 1, 0, 4.085),
(36954, 34, 5538.820, 2069.271, 730.974, 1, 0, 4.085),
(36954, 35, 5536.736, 2063.563, 731.004, 1, 0, 4.085),
(36954, 36, 5533.725, 2056.702, 730.984, 1, 0, 4.085),
(36954, 37, 5531.335, 2050.934, 731.030, 1, 0, 4.085),
(36954, 38, 5529.202, 2045.530, 731.109, 1, 0, 4.085),
(36954, 39, 5526.624, 2039.608, 731.271, 1, 0, 4.085),
(36954, 40, 5524.240, 2033.279, 731.556, 1, 0, 4.085),
(36954, 41, 5522.163, 2028.688, 731.918, 1, 0, 4.085),
(36954, 42, 5519.541, 2023.021, 732.393, 1, 0, 4.085),
(36954, 43, 5516.306, 2016.344, 733.028, 1, 0, 4.085),
(36954, 44, 5514.307, 2012.024, 733.504, 1, 0, 4.085),
(36954, 45, 5511.118, 2006.527, 734.107, 1, 0, 4.085),
(36954, 46, 5508.156, 2001.791, 734.636, 1, 0, 4.085),
(36954, 47, 5504.588, 1995.929, 735.285, 1, 0, 4.085),
(36954, 48, 5501.445, 1990.730, 735.805, 1, 0, 4.085),
(36954, 49, 5498.213, 1985.030, 736.245, 1, 0, 4.085),
(36954, 50, 5494.859, 1979.714, 736.606, 1, 0, 4.085),
(36954, 51, 5491.977, 1975.007, 736.947, 1, 0, 4.085),
(36954, 52, 5489.684, 1971.339, 737.217, 1, 0, 4.085),
(36954, 53, 5487.456, 1966.837, 737.471, 1, 0, 4.085),
(36954, 54, 5483.746, 1960.259, 738.159, 1, 0, 4.085),
(36954, 55, 5480.161, 1954.199, 739.215, 1, 0, 4.085),
(36954, 56, 5477.378, 1948.393, 740.236, 1, 0, 4.085),
(36954, 57, 5473.753, 1941.081, 741.441, 1, 0, 4.085),
(36954, 58, 5470.429, 1934.637, 742.357, 1, 0, 4.085),
(36954, 59, 5467.350, 1929.157, 743.091, 1, 0, 4.085),
(36954, 60, 5464.363, 1924.126, 743.782, 1, 0, 4.085),
(36954, 61, 5459.540, 1916.363, 744.682, 1, 0, 4.085),
(36954, 62, 5456.085, 1910.211, 745.670, 1, 0, 4.085),
(36954, 63, 5452.886, 1904.832, 746.715, 1, 0, 4.085),
(36954, 64, 5448.999, 1899.351, 747.896, 1, 0, 4.085),
(36954, 65, 5446.012, 1895.575, 748.649, 1, 0, 4.085),
(36954, 66, 5442.186, 1890.101, 749.753, 1, 0, 4.085),
(36954, 67, 5439.059, 1885.974, 750.583, 1, 0, 4.085),
(36954, 68, 5436.136, 1881.247, 751.451, 1, 0, 4.085),
(36954, 69, 5432.433, 1876.432, 752.262, 1, 0, 4.085),
(36954, 70, 5428.907, 1870.744, 753.135, 1, 0, 4.085),
(36954, 71, 5425.108, 1864.649, 753.921, 1, 0, 4.085),
(36954, 72, 5421.436, 1859.080, 754.605, 1, 0, 4.085),
(36954, 73, 5417.583, 1853.405, 755.259, 1, 0, 4.085),
(36954, 74, 5414.217, 1848.430, 755.767, 1, 0, 4.085),
(36954, 75, 5410.968, 1844.013, 756.175, 1, 0, 4.085),
(36954, 76, 5407.530, 1839.244, 756.653, 1, 0, 4.085),
(36954, 77, 5403.284, 1834.459, 757.202, 1, 0, 4.085),
(36954, 78, 5399.356, 1830.448, 757.621, 1, 0, 4.085),
(36954, 79, 5395.348, 1826.223, 758.155, 1, 0, 4.085),
(36954, 80, 5390.759, 1821.430, 758.758, 1, 0, 4.085),
(36954, 81, 5386.410, 1817.088, 759.395, 1, 0, 4.085),
(36954, 82, 5381.786, 1812.788, 759.961, 1, 0, 4.085),
(36954, 83, 5377.353, 1807.871, 760.336, 1, 0, 4.085),
(36954, 84, 5372.645, 1802.894, 760.679, 1, 0, 4.085),
(36954, 85, 5368.017, 1798.661, 761.225, 1, 0, 4.085),
(36954, 86, 5363.518, 1794.078, 762.108, 1, 0, 4.085),
(36954, 87, 5359.198, 1789.941, 762.800, 1, 0, 4.085),
(36954, 88, 5354.533, 1785.361, 763.792, 1, 0, 4.085),
(36954, 89, 5349.336, 1780.320, 764.907, 1, 0, 4.085),
(36954, 90, 5344.421, 1776.098, 765.776, 1, 0, 4.085),
(36954, 91, 5340.075, 1771.893, 766.629, 1, 0, 4.085),
(36954, 92, 5335.488, 1767.389, 767.568, 1, 0, 4.085), -- end ice walls event
(36954, 93, 5324.617, 1756.610, 770.097, 0, 0, 0),
(36954, 94, 5313.084, 1742.518, 773.501, 0, 0, 0),
(36954, 95, 5301.751, 1731.123, 776.697, 0, 0, 0),
(36954, 96, 5293.488, 1719.494, 779.874, 0, 0, 0),
(36954, 97, 5285.431, 1708.063, 782.700, 0, 0, 0),
(36954, 98, 5276.831, 1699.210, 785.745, 1000, 3695498, 4.085);

-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=3695406;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695406,0,15,69780,0,0,0,0,0,'Lich King - cast Remorseless Winter'),
(3695406,0,15,69768,0,0,0,8,0,'Lich King - cast Summon Ice Wall'),  -- Start event 22795 (handled by SD2)
(3695406,0,0,0,0,0,0,0,@DB_STRING_ENTRY+0,'Lich King - gauntlet start');
-- epilog
DELETE FROM dbscripts_on_creature_movement WHERE id=3695498;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3695498,0,32,1,0,0,0,0,0,'Lich King - pause WP movement'),
(3695498,0,0,0,0,0,0,0,@DB_STRING_ENTRY+7,'Lich King - epilog 3');


-- ######
-- Gossip
-- ######
-- Jaina (condition set to WP 1)
DELETE FROM gossip_menu_option WHERE menu_id=10860;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(10860,0,0,'We\'re ready! Let\'s go!',1,1,-1,0,1086001,0,0,'',719);
-- Gossip scripts
DELETE FROM dbscripts_on_gossip WHERE id=1086001;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1086001,0,29,1,2,0,0,0,0,0,0,0,0,'Jaina - remove npc flag for gossip'),
(1086001,1,32,0,0,0,0,0,0,0,0,0,0,'Jaina - unpause WP movement'),
(1086001,1,15,69763,0,36954,50,8,0,0,0,0,0,'Lich King - cast Stun Break'),
(1086001,1,25,1,0,36954,50,0,0,0,0,0,0,'Lich King - set run on'),
(1086001,2,20,2,0,36954,50,0,0,0,0,0,0,'Lich King - start WP movement');
-- Sylvanas (condition set to WP 1)
DELETE FROM gossip_menu WHERE entry=10931;
INSERT INTO gossip_menu VALUES
(10931,15190,0,0);
DELETE FROM gossip_menu_option WHERE menu_id=10931;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(10931,0,0,'We\'re ready! Let\'s go!',1,1,-1,0,1093101,0,0,'',719);
DELETE FROM dbscripts_on_gossip WHERE id=1093101;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1093101,0,29,1,2,0,0,0,0,0,0,0,0,'Sylvanas - remove npc flag for gossip'),
(1093101,0,14,70194,0,36954,50,0,0,0,0,0,0,'Lich King - remove aura Dark Binding'), -- need to manually remove aura because Stun Break won't work
(1093101,1,32,0,0,0,0,0,0,0,0,0,0,'Sylvanas - unpause WP movement'),
(1093101,1,15,69763,0,36954,50,0,0,0,0,0,0,'Lich King - cast Stun Break'),
(1093101,1,25,1,0,36954,50,0,0,0,0,0,0,'Lich King - set run on'),
(1093101,2,20,2,0,36954,50,0,0,0,0,0,0,'Lich King - start WP movement');


-- #####
-- Other
-- #####
-- script targets
DELETE FROM spell_script_target WHERE entry IN (69784,69708,70194,69857,69768,69767,70021,70224,70225);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(69857,1,36954,0),
(69784,1,37014,0),
(69708,1,36954,0),
(70194,1,36954,0),
(69768,1,37014,0),
(69767,1,37014,0),
(70021,1,22515,0),
(70224,1,37014,0),
(70225,1,37014,0);
-- various updates
UPDATE creature_template SET NpcFlags=1, UnitFlags=256 WHERE entry IN (37554,36955);
UPDATE creature_template SET GossipMenuId=10931 WHERE entry=37554;
UPDATE creature_template SET InhabitType=7 WHERE entry IN (37068,37107);
UPDATE gameobject_template SET flags=16 WHERE entry IN (202212,202337,201710,202212);
UPDATE creature_template SET FactionAlliance=1770, FactionHorde=1770 WHERE entry=37554;
