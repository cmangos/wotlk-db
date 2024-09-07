-- q.13283 'King of the Mountain' - H
-- Thunderbomb's Jumpbot 31770
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (31770);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(31770,59654,13283,1,13283,1,0);
-- Thunderbomb's Jumpbot 31785
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpellList = 3178501 WHERE entry = 31785;
DELETE FROM creature_spell_list_entry WHERE Id IN(3178501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3178501, 'Thunderbomb\'s Jumpbot 31785 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3178501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3178501', '0', '59643', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Thunderbomb\'s Jumpbot 31785 - Plant Horde Battle Standard'),
('3178501', '1', '59702', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Thunderbomb\'s Jumpbot 31785 - Explodo-Rockets'),
('3178501', '2', '4336', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Thunderbomb\'s Jumpbot 31785 -  Jump Jets');
DELETE FROM dbscripts_on_relay WHERE id IN (20939);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20939,10,34,20730,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thunderbomb\'s Jumpbot 31785 EAI: area check'),
(20939,100,0,0,0,0,0,0,0,32370,0,0,0,0,0,0,0,'Part of Thunderbomb\'s Jumpbot 31785 EAI: warning'),
(20939,10000,34,20730,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thunderbomb\'s Jumpbot 31785 EAI: area check'),
(20939,10100,14,59656,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thunderbomb\'s Jumpbot 31785 EAI: Player Drop');
DELETE FROM conditions WHERE condition_entry = 20730;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20730, 4, 4513,0,0,0);
UPDATE `broadcast_text` SET `ChatTypeID`='3' WHERE `Id`='32370';
-- ELM General Purpose Bunny 23837
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20937 AND 20938;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20937,1,14,4339,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20937,10,15,59642,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20938,1,14,59642,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20938,10,15,4339,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- q.13280 'King of the Mountain' - A
-- Geargrinder's Jumpbot 31736
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (31736);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(31736,59592,13280,1,13280,1,0);
-- Geargrinder's Jumpbot 31784
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpellList = 3178401 WHERE entry = 31784;
DELETE FROM creature_spell_list_entry WHERE Id IN(3178401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3178401, 'Geargrinder\'s Jumpbot 31785 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3178401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3178401', '0', '4338', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Geargrinder\'s Jumpbot 31784 - Plant Alliance Battle Standard'),
('3178401', '1', '59702', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Geargrinder\'s Jumpbot 31784 - Explodo-Rockets'),
('3178401', '2', '4336', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Geargrinder\'s Jumpbot 31784 -  Jump Jets');
