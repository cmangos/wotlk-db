--Honor the flame reward money fix
UPDATE quest_template SET RewOrReqMoney = 8 WHERE (entry BETWEEN 11804 AND 11863) OR (entry BETWEEN 13485 AND 13500) OR (entry IN (11583, 11584));
--Desecreate this Fire! money fix
UPDATE quest_template SET RewOrReqMoney = 15 WHERE (entry BETWEEN 11734 AND 11787) OR (entry BETWEEN 11799 AND 11803) OR (entry BETWEEN 13440 AND 13447) OR (entry IN (11580, 11581, 11732, 13449, 13450, 13451, 13453, 13454, 13455, 13457, 13458));
