-- q.12943 'Shadow Vault Decree'
DELETE FROM dbscripts_on_spell WHERE id = 31696;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31696,1,0,0,0,0,0,0,0x04,30712,0,0,0,0,0,0,0,'Player Say');
DELETE FROM dbscripts_on_event WHERE id = 19490;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19490,1,31,29919,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29919'),
(19490,101,28,0,0,0,29919,30,7,0,0,0,0,0,0,0,0,'buddy stand'),
(19490,101,3,0,700,0,29919,30,7,0,0,0,0,8426.86,2923.74,606.44116,100,'buddy move'),
(19490,2000,36,0,0,0,29919,30,3,0,0,0,0,0,0,0,0,'buddy face player'),
(19490,2100,1,15,0,0,29919,30,7,0,0,0,0,0,0,0,0,'buddy emote'),
(19490,2200,0,0,0,0,29919,30,7,30711,0,0,0,0,0,0,0,'buddy say'),
(19490,2300,36,0,0,0,29919,30,3,0,0,0,0,0,0,0,0,'buddy face player'),
(19490,2500,1,333,0,0,29919,30,7,0,0,0,0,0,0,0,0,'buddy emote'),
(19490,5000,36,0,0,0,29919,30,3,0,0,0,0,0,0,0,0,'buddy face player'),
(19490,5500,0,0,0,0,29919,30,7,30713,0,0,0,0,0,0,0,'buddy say'),
(19490,5500,48,256,0,0,29919,30,7,0,0,0,0,0,0,0,0,'buddy remove UnitFlags'),
(19490,6000,26,0,0,0,29919,30,3,0,0,0,0,0,0,0,0,'buddy attack player');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (30711,30713);
DELETE FROM dbscripts_on_relay WHERE id = 20999;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20999,1,48,256,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'buddy remove UnitFlags'),
(20999,2,3,0,700,0,0,0,0x04,0,0,0,0,8426.611,2927.5913,606.2586,4.76474,'move'),
(20999,1000,3,0,700,0,0,0,0x04,0,0,0,0,0,0,0,4.76474,'move'),
(20999,5000,28,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit');
-- FIX DB error DB-SCRIPTS: Process table `dbscripts_on_relay` id 20833, command 0 has buddy 29880 by guid 526581 but buddy is dead, skipping.
-- Redone
DELETE FROM dbscript_random_templates WHERE id = 20337;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20337,1,20830,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 1'),
(20337,1,20831,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 2'),
(20337,1,20832,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 3'),
(20337,1,20833,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 4'),
(20337,1,20834,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 5'),
(20337,1,20835,0,'Part of Jotunheim Warrior 29880 EAI - Random Script 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20830 AND 20835;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20830
(20830,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20830,100,0,0,0,0,0,0,0x04,31187,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20830,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20830,6000,0,0,0,0,29919,30,4,31194,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
-- 20831
(20831,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20831,100,0,0,0,0,0,0,0x04,31188,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20831,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20831,6000,0,0,0,0,29919,30,4,31196,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
-- 20832
(20832,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20832,100,0,0,0,0,0,0,0x04,31182,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20832,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20832,6000,0,0,0,0,29919,30,4,31189,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
-- 20833
(20833,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20833,100,0,0,0,0,0,0,0x04,31185,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20833,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20833,6000,0,0,0,0,29919,30,4,31192,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
-- 20834
(20834,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20834,100,0,0,0,0,0,0,0x04,31184,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20834,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20834,6000,0,0,0,0,29919,30,4,31191,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
-- 20835
(20835,1,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: search for buddy'),
(20835,100,0,0,0,0,0,0,0x04,31186,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say'),
(20835,5500,31,29919,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part ofJotunheim Warrior 29880 EAI: search for buddy'),
(20835,6000,0,0,0,0,29919,30,4,31193,0,0,0,0,0,0,0,'Part of Jotunheim Warrior 29880 EAI: buddy say');
