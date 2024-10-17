-- q.13071 'Vile Like Fire!'
-- Njorndar Proto-Drake 30272
DELETE FROM npc_spellclick_spells WHERE npc_entry IN(30272);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags, quest_start, quest_start_active, quest_end, condition_id) VALUES
(30272,57401,1,13071,1,13071,0);
-- Njorndar Proto-Drake 30564
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (3.61110997200012207 / 2.5), SpeedRun = (17 / 7), InhabitType = 1, UnitClass = 1, Expansion = 2, SpellList = 3056401 WHERE Entry = 30564;
DELETE FROM creature_spell_list_entry WHERE Id IN(3056401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3056401, 'Njorndar Proto-Drake 30564 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3056401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3056401','0','57493','0','-1','0','0','100','1','0','0','60000','60000','Njorndar Proto-Drake 30564 - Burst of Speed'),
('3056401','2','7769','0','-1','0','0','100','1','0','0','1000','1000','Njorndar Proto-Drake 30564 - Strafe Jotunheim Building');
-- Vile Like Fire! Kill Credit Bunny 30576
-- Vile Like Fire! Fire Bunny 30599
DELETE FROM spell_script_target WHERE entry IN(57469,7769);
INSERT INTO spell_script_target VALUES
(57469,1,30599,0),
(7769,1,30576,0);
DELETE FROM dbscripts_on_relay WHERE id = 21037;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21037,0,15,7448,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vile Like Fire! Kill Credit Bunny 30576 EAI: cast 7448'),
(21037,1,15,57469,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vile Like Fire! Kill Credit Bunny 30576 EAI: cast 57469');
