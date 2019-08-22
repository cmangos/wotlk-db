-- Resolve DBScript Diff for blackrock spire
-- wotlk-db
DELETE FROM `dbscript_string` WHERE `entry` IN (
2000001236 -- 2000010060 "We're doomed!"
);

-- Add missing generic dbscript
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1133);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1133, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - STATE_USESTANDING_NOSHEATHE');

-- Handled in a more refined way in classic-db / tbc-db
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (904501,904502,909801,909802,923901,924001,924002,925701,926201,926301,926401,926501,926601,926901,969301,971701);

