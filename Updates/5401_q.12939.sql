-- q.12939 'Honor Challenge'
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20995 AND 20997;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20995
(20995,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: face Player'),
(20995,2,22,2116,0x01|0x02|0x10,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: temp faction'),
(20995,150,0,20368,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: say'),
(20995,200,1,53,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: say'),
(20995,5000,26,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: attack Player'),
-- 20996
(20996,3000,15,52682,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: cast 52682'),
(20996,3001,31,30037,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: search for buddy'),
(20996,3100,18,0,0,0,30037,10,1,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: target despawn'),
-- 20997
(20997,3100,41,0,0,0,30037,10,1|0x40,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: respawn target');
DELETE FROM dbscript_random_templates WHERE id = 20368;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20368,0,30690,0,'Mjordin Combatant 30037 - Random text 1'),
(20368,0,30691,0,'Mjordin Combatant 30037 - Random text 2'),
(20368,0,30692,0,'Mjordin Combatant 30037 - Random text 3'),
(20368,0,30693,0,'Mjordin Combatant 30037 - Random text 4'),
(20368,0,30694,0,'Mjordin Combatant 30037 - Random text 5'),
(20368,0,30695,0,'Mjordin Combatant 30037 - Random text 6'),
(20368,0,30696,0,'Mjordin Combatant 30037 - Random text 7'),
(20368,0,30697,0,'Mjordin Combatant 30037 - Random text 8');
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (527052,527064,527072,527053,527066,527073,527058,527068,527074,527060,527069,527075);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(527052,80),(527064,80),(527072,80),(527053,80),(527066,80),
(527073,80),(527058,80),(527068,80),(527074,80),(527060,80),
(527069,80),(527075,80);
