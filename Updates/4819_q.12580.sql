-- q.12580 'The Mosswalker Savior'
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 972801, condition_id = 20546 WHERE menu_id = 9728;
DELETE FROM dbscripts_on_gossip WHERE id = 972801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(972801,1,45,0,20308,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Random Script (q.12580)');
DELETE FROM conditions WHERE condition_entry = 20546;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(20546,9,12580,0,0,0,0,'q. taken');
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20308 AND 20310;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20308,1,20751,40,'Mosswalker Victim 28113 - Random Script 1 (q.12580)'),
(20308,1,20752,60,'Mosswalker Victim 28113 - Random Script 2 (q.12580)'),
-- compl
(20309,0,28905,0,'Mosswalker Victim 28113 - Complete Random Say 1 (q.12580)'),
(20309,0,28907,0,'Mosswalker Victim 28113 - Complete Random Say 2 (q.12580)'),
(20309,0,28908,0,'Mosswalker Victim 28113 - Complete Random Say 3 (q.12580)'),
(20309,0,28909,0,'Mosswalker Victim 28113 - Complete Random Say 4 (q.12580)'),
(20309,0,28906,0,'Mosswalker Victim 28113 - Complete Random Say 5 (q.12580)'),
-- fail
(20310,0,28902,0,'Mosswalker Victim 28113 - Fail Random Say 1 (q.12580)'),
(20310,0,28901,0,'Mosswalker Victim 28113 - Fail Random Say 2 (q.12580)'),
(20310,0,28903,0,'Mosswalker Victim 28113 - Fail Random Say 3 (q.12580)'),
(20310,0,28904,0,'Mosswalker Victim 28113 - Fail Random Say 4 (q.12580)'),
(20310,0,28900,0,'Mosswalker Victim 28113 - Fail Random Say 5 (q.12580)'),
(20310,0,28630,0,'Mosswalker Victim 28113 - Fail Random Say 6 (q.12580)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20751 AND 20752;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- compl
(20751,1,0,0,0,0,0,0,0x04,15158,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Say (q.12580)'),
(20751,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Npc Flags Removed (q.12580)'),
(20751,10,14,45801,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Aura Removed (q.12580)'),
(20751,50,14,52165,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Aura Removed (q.12580)'),
(20751,100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Stand State (q.12580)'),
(20751,200,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Face Player (q.12580)'),
(20751,1000,0,20309,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Random text (q.12580)'),
(20751,1100,15,52157,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Cast 52157 (q.12580)'),
(20751,2000,20,1,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Set Randommovement (q.12580)'),
(20751,3000,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - despawn self (deleyed)(q.12580)'),
-- failed
(20752,1,0,0,0,0,0,0,0x04,15158,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Say (q.12580)'),
(20752,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Npc Flags Removed (q.12580)'),
(20752,100,0,20310,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Random text (q.12580)'),
(20752,1000,15,52156,0,0,0,0,0,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Cast 52156 (q.12580)'),
(20752,4000,15,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - Cast 7 (q.12580)'),
(20752,5000,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Mosswalker Victim 28113 - despawn Self (deleyed)(q.12580)');
UPDATE `broadcast_text` SET ChatTypeID = 2 WHERE Id IN (15158);
