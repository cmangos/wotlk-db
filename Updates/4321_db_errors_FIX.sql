-- DB errors corrected
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2696702, command 0 has buddy 29394 not found in range 10 of searcher Vehicle (Entry: 26967 Counter: 516186) DBGuid: 516186 (data-flags 7), skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2696701,2696702,2452602,2528901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2696701,0,21,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'active'),
(2696701,10,21,1,0,0,29394,100,7,0,0,0,0,0,0,0,0,'buddy active'),
(2696701,10,25,1,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(2696702,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(2696702,5000,0,0,0,0,29394,100,7,26117,0,0,0,0,0,0,0,''),
(2696702,27000,0,0,0,0,29394,100,7,26118,0,0,0,0,0,0,0,''),
(2696702,46000,0,0,0,0,29394,100,7,26114,0,0,0,0,0,0,0,''),
(2696702,65000,0,0,0,0,29394,100,7,26115,0,0,0,0,0,0,0,''),
(2696702,84000,0,0,0,0,29394,100,7,26116,0,0,0,0,0,0,0,''),
(2696702,104000,39,1,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(2696702,104500,18,0,0,0,29394,100,7,0,0,0,0,0,0,0,0,''),
(2696701,104999,21,0,0,0,29394,100,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(2696702,105000,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2452602, command 0 has buddy 25446 not found in range 100 of searcher Creature (Entry: 24526 Counter: 9002704) DBGuid: 9002704 (data-flags 7), skipping.
(2452602,1,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2528901, command 21 has buddy 25286 by guid 508432 but buddy is dead, skipping.
(2528901,1,31,25286,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2528901,100,21,1,0,0,25286,508432,23,0,0,0,0,0,0,0,0,'Buddy - active'),
(2528901,3000,0,0,0,0,0,0,0,24521,0,0,0,0,0,0,0,''),
(2528901,6000,0,0,0,0,25286,508432,23,24522,0,0,0,0,0,0,0,''),
(2528901,8000,32,0,0,0,25286,508432,23,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM dbscripts_on_relay WHERE id IN (20645);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20645,1000,0,0,0,0,0,0,0x04,24660,0,0,0,0,0,0,0,''),
(20645,6000,0,0,0,0,0,0,0x04,24673,0,0,0,0,0,0,0,''),
(20645,10000,0,0,0,0,0,0,0x04,24674,0,0,0,0,0,0,0,''),
(20645,14000,3,0,0,0,0,0,0x04,0,0,0,0,2729.24,6082.68,73.7073,3.36848,'');
