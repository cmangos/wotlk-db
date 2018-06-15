-- target corrected for Containment Beam
DELETE FROM spell_script_target WHERE entry=36220;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36220, 1, 18731, 0);
