-- Neither Anchorite Barada 22431 should not regenerate hp (Healed by s.39321 at point 4)
UPDATE `creature_template` SET `RegenerateStats` = 0 WHERE `entry` = 22431;
