-- c.22295 eligible target for Hotter than Hell q.10764
DELETE FROM `spell_script_target` WHERE `entry` = 38202 AND `targetEntry` = 22295;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(38202, 2, 22295, 0);
