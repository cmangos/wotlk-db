-- Gnomeregan - Supercharge 10732, Rebuild 10345 Targets (same as 10348)
DELETE FROM `spell_script_target` WHERE `entry` IN (10732,10345) AND `targetEntry` IN (6225,6226,6227);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(10732, 1, 6225, 0), -- Mechano-Tank
(10345, 1, 6225, 0), -- Mechano-Tank
(10732, 1, 6226, 0), -- Mechano-Flamewalker
(10345, 1, 6226, 0), -- Mechano-Flamewalker
(10732, 1, 6227, 0), -- Mechano-Frostwalker
(10345, 1, 6227, 0); -- Mechano-Frostwalker
