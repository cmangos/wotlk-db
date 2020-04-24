-- add required item as per sniff for vengeful harbinger
UPDATE quest_template SET SrcItemId = 30527, SrcItemCount = 1, ReqItemId1 = 30527, ReqItemCount1 = 1 WHERE entry IN(10842);
UPDATE gameobject SET animprogress = 100 WHERE id = 184830;
