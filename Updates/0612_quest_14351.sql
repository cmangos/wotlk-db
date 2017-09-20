-- Battle of Hillsbrad
-- after patch 3.3 old quest 550(Varimathras is not in Undercity anymore) was replaced by new 14351.
UPDATE quest_template SET NextQuestInChain = 14351 WHERE entry = 541;
DELETE FROM creature_questrelation WHERE id = 2215 AND quest = 550;
