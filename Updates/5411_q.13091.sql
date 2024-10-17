-- q.13091 'The Art of Being a Water Terror'
-- Water Terror 30645
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (10 / 2.5), SpeedRun = (15 / 7), InhabitType = 1, UnitClass = 4, Expansion = 2, SpellList = 3064501 WHERE Entry = 30645;
DELETE FROM creature_template_spells WHERE entry = 30645;
DELETE FROM creature_spell_list_entry WHERE Id IN(3064501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3064501, 'Water Terror 30645 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3064501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3064501','0','57643','0','-1','0','0','100','1','0','0','0','0','Water Terror 30645 - Spell Reflection'),
('3064501','1','57652','0','-1','0','0','100','1','0','0','0','0','Water Terror 30645 - Crashing Wave'),
('3064501','2','57665','0','-1','0','0','100','1','0','0','0','0','Water Terror 30645 - Frostbolt'),
('3064501','3','57668','0','-1','0','0','100','1','0','0','0','0','Water Terror 30645 - Frost Nova');
-- Part of Water Terror 306452 EAI
DELETE FROM dbscripts_on_relay WHERE id = 21038;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21038,100,8,30644,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Water Terror 30645 EAI: Kill Credit');
