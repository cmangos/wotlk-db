-- Icecrown Citadel: restore the alternating Upper Spire Coldflame Jets.

START TRANSACTION;

DELETE FROM `scripted_areatrigger` WHERE `entry` IN (5649,5698);
INSERT INTO `scripted_areatrigger` (`entry`,`ScriptName`) VALUES
(5649,'at_icecrown_citadel'),
(5698,'at_icecrown_citadel');

-- Use the instance-aware ScriptDevAI implementation as the single owner of
-- the jet cycle instead of the conflicting legacy ACID on-spawn cast.
DELETE FROM `creature_ai_scripts`
WHERE `creature_id`=37744;

UPDATE `creature_template`
SET `AIName`='',
    `ScriptName`='npc_frost_freeze_trap',
    -- Keep all twelve emitters updating after their grids have loaded.
    `ExtraFlags`=`ExtraFlags` | 4096
WHERE `Entry`=37744;

-- The emitters are embedded in corridor walls. Ignore line of sight for both
-- the activation and damage cone, matching the reference implementation.
UPDATE `spell_template`
SET `AttributesEx2`=`AttributesEx2` | 4
WHERE `Id` IN (70460,70461);

-- Bound each activation to ten seconds before the next alternating pulse.
UPDATE `spell_template`
SET `DurationIndex`=1
WHERE `Id`=70460;

COMMIT;
