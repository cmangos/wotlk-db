-- q.11656 'Burn in Effigy' - UPDATE
-- q.11661 'Orabus the Helmsman' - UPDATE

-- Source items should be removed from inventory after q. completed
UPDATE quest_template SET ReqItemId1 = 34830, ReqItemCount1 = 1 WHERE entry = 11656;
UPDATE quest_template SET ReqItemId1 = 34844, ReqItemCount1 = 1 WHERE entry = 11661;
