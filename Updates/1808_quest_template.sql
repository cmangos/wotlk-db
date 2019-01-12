-- Fix all quest items not destroyed after q. completed
-- Quests that wont destroy source .. shouldnt have anything in ReqSourceIdX
-- Classic quest may work in diff way... not sure
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE ReqSourceId1 > 1 AND entry > 9666;
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE ReqSourceId2 > 1 AND entry > 9666;
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE ReqSourceId3 > 1 AND entry > 9666;
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE ReqSourceId4 > 1 AND entry > 9666;

-- Few Exceptions
UPDATE quest_template SET ReqSourceCount1 = 4 WHERE entry = 10566;
UPDATE quest_template SET ReqSourceCount1 = 3 WHERE entry IN (10723,10802);
UPDATE quest_template SET ReqSourceCount2 = 100 WHERE entry = 11227;
UPDATE quest_template SET ReqSourceCount4 = 2 WHERE entry = 12720;
