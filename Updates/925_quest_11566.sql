-- q.11566 'Surrender... Not!' - UPDATE
-- Source items should be removed from inventory after q. completed
UPDATE quest_template SET  ReqSourceCount1 = 1 WHERE entry = 11566;
