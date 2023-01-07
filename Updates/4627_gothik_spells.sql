DELETE FROM creature_spell_list_entry WHERE Id IN(1606001,2995501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1606001,'Naxxramas - Gothik - 10',0,0),
(2995501,'Naxxramas - Gothik - 25',0,0);

UPDATE creature_template SET SpellList=1606001 WHERE entry IN(16060);
UPDATE creature_template SET SpellList=2995501 WHERE entry IN(29955);

DELETE FROM creature_spell_list WHERE Id IN(1606001,2995501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1606001', '0', '28679', '0', '0', '0', '100', '0', '2500', '2500', '15000', '15000', 'Gothik 10 - Harvest Soul'),
('1606001', '1', '29317', '0', '1', '0', '100', '0', '2000', '2000', '0', '0', 'Gothik 10 - Shadow Bolt'),
('2995501', '0', '28679', '0', '0', '0', '100', '0', '2500', '2500', '15000', '15000', 'Gothik 25 - Harvest Soul'),
('2995501', '1', '56405', '0', '1', '0', '100', '0', '2000', '2000', '0', '0', 'Gothik 25 - Shadow Bolt');


