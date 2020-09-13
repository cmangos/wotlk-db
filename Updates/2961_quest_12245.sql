-- q.12245 'No Mercy for the Captured'
-- Deathguard Schneider 27376
UPDATE gossip_menu_option SET action_script_id = 950701 WHERE menu_id = 9507 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (9507,950701);
INSERT INTO dbscripts_on_gossip (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,condition_id,comments) VALUES
(950701,10,0,0,0,1,0,0,0,0x04,2000020479,0,0,0,0,0,0,0,0,'Say'),
(950701,20,0,22,190,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change faction'),
(950701,30,0,29,1,2,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(950701,50,0,18,60000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'despawn');
-- Senior Scrivener Barriga 27378
UPDATE gossip_menu_option SET action_script_id = 950801 WHERE menu_id = 9508 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (9508,950801);
INSERT INTO dbscripts_on_gossip (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,condition_id,comments) VALUES
(950801,10,0,0,0,1,0,0,0,0x04,2000020480,0,0,0,0,0,0,0,0,'Say'),
(950801,20,0,22,190,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change faction'),
(950801,30,0,29,1,2,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(950801,50,0,18,60000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'despawn');
-- Engineer Burke 27379
UPDATE gossip_menu_option SET action_script_id = 950901 WHERE menu_id = 9509 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (9509,950901);
INSERT INTO dbscripts_on_gossip (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,condition_id,comments) VALUES
(950901,10,0,0,0,1,0,0,0,0x04,2000020481,0,0,0,0,0,0,0,0,'Say'),
(950901,20,0,22,190,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change faction'),
(950901,30,0,29,1,2,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(950901,50,0,18,60000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'despawn');
-- Chancellor Amai 27381
UPDATE gossip_menu_option SET action_script_id = 951001 WHERE menu_id = 9510 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (9510,951001);
INSERT INTO dbscripts_on_gossip (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,condition_id,comments) VALUES
(951001,10,0,0,0,1,0,0,0,0x04,2000020482,0,0,0,0,0,0,0,0,'Say'),
(951001,20,0,22,190,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change faction'),
(951001,30,0,29,1,2,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(951001,50,0,18,60000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'despawn');
-- respawntime corrected
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id IN (27376,27378,27379,27381);
-- texts moved to WoTLK range 20k+
UPDATE dbscript_string SET entry = 2000020479 WHERE entry = 2000000247;
UPDATE dbscript_string SET entry = 2000020480 WHERE entry = 2000000249;
UPDATE dbscript_string SET entry = 2000020481 WHERE entry = 2000000246;
UPDATE dbscript_string SET entry = 2000020482 WHERE entry = 2000000248;
UPDATE dbscript_string SET emote = 5 WHERE entry BETWEEN 2000020479 AND 2000020482;

