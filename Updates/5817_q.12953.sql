-- q.12953 'Valkyrion Must Burn'
-- Valkyrion Harpoon Gun 30066
-- UPDATE creature_template SET StaticFlags1 = 34603264, StaticFlags2 = 1077936160, StaticFlags3 = 8421376 WHERE Entry IN (30066);
UPDATE creature_template SET UnitFlags = 0, StaticFlags1 = 0, StaticFlags2 = 0x00000400, StaticFlags3 = 0 WHERE Entry IN (30066);
-- Dry Haystack 30096
UPDATE creature_template SET StaticFlags1 = 0x80000000 WHERE Entry IN (30096);
DELETE FROM dbscripts_on_spell WHERE id IN (55896);
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (55934);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(55934, 1, 30096, 0);
