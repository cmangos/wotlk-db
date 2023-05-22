DELETE FROM creature_spell_list WHERE Id IN(1606501,3060101,1606301,3060201) AND SpellId IN(57381,57377);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1606501', '4', '57381', '0', '925', '0', '0', '100', '0', '15000', '15000', '5000', '5000', 'Lady Blaumeux 10 - Unyielding Pain'),
('3060101', '4', '57381', '0', '925', '0', '0', '100', '0', '15000', '15000', '5000', '5000', 'Lady Blaumeux 25 - Unyielding Pain'),
('1606301', '4', '57377', '0', '925', '0', '0', '100', '0', '15000', '15000', '5000', '5000', 'Sir Zeliek - 10 - Condemnation'),
('3060201', '4', '57377', '0', '925', '0', '0', '100', '0', '15000', '15000', '5000', '5000', 'Sir Zeliek - 25 - Condemnation');


