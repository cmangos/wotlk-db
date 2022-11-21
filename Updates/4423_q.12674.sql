-- q.12674 'Hell Hath a Fury'

-- Part of EAI
DELETE FROM `dbscripts_on_relay` WHERE id BETWEEN 20672 AND 20674;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20672,0,15,52249,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Cast 52249'),
(20672,10,48,768,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Set UnitFlags'),
(20672,100,0,0,0,0,0,0,0x04,28797,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Say'), -- 23:16:58.000
(20672,10000,15,41909,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Cast 41909'), -- 23:17:08.000 -- anim. doesnt work (core issue?)
(20672,10001,0,0,0,0,0,0,0x04,28798,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Say'), -- 23:16:58.000
(20672,13000,15,42278,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Mu\'funu 28752 EAI: Die'),
(20673,0,15,52278,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Cast 52278'),
(20673,10,48,768,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Set UnitFlags'),
(20673,100,0,0,0,0,0,0,0x04,28800,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Say'), -- 23:18:13.000
(20673,10000,15,52279,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Cast 52279'), -- 23:18:23.000 
(20673,10001,0,0,0,0,0,0,0x04,28799,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Say'),
(20673,10002,15,45254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priestess Tua-Tua 28754 EAI: Die'), -- 23:18:23.000
(20674,0,15,4309,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 4309'),
(20674,1,15,52287,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52287'),
(20674,10,48,768,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Set UnitFlags'),
(20674,100,0,0,0,0,0,0,0x04,28802,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Say'), -- 23:18:13.000
(20674,10001,0,0,0,0,0,0,0x04,28803,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Say'), -- 23:16:58.000
(20674,10002,15,42267,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42267'),
(20674,10003,15,42274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42274'),
(20674,10004,15,42267,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42267'),
(20674,10005,15,42274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42274'),
(20674,10006,15,52320,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52320'),
(20674,10007,15,42267,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42267'),
(20674,10008,15,42274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 42274'),
(20674,10009,15,52320,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52320'),
(20674,10010,15,52320,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52320'),
(20674,10011,15,52320,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52320'),
(20674,10012,15,52320,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52320'),
(20674,10100,15,45254,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Die'),
(20674,10101,15,52303,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of High Priest Hawinni 28756 EAI: Cast 52303');
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (28798,28799,28803);
