-- q.11711 'Coward Delivery... Under 30 Minutes or it's Free' - UPDATE
-- q.11721 'Gammothra the Tormentor' - UPDATE

-- Source items should be removed from inventory after q. completed
UPDATE quest_template SET ReqItemId1 = 34971, ReqItemCount1 = 1 WHERE entry = 11711;
UPDATE quest_template SET ReqItemId1 = 34979, ReqItemCount1 = 1 WHERE entry = 11721;
