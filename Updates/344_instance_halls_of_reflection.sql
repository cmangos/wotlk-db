-- #########################
-- Halls of Reflection intro
-- #########################

-- ###############
-- Various updates
-- ###############
UPDATE creature_template SET NpcFlags=3 WHERE entry IN (37223,37221);
UPDATE creature_template SET MovementType=2 WHERE entry IN (37226,38112,38113,38599,38603);
UPDATE creature_template SET UnitFlags=33555200 WHERE entry=37906;
UPDATE creature_template SET InhabitType=5 WHERE entry=37906;
UPDATE creature_template_addon SET auras='72630' WHERE entry IN (38172,38173,38175,38176,38177);
UPDATE creature_template SET SpeedWalk=2, SpeedRun=1.428571 WHERE entry=37226;
UPDATE creature_template SET GossipMenuId=10950 WHERE entry=37223;
-- addon required to set sheath mode to 0
DELETE FROM creature_template_addon WHERE entry=37225;
INSERT INTO creature_template_addon(entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(37225, 0, 0, 0, 0, 0, 0, '');

-- #####
-- Texts
-- #####
SET @DB_STRING_ENTRY:=2000005824;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+42;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- Alliance
(@DB_STRING_ENTRY+0,'The chill of this place... I can feel my blood freezing.',16631,1,0,1,'Jaina - enter 1'),
(@DB_STRING_ENTRY+1,'What is that! Up ahead! Could it be? Heroes, at my side!',16632,1,0,6,'Jaina - enter 2'),
(@DB_STRING_ENTRY+2,'Frostmourne: the blade that destroyed our kingdom...',16633,1,0,1,'Jaina - intro 1'),
(@DB_STRING_ENTRY+3,'Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space. Back up, please. ',16634,1,0,5,'Jaina - intro 2'),
(@DB_STRING_ENTRY+4,'Jaina! Could it truly be you?',16666,0,0,5,'Uther - intro 3'),
(@DB_STRING_ENTRY+5,'Uther! Dear Uther! I... I\'m so sorry.',16635,0,0,1,'Jaina - intro 4'),
(@DB_STRING_ENTRY+6,'Jaina, you haven\'t much time. The Lich King sees what the sword sees. He will be here shortly.',16667,0,0,1,'Uther - intro 5'),
(@DB_STRING_ENTRY+7,'Arthas is here? Maybe I...',16636,0,0,6,'Jaina - intro 6'),
(@DB_STRING_ENTRY+8,'No, girl. Arthas is not here. Arthas is merely a presence within the Lich King\'s mind. A dwindling presence...',16668,0,0,1,'Uther - intro 7'),
(@DB_STRING_ENTRY+9,'But Uther, if there\'s any hope of reaching Arthas. I... I must try.',16637,0,0,1,'Jaina - intro 8'),
(@DB_STRING_ENTRY+10,'Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge.',16669,0,0,1,'Uther - intro 9'),
(@DB_STRING_ENTRY+11,'Tell me how, Uther? How do I destroy my prince? My...',16638,0,0,6,'Jaina - intro 10'),
(@DB_STRING_ENTRY+12,'Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner\'zhul - atop the spire, at the Frozen Throne. It is the only way.',16670,0,0,5,'Uther - intro 11'),
(@DB_STRING_ENTRY+13,'You\'re right, Uther. Forgive me. I... I don\'t know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.',16639,0,0,1,'Jaina - intro 12'),
(@DB_STRING_ENTRY+14,'There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things.',16671,0,0,1,'Uther - intro 13'),
(@DB_STRING_ENTRY+15,'A grand sacrifice by a noble soul...',16672,0,0,1,'Uther - intro 14'),
(@DB_STRING_ENTRY+16,'Who could bear such a burden?',16640,0,0,6,'Jaina - intro 15'),
(@DB_STRING_ENTRY+17,'Uther shakes his head.',0,2,0,0,'Uther - intro 16'),
(@DB_STRING_ENTRY+18,'I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.',16673,0,0,1,'Uther - intro 16'),
(@DB_STRING_ENTRY+19,'Then maybe there is still hope...',16641,0,0,1,'Jaina - intro 18'),
(@DB_STRING_ENTRY+20,'No, Jaina! ARRRRRRGHHHH... He... He is coming. You... You must...',16674,0,0,5,'Uther - intro 19'),
(@DB_STRING_ENTRY+21,'SILENCE, PALADIN!',17225,1,0,5,'Lich King - intro 20'),
(@DB_STRING_ENTRY+22,'So you wish to commune with the dead? You shall have your wish.',17226,1,0,6,'Lich King - intro 21'),
(@DB_STRING_ENTRY+23,'Falric. Marwyn. Bring their corpses to my chamber when you are through.',17227,1,0,1,'Lich King - intro 22'),
(@DB_STRING_ENTRY+24,'As you wish, my lord.',16741,1,0,2,'Falric and Marwyn - intro 23'),
(@DB_STRING_ENTRY+25,'Soldiers of Lordaeron, rise to meet your master\'s call!',16714,1,0,2,'Falric - intro 24'),
(@DB_STRING_ENTRY+26,'You won\'t deny me this, Arthas! I must know... I must find out...',16642,1,0,0,'Jaina - intro 25'),
-- Horde
(@DB_STRING_ENTRY+27,'I... I don\'t believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!',17049,1,0,1,'Sylvanas - enter 1'),
(@DB_STRING_ENTRY+28,'Standing this close to the blade that ended my life... The pain... It is renewed.',17050,1,0,1,'Sylvanas - intro 1'),
(@DB_STRING_ENTRY+29,'I dare not touch it. Stand back! Stand back as I attempt to commune with the blade! Perhaps our salvation lies within...',17051,1,0,1,'Sylvanas - intro 2'),
(@DB_STRING_ENTRY+30,'Careful, girl. I\'ve heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne.',16659,0,0,1,'Uther - intro 3'),
(@DB_STRING_ENTRY+31,'Uther...Uther the Lightbringer. How...',17052,0,0,1,'Sylvanas - intro 4'),
(@DB_STRING_ENTRY+32,'You haven\'t much time. The Lich King sees what the sword sees. He will be here shortly.',16660,0,0,1,'Uther - intro 5'),
(@DB_STRING_ENTRY+33,'The Lich King is here? Then my destiny shall be fulfilled today!',17053,0,0,5,'Sylvanas - intro 6'),
(@DB_STRING_ENTRY+34,'You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last.',16661,0,0,1,'Uther - intro 7'),
(@DB_STRING_ENTRY+35,'There must be a way...',17054,0,0,1,'Sylvanas - intro 8'),
(@DB_STRING_ENTRY+36,'Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched.',16662,0,0,1,'Uther - intro 9'),
(@DB_STRING_ENTRY+37,'Who could bear such a burden?',17055,0,0,6,'Sylvanas - intro 10'),
(@DB_STRING_ENTRY+38,'I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.',16663,0,0,1,'Uther - intro 11'),
(@DB_STRING_ENTRY+39,'Alas, the only way to defeat the Lich King is to destroy him at the place he was created.',16664,0,0,1,'Uther - intro 12'),
(@DB_STRING_ENTRY+40,'The Frozen Throne...',17056,0,0,1,'Sylvanas - intro 13'),
(@DB_STRING_ENTRY+41,'Aye. ARRRRRRGHHHH... He... He is coming. You... You must...',16665,0,0,5,'Uther - intro 14'),
(@DB_STRING_ENTRY+42,'You will not escape me that easily, Arthas! I will have my vengeance!',17057,1,0,0,'Sylvanas - intro 15');

-- ########
-- Movement
-- ########
-- Jaina
DELETE FROM creature_movement_template WHERE entry=37221;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(37221, 1, 5236.659, 1929.894, 707.778, 3000, 3722101, 0.872),
(37221, 2, 5265.890, 1952.980, 707.697, 1000, 3722102, 0.872),
(37221, 3, 5306.640, 1998.030, 709.341, 1000, 3722103, 1.239),
(37221, 4, 5315.615, 2005.557, 709.341, 0, 0, 0),
(37221, 5, 5321.757, 2014.413, 707.758, 0, 0, 0),
(37221, 6, 5332.073, 2024.684, 707.708, 0, 0, 0),
(37221, 7, 5344.222, 2037.547, 707.694, 0, 0, 0),
(37221, 8, 5358.785, 2052.311, 707.695, 0, 0, 0),
(37221, 9, 5366.411, 2060.689, 707.694, 0, 0, 0),
(37221, 10, 5377.876, 2072.423, 707.694, 0, 0, 0),
(37221, 11, 5395.528, 2090.809, 707.694, 0, 0, 0),
(37221, 12, 5407.938, 2103.191, 707.694, 1000, 3722112, 0.872);
-- Koreln
DELETE FROM creature_movement_template WHERE entry=37582;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(37582, 1, 5232.680, 1931.460, 707.778, 3000, 3758201, 0.837),
(37582, 2, 5240.767, 1940.708, 707.694, 0, 0, 0),
(37582, 3, 5250.881, 1948.654, 707.694, 1000, 3722103, 0.837),
(37582, 4, 5255.390, 1956.061, 707.694, 0, 0, 0),
(37582, 5, 5274.258, 1976.811, 707.694, 0, 0, 0),
(37582, 6, 5283.226, 1992.300, 707.744, 1000, 3722103, 0.383),
(37582, 7, 5290.788, 2002.983, 707.694, 0, 0, 0),
(37582, 8, 5298.780, 2016.550, 707.946, 0, 0, 0),
(37582, 9, 5316.907, 2027.265, 707.694, 0, 0, 0),
(37582, 10, 5336.175, 2039.881, 707.695, 0, 0, 0),
(37582, 11, 5350.426, 2053.653, 707.695, 0, 0, 0),
(37582, 12, 5360.711, 2064.797, 707.694, 1000, 3758212, 0.837);
-- Sylvanas
DELETE FROM creature_movement_template WHERE entry=37223;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(37223, 1, 5236.659, 1929.894, 707.778, 3000, 3722301, 0.872),
(37223, 2, 5265.890, 1952.980, 707.697, 1000, 3722302, 0.872),
(37223, 3, 5306.640, 1998.030, 709.341, 1000, 3722103, 1.239),
(37223, 4, 5315.615, 2005.557, 709.341, 0, 0, 0),
(37223, 5, 5321.757, 2014.413, 707.758, 0, 0, 0),
(37223, 6, 5332.073, 2024.684, 707.708, 0, 0, 0),
(37223, 7, 5344.222, 2037.547, 707.694, 0, 0, 0),
(37223, 8, 5358.785, 2052.311, 707.695, 0, 0, 0),
(37223, 9, 5366.411, 2060.689, 707.694, 0, 0, 0),
(37223, 10, 5377.876, 2072.423, 707.694, 0, 0, 0),
(37223, 11, 5395.528, 2090.809, 707.694, 0, 0, 0),
(37223, 12, 5407.938, 2103.191, 707.694, 1000, 3722112, 0.872);
-- Loralen
DELETE FROM creature_movement_template WHERE entry=37779;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(37779, 1, 5232.680, 1931.460, 707.778, 3000, 3758201, 0.837),
(37779, 2, 5240.767, 1940.708, 707.694, 0, 0, 0),
(37779, 3, 5250.881, 1948.654, 707.694, 1000, 3722103, 0.837),
(37779, 4, 5255.390, 1956.061, 707.694, 0, 0, 0),
(37779, 5, 5274.258, 1976.811, 707.694, 0, 0, 0),
(37779, 6, 5283.226, 1992.300, 707.744, 1000, 3722103, 0.383),
(37779, 7, 5290.788, 2002.983, 707.694, 0, 0, 0),
(37779, 8, 5298.780, 2016.550, 707.946, 0, 0, 0),
(37779, 9, 5316.907, 2027.265, 707.694, 0, 0, 0),
(37779, 10, 5336.175, 2039.881, 707.695, 0, 0, 0),
(37779, 11, 5350.426, 2053.653, 707.695, 0, 0, 0),
(37779, 12, 5360.711, 2064.797, 707.694, 1000, 3758212, 0.837);
-- Lich King
DELETE FROM creature_movement_template WHERE entry=37226;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(37226, 1, 5362.463, 2062.693, 707.778, 1000, 3722601, 3.944),
(37226, 2, 5355.660, 2055.230, 707.690, 1000, 0, 3.944),
(37226, 3, 5332.830, 2031.240, 707.695, 3000, 0, 3.944),
(37226, 4, 5312.931, 2010.240, 709.341, 20000, 3722604, 4.206),
(37226, 5, 5319.080, 2016.613, 707.792, 0, 0, 0),
(37226, 6, 5332.285, 2030.832, 707.695, 0, 0, 0),
(37226, 7, 5344.124, 2043.075, 707.694, 0, 0, 0),
(37226, 8, 5355.287, 2054.936, 707.694, 3000, 3722608, 0.837),
(37226, 9, 5364.506, 2064.882, 707.694, 0, 0, 0),
(37226, 10, 5376.053, 2076.927, 707.694, 0, 0, 0),
(37226, 11, 5391.385, 2092.807, 707.694, 0, 0, 0),
(37226, 12, 5404.858, 2107.083, 707.694, 1000, 3722112, 0.837);
-- Falric
DELETE FROM creature_movement_template WHERE entry=38112;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(38112, 1, 5283.951, 2030.530, 709.319, 1000, 3811201, 5.532);
-- Marwyn
DELETE FROM creature_movement_template WHERE entry=38113;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(38113, 1, 5335.010, 1982.370, 709.319, 1000, 3811301, 2.391);

-- ################
-- Movement scripts
-- ################
SET @DB_STRING_ENTRY:=2000005824;
-- Jaina
DELETE FROM dbscripts_on_creature_movement WHERE id=3722101;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722101,0,0,0,0,0,0,0,@DB_STRING_ENTRY+0,'Jaina - enter 1'),
(3722101,0,25,1,0,0,0,0,0,'Jaina - set run on');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722102;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722102,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3722102,0,0,0,0,0,0,0,@DB_STRING_ENTRY+1,'Jaina - enter 2'),
(3722102,0,29,3,1,0,0,0,0,'Jaina - set npc flag for gossip and quest');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722103;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722103,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722112;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722112,0,32,1,0,0,0,0,0,'Jaina - pause WP Movement'),
(3722112,5,18,0,0,0,0,0,0,'Jaina - despawn');
-- Sylvanas
DELETE FROM dbscripts_on_creature_movement WHERE id=3722301;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722301,0,25,1,0,0,0,0,0,'Sylvanas - set run on');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722302;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722302,0,32,1,0,0,0,0,0,'Sylvanas - pause WP Movement'),
(3722302,0,0,0,0,0,0,0,@DB_STRING_ENTRY+27,'Sylvanas - enter 1'),
(3722302,0,29,3,1,0,0,0,0,'Sylvanas - set npc flag for gossip and quest');
-- Koreln and Loralen
DELETE FROM dbscripts_on_creature_movement WHERE id=3758201;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3758201,0,25,1,0,0,0,0,0,'Koreln - set run on');
DELETE FROM dbscripts_on_creature_movement WHERE id=3758212;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3758212,0,32,1,0,0,0,0,0,'Koreln - pause WP Movement'),
(3758212,0,43,0,0,197341,10,2,0,'Koreln - close Impenetrable Door'),
(3758212,5,18,0,0,0,0,0,0,'Koreln - despawn');
-- Lich King
DELETE FROM dbscripts_on_creature_movement WHERE id=3722601;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722601,0,13,0,0,197341,10,2,0,'Lich King - open Impenetrable Door'),
(3722601,4,43,0,0,197341,50,2,0,'Lich King - close Impenetrable Door');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722604;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,x,y,z,o,comments) VALUES
(3722604,1,0,0,0,0,0,0,@DB_STRING_ENTRY+22,0,0,0,0,0,'Lich King - intro 21'),
(3722604,11,15,72729,0,0,0,0,0,0,0,0,0,0,'Lich King - cast Frostmourne Equip'),
(3722604,11,42,0,0,0,0,0,49706,0,0,0,0,0,'Lich King - change equipment'),
(3722604,16,0,0,0,0,0,0,@DB_STRING_ENTRY+23,0,0,0,0,0,'Lich King - intro 22'),
(3722604,21,10,38112,0,0,0,0,0,0,5276.583,2037.45,709.402,5.532,'Lich King - summon Farwyn'),
(3722604,21,10,38113,0,0,0,0,0,0,5342.232,1975.696,709.402,2.391,'Lich King - summon Marwyn'),
(3722604,27,0,0,0,38112,90,0,@DB_STRING_ENTRY+24,0,0,0,0,0,'Falric - intro 23'),
(3722604,27,0,0,0,38113,90,0,@DB_STRING_ENTRY+24,0,0,0,0,0,'Marwyn - intro 23');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722608;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722608,0,25,1,0,0,0,0,0,'Lich King - set run on'),
(3722608,0,13,0,0,197341,10,2,0,'Lich King - open Impenetrable Door');
-- Falric
DELETE FROM dbscripts_on_creature_movement WHERE id=3811201;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(3811201,0,32,1,0,0,0,0,0,0,0,0,0,'Falric - pause WP Movement'),
(3811201,9,1,333,0,0,0,0,0,0,0,0,0,'Falric - emote'),
(3811201,14,0,0,0,0,0,0,@DB_STRING_ENTRY+25,0,0,0,0,'Falric - intro 24'),
(3811201,15,10,38175,0,0,0,0,0,5279.649,2004.656,707.778,0.069,'Falric - summon Ghostly Priest'), -- summon half of the trash mobs
(3811201,15,10,38175,0,0,0,0,0,5282.897,2019.597,707.778,5.881,'Falric - summon Ghostly Priest'),
(3811201,15,10,38175,0,0,0,0,0,5277.739,2016.882,707.778,5.969,'Falric - summon Ghostly Priest'),
(3811201,15,10,38173,0,0,0,0,0,5306.057,2037.002,707.778,4.817,'Falric - summon Spectral Footman'),
(3811201,15,10,38173,0,0,0,0,0,5280.632,2012.156,707.778,6.056,'Falric - summon Spectral Footman'),
(3811201,15,10,38173,0,0,0,0,0,5306.572,1977.474,707.778,1.500,'Falric - summon Spectral Footman'),
(3811201,15,10,38173,0,0,0,0,0,5340.836,1992.458,707.778,2.757,'Falric - summon Spectral Footman'),
(3811201,15,10,38173,0,0,0,0,0,5337.833,2010.057,707.778,3.228,'Falric - summon Spectral Footman'),
(3811201,15,10,38176,0,0,0,0,0,5337.865,2003.403,707.778,2.984,'Falric - summon Tortured Rifleman'),
(3811201,15,10,38176,0,0,0,0,0,5312.752,2037.122,707.778,4.590,'Falric - summon Tortured Rifleman'),
(3811201,15,10,38176,0,0,0,0,0,5336.599,2017.278,707.778,3.473,'Falric - summon Tortured Rifleman'),
(3811201,15,10,38177,0,0,0,0,0,5299.434,1979.009,707.778,1.239,'Falric - summon Shadowy Mercenary'),
(3811201,15,10,38177,0,0,0,0,0,5318.704,2036.108,707.778,4.223,'Falric - summon Shadowy Mercenary'),
(3811201,15,10,38177,0,0,0,0,0,5277.365,1993.229,707.778,0.401,'Falric - summon Shadowy Mercenary'),
(3811201,15,10,38177,0,0,0,0,0,5311.031,1972.229,707.778,1.640,'Falric - summon Shadowy Mercenary'),
(3811201,15,10,38172,0,0,0,0,0,5320.369,1980.125,707.778,2.007,'Falric - summon Phantom Mage'),
(3811201,15,10,38172,0,0,0,0,0,5295.885,2040.342,707.778,5.078,'Falric - summon Phantom Mage');
-- Marwyn
DELETE FROM dbscripts_on_creature_movement WHERE id=3811301;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(3811301,0,32,1,0,0,0,0,0,0,0,0,0,'Marwyn - pause WP Movement'),
(3811301,9,1,333,0,0,0,0,0,0,0,0,0,'Marwyn - emote'),
(3811301,15,10,38175,0,0,0,0,0,5309.577,2042.668,707.778,4.694,'Falric - summon Ghostly Priest'), -- summon half of the trash mobs
(3811301,15,10,38175,0,0,0,0,0,5275.479,2001.135,707.778,0.174,'Falric - summon Ghostly Priest'),
(3811301,15,10,38175,0,0,0,0,0,5316.701,2041.550,707.778,4.502,'Falric - summon Ghostly Priest'),
(3811301,15,10,38175,0,0,0,0,0,5280.513,1997.842,707.778,0.296,'Falric - summon Ghostly Priest'),
(3811301,15,10,38173,0,0,0,0,0,5343.293,1999.384,707.778,2.914,'Falric - summon Spectral Footman'),
(3811301,15,10,38173,0,0,0,0,0,5344.150,2007.168,707.778,3.159,'Falric - summon Spectral Footman'),
(3811301,15,10,38173,0,0,0,0,0,5319.158,1973.998,707.778,1.919,'Falric - summon Spectral Footman'),
(3811301,15,10,38173,0,0,0,0,0,5322.964,2040.288,707.778,4.345,'Falric - summon Spectral Footman'),
(3811301,15,10,38176,0,0,0,0,0,5299.250,2035.998,707.778,5.026,'Falric - summon Tortured Rifleman'),
(3811301,15,10,38176,0,0,0,0,0,5325.072,1977.597,707.778,2.076,'Falric - summon Tortured Rifleman'),
(3811301,15,10,38176,0,0,0,0,0,5295.635,1973.757,707.778,1.186,'Falric - summon Tortured Rifleman'),
(3811301,15,10,38176,0,0,0,0,0,5343.467,2015.951,707.778,3.490,'Falric - summon Tortured Rifleman'),
(3811301,15,10,38177,0,0,0,0,0,5335.724,1996.859,707.778,2.740,'Falric - summon Shadowy Mercenary'),
(3811301,15,10,38177,0,0,0,0,0,5302.247,1972.415,707.778,1.378,'Falric - summon Shadowy Mercenary'),
(3811301,15,10,38177,0,0,0,0,0,5313.820,1978.146,707.778,1.745,'Falric - summon Shadowy Mercenary'),
(3811301,15,10,38172,0,0,0,0,0,5302.448,2042.222,707.778,4.904,'Falric - summon Phantom Mage'),
(3811301,15,10,38172,0,0,0,0,0,5275.076,2008.724,707.778,6.213,'Falric - summon Phantom Mage');


-- ########
-- Gossip
-- ########
-- Alliance
-- ########
-- jaina
-- Condition: Uther doesn't need to be in range in order to have the gossip
SET @CONDITION_ENTRY:=1039;
DELETE FROM conditions WHERE condition_entry IN (@CONDITION_ENTRY,@CONDITION_ENTRY+1);
INSERT INTO conditions VALUES
(@CONDITION_ENTRY,37,37225,100),
(@CONDITION_ENTRY+1,-3,@CONDITION_ENTRY,0);
-- gossip options
DELETE FROM gossip_menu_option WHERE menu_id = 11031;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(11031,0,0,'Can you remove the sword?',1,1,-1,0,1103101,0,0,'',@CONDITION_ENTRY+1),
(11031,1,0,'My lady, I think I hear Arthas coming. Whatever you\'re going to do, do it quickly.',1,1,-1,0,1103102,0,0,'',@CONDITION_ENTRY+1);
-- Long version intro
SET @DB_STRING_ENTRY:=2000005824;
DELETE FROM dbscripts_on_gossip WHERE id=1103101;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1103101,0,29,3,2,0,0,0,0,0,0,0,0,'Jaina - remove npc flag for gossip and quest'),
(1103101,1,32,0,0,0,0,0,0,0,0,0,0,'Jaina - unpause WP movement'),
(1103101,1,32,0,0,37582,20,0,0,0,0,0,0,'Koreln - unpause WP movement'),
(1103101,11,0,0,0,0,0,0,@DB_STRING_ENTRY+2,0,0,0,0,'Jaina - intro 1'),
(1103101,17,0,0,0,0,0,0,@DB_STRING_ENTRY+3,0,0,0,0,'Jaina - intro 2'),
(1103101,22,15,72711,0,0,0,0,0,0,0,0,0,'Jaina - cast Summon Souls'),
(1103101,23,10,37906,23000,0,0,0,0,5307.805,2003.129,709.424,0.715,'Jaina - summon Imprisoned Soul (for Uther spawn location)'),
(1103101,27,10,37906,210000,0,0,0,0,5310.972,2011.324,714.223,1.259,'Jaina - summon Imprisoned Soul'), -- ToDo: the following summons should have wp movement for flight
(1103101,27,10,37906,210000,0,0,0,0,5313.449,2009.969,714.072,0.734,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5309.739,2002.512,716.804,4.818,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5309.779,2001.589,716.410,4.804,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5305.033,2006.158,717.958,3.229,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5306.288,2002.576,717.819,4.041,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5312.103,2009.684,716.905,0.901,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5312.180,2009.806,715.979,0.904,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5311.003,2009.907,718.822,1.109,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5309.857,2010.944,710.994,1.441,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5311.983,2009.672,718.799,0.868,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5312.555,2009.387,713.197,1.058,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5314.664,2007.692,716.350,0.214,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5313.873,2004.821,716.381,5.911,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5310.577,2002.505,717.173,4.980,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5306.833,2003.182,716.158,4.023,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5305.203,2005.246,715.628,3.398,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5305.185,2008.023,715.278,2.770,'Jaina - summon Imprisoned Soul'),
(1103101,27,10,37906,210000,0,0,0,0,5307.085,2010.288,714.769,2.100,'Jaina - summon Imprisoned Soul'),
(1103101,27,13,0,0,202302,10,2,0,0,0,0,0,'Jaina - use Frostmourne'),
(1103101,29,14,72711,0,0,0,0,0,0,0,0,0,'Jaina - remove Summon Souls'),
(1103101,31,15,72712,0,37906,5,0,0,0,0,0,0,'Imprisoned Soul - cast Falric/Marwyn Spawn Aura'),
(1103101,36,10,37225,150000,0,10,0,0,5307.810,2003.094,709.424,4.357,'Jaina - summon Uther'),
(1103101,38,0,0,0,37225,10,0,@DB_STRING_ENTRY+4,0,0,0,0,'Uther - intro 3'),
(1103101,43,0,0,0,0,0,0,@DB_STRING_ENTRY+5,0,0,0,0,'Jaina - intro 4'),
(1103101,48,0,0,0,37225,10,0,@DB_STRING_ENTRY+6,0,0,0,0,'Uther - intro 5'),
(1103101,55,0,0,0,0,0,0,@DB_STRING_ENTRY+7,0,0,0,0,'Jaina - intro 6'),
(1103101,57,0,0,0,37225,10,0,@DB_STRING_ENTRY+8,0,0,0,0,'Uther - intro 7'),
(1103101,68,0,0,0,0,0,0,@DB_STRING_ENTRY+9,0,0,0,0,'Jaina - intro 8'),
(1103101,74,0,0,0,37225,10,0,@DB_STRING_ENTRY+10,0,0,0,0,'Uther - intro 9'),
(1103101,86,0,0,0,0,0,0,@DB_STRING_ENTRY+11,0,0,0,0,'Jaina - intro 10'),
(1103101,91,0,0,0,37225,10,0,@DB_STRING_ENTRY+12,0,0,0,0,'Uther - intro 11'),
(1103101,105,0,0,0,0,0,0,@DB_STRING_ENTRY+13,0,0,0,0,'Jaina - intro 12'),
(1103101,117,0,0,0,37225,10,0,@DB_STRING_ENTRY+14,0,0,0,0,'Uther - intro 13'),
(1103101,143,0,0,0,37225,10,0,@DB_STRING_ENTRY+15,0,0,0,0,'Uther - intro 14'),
(1103101,148,0,0,0,0,0,0,@DB_STRING_ENTRY+16,0,0,0,0,'Jaina - intro 15'),
(1103101,152,0,0,0,37225,10,0,@DB_STRING_ENTRY+17,0,0,0,0,'Uther - intro 16'),
(1103101,155,0,0,0,37225,10,0,@DB_STRING_ENTRY+18,0,0,0,0,'Uther - intro 17'),
(1103101,166,0,0,0,0,0,0,@DB_STRING_ENTRY+19,0,0,0,0,'Jaina - intro 18'),
(1103101,169,10,37226,0,0,10,0,0,5362.463,2062.693,707.7781,5.9447,'Jaina - summon Lich King'), -- this should be summoned 15 sec earlier; but we need to accomodate both short and long intro
(1103101,170,0,0,0,37225,10,0,@DB_STRING_ENTRY+20,0,0,0,0,'Uther - intro 18'),
(1103101,173,1,431,0,37225,10,0,0,0,0,0,0,'Uther - emote'),
(1103101,180,0,0,0,37226,50,0,@DB_STRING_ENTRY+21,0,0,0,0,'Lich King - intro 20'),
(1103101,182,15,70693,0,37225,10,0,0,0,0,0,0,'Uther - cast Uther Despawn'),
(1103101,231,0,0,0,0,0,0,@DB_STRING_ENTRY+26,0,0,0,0,'Jaina - intro 25'),
(1103101,231,32,0,0,0,0,0,0,0,0,0,0,'Jaina - unpause WP movement'),
(1103101,231,32,0,0,37582,50,0,0,0,0,0,0,'Koreln - unpause WP movement');
-- Short version intro
DELETE FROM dbscripts_on_gossip WHERE id=1103102;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1103102,0,29,3,2,0,0,0,0,0,0,0,0,'Jaina - remove npc flag for gossip and quest'),
(1103102,0,10,37226,0,0,10,0,0,5362.463,2062.693,707.7781,5.9447,'Jaina - summon Lich King'),
(1103102,1,32,0,0,0,0,0,0,0,0,0,0,'Jaina - unpause WP movement'),
(1103102,1,32,0,0,37582,20,0,0,0,0,0,0,'Koreln - unpause WP movement'),
(1103102,62,0,0,0,0,0,0,@DB_STRING_ENTRY+26,0,0,0,0,'Jaina - intro 25'),
(1103102,62,32,0,0,0,0,0,0,0,0,0,0,'Jaina - unpause WP movement'),
(1103102,62,32,0,0,37582,50,0,0,0,0,0,0,'Koreln - unpause WP movement');

-- #####
-- Horde
-- #####
-- Sylvanas
DELETE FROM gossip_menu WHERE entry=10950;
INSERT INTO gossip_menu VALUES
(10950,15215,0,0);
DELETE FROM gossip_menu_option WHERE menu_id = 10950;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(10950,0,0,'Can you remove the sword?',1,1,-1,0,1095001,0,0,'',@CONDITION_ENTRY+1),
(10950,1,0,'Dark Lady, I think I hear Arthas coming. Whatever you\'re going to do, do it quickly.',1,1,-1,0,1095002,0,0,'',@CONDITION_ENTRY+1);
-- Long version intro
DELETE FROM dbscripts_on_gossip WHERE id=1095001;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1095001,0,29,3,2,0,0,0,0,0,0,0,0,'Sylvanas - remove npc flag for gossip and quest'),
(1095001,1,32,0,0,0,0,0,0,0,0,0,0,'Sylvanas - unpause WP movement'),
(1095001,1,32,0,0,37779,20,0,0,0,0,0,0,'Loralen - unpause WP movement'),
(1095001,11,0,0,0,0,0,0,@DB_STRING_ENTRY+28,0,0,0,0,'Sylvanas - intro 1'),
(1095001,21,0,0,0,0,0,0,@DB_STRING_ENTRY+29,0,0,0,0,'Sylvanas - intro 2'),
(1095001,22,15,72711,0,0,0,0,0,0,0,0,0,'Sylvanas - cast Summon Souls'),
(1095001,23,10,37906,23000,0,0,0,0,5307.805,2003.129,709.424,0.715,'Sylvanas - summon Imprisoned Soul (for Uther spawn location)'),
(1095001,27,10,37906,210000,0,0,0,0,5310.972,2011.324,714.223,1.259,'Sylvanas - summon Imprisoned Soul'), -- ToDo: the following summons should have wp movement for flight
(1095001,27,10,37906,210000,0,0,0,0,5313.449,2009.969,714.072,0.734,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5309.739,2002.512,716.804,4.818,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5309.779,2001.589,716.410,4.804,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5305.033,2006.158,717.958,3.229,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5306.288,2002.576,717.819,4.041,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5312.103,2009.684,716.905,0.901,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5312.180,2009.806,715.979,0.904,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5311.003,2009.907,718.822,1.109,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5309.857,2010.944,710.994,1.441,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5311.983,2009.672,718.799,0.868,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5312.555,2009.387,713.197,1.058,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5314.664,2007.692,716.350,0.214,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5313.873,2004.821,716.381,5.911,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5310.577,2002.505,717.173,4.980,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5306.833,2003.182,716.158,4.023,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5305.203,2005.246,715.628,3.398,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5305.185,2008.023,715.278,2.770,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,10,37906,210000,0,0,0,0,5307.085,2010.288,714.769,2.100,'Sylvanas - summon Imprisoned Soul'),
(1095001,27,13,0,0,202302,10,2,0,0,0,0,0,'Sylvanas - use Frostmourne'),
(1095001,29,14,72711,0,0,0,0,0,0,0,0,0,'Sylvanas - remove Summon Souls'),
(1095001,31,15,72712,0,37906,5,0,0,0,0,0,0,'Imprisoned Soul - cast Falric/Marwyn Spawn Aura'),
(1095001,36,10,37225,150000,0,10,0,0,5307.810,2003.094,709.424,4.357,'Sylvanas - summon Uther'),
(1095001,38,0,0,0,37225,10,0,@DB_STRING_ENTRY+30,0,0,0,0,'Uther - intro 3'),
(1095001,48,0,0,0,0,0,0,@DB_STRING_ENTRY+31,0,0,0,0,'Sylvanas - intro 4'),
(1095001,51,0,0,0,37225,10,0,@DB_STRING_ENTRY+32,0,0,0,0,'Uther - intro 5'),
(1095001,58,0,0,0,0,0,0,@DB_STRING_ENTRY+33,0,0,0,0,'Sylvanas - intro 6'),
(1095001,65,0,0,0,37225,10,0,@DB_STRING_ENTRY+34,0,0,0,0,'Uther - intro 7'),
(1095001,85,0,0,0,0,0,0,@DB_STRING_ENTRY+35,0,0,0,0,'Sylvanas - intro 8'),
(1095001,88,0,0,0,37225,10,0,@DB_STRING_ENTRY+36,0,0,0,0,'Uther - intro 9'),
(1095001,109,0,0,0,0,0,0,@DB_STRING_ENTRY+37,0,0,0,0,'Sylvanas - intro 10'),
(1095001,114,0,0,0,37225,10,0,@DB_STRING_ENTRY+17,0,0,0,0,'Uther - intro 11'),
(1095001,116,0,0,0,37225,10,0,@DB_STRING_ENTRY+38,0,0,0,0,'Uther - intro 12'),
(1095001,129,0,0,0,37225,10,0,@DB_STRING_ENTRY+39,0,0,0,0,'Uther - intro 13'),
(1095001,137,0,0,0,0,0,0,@DB_STRING_ENTRY+40,0,0,0,0,'Sylvanas - intro 14'),
(1095001,140,10,37226,0,0,10,0,0,5362.463,2062.693,707.7781,5.9447,'Sylvanas - summon Lich King'), -- this should be summoned 15 sec earlier; but we need to accomodate both short and long intro
(1095001,141,0,0,0,37225,10,0,@DB_STRING_ENTRY+41,0,0,0,0,'Uther - intro 15'),
(1095001,144,1,431,0,37225,10,0,0,0,0,0,0,'Uther - emote'),
(1095001,151,0,0,0,37226,50,0,@DB_STRING_ENTRY+21,0,0,0,0,'Lich King - intro 20'),
(1095001,153,15,70693,0,37225,10,0,0,0,0,0,0,'Uther - cast Uther Despawn'),
(1095001,201,0,0,0,0,0,0,@DB_STRING_ENTRY+42,0,0,0,0,'Sylvanas - intro 15'),
(1095001,201,32,0,0,0,0,0,0,0,0,0,0,'Sylvanas - unpause WP movement'),
(1095001,201,32,0,0,37779,50,0,0,0,0,0,0,'Loralen - unpause WP movement');
-- Short version intro
DELETE FROM dbscripts_on_gossip WHERE id=1095002;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,x,y,z,o,comments) VALUES
(1095002,0,29,3,2,0,0,0,0,0,0,0,0,'Sylvanas - remove npc flag for gossip and quest'),
(1095002,0,10,37226,0,0,10,0,0,5362.463,2062.693,707.7781,5.9447,'Sylvanas - summon Lich King'),
(1095002,1,32,0,0,0,0,0,0,0,0,0,0,'Sylvanas - unpause WP movement'),
(1095002,1,32,0,0,37779,20,0,0,0,0,0,0,'Loralen - unpause WP movement'),
(1095002,62,0,0,0,0,0,0,@DB_STRING_ENTRY+42,0,0,0,0,'Sylvanas - intro 15'),
(1095002,62,32,0,0,0,0,0,0,0,0,0,0,'Sylvanas - unpause WP movement'),
(1095002,62,32,0,0,37779,50,0,0,0,0,0,0,'Loralen - unpause WP movement');

