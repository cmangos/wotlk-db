-- q.13069 'Shoot 'Em Up'
-- Jotunheim Rapid-Fire Harpoon 30337
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(30337);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(30337,43671,1,13069,1,13069,0);
UPDATE creature_template SET UnitFlags=0, SpellList = 3033701 WHERE Entry = 30337;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 30337;
DELETE FROM creature_spell_list_entry WHERE Id IN(3033701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3033701, 'Jotunheim Rapid-Fire Harpoon 30337 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3033701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3033701','0','56585','0','-1','0','0','100','1','0','0','30000','30000','Jotunheim Rapid-Fire Harpoon 30337 - Energy Reserve'),
('3033701','2','56570','0','-1','0','0','100','1','0','0','0','0','Jotunheim Rapid-Fire Harpoon 30337 - Rapid-Fire Harpoon');
DELETE FROM spell_script_target WHERE entry IN(56578);
INSERT INTO spell_script_target VALUES
(56578,1,30330,0);
-- Jotunheim Proto-Drake 30330
UPDATE creature_template SET StaticFlags1 = 0, StaticFlags2 = 0, StaticFlags3 = 1024, HoverHeight=2.25 WHERE entry=30330;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 30330;
