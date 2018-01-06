-- Netherwing qline fixes
UPDATE gameobject SET spawntimesecsmin=50, spawntimesecsmax=50 WHERE id = 185156; -- adjust spawntime of chains
UPDATE gameobject_template SET data5=1 WHERE entry IN(185156); -- on unlocking chains they should disappear

-- Quest: Investigate the Amani Catacombs (9193)
-- Mummified Troll Remains (181148) should despawn after use
UPDATE `gameobject_template` SET `data5` = 1 WHERE `entry` = 181148;

-- Correct Marsh Lurker position in Funggor Cavern (Zangarmarsh)
UPDATE creature SET position_z=41.11, orientation=5.799 WHERE guid=64845;

-- Shadow Pillager
UPDATE `creature_template` SET `modelid2`=16905, `modelid3`=16906, `modelid4`=16907 WHERE `entry`=16540;

-- Fix wrong map for Rotting Agam'ar
-- https://github.com/TrinityCore/TrinityCore/commit/577324cc1c3fdec57ea3790feb922abe0c5ab129
UPDATE `creature` SET `map`=47 WHERE `guid`=84369 AND `id`=4512;

-- Letter to Stormpike
-- https://github.com/TrinityCore/TrinityCore/issues/19141
UPDATE `quest_template` SET `PrevQuestID`=511 WHERE `entry`=514;
