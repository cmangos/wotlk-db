-- q.11330 'Absholutely... Thish Will Work!'

-- let's move all involved to WoTLK Northrend Range guids
UPDATE creature SET guid = 5710612 WHERE guid = 117069; -- Dragonflayer Vrykul Prisoner
UPDATE creature SET guid = 5710780 WHERE guid = 99195;  -- Westguard Officer
UPDATE creature SET guid = 5710781 WHERE guid = 99025;  -- Westguard Defender
UPDATE creature SET guid = 5710782 WHERE guid = 99026;  -- Westguard Defender
UPDATE creature SET guid = 5710783 WHERE guid = 99011;  -- Westguard Defender
UPDATE creature SET guid = 5710784 WHERE guid = 99023;  -- Westguard Defender
UPDATE creature SET guid = 5710785 WHERE guid = 99024;  -- Westguard Defender
UPDATE creature SET guid = 5710786 WHERE guid = 99013;  -- Westguard Defender
UPDATE creature SET guid = 5710787 WHERE guid = 99008;  -- Westguard Defender
UPDATE creature SET guid = 5710788 WHERE guid = 99027;  -- Westguard Defender
UPDATE creature SET guid = 5710789 WHERE guid = 99009;  -- Westguard Defender
UPDATE creature SET guid = 5710790 WHERE guid = 99010;  -- Westguard Defender
UPDATE creature SET guid = 5710791 WHERE guid = 99012;  -- Westguard Defender
UPDATE creature SET guid = 5710792 WHERE guid = 99157;  -- Westguard Defender
DELETE FROM creature_addon WHERE guid = 99195;

-- spawntime corrected
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 24284;


DELETE FROM dbscripts_on_relay WHERE id IN (20119,20120);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Part of: Dragonflayer Vrykul Prisoner EAI
(20119,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active(q.11330)'),
(20119,0,42,0,0,0,0,0,0,2200,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330) - equip'),
(20119,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,3,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330) - STATE_STAND'),
(20119,3,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330) - equip'),
(20119,3,15,21862,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,6,1,53,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,7,0,0,0,0,0,0,0,2000001805,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,9,3,0,900,0,0,0,0,0,0,0,0,1368.07,-3181.1,153.576,5.2415,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,10,3,0,900,0,0,0,0,0,0,0,0,1364.44,-3181.46,153.576,3.28586,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,11,3,0,900,0,0,0,0,0,0,0,0,1370.37,-3176.9,153.576,0.623364,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,12,3,0,900,0,0,0,0,0,0,0,0,1363.84,-3180.77,153.576,3.64715,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,13,3,0,900,0,0,0,0,0,0,0,0,1366.06,-3177.86,153.576,0.968939,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,14,3,0,900,0,0,0,0,0,0,0,0,1368.48,-3180.96,153.576,5.2847,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,15,3,0,900,0,0,0,0,0,0,0,0,1372.43,-3176.22,153.576,0.709759,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,16,3,0,900,0,0,0,0,0,0,0,0,1362.03,-3181.54,153.576,3.68249,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,17,3,0,900,0,0,0,0,0,0,0,0,1367.12,-3181.54,153.576,6.07795,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,18,3,0,900,0,0,0,0,0,0,0,0,1371.83,-3176.37,153.576,0.957157,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,19,3,0,900,0,0,0,0,0,0,0,0,1367.375,-3180.489,153.5759,3.68249,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,20,15,43401,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,20,23,1145,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner - modelid (q.11330)'),
(20119,21,35,6,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner - SEND_AI_EVENT B(q.11330)'),
(20119,24,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Dragonflayer Vrykul Prisoner (q.11330)'),
(20119,25,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive(q.11330)'),
-- Part of Defenders Script
(20120,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active(q.11330)'),
(20120,1,21,1,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,1,21,1,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,1,21,1,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,1,21,1,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,1,21,1,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,1,21,1,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active(q.11330)'),
(20120,2,0,0,0,0,23842,5710787,7 | 0x10,2000001806,0,0,0,0,0,0,0,'buddy - say(q.11330)'),
(20120,2,0,0,0,0,23842,5710785,7 | 0x10,2000001807,0,0,0,0,0,0,0,'buddy - say(q.11330)'),
(20120,3,3,0,900,0,23842,5710783,7 | 0x10,0,0,0,0,1358.787,-3171.3,153.576,3.289848,'buddy - move (q.11330)'),
(20120,3,3,0,900,0,23842,5710789,7 | 0x10,0,0,0,0,1368.185,-3172.331,153.57,0.4473922,'buddy - move (q.11330)'),
(20120,3,3,0,900,0,23842,5710781,7 | 0x10,0,0,0,0,1360.069,-3167.814,153.5759,2.285075,'buddy - move (q.11330)'),
(20120,3,3,0,900,0,23842,5710786,7 | 0x10,0,0,0,0,1360.251,-3174.795,153.576,4.007639,'buddy - move (q.11330)'),
(20120,3,3,0,900,0,23842,5710790,7 | 0x10,0,0,0,0,1360.859,-3175.706,153.576,3.452892,'buddy - move (q.11330)'),
(20120,3,3,0,900,0,23842,5710784,7 | 0x10,0,0,0,0,1365.591,-3167.755,153.5766,1.484804,'buddy - move (q.11330)'),
(20120,5,28,8,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,5,28,8,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,5,28,8,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,5,28,8,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,5,28,8,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,5,28,8,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_KNEEL(q.11330)'),
(20120,6,15,43391,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,6,15,43391,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,6,15,43391,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,6,15,43391,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,6,15,43391,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,6,15,43391,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - spell (q.11330)'),
(20120,16,28,0,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,16,28,0,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,16,28,0,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,16,28,0,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,16,28,0,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,16,28,0,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND(q.11330)'),
(20120,17,3,0,0,0,23842,5710783,7 | 0x10,0,0,0,0,1360.656,-3171.021,153.576,100,'buddy - move (q.11330)'),
(20120,17,3,0,0,0,23842,5710789,7 | 0x10,0,0,0,0,1366.284,-3173.243,153.576,100,'buddy - move (q.11330)'),
(20120,17,3,0,0,0,23842,5710781,7 | 0x10,0,0,0,0,1360.563,-3168.384,153.5759,100,'buddy - move (q.11330)'),
(20120,17,3,0,0,0,23842,5710786,7 | 0x10,0,0,0,0,1361.216,-3173.661,153.576,100,'buddy - move (q.11330)'),
(20120,17,3,0,0,0,23842,5710790,7 | 0x10,0,0,0,0,1363.687,-3174.795,153.576,100,'buddy - move (q.11330)'),
(20120,17,3,0,0,0,23842,5710784,7 | 0x10,0,0,0,0,1365.419,-3169.742,153.576,100,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,5.427974,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,4.991642,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,5.253441,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,5.637414,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,5.445427,'buddy - move (q.11330)'),
(20120,20,3,0,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,4.974188,'buddy - move (q.11330)'),
(20120,21,21,0,0,0,23842,5710783,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,21,21,0,0,0,23842,5710789,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,21,21,0,0,0,23842,5710781,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,21,21,0,0,0,23842,5710786,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,21,21,0,0,0,23842,5710790,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,21,21,0,0,0,23842,5710784,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive(q.11330)'),
(20120,22,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive(q.11330)');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001805 AND 2000001807;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001805,'The vrykul clutches at his throat as he begins to gag and thrash about.',0,2,0,0,NULL),
(2000001806,'That\'s the new Forsaken plague?!',0,0,0,1,NULL),
(2000001807,'What kind of sicko are you?',0,0,0,1,NULL);
