-- Quests 'Quell the Silverwing Usurpers' Removed with TBC Release
DELETE FROM creature_questrelation WHERE quest IN (7789,7874,7875,7876,8294,8295); 
DELETE FROM creature_involvedrelation WHERE quest IN (7789,7874,7875,7876,8294,8295);
