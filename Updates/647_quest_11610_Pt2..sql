-- q.11608 'Bury Those Cockroaches!' Part2.
-- quest item should be destroyed after quest completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11608;
