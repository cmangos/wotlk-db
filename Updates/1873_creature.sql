-- Enslaved Proto-Drake 24083
UPDATE creature_template SET InhabitType = 3 WHERE Entry = 24083;
-- accessory removed
DELETE FROM vehicle_accessory WHERE vehicle_entry = 24083;
-- spell target corrected
DELETE FROM spell_script_target WHERE entry = 43664;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43664, 1, 24083, 0);
