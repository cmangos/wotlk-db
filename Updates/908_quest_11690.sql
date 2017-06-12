-- q.11690 'Bring 'Em Back Alive' - UPDATE

-- Source item should be removed from inventory after q. completed
UPDATE quest_template SET ReqItemId1 = 34954, ReqItemCount1 = 1 WHERE entry = 11690;
