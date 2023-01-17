DELETE FROM creature_spell_list_entry WHERE Id IN(1606301,3060201,1606401,3060301,1606501,3060101,3054901,3060001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1606301,'Naxxramas - Sir Zeliek - 10',0,0),
(3060201,'Naxxramas - Sir Zeliek - 25',0,0),
(1606401,'Naxxramas - Thane Korthazz - 10',0,0),
(3060301,'Naxxramas - Thane Korthazz - 25',0,0),
(1606501,'Naxxramas - Lady Blaumeux - 10',0,0),
(3060101,'Naxxramas - Lady Blaumeux - 25',0,0),
(3054901,'Naxxramas - Baron Rivendare - 10',0,0),
(3060001,'Naxxramas - Baron Rivendare - 25',0,0);

UPDATE creature_template SET SpellList=1606301 WHERE entry IN(16063);
UPDATE creature_template SET SpellList=3060201 WHERE entry IN(30602);
UPDATE creature_template SET SpellList=1606401 WHERE entry IN(16064);
UPDATE creature_template SET SpellList=3060301 WHERE entry IN(30603);
UPDATE creature_template SET SpellList=1606501 WHERE entry IN(16065);
UPDATE creature_template SET SpellList=3060101 WHERE entry IN(30601);
UPDATE creature_template SET SpellList=3054901 WHERE entry IN(30549);
UPDATE creature_template SET SpellList=3060001 WHERE entry IN(30600);

DELETE FROM creature_spell_list WHERE Id IN(1606301,3060201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1606301', '0', '28835', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Sir Zeliek 10 - Mark of Zeliek'),
('1606301', '1', '57376', '0', '1', '0', '100', '0', '10000', '10000', '2000', '3000', 'Sir Zeliek 10 - Holy Bolt'),
('1606301', '2', '28883', '0', '100', '0', '100', '0', '12000', '12000', '15000', '15000', 'Sir Zeliek 10 - Holy Wrath'),
('1606301', '3', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Sir Zeliek 10 - Berserk'),
('3060201', '0', '28835', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Sir Zeliek 25 - Mark of Zeliek'),
('3060201', '1', '57465', '0', '1', '0', '100', '0', '10000', '10000', '2000', '3000', 'Sir Zeliek 25 - Holy Bolt'),
('3060201', '2', '57466', '0', '100', '0', '100', '0', '12000', '12000', '15000', '15000', 'Sir Zeliek 25 - Holy Wrath'),
('3060201', '3', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Sir Zeliek 25 - Berserk');

DELETE FROM creature_spell_list WHERE Id IN(1606401,3060301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1606401', '0', '28832', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Thane Korthazz 10 - Mark of Korthazz'),
('1606401', '1', '28884', '0', '1', '0', '100', '0', '20000', '20000', '20000', '20000', 'Thane Korthazz 10 - Meteor'),
('1606401', '2', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Thane Korthazz 10 - Berserk'),
('3060301', '0', '28832', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Thane Korthazz 25 - Mark of Korthazz'),
('3060301', '1', '57467', '0', '1', '0', '100', '0', '20000', '20000', '20000', '20000', 'Thane Korthazz 25 - Meteor'),
('3060301', '2', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Thane Korthazz 25 - Berserk');

DELETE FROM creature_spell_list WHERE Id IN(1606501,3060101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1606501', '0', '28833', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Lady Blaumeux 10 - Mark of Blaumeux'),
('1606501', '1', '57374', '0', '1', '0', '100', '0', '10000', '10000', '2000', '3000', 'Lady Blaumeux 10 - Shadow Bolt'),
('1606501', '2', '28863', '0', '100', '0', '100', '0', '12000', '12000', '15000', '15000', 'Lady Blaumeux 10 - Void Zone'),
('1606501', '3', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Lady Blaumeux 10 - Berserk'),
('3060101', '0', '28833', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Lady Blaumeux 25 - Mark of Blaumeux'),
('3060101', '1', '57464', '0', '1', '0', '100', '0', '10000', '10000', '2000', '3000', 'Lady Blaumeux 25 - Shadow Bolt'),
('3060101', '2', '57463', '0', '100', '0', '100', '0', '12000', '12000', '15000', '15000', 'Lady Blaumeux 25 - Void Zone'),
('3060101', '3', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Lady Blaumeux 25 - Berserk');

DELETE FROM creature_spell_list WHERE Id IN(3054901,3060001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3054901', '0', '28834', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Baron Rivendare 10 - Mark of Rivendare'),
('3054901', '1', '28882', '0', '1', '0', '100', '0', '15000', '15000', '15000', '15000', 'Baron Rivendare 10 - Meteor'),
('3054901', '2', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Baron Rivendare 10 - Berserk'),
('3060001', '0', '28834', '0', '0', '0', '100', '0', '20000', '20000', '12000', '12000', 'Baron Rivendare 25 - Mark of Rivendare'),
('3060001', '1', '57369', '0', '1', '0', '100', '0', '15000', '15000', '15000', '15000', 'Baron Rivendare 25 - Meteor'),
('3060001', '2', '26662', '0', '0', '0', '100', '0', '2000000', '2000000', '300000', '300000', 'Baron Rivendare 25 - Berserk');


