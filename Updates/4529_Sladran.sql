UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14443 WHERE id=31711;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14444 WHERE id=30369;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14445 WHERE id=30370;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14446 WHERE id=31712;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14447 WHERE id=31713;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14448 WHERE id=31714;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14449 WHERE id=31715;
UPDATE broadcast_text SET ChatTypeID=3 WHERE id=30757;
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930400) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930400) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930400) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3137000) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3137000) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3137000) AND (`Position` = 2);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(2930400, 0, 55081, 22000, 22000, 22000, 22000, 0, 2, 29000, 100, 1, 'Gundrak - Slad\'ran NHC Poison Nova'),
(2930400, 1, 48287, 10000, 10000, 10000, 10000, 0, 1, 0, 100, 1, 'Gundrak - Slad\'ran NHC Powerful Bite'),
(2930400, 2, 54970, 15000, 15000, 15000, 15000, 0, 100, 0, 100, 1, 'Gundrak - Slad\'ran NHC Venom Bolt'),
(3137000, 0, 59842, 22000, 22000, 22000, 22000, 0, 2, 29000, 100, 1, 'Gundrak - Slad\'ran HC Poison Nova'),
(3137000, 1, 59840, 10000, 10000, 10000, 10000, 0, 1, 0, 100, 1, 'Gundrak - Slad\'ran HC Powerful Bite'),
(3137000, 2, 59839, 15000, 15000, 15000, 15000, 0, 100, 0, 100, 1, 'Gundrak - Slad\'ran HC Venom Bolt');
INSERT INTO `creature_spell_list_entry` VALUES
(2930400, 'Gundrak - Slad\'ran NHC', 100, 100),
(3137000, 'Gundrak - Slad\'ran HC', 100, 100);
UPDATE `creature_template` SET `SpellList`=2930400 WHERE entry=29304;
UPDATE `creature_template` SET `SpellList`=3137000 WHERE entry=31370;
INSERT INTO `dbscripts_on_relay` (id, command, dataint, comments) VALUES 
(29000, 0, 30757, 'Slad\'ran - Say Nova Emote on Nova cast');
