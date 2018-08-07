-- Unbound Void Zone 21101,21620
UPDATE `creature_template` SET `UnitFlags` = 33554496, `Faction` = 370 WHERE `entry` IN (21101,21620);

-- Destroyed Sentinel 21761
UPDATE `creature_template` SET `Faction` = 16 WHERE `entry` = 21761;

