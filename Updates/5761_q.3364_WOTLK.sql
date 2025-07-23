-- q.3364 'Scalding Mornbrew Delivery'
-- No longer timed as of patch 3.3.
-- Bobblybook on 2010/01/04 (Patch 3.3.0) - (...)It just ruins the fun.(...) - Agree
UPDATE quest_template SET LimitTime = 0, QuestFlags = 0 WHERE entry = 3364;
