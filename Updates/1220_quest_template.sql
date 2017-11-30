-- Fixed issue with quests showing completed after accepted

UPDATE quest_template SET ReqSourceId1 = ReqItemId1, ReqSourceCount1 = ReqItemCount1, ReqItemId1 = 0, ReqItemCount1 = 0 WHERE entry IN
(974,1471,1474,1504,1513,1689,1739,1795,8490,8746,8762,9582,9619,10651,10946,11626,11661,11905,12686);
