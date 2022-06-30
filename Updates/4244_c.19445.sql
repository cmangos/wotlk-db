-- Wounded Soldier 19445 - script corrected
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1944503);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1944503,0,1,93,0,0,0,0,4,0,0,0,0,0,0,0,0,0,''),
(1944503,3900,1,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,''),
(1944503,4000,28,7,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_DEAD'),
(1944503,4100,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(1944503,10000,0,0,0,0,0,0,4,16732,0,0,0,0,0,0,0,0,''),
(1944503,14900,28,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_STAND'),
(1944503,15000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'despawn self'),
(1944503,15001,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'unactive');
-- Part of Operations Officer 19446 EAI
DELETE FROM `dbscripts_on_relay` WHERE id IN (19985);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(19985,0,21,1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: active'),
(19985,1,3,0,0,0,0,0,4,0,0,0,0,0,0,0,0.532048,0,'Part of Operations Officer 19446 EAI: move'),
(19985,1000,0,0,0,0,0,0,4,16737,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,7000,0,0,0,0,0,0,4,16738,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,11000,0,0,0,0,0,0,4,16739,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: say'),
(19985,11100,3,0,0,0,0,0,4,0,0,0,0,0,0,0,5.51524,0,'Part of Operations Officer 19446 EAI: move'),
(19985,12000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,'Part of Operations Officer 19446 EAI: unactive');
-- emote added
UPDATE `broadcast_text` SET `EmoteID1`=5 WHERE `Id` IN (16737);
