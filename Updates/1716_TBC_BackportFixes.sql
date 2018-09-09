-- missing Relay added
DELETE FROM dbscripts_on_relay WHERE id = 10079;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10079,0,25,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Hyjal Summit Overrun - Run On'),
(10079,1,37,0,0,10,0,0,2,0,0,0,0,0,0,0,0,'Hyjal Summit Overrun - Move towards Jaina');

-- wrongly deleted object added
DELETE FROM `gameobject` WHERE `guid` IN (121825,121829,121826,121830);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- wotlk existing ones added
(121825,184663,617,1,1291.7,813.424,7.11472,4.64562,0,0,0.730315,-0.683111,900,900,100,1),
(121829,184663,618,1,735.551,-284.794,28.276,0.0349,0,0,0,0,900,900,100,1),
(121826,184664,617,1,1291.7,768.911,7.11472,1.55194,0,0,0.700409,0.713742,900,900,100,1),
(121830,184664,618,1,791.224,-284.794,28.276,2.60053,0,0,0,0,900,900,100,1);
