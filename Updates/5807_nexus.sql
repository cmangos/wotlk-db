UPDATE broadcast_text SET SoundEntriesID1=13454, ChatTypeID=1 WHERE Id IN(29621);
UPDATE broadcast_text SET SoundEntriesID1=13453, ChatTypeID=1 WHERE Id IN(29620);
UPDATE broadcast_text SET SoundEntriesID1=13452, ChatTypeID=1 WHERE Id IN(29619);
UPDATE broadcast_text SET SoundEntriesID1=13451, ChatTypeID=1 WHERE Id IN(29618);
UPDATE broadcast_text SET SoundEntriesID1=13450, ChatTypeID=1 WHERE Id IN(26176);

UPDATE creature_template SET SpellList = 2672301 WHERE entry=26723;
UPDATE creature_template SET SpellList = 3054001 WHERE entry=30540;
DELETE FROM creature_spell_list_entry WHERE Id IN(2672301,3054001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2672301, 'Nexus - Keristrasza', 0, 0),
(3054001, 'Nexus - Keristrasza HC', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2672301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2672301', '0', '50155', '0', '-1', '0', '0', '100', '1','10000','10000','10000','10000', 'Keristrasza - Tail Sweep'),
('2672301', '1', '48096', '0', '-1', '0', '0', '100', '1','15000','15000','15000','15000', 'Keristrasza - Crystalfire Breath'),
('2672301', '2', '50997', '0', '-1', '101', '0', '100', '1','18000','18000','25000','25000', 'Keristrasza - Crystal Chains'),
('2672301', '3', '8599', '0', '1201', '0', '0', '100', '1','0','0','120000','120000', 'Keristrasza - Enrage below 25%');

DELETE FROM creature_spell_list WHERE Id IN(3054001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3054001', '0', '50155', '0', '-1', '0', '0', '100', '1','10000','10000','10000','10000', 'Keristrasza HC - Tail Sweep'),
('3054001', '1', '57091', '0', '-1', '0', '0', '100', '1','15000','15000','15000','15000', 'Keristrasza HC - Crystalfire Breath'),
('3054001', '2', '48179', '0', '-1', '0', '0', '100', '1','18000','18000','25000','25000', 'Keristrasza HC - Crystallize'),
('3054001', '3', '8599', '0', '1201', '0', '0', '100', '1','0','0','120000','120000', 'Keristrasza HC - Enrage below 25%');

