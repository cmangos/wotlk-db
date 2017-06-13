-- q.11626 'The Emissary'
-- Source item should be removed from inventory after q. completed
UPDATE quest_template SET ReqItemId1 = 35850, ReqItemCount1 = 1 WHERE entry = 11626;
