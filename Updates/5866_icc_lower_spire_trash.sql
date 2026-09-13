-- Icecrown Citadel lower-spire trash and Light's Hammer progression.

START TRANSACTION;

SET @CGUID := 6310000;
SET @SGGUID := 6310000;
SET @STRINGID := 6310000;
SET @SPAWNDATA := 6310000;

DELETE FROM `string_id` WHERE `Id` BETWEEN @STRINGID + 1 AND @STRINGID + 2;
INSERT INTO `string_id` (`Id`, `Name`) VALUES
(@STRINGID + 1, 'ICC_LIGHTS_HAMMER_DAMNED'),
(@STRINGID + 2, 'ICC_SPIRE_FROSTWYRM');

DELETE FROM `creature_spawn_data` WHERE `Guid` IN (@CGUID + 92, @CGUID + 93);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(@CGUID + 92, @SPAWNDATA + 1),
(@CGUID + 93, @SPAWNDATA + 1);

DELETE FROM `creature_spawn_data_template` WHERE `Entry` = @SPAWNDATA + 1;
INSERT INTO `creature_spawn_data_template` (`Entry`, `StringId`, `Name`) VALUES
(@SPAWNDATA + 1, @STRINGID + 1, 'ICC - Light''s Hammer - The Damned');

-- Nerub'ar Broodkeeper: restore Dark Mending.
UPDATE `creature_ai_scripts`
SET `action1_param1` = 71020,
    `comment` = 'Nerub''ar Broodkeeper - Cast Dark Mending on Friendly Missing HP'
WHERE `id` = 3672503
  AND `creature_id` = 36725;

-- The instance script owns the two-kill Light's Hammer prologue.
DELETE FROM `creature_ai_scripts`
WHERE `id` = 3701104
  AND `creature_id` = 37011;

-- Non-combat forward gate at Light's Hammer.
UPDATE `gameobject_template`
SET `data0` = 1,
    `data2` = 0
WHERE `entry` = 201583
  AND `type` = 0;

-- Spire Frostwyrm: movement and the low-health enrage remain encounter logic;
-- the normal combat rotation belongs to the creature spell-list system.
UPDATE `creature_template`
SET `ScriptName` = 'npc_spire_frostwyrm_icc',
    `SpellList` = 3723001
WHERE `Entry` = 37230;

-- Restore the existing rampart Frostwyrms if an earlier revision of this update
-- disabled them.
UPDATE `creature`
SET `SpawnMask` = 15
WHERE `guid` IN (@CGUID + 256, @CGUID + 260);

DELETE FROM `spawn_group_spawn` WHERE `Id` = @SGGUID + 1;
DELETE FROM `spawn_group` WHERE `Id` = @SGGUID + 1;

-- The two event Frostwyrms use the flight-start positions formerly held in
-- core. Only the record matching the instance faction is instantiated.
DELETE FROM `creature_conditional_spawn` WHERE `guid` IN (@CGUID + 489, @CGUID + 490);
DELETE FROM `creature` WHERE `guid` IN (@CGUID + 489, @CGUID + 490);
INSERT INTO `creature`
    (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`,
     `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`)
VALUES
    (@CGUID + 489, 0, 631, 0, 1, -361.154358, 2305.821289, 244.771713, 2.704335, 604800, 604800, 0, 0),
    (@CGUID + 490, 0, 631, 0, 1, -375.538879, 2120.774658, 242.256775, 3.714352, 604800, 604800, 0, 0);

INSERT INTO `creature_conditional_spawn` (`guid`, `EntryAlliance`, `EntryHorde`, `Comments`) VALUES
    (@CGUID + 489, 37230, 0, 'ICC - Alliance Spire Frostwyrm event'),
    (@CGUID + 490, 0, 37230, 'ICC - Horde Spire Frostwyrm event');

INSERT INTO `spawn_group`
    (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`)
VALUES
    (@SGGUID + 1, 'ICC - Spire Frostwyrm', 0, 2, 0, 0, 0, @STRINGID + 2);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID + 1, @CGUID + 489, -1),
(@SGGUID + 1, @CGUID + 490, -1);

DELETE FROM `creature_ai_scripts`
WHERE `creature_id` = 37230;

DELETE FROM `creature_spell_list`
WHERE `Id` = 3723001;
DELETE FROM `creature_spell_list_entry`
WHERE `Id` = 3723001;

INSERT INTO `creature_spell_list_entry`
    (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`)
VALUES
    (3723001, 'ICC - Spire Frostwyrm', 0, 0);

INSERT INTO `creature_spell_list`
    (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`,
     `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`)
VALUES
    (3723001, 0, 70362, 0, -1, 100, 0, 100, 1, 10000, 13000, 13000, 16000, 'Spire Frostwyrm - Blizzard'),
    (3723001, 1, 70361, 0, -1,   1, 0, 100, 1,  8000, 10000,  3000,  6000, 'Spire Frostwyrm - Cleave'),
    (3723001, 2, 70116, 0, -1,   1, 0, 100, 1, 13000, 15000,  6000,  9000, 'Spire Frostwyrm - Frost Breath');

-- Both trigger volumes on each faction's rampart start the same scripted event.
DELETE FROM `scripted_areatrigger`
WHERE `entry` IN (5628, 5629, 5630, 5631);
INSERT INTO `scripted_areatrigger` (`entry`, `ScriptName`)
VALUES
    (5628, 'at_rampart_skull'),
    (5629, 'at_rampart_skull'),
    (5630, 'at_rampart_skull'),
    (5631, 'at_rampart_skull');

COMMIT;
