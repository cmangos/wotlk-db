-- Non-combat forward gate at Light's Hammer.
UPDATE `gameobject_template`
SET `data0` = 1, `data2` = 0 WHERE `entry` = 201583 AND `type` = 0;
  
-- Spire Frostwyrm: movement and the low-health enrage remain encounter logic;
-- the normal combat rotation belongs to the creature spell-list system.
UPDATE `creature_template` SET `SpellList` = 3723001 WHERE `Entry` = 37230;
DELETE FROM `creature_spell_list` WHERE `Id` = 3723001;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 3723001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(3723001, 'ICC - Spire Frostwyrm', 0, 0);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`,`Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(3723001, 0, 70362, 0, -1, 100, 0, 100, 1, 10000, 13000, 13000, 16000, 'Spire Frostwyrm - Blizzard'),
(3723001, 1, 70361, 0, -1,   1, 0, 100, 1,  8000, 10000,  3000,  6000, 'Spire Frostwyrm - Cleave'),
(3723001, 2, 70116, 0, -1,   1, 0, 100, 1, 13000, 15000,  6000,  9000, 'Spire Frostwyrm - Frost Breath');
