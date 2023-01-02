DELETE FROM creature_spell_list_entry WHERE Id IN(1593001,2944701,1592901,2944601,1592801,2944801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1593001,'Naxxramas - Feugen - 10',0,0),
(2944701,'Naxxramas - Feugen - 25',0,0),
(1592901,'Naxxramas - Stalagg - 10',0,0),
(2944601,'Naxxramas - Stalagg - 25',0,0),
(1592801,'Naxxramas - Thaddius - 10',0,0),
(2944801,'Naxxramas - Thaddius - 25',0,0);
UPDATE creature_template SET SpellList=1593001 WHERE entry IN(15930);
UPDATE creature_template SET SpellList=2944701 WHERE entry IN(29447);
UPDATE creature_template SET SpellList=1592901 WHERE entry IN(15929);
UPDATE creature_template SET SpellList=2944601 WHERE entry IN(29446);
UPDATE creature_template SET SpellList=1592801 WHERE entry IN(15928);
UPDATE creature_template SET SpellList=2944801 WHERE entry IN(29448);
DELETE FROM creature_spell_list WHERE Id IN(1593001,2944701,1592901,2944601,1592801,2944801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1593001', '0', '28135', '0', '0', '0', '100', '0', '10000', '15000', '10000', '15000', 'Feugen 10 - Static Field'),
('1593001', '1', '54517', '0', '0', '0', '100', '0', '20000', '20000', '20000', '20000', 'Feugen 10 - Magnetic Pull'),
('2944701', '0', '54528', '0', '0', '0', '100', '0', '10000', '15000', '10000', '15000', 'Feugen 25 - Static Field'),
('2944701', '1', '54517', '0', '0', '0', '100', '0', '20000', '20000', '20000', '20000', 'Feugen 25 - Magnetic Pull'),
('1592901', '0', '54529', '0', '0', '0', '100', '0', '10000', '15000', '10000', '15000', 'Stalagg 10 - Powersurge'),
('2944601', '0', '28134', '0', '0', '0', '100', '0', '10000', '15000', '10000', '15000', 'Stalagg 25 - Powersurge'),

('1592801', '0', '27680', '0', '0', '0', '100', '0', '360000', '360000', '600000', '600000', 'Thaddius 10 - Berserk'),
('1592801', '1', '28089', '0', '0', '0', '100', '0', '15000', '15000', '30000', '30000', 'Thaddius 10 - Polarity Shift'),
('1592801', '2', '28167', '0', '100', '0', '100', '0', '8000', '8000', '15000', '15000', 'Thaddius 10 - Chain Lightning'),

('2944801', '0', '27680', '0', '0', '0', '100', '0', '360000', '360000', '600000', '600000', 'Thaddius 25 - Berserk'),
('2944801', '1', '28089', '0', '0', '0', '100', '0', '15000', '15000', '30000', '30000', 'Thaddius 25 - Polarity Shift'),
('2944801', '2', '54531', '0', '100', '0', '100', '0', '8000', '8000', '15000', '15000', 'Thaddius 25 - Chain Lightning');

