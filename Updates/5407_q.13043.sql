-- q.13043 'The Sum is Greater than the Parts'

-- Nergeld 30403
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(30403);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(30403,56699,1,13043,1,13043,0);
UPDATE creature_template SET SpellList = 3040301 WHERE Entry = 30403;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 30403;
DELETE FROM creature_spell_list_entry WHERE Id IN(3040301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3040301, 'Nergeld 30403 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3040301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3040301','0','56746','0','-1','0','0','100','1','0','0','0','0','Nergeld 30403 - Punch'),
('3040301','1','56748','0','-1','0','0','100','1','0','0','0','0','Nergeld 30403 - Roar'),
('3040301','2','56747','0','-1','0','0','100','1','0','0','0','0','Nergeld 30403 - Stomp'),
('3040301','3','60540','0','-1','0','0','100','1','0','0','0','0','Nergeld 30403 - Chained Grip');
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (31120,31132);
-- Vargul Assailant 30471 & Grimmr Hound 30432
UPDATE creature_template SET movementtype = 2 WHERE Entry IN (30471,30432);
DELETE FROM creature_movement_template WHERE Entry IN (30471,30432);
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30471,1,8030.6543,3342.7043,632.39056,100,0,0),
(30471,2,8030.6543,3342.7043,632.39056,100,1,20),
(30432,1,8030.6543,3342.7043,632.39056,100,0,0),
(30432,2,8030.6543,3342.7043,632.39056,100,1,20);
-- Dr. Terrible 30404
UPDATE creature_template SET movementtype = 2 WHERE Entry = 30404;
DELETE FROM creature_movement_template WHERE Entry = 30404;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30404,1,7985.71,3296.5679,633.10236,3.96,100,5),
(30404,2,8030.6543,3342.7043,632.39056,100,1,20);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31134,31173);
-- quest script
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21028 AND 21032;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21028,1,0,0,0,0,0,0,0x04,31120,0,0,0,0,0,0,0,'say'),
(21028,2,49,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unitFlags'),
-- 1st wave - 00:36:26.684
(21029,1,10,30471,300000,0,0,0,0x08,0,0,0,0,7991.7285,3336.5872,632.47876,0.29,'summon 30471'),
(21029,2,10,30471,300000,0,0,0,0x08,0,0,0,0,8001.9775,3322.2395,632.47876,0.64877,'summon 30471'),
(21029,3,10,30471,300000,0,0,0,0x08,0,0,0,0,8026.751,3305.4,632.47876,1.7,'summon 30471'),
(21029,4,10,30471,300000,0,0,0,0x08,0,0,0,0,8000.356,3304.719,632.47876,0.86,'summon 30471'),
(21029,5,10,30471,300000,0,0,0,0x08,0,0,0,0,7986.2075,3307.5215,632.47876,0.68,'summon 30471'),
(21029,6,10,30471,300000,0,0,0,0x08,0,0,0,0,8015.229,3317.1572,632.47876,0.94,'summon 30471'),
-- 2nd wave - 00:36:47.914
(21030,1,10,30432,300000,0,0,0,0x08,0,0,0,0,7993.307,3305.509,632.47876,0.773,'summon 30432'),
(21030,2,10,30432,300000,0,0,0,0x08,0,0,0,0,8008.81,3311.693,632.47876,0.9,'summon 30432'),
(21030,3,10,30471,300000,0,0,0,0x08,0,0,0,0,7998.4478,3315.3164,632.47876,0.71,'summon 30471'),
(21030,4,10,30471,300000,0,0,0,0x08,0,0,0,0,8024.424,3310.7454,632.47876,1.3367,'summon 30471'),
(21030,5,10,30471,300000,0,0,0,0x08,0,0,0,0,8005.028,3335.9692,632.47876,0.4,'summon 30471'),
(21030,6,10,30471,300000,0,0,0,0x08,0,0,0,0,8007.8975,3317.7065,632.47876,0.804,'summon 30471'),
-- 3rd wave - 00:37:08.753
(21031,1,10,30432,300000,0,0,0,0x08,0,0,0,0,8020.0356,3308.7134,632.47876,1.13,'summon 30432'),
(21031,2,10,30432,300000,0,0,0,0x08,0,0,0,0,7997.634,3330.9402,632.47876,0.44,'summon 30432'),
(21031,3,10,30432,300000,0,0,0,0x08,0,0,0,0,7996.565,3299.358,632.47876,0.7966,'summon 30432'),
(21031,4,10,30471,300000,0,0,0,0x08,0,0,0,0,7998.183,3346.9126,632.47876,6.0009,'summon 30471'),
(21031,5,10,30471,300000,0,0,0,0x08,0,0,0,0,7999.971,3310.1,632.47876,0.797,'summon 30471'),
(21031,6,10,30471,300000,0,0,0,0x08,0,0,0,0,8010.3047,3324.0894,632.47876,0.737,'summon 30471'),
-- boss - 00:37:30.104
(21032,1,10,30404,300000,0,0,0,0x08,0,0,0,0,7985.71,3296.5679,633.10236,3.96,'summon 30404'),
(21032,2,10,30432,300000,0,0,0,0x08,0,0,0,0,7982.587,3301.8071,632.47876,5.297,'summon 30432'),
(21032,3,10,30432,300000,0,0,0,0x08,0,0,0,0,7991.3657,3293.5117,632.47876,2.6,'summon 30432');
