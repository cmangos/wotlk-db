-- q.13395 'Army of the Damned' - A
-- q.13236 'Army of the Damned' - H
DELETE FROM dbscripts_on_quest_start WHERE id IN (13395);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13395,1,15,59073,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast 59073 on Player'),
(13395,2,15,58989,8,0,0,0,6,0,0,0,0,0,0,0,0,'cast 58989 on Player');
UPDATE quest_template SET StartScript = 13395 WHERE entry IN (13395);
UPDATE quest_template SET StartScript = 13395 WHERE entry IN (13236);
DELETE FROM spell_area WHERE spell IN (59073,58902);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59073,4522,0,0,0,20798,0,0,2,1),
(59073,4622,0,0,0,0,0,0,2,0),
(58902,4622,0,0,0,20812,0,0,2,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20810 AND 20812;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20810,9,13395,0,0,0,''),
(20811,9,13236,0,0,0,''),
(20812,-2,20811,20810,0,0,'');
-- The Prodigal Leader 31268
UPDATE creature_template SET UnitFlags = 16777224, MinLevel = 82, MaxLevel = 82, UnitClass = 2, EquipmentTemplateId = 2500, SpellList = 3126801 WHERE Entry = 31268;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21091 AND 21093;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21091,3900,31,32414,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: buddy search'),
(21091,4000,1,66,0,0,32414,50,7,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: buddy emote'),
(21091,4001,0,0,0,0,32414,50,0,32823,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: buddy say'),
(21092,0,34,20808,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: zone check'),
(21092,1,35,5,5,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: text'),
(21092,100,14,58902,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: remove aura'),
(21093,0,15,58987,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Prodigal Leader 31268 EAI: Player Self Cast 58987');
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `Id` IN (32822);
DELETE FROM creature_spell_list_entry WHERE Id IN(3126801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3126801, 'The Prodigal Leader 31268 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3126801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3126801','0','58912','0','-1','0','0','100','1','0','0','0','0','The Prodigal Leader 31268 - Deathstorm'),
('3126801','1','58913','0','-1','0','0','100','1','0','0','0','0','The Prodigal Leader 31268 - Soul Cleave'),
('3126801','2','58916','0','-1','0','0','100','1','0','0','0','0','The Prodigal Leader 31268 - Gift of the Lich King'),
('3126801','3','58917','0','-1','0','0','100','1','0','0','0','0','The Prodigal Leader 31268 - Consume Minions');
DELETE FROM dbscripts_on_spell WHERE id IN (58916,58917);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(58916,0,15,58915,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(58917,0,15,58919,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (58916,58917,58945);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(58916, 2, 31254, 0),
(58916, 2, 32414, 0),
(58917, 1, 31276, 0),
(58945, 1, 31254, 0),
(58945, 1, 32414, 0);
-- Ghoulish Minion 31276
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80 WHERE Entry = 31276;
