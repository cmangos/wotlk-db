UPDATE broadcast_text SET SoundEntriesID1=13454, ChatTypeID=1 WHERE Id IN(29621);
UPDATE broadcast_text SET SoundEntriesID1=13453, ChatTypeID=1 WHERE Id IN(29620);
UPDATE broadcast_text SET SoundEntriesID1=13452, ChatTypeID=1 WHERE Id IN(29619);
UPDATE broadcast_text SET SoundEntriesID1=13451, ChatTypeID=1 WHERE Id IN(29618);
UPDATE broadcast_text SET SoundEntriesID1=13450, ChatTypeID=1 WHERE Id IN(26176);

UPDATE broadcast_text SET ChatTypeID=3,SoundEntriesID1=0 WHERE Id=27363;
UPDATE broadcast_text SET ChatTypeID=3,SoundEntriesID1=0 WHERE Id=27362;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13330 WHERE Id=29608;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13332 WHERE Id=29610;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13331 WHERE Id=29609;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13329 WHERE Id=29607;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13328 WHERE Id=29605;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13187 WHERE Id=23157;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13274 WHERE Id=29603;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13189 WHERE Id=29602;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13188 WHERE Id=29601;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13186 WHERE Id=29599;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13320 WHERE Id=29598;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13324 WHERE Id=29597;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13323 WHERE Id=29596;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13322 WHERE Id=29595;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13321 WHERE Id=29594;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=13319 WHERE Id=29593;

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

UPDATE `creature_template` SET `SpellList`=2676301 WHERE `entry` IN (26763);
UPDATE `creature_template` SET `SpellList`=3052901 WHERE `entry` IN (30529);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2676301);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2676301, 0, 47751, 0, -1, 100, 0, 100, 1, 3000, 3000, 8000, 10000, 'Anomalus - Spark');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3052901);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(3052901, 0, 57062, 0, -1, 100, 0, 100, 1, 10000, 10000, 8000, 10000, 'Anomalus - Spark');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2676301,3052901);
INSERT INTO `creature_spell_list_entry` VALUES
(2676301, 'Nexus - Anomalus', 0, 0),
(3052901, 'Nexus - Anomalus HC', 0, 0);

UPDATE `creature_template` SET `SpellList`=2673101 WHERE `entry` IN (26731);
UPDATE `creature_template` SET `SpellList`=3051001 WHERE `entry` IN (30510);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2673101);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2673101, 0, 47773, 0, -1, 1, 0, 100, 1, 1000, 1000, 2000, 2000, 'Grand Magus Telestra - Firebomb'),
(2673101, 1, 47772, 0, -1, 0, 0, 100, 1, 15000, 15000, 10000, 15000, 'Grand Magus Telestra - Ice Nova'),
(2673101, 2, 47756, 0, -1, 0, 0, 100, 1, 10000, 10000, 10000, 15000, 'Grand Magus Telestra - Gravity Well');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3051001);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(3051001, 0, 56934, 0, -1, 1, 0, 100, 1, 1000, 1000, 2000, 2000, 'Grand Magus Telestra HC - Firebomb'),
(3051001, 1, 56935, 0, -1, 0, 0, 100, 1, 15000, 15000, 10000, 15000, 'Grand Magus Telestra HC - Ice Nova'),
(3051001, 2, 47756, 0, -1, 0, 0, 100, 1, 10000, 10000, 10000, 15000, 'Grand Magus Telestra HC - Gravity Well');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2673101,3051001);
INSERT INTO `creature_spell_list_entry` VALUES
(2673101, 'Nexus - Grand Magus Telestra', 0, 0),
(3051001, 'Nexus - Grand Magus Telestra HC', 0, 0);

UPDATE `creature_template` SET `SpellList`=2679401 WHERE `entry` IN (26794);
UPDATE `creature_template` SET `SpellList`=3053201 WHERE `entry` IN (30532);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2679401);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2679401, 0, 48016, 0, -1, 0, 0, 100, 1, 10000, 10000, 10000, 10000, 'Ormorok the Tree-Shaper - Trample'),
(2679401, 1, 47981, 0, -1, 0, 0, 100, 1, 25000, 25000, 30000, 30000, 'Ormorok the Tree-Shaper - Spell Reflection'),
(2679401, 2, 47958, 0, -1, 0, 0, 100, 1, 10000, 15000, 30000, 30000, 'Ormorok the Tree-Shaper - Crystal Spikes'),
(2679401, 3, 48017, 0, 1201, 0, 0, 100, 1, 0, 0, 360000, 360000, 'Ormorok the Tree-Shaper - Frenzy below 25%');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3053201);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(3053201, 0, 57066, 0, -1, 0, 0, 100, 1, 10000, 10000, 10000, 10000, 'Ormorok the Tree-Shaper HC - Trample'),
(3053201, 1, 47981, 0, -1, 0, 0, 100, 1, 25000, 25000, 30000, 30000, 'Ormorok the Tree-Shaper HC - Spell Reflection'),
(3053201, 2, 57082, 0, -1, 0, 0, 100, 1, 10000, 15000, 30000, 30000, 'Ormorok the Tree-Shaper HC - Crystal Spikes 1'),
(3053201, 3, 57083, 0, -1, 0, 0, 100, 1, 10000, 15000, 30000, 30000, 'Ormorok the Tree-Shaper HC - Crystal Spikes 2'),
(3053201, 4, 61564, 0, -1, 0, 0, 100, 101, 12000, 12000, 15000, 20000, 'Ormorok the Tree-Shaper HC - Summon Crystalline Tangler'),
(3053201, 5, 57086, 0, 1201, 0, 0, 100, 1, 0, 0, 360000, 360000, 'Ormorok the Tree-Shaper HC - Frenzy below 25%');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2679401,3053201);
INSERT INTO `creature_spell_list_entry` VALUES
(2679401, 'Nexus - Ormorok the Tree-Shaper', 0, 0),
(3053201, 'Nexus - Ormorok the Tree-Shaper HC', 0, 0);

