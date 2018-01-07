-- q.11711 'Coward Delivery... Under 30 Minutes or it's Free' - UPDATE
-- q.11721 'Gammothra the Tormentor' - UPDATE
-- autocomplete fixed
UPDATE quest_template SET ReqItemId1 = 0, ReqItemCount1 = 0,  ReqSourceCount4 = 1 WHERE entry = 11711;
UPDATE quest_template SET ReqItemId1 = 34980, ReqItemCount1 = 1,  ReqSourceCount4 = 1 WHERE entry = 11721;
