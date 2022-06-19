-- q.1474 'The Binding'
-- spell target corrected
DELETE FROM spell_script_target WHERE `entry`=9221;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(9221, 0, 37097, 0);
