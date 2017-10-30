-- all Harbinger Skyriss illusions should have 66 flags
UPDATE creature_template SET UnitFlags=66 WHERE entry IN(21600,21601);
