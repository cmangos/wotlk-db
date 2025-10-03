-- Quests 13100, 13112, 13107, 13116, 13102, 13114 indicate the wrong number of quest auxiliary items.
UPDATE quest_template SET ReqSourceCount2=4 WHERE entry IN (13100, 13112, 13107, 13116, 13102, 13114);
