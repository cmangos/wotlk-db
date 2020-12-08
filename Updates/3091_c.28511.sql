-- Eye of Acherus 28511
-- shouldnt regenerate hp
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 28511;
