-- Bloody Breakout(q.12727) 
DELETE FROM dbscripts_on_quest_start WHERE id = 12727;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12727,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(12727,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(12727,2,0,0,0,0,0,0,2000000440,0,0,0,0,0,0,0,''),
(12727,3,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(12727,7,0,0,0,0,0,0,2000000441,0,0,0,0,0,0,0,''),
(12727,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,10,3,0,0,0,0,0,0,0,0,0,1653.36,-6038.34,127.584,1.78556,''),  -- JumpGravity: 137.7387 (should jump here)
(12727,11,3,0,0,0,0,0,0,0,0,0,1653.94,-6034.72,127.584,1.29819,''), 
(12727,14,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,15,0,0,0,29011,129877,7 | 0x10,2000000442,0,0,0,0,0,0,0,'Valroth - text'),
(12727,16,15,52899,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12727,16,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,18,3,0,0,0,0,0,0,0,0,0,1651.89,-6037.101,127.5844,3.839724,''),
(12727,18,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,19,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,19,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,20,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,20,0,0,0,0,0,0,2000000443,0,0,0,0,0,0,0,''),
(12727,21,15,52894,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,''),
(12727,24,0,0,0,0,0,0,2000000444,0,0,0,0,0,0,0,''),
(12727,24,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,64,0,0,0,0,0,0,2000000445,0,0,0,0,0,0,0,''),
(12727,65,0,0,0,29011,129877,7 | 0x10,2000000446,0,0,0,0,0,0,0,'Valroth - text'),
(12727,66,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,67,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,67,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,99,0,0,0,0,0,0,2000000447,0,0,0,0,0,0,0,''),
(12727,100,0,0,0,29011,129877,7 | 0x10,2000000448,0,0,0,0,0,0,0,'Valroth - text'),
(12727,101,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,102,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,102,10,29007,300000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,144,0,0,0,0,0,0,2000000449,0,0,0,0,0,0,0,''),
(12727,145,0,0,0,29011,129877,7 | 0x10,2000000450,0,0,0,0,0,0,0,'Valroth - text'),
(12727,146,10,29001,420000,0,0,0,0,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon High Inquisitor Valroth');
UPDATE quest_template SET StartScript = 12727 WHERE entry = 12727;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000440 AND 2000000451;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000440,'Damn the Crusade! I think my ribs are broken and I might be bleeding internally.',0,0,0,1,NULL),
(2000000441,'I\'ll need to get my runeblade and armor... Just need a little more time.',0,0,0,0,NULL),
(2000000442,'Acolytes, chain them up! Prepare them for questioning!',0,1,0,0,NULL),
(2000000443,'I\'m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you\'ll be destroyed by their spells.',0,0,0,0,NULL),
(2000000444,'Maintaining this barrier will require all of my concentration. Kill them all!',0,0,0,0,NULL),
(2000000445,'There are more comming. Defend yourself! Don\'t fall out of anti-magic field! They\'ll tear you apart without its protection!',0,0,0,0,NULL),
(2000000446,'Scourge filth! By the Light be cleansed!',0,1,0,0,NULL),
(2000000447,'I can\'t keep this barrier up much longer... Where is that coward?',0,0,0,0,NULL),
(2000000448,'The Crusade will purge your kind from this world!',0,1,0,0,NULL),
(2000000449,'The Hight Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',0,0,0,0,NULL),
(2000000450,'It seams that I\'ll need to deal with you myself. The HIgh Inquisitor comes for you, Scourge!',0,1,0,0,NULL),
(2000000451,'%s\'s remains fall on the ground.',0,3,0,0,NULL);
-- Crimson Acolyte
UPDATE creature_template SET MaxLevel = 55, MovementType = 2, Expansion = 0, UnitFlags = 33026, HealthMultiplier = 0.3124, MinLevelHealth = 633, MinLevelHealth = 653, MinLevelMana = 1020, MaxLevelMana = 1058 WHERE entry = 29007;
DELETE FROM creature_movement_template WHERE entry = 29007;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29007,1,1640.65,-6032.49,134.739,2000,2900701,4.58821,0,0),
(29007,2,1647.06,-6043.39,127.583,10000,2900702,0.570896,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2900701,2900702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900701,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Valroth active'),
(2900701,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2900701,4,22,2103,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'), -- only flag is removed here
(2900702,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');
-- High Inquisitor Valroth
UPDATE creature_template SET MovementType = 2, Expansion = 0, UnitFlags = 33026, HealthMultiplier = 3.7503, MinLevelMana = 6489, MaxLevelMana = 6489 WHERE entry = 29001;
DELETE FROM creature_movement_template WHERE entry = 29001;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29001,1,1640.65,-6032.49,134.739,2000,2900101,4.58821,0,0),
(29001,2,1647.06,-6043.39,127.583,200000,0,0.570896,0,0),
(29001,3,1647.06,-6043.39,127.583,150000,2900102,0.570896,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2900101,2900102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900101,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Valroth active'),
(2900101,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2900101,5,22,2103,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'), -- only flag is removed here
(2900102,1,31,28912,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if source is still there
(2900102,2,15,5,0,28912,100,7,0,0,0,0,0,0,0,0,''),
(2900102,3,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp self');
DELETE FROM dbscripts_on_creature_death WHERE id = 29001;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29001,0,0,0,0,0,0,0,2000000451,0,0,0,0,0,0,0,''),
(29001,0,15,52929,0,0,0,0,0,0,0,0,0,0,0,0,''),
(29001,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(29001,1,28,0,0,28912,50,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(29001,2,14,52894,0,28912,50,7,0,0,0,0,0,0,0,0,''),
(29001,3,20,2,0,28912,50,7,0,0,0,0,0,0,0,0,'movement chenged to 2:movement');
-- Koltira Deathweaver
UPDATE creature_template_addon SET b2_0_sheath = 0, auras = NULL WHERE entry = 28912;
UPDATE creature SET spawntimesecs = 60 WHERE guid = 130354;
UPDATE creature_template SET MovementType = 0, UnitFlags = 33282, ExtraFlags = 2 WHERE entry = 28912; -- movement 2 will be set by EVENT
DELETE FROM creature_movement_template WHERE entry = 28912;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(28912,1,1651.89,-6037.101,127.5844,18000,2891201,3.839724,0,0),
(28912,2,1640.65,-6032.49,134.739,0,0,0,0,0),
(28912,3,1639.1,-6028.1,134.739,0,0,2.67357,0,0),
(28912,4,1628.37,-6026.34,134.739,0,0,2.29266,0,0),
(28912,5,1625.79,-6021.81,134.739,0,0,1.41301,0,0),
(28912,6,1627.06,-6016.95,134.739,0,0,0.692014,0,0),
(28912,7,1639.85,-6015.64,134.748,0,0,0.0668366,0,0),
(28912,8,1648.06,-6013.66,133.24,0,0,0.82239,0,0),
(28912,9,1652.9,-5973.75,132.524,1000,2891202,1.51513,0,0),
(28912,10,1653.61,-5927.44,121.345,0,0,1.57404,0,0),
(28912,11,1656.07,-5905.5,116.21,0,0,1.14364,0,0),
(28912,12,1668.06,-5894.89,116.141,0,0,0.396723,0,0),
(28912,13,1694.23,-5882.54,116.138,6000,2891203,0.141469,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2891201,2891202,2891203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891201,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(2891201,1,0,0,0,0,0,0,2000000452,0,0,0,0,0,0,0,''),
(2891201,9,0,0,0,0,0,0,2000000453,0,0,0,0,0,0,0,''),
(2891201,15,0,0,0,0,0,0,2000000454,0,0,0,0,0,0,0,''),
(2891201,16,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2891202,1,24,25445,0,0,0,0x08,0,0,0,0,0,0,0,0,'mount'),
(2891203,0,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(2891203,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira unactive'),
(2891203,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,'unmount'),
(2891203,0,23,29011,0,0,0,0,0,0,0,0,0,0,0,0,'temp morph'),
(2891203,1,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2891203,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM dbscripts_on_creature_death WHERE id = 28912;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28912,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(28912,1,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(28912,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000452 AND 2000000454;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000452,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I\'ll be fine on my own.',0,0,0,1,NULL),
(2000000453,'I\'ll draw their fire, you make your escape behind me.',0,0,0,1,NULL),
(2000000454,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',0,1,0,1,NULL);