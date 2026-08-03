-- q.12996 'The Warm-Up'
-- Warbear Matriarch 29918
UPDATE creature_template SET StaticFlags2 = StaticFlags2|0x00000400, SpellList = 2991801 WHERE entry IN (29918);
DELETE FROM creature_template_spells WHERE entry = 29918;
DELETE FROM creature_spell_list_entry WHERE Id IN(2991801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2991801, 'Warbear Matriarch 29918 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2991801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2991801', '3', '54459', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Warbear Matriarch 29918 - Maul'),
('2991801', '4', '54458', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Warbear Matriarch 29918 - Smash'),
('2991801', '5', '54460', '0', '-1', '0', '0', '100', '1','0','0','0','0', 'Warbear Matriarch 29918 - Charge');
-- Part of Kirgaraak 29352 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (21248,21249);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21248
(21248,0,22,35,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Kirgaraak 29352 EAI: temp faction'),
(21248,10000,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Kirgaraak 29352 EAI: send event 5'),
-- 21249
(21249,10,34,21088,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Warbear Matriarch 29918 EAI: area check'),
(21249,1000,15,51259,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Warbear Matriarch 29918 EAI: warning spell'),
(21249,16000,34,21087,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Warbear Matriarch 29918 EAI: area check'),
(21249,16100,14,56132,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Warbear Matriarch 29918 EAI: Player Drop');
DELETE FROM conditions WHERE condition_entry = 21088;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
-- 21083 -- 4422
-- 21086 -- 4535
(21088, -2, 21086,21083,0,0,0);
