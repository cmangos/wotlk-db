-- q.7046 'Scepter of Celebras'
DELETE FROM dbscripts_on_quest_start WHERE id = 7046;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7046,0,0,0,0,0,0,0,2000001108,0,0,0,0,0,0,0,''),
(7046,1,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'Remove flags'),
(7046,3,3,0,700,0,0,0,0,0,0,0,654.905,87.382,-86.8597,5.06689,'move'),
(7046,14,3,0,700,0,0,0,0,0,0,0,0,0,0,5.06689,'correct orient'),
(7046,15,0,0,0,0,0,0,2000001109,0,0,0,0,0,0,0,''),
(7046,17,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(7046,23,0,0,0,0,0,0,2000001110,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 7046 WHERE entry = 7046;

-- Celebras the Redeemed
UPDATE creature_template SET MovementType = 0, SpeedWalk = 1, SpeedRun = 1.8 WHERE Entry = 13716;
DELETE FROM creature_movement_template WHERE entry = 13716;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(13716,1,654.905,87.382,-86.8597,0,0,5.06689),
(13716,2,657.207,80.8004,-86.8318,0,0,5.14543),
(13716,3,656.58,73.1467,-86.8285,6000,1371601,2.94396),
(13716,4,653.284,73.888,-85.8574,5000,1371602,3.03758),
(13716,5,656.595,73.5683,-86.8284,0,0,6.10283),
(13716,6,655.724,67.3549,-86.828,0,0,4.45585),
(13716,7,650.08,65.0115,-86.7745,4000,0,1.21372),
(13716,8,655.445,67.6601,-86.8283,0,0,1.17524),
(13716,9,657.399,78.0873,-86.8283,0,0,2.10044),
(13716,10,654.905,87.382,-86.8597,4000,1371603,5.06689);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1371601 AND 1371603;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1371601,3,0,0,0,0,0,0,2000001111,0,0,0,0,0,0,0,''),
(1371601,4,9,20960,3600,0,0,0,0,0,0,0,0,0,0,0,'summon book'),
(1371601,5,15,21916,0,0,0,0,0,0,0,0,0,0,0,0,'cast Celebras Waiting'),
(1371601,6,0,0,0,0,0,0,2000001112,0,0,0,0,0,0,0,''),
(1371601,7,0,0,0,0,0,0,2000001113,0,0,0,0,0,0,0,''),
(1371602,1,15,21950,0,0,0,0,0,0,0,0,0,0,0,0,'cast Recite Words of Celebras'),
(1371602,7,0,0,0,0,0,0,2000001115,0,0,0,0,0,0,0,''),
(1371603,1,3,0,700,0,0,0,0,0,0,0,0,0,0,5.06689,'correct orient'),
(1371603,1,29,3,0x01,0,0,0,0,0,0,0,0,0,0,0,'Add flags'),
(1371603,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stop WP movement');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001108 AND 2000001115;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES 
(2000001108,'You wish to learn of the stone? Follow me.',0,0,0,0,NULL),
(2000001109,'For so long I have drifted in my cursed form. You have freed me... Your hard work shall be repaid.',0,0,0,0,NULL),
(2000001110,'Please do as I instruct you, $n.',0,0,0,0,NULL),
(2000001111,'Read this tome I have placed before you, and speak the words aloud.',0,0,0,0,NULL),
(2000001112,'%s begins to channel his energy, focusing on the stone.',0,2,0,0,NULL),
(2000001113,'Together, the two parts shall become one, once again.',0,0,0,0,NULL),
(2000001114,'Shal myrinan ishnu daldorah...',0,0,0,0,NULL),
(2000001115,'My scepter will once again become whole!',0,0,0,0,NULL);

-- missing objects added
UPDATE gameobject_template SET flags = 64 WHERE entry = 178965;
DELETE FROM gameobject WHERE guid IN (20959,20960);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(20959, 178964, 349, 650.99, 74.458, -86.8651, 1.45735, 0, 0, 0.665882, 0.746057, -20, 100, 1),
(20960, 178965, 349, 652.263, 74.0125, -85.3354, 6.10288, 0, 0, 0.0900299, -0.995939, -3600, 100, 1);

DELETE FROM dbscripts_on_go_template_use WHERE id = 178965;
INSERT INTO dbscripts_on_go_template_use VALUES
(178965,0,14,21916,0,13716,50,7,0,0,0,0,0,0,0,0,''),
(178965,0,9,20959,20,0,0,0,0,0,0,0,0,0,0,0,'summon Celebras Blue Aura'),
(178965,1,0,0,0,0,0,0,2000001114,0,0,0,0,0,0,0,'force Player to say'),
(178965,3,0,0,0,13716,50,7,2000001114,0,0,0,0,0,0,0,''),
(178965,25,7,7046,0,0,0,0,0,0,0,0,0,0,0,0,'Give quest completion');
-- target for spell
DELETE FROM spell_script_target WHERE entry = 21950;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(21950,0,178560,0);
