-- q.12583 'Crashed Sprayer'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (12583);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12583,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12583,2,0,0,0,0,0,0,0,27736,0,0,0,0,0,0,0,''),
(12583,3,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.01745329,'move'),
(12583,3000,1,233,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12583,13000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12583,14000,0,0,0,0,0,0,0,27737,0,0,0,0,0,0,0,''),
(12583,14001,1,4,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12583,15000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.426008,'move'),
(12583,15001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12583 WHERE entry = 12583;
-- Blacksmith's Anvil 1684
-- missing object added
DELETE FROM `gameobject` WHERE `guid` = 520965;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520965,1684,571,1,5271.174,-3509.103,291.2794,1.448622,0,0,0.6626196,0.7489561,120,120,255,1);
