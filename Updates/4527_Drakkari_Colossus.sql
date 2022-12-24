-- Drakkari Colossus
DELETE FROM `creature_spell_list` WHERE (`Id` = 2930700) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2957300) AND (`Position` = 0);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(2930700, 0, 54719, 10000, 10000, 10000, 10000, 0, 1, 0, 100, 1, 'Drakkari Colossus - Mighty Blow'),
(2957300, 0, 54801, 9000, 13000, 12000, 17000, 0, 100, 0, 100, 1, 'Drakkari Elemental - Surge');
INSERT INTO `creature_spell_list_entry` VALUES
(2930700, 'Gundrak - Colossus', 100, 100),
(2957300, 'Gundrak - Elemental', 100, 100);
UPDATE `creature_template` SET `SpellList`=2930700 WHERE entry IN (29307, 31365);
UPDATE `creature_template` SET `SpellList`=2957300 WHERE entry IN (29573, 31367);
