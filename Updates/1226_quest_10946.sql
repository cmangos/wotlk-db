-- Fix required creature kill credit for quest 10946
UPDATE quest_template SET ReqCreatureOrGOId1=22850, ReqCreatureOrGOCount1=1 WHERE entry=10946;
