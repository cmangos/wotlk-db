-- Gal\'darah - Gundrak
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14430 WHERE Id=32534;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14431 WHERE Id=32535;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14432 WHERE Id=32536;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14433 WHERE Id=32537;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14434 WHERE Id=32538;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14435 WHERE Id=32539;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14436 WHERE Id=32540;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14437 WHERE Id=32541;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14438 WHERE Id=32542;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=14439 WHERE Id=32543;
UPDATE broadcast_text SET ChatTypeID=3 WHERE Id=30718;
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930600) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136800) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930600) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136800) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930600) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136800) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930601) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136801) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930601) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136801) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930601) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 3136801) AND (`Position` = 2);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(2930600, 0, 55218, 10000, 10000, 15000, 15000, 0, 1, 29003, 100, 1, 'Gal\'darah - Stampede'),
(2930600, 1, 55276, 25000, 25000, 25000, 25000, 0, 1, 0, 100, 1, 'Gal\'darah - Puncture'),
(2930600, 2, 55250, 12000, 12000, 12000, 12000, 0, 0, 29004, 100, 1, 'Gal\'darah - Whirling Slash'),
(2930601, 0, 55285, 4000, 4000, 15000, 15000, 1, 0, 0, 100, 1, 'Gal\'darah - Enrage'),
(2930601, 1, 55292, 1000, 1000, 10000, 10000, 0, 0, 0, 100, 1, 'Gal\'darah - Stomp'),
(2930601, 2, 54956, 12000, 12000, 12000, 12000, 0, 101, 29005, 100, 1, 'Gal\'darah - Impaling Charge'),
(3136800, 0, 55218, 10000, 10000, 15000, 15000, 0, 1, 29003, 100, 1, 'Gal\'darah HC - Stampede'),
(3136800, 1, 59826, 25000, 25000, 25000, 25000, 0, 1, 0, 100, 1, 'Gal\'darah HC - Puncture'),
(3136800, 2, 59824, 12000, 12000, 12000, 12000, 0, 0, 29004, 100, 1, 'Gal\'darah HC - Whirling Slash'),
(3136801, 0, 59828, 4000, 4000, 15000, 15000, 1, 0, 0, 100, 1, 'Gal\'darah HC - Enrage'),
(3136801, 1, 59829, 1000, 1000, 10000, 10000, 0, 0, 0, 100, 1, 'Gal\'darah HC - Stomp'),
(3136801, 2, 59827, 12000, 12000, 12000, 12000, 0, 101, 29005, 100, 1, 'Gal\'darah HC - Impaling Charge');
INSERT INTO `creature_spell_list_entry` VALUES
(2930600, 'Gundrak - Gal\'darah Troll Form NHC', 100, 100),
(2930601, 'Gundrak - Gal\'darah Rhino Form NHC', 100, 100),
(3136800, 'Gundrak - Gal\'darah Troll Form HC', 100, 100),
(3136801, 'Gundrak - Gal\'darah Rhino Form HC', 100, 100);
UPDATE `creature_template` SET `SpellList`=2930600 WHERE entry=29306;
UPDATE `creature_template` SET `SpellList`=3136800 WHERE entry=31368;
INSERT INTO `dbscripts_on_relay` (id, command, datalong, data_flags, comments) VALUES
(29004, 35, 5, 4, 'Gal\'darah - Increase special counter'),
(29005, 35, 5, 4, 'Gal\'darah - Increase special counter');
INSERT INTO `dbscripts_on_relay` (id, command, dataint, dataint2, dataint3, comments) VALUES
(29003, 0, 32537, 32538, 32539, 'Gal\'darah - Say Summon');
INSERT INTO `dbscripts_on_relay` (id, command, dataint, comments) VALUES
(29005, 0, 30718, 'Gal\'darah - Emote Impaled');
