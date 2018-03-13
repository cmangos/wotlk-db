-- q.12698 'The Gift That Keeps On Giving' - UPDATE
-- Source item should be removed from inventory after q. completed
UPDATE quest_template SET ReqItemId1 = 0, ReqItemCount1 = 0, ReqSourceCount4 = 1 WHERE entry = 12698;
