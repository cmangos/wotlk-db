-- q.12662 'Bringing Down Heb'Jin'
DELETE FROM `dbscripts_on_event` WHERE id IN (18773);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(18773,1,31,28636,200,0,0,0,8,0,0,0,0,0,0,0,0,'terminate if 28636 is alive'),
(18773,100,10,28636,300000,0,0,0,6|0x08,0,0,0,0,5988.715,-3878.036,417.1502,2.356194,'summon Heb\'Jin'),
(18773,101,10,28639,300000,0,0,0,6|0x08,0,0,0,0,5984.547,-3882.621,417.4379,1.919862,'summon Heb\'Jin\'s Bat'),
(18773,1000,0,0,0,0,28636,300,3,28627,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18773,6000,0,0,0,0,28636,300,3,28628,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18773,6001,1,15,0,0,28636,300,7,0,0,0,0,0,0,0,0,'buddy emote'),
(18773,10000,25,1,0,0,28639,300,7,0,0,0,0,0,0,0,0,'buddy - Run ON'),
(18773,11000,3,0,0,0,28639,300,7,0,0,0,0,5982.633,-3879.573,422.4082,100,'buddy move'),
(18773,11500,3,0,0,0,28639,300,7,0,0,0,0,5930.76,-3819.15,365.314,2.35994,'buddy move'),
(18773,20000,48,256,0,0,28636,300,7,0,0,0,0,0,0,0,0,'buddy Remove UnitFlags'),
(18773,20001,48,256,0,0,28639,300,7,0,0,0,0,0,0,0,0,'buddy Remove UnitFlags'),
(18773,21000,0,0,0,0,28636,300,3,28629,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18773,21001,26,0,0,0,28636,300,3,0,0,0,0,0,0,0,0,'buddy attack -> Player');
DELETE FROM `dbscripts_on_relay` WHERE id IN (20670);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20670,1,15,43671,0,0,28639,50,1,0,0,0,0,0,0,0,0,'Part of Heb\'Jin 28636 EAI: cast 43671 on buddy'),
(20670,10000,14,43671,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Heb\'Jin 28636 EAI: remove aura');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (28627,28628,28629);
UPDATE creature_template SET InhabitType = 4 WHERE entry = 28639;
