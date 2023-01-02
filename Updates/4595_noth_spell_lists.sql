DELETE FROM creature_spell_list_entry WHERE Id IN(1595401,2961501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1595401,'Naxxramas - Noth - 10',0,0),
(2961501,'Naxxramas - Noth - 25',0,0);

UPDATE creature_template SET SpellList=1595401 WHERE entry IN(15954);
UPDATE creature_template SET SpellList=2961501 WHERE entry IN(29615);

DELETE FROM creature_spell_list WHERE Id IN(1595401,2961501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1595401', '0', '29213', '0', '0', '0', '100', '0', '4000', '4000', '28000', '28000', 'Noth 10 - Curse of the Plaguebringer'),
('2961501', '0', '54835', '0', '0', '0', '100', '0', '4000', '4000', '28000', '28000', 'Noth 25 - Curse of the Plaguebringer'),
('2961501', '0', '29208', '4', '0', '0', '100', '0', '25000', '25000', '25000', '25000', 'Noth 25 - Blink - Category CD'),
('2961501', '0', '29209', '4', '0', '0', '100', '0', '25000', '25000', '25000', '25000', 'Noth 25 - Blink - Category CD'),
('2961501', '0', '29210', '4', '0', '0', '100', '0', '25000', '25000', '25000', '25000', 'Noth 25 - Blink - Category CD'),
('2961501', '0', '29211', '4', '0', '0', '100', '0', '25000', '25000', '25000', '25000', 'Noth 25 - Blink - Category CD');


