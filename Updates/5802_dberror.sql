-- fix db error
-- CONDITION 20109 type 9 used with bad parameters, called from DBScript engine, used with target: <nullptr>, map 571, source Creature xxx
-- Crystalline Ice Giant 26291
UPDATE creature_template SET UnitFlags = 512 WHERE entry = 26291;
