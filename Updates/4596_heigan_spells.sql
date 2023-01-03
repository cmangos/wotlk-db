DELETE FROM creature_spell_list_entry WHERE Id IN(1593601,2970101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1593601,'Naxxramas - Heigan - 10',0,0),
(2970101,'Naxxramas - Heigan - 25',0,0);

UPDATE creature_template SET SpellList=1593601 WHERE entry IN(15936);
UPDATE creature_template SET SpellList=2970101 WHERE entry IN(29701);

DELETE FROM creature_spell_list WHERE Id IN(1593601,2970101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1593601', '0', '29310', '0', '0', '0', '100', '0', '5000', '5000', '10000', '10000', 'Heigan 10 - Disruption'),
('1593601', '1', '29998', '0', '0', '0', '100', '0', '4000', '4000', '21000', '21000', 'Heigan 10 - Decrepit Fever'),
('2970101', '0', '29310', '0', '0', '0', '100', '0', '5000', '5000', '10000', '10000', 'Heigan 25 - Disruption'),
('2970101', '1', '55011', '0', '0', '0', '100', '0', '4000', '4000', '21000', '21000', 'Heigan 25 - Decrepit Fever');


