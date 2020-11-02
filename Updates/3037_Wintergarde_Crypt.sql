-- Wintergarde Crypt - Dragonblight

-- Duplicate
DELETE FROM creature_addon WHERE guid=518882;
DELETE FROM creature_movement WHERE id=518882;
DELETE FROM game_event_creature WHERE guid=518882;
DELETE FROM game_event_creature_data WHERE guid=518882;
DELETE FROM creature_battleground WHERE guid=518882;
DELETE FROM creature_linking WHERE guid=518882
 OR master_guid=518882;
DELETE FROM creature WHERE guid=518882;

-- Cavalier Durkon 27318 - gossip
DELETE FROM gossip_menu WHERE entry = 9562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9562, 12881, 0, 0), -- default
(9562, 12882, 0, 20157), -- q.12311 'The Noble's Crypt' - done (not rewarded)
(9562, 12883, 0, 20158); -- q.12319 'Mystery of the Tome' - taken
DELETE FROM conditions WHERE condition_entry BETWEEN 20157 AND 20158;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20157,9,12311,2,0,0,0),
(20158,9,12319,0,0,0,0);

-- Shadow of Thel'zan the Duskbringer 27510
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 518682;

-- Enraged Apparition 27551
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518880,518881);
DELETE FROM creature_movement WHERE id IN (518880,518881);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 518880
(518880,1,3580.2,-765.934,154.915,100,0,0),
(518880,2,3585.12,-770.754,155.402,100,0,0),
(518880,3,3584.88,-780.917,155.686,100,0,0),
(518880,4,3584.91,-793.425,155.066,100,0,0),
(518880,5,3581.65,-796.59,154.915,100,0,0),
(518880,6,3585.3,-791.73,155.401,100,0,0),
(518880,7,3584.93,-781.108,155.686,100,0,0),
(518880,8,3584.41,-768.724,154.915,100,0,0),
-- 518881
(518881,1,3612.32,-797.139,164.301,100,0,0),
(518881,2,3612.12,-779.491,164.302,100,0,0),
(518881,3,3611.95,-766.174,164.303,100,0,0),
(518881,4,3612.2,-779.023,164.303,100,0,0);

-- Reanimated Noble 27552
UPDATE creature SET position_x = 3612.856201, position_y = -797.717712, position_z = 164.300629, spawndist = 5, MovementType = 1 WHERE guid = 518885;
UPDATE creature SET position_x = 3579.321289, position_y = -797.130859, position_z = 154.914780, spawndist = 5, MovementType = 1 WHERE guid = 518883;
UPDATE creature SET position_x = 3613.297607, position_y = -764.419434, position_z = 164.303894, spawndist = 5, MovementType = 1 WHERE guid = 518888;
UPDATE creature SET position_x = 3584.515869, position_y = -781.023926, position_z = 155.685760, spawndist = 3, MovementType = 1 WHERE guid = 518887;
UPDATE creature SET position_x = 3583.545166, position_y = -762.375854, position_z = 154.915176, spawndist = 3, MovementType = 1 WHERE guid = 518886;
UPDATE creature SET position_x = 3575.815430, position_y = -768.805542, position_z = 154.915176, spawndist = 3, MovementType = 1 WHERE guid = 518884;

-- spell:48967 'Call of the Duskbringer'
DELETE FROM dbscripts_on_spell WHERE id = 48967;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48967,0,15,48968,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48967,1,15,48969,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48967,2,15,48970,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48967,3,15,48971,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Part of Cavalier Durkon EAI
DELETE FROM dbscripts_on_relay WHERE id = 20391;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20391,0,34,20159,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'Part of Cavalier Durkon EAI: check if Player has aura'),
(20391,100,0,0,0,0,0,0,0x04,2000020570,2000020571,2000020572,2000020570,0,0,0,0,'Part of Cavalier Durkon EAI: Player - random say');
DELETE FROM conditions WHERE condition_entry = 20159;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20159,1,48966,0,0,0,0);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020570 AND 2000020572;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020570,'Thel\'zan\'s enchantment is broken! I am safe!',0,0,7,0,NULL),
(2000020571,'What could this tome be hiding?',0,0,7,0,NULL),
(2000020572,'Thel\'zan cannot stop me! For the Alliance! For Lord Fordragon!',0,0,7,0,NULL);
