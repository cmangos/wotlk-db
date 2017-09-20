
-- Change damage school from frost to nature on Noxxion
UPDATE creature_template SET DamageSchool = 3 WHERE entry = 13282;

-- Change damage school from frost to nature on Noxxion's Spawn
UPDATE creature_template SET DamageSchool = 3 WHERE entry = 13456;
