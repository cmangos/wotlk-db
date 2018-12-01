-- Texts were cherry-picked here https://github.com/cmangos/wotlk-db/commit/1a48e7f38fea04b8e153cc9b3eb56255de67f1a5 but ported to dbscript_string instead of creature_ai_texts
-- https://github.com/cmangos/wotlk-db/commit/07e0e59a518c23731001154fabc62c63be046754#diff-b277ae07d5913955b659b85978c3a244R42491
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001392 AND 2000001401; -- ported to creature_ai_texts
DELETE FROM `dbscript_random_templates` WHERE `id` IN (10005,10006) AND `target_id` BETWEEN 2000001392 AND 2000001401;

