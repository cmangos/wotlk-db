DELETE FROM creature_spell_targeting WHERE Id IN(105,106);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
(105,1,0,0,6,'Attack - random player mana user'),
(106,1,0,1,6,'Attack - random player non tank mana user');

DELETE FROM creature_spell_list_entry WHERE Id IN(1599001,3006101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1599001,'Naxxramas - KelThuzad - 10',0,0),
(3006101,'Naxxramas - KelThuzad - 25',0,0);

UPDATE creature_template SET SpellList=1599001 WHERE entry IN(15990);
UPDATE creature_template SET SpellList=3006101 WHERE entry IN(30061);

DELETE FROM creature_spell_list WHERE Id IN(1606001,3006101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1599001', '0', '28478', '0', '100', '0', '100', '0', '10000', '10000', '5000', '10000', 'KelThuzad 10 - Frost Bolt'),
('1599001', '1', '28479', '0', '0', '0', '100', '0', '15000', '15000', '15000', '15000', 'KelThuzad 10 - Frost Bolt Nova'),
('1599001', '2', '27819', '0', '106', '0', '100', '0', '20000', '20000', '20000', '20000', 'KelThuzad 10 - Detonate Mana'),
('1599001', '3', '27810', '0', '100', '0', '100', '0', '25000', '25000', '25000', '25000', 'KelThuzad 10 - Shadow Fissure'),
('1599001', '4', '27808', '0', '1', '0', '100', '0', '30000', '60000', '30000', '60000', 'KelThuzad 10 - Frost Blast'),

('3006101', '0', '55802', '0', '100', '0', '100', '0', '10000', '10000', '5000', '10000', 'KelThuzad 25 - Frost Bolt'),
('3006101', '1', '55807', '0', '0', '0', '100', '0', '15000', '15000', '15000', '15000', 'KelThuzad 25 - Frost Bolt Nova'),
('3006101', '2', '27819', '0', '106', '0', '100', '0', '20000', '20000', '20000', '20000', 'KelThuzad 25 - Detonate Mana'),
('3006101', '3', '27810', '0', '100', '0', '100', '0', '25000', '25000', '25000', '25000', 'KelThuzad 25 - Shadow Fissure'),
('3006101', '4', '27808', '0', '1', '0', '100', '0', '30000', '60000', '30000', '60000', 'KelThuzad 25 - Frost Blast'),
('3006101', '5', '28408', '0', '0', '0', '100', '0', '30000', '60000', '30000', '60000', 'KelThuzad 25 - Chains of Kelthuzad');


