-- https://github.com/cmangos/wotlk-db/commit/d1c3e01c45457b8dcc05890695dff703b028e6eb#diff-c612de129f4646623bf291ddf02fdadaa1f805094cd7415cba9b16b5225ae22fR88
-- if guids do not align, compare with xyz between tbcmangos and wotlkmangos
-- Remove duplicate c.108004 -> 108001 - something went wrong here
DELETE FROM `creature` WHERE `guid` = 108004 AND `id` = 17136;
UPDATE `creature` SET `id` = 0 WHERE `guid` = 108001 AND `id` = 17136;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES (108001, 17136),(108001, 17137); -- Boulderfist Warrior, Boulderfist Mage

