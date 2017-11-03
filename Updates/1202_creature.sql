-- Void Conduit - should not regenerate health
UPDATE creature_template SET RegenerateStats=2 WHERE entry IN(20899);
