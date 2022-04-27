DELETE FROM creature_loot_template WHERE entry=28171;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(28171, 38329, -100, 0, 1, 1, 0, 'Don Carlos'' Hat'),
(28171, 38506, 100, 0, 1, 1, 0, 'Don Carlos'' Famous Hat');

-- Fix Stats for Don Carlos 28132,28171
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `entry` = 28132;
UPDATE `creature_template` SET `InhabitType` = 1, `UnitFlags` = 64, `ExtraFlags` = `ExtraFlags`|266240, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.699999809265136718 / 7), `RangedBaseAttackTime` = 2000 WHERE `entry` IN (28132,28171);

