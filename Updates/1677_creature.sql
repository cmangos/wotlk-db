-- Summon Enraged Felbat 14252, Summon Enraged Wyvern 14307, Summon Enraged Gryphon 14313, Summon Enraged Hippogryph 14329, Summon Enraged Mounts 29110
UPDATE `creature_template` SET `SpeedRun` = (30 / 7), `SpeedWalk` = (2.5 / 2.5), `Rank` = 1, `PowerMultiplier` = 3, `MovementType` = 0
WHERE `entry` IN (
9297, -- Enraged Wyvern
9521, -- Enraged Felbat
9526, -- Enraged Gryphon
9527); -- Enraged Hippogryph
