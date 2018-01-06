-- Fix Cipher of Damnation script attack initiation
-- Enraged totems
UPDATE creature_template SET NpcFlags=2, UnitFlags=768, FactionAlliance=35, FactionHorde=35 WHERE entry in(21073,21097,21109,21116); -- fix attackability
DELETE FROM spell_script_target WHERE entry IN(36035); -- target only enraged spirits
INSERT INTO spell_script_target VALUES
(36035,1,21050,0),
(36035,1,21061,0),
(36035,1,21059,0),
(36035,1,21060,0);

-- The Cipher of Damnation 10588
UPDATE creature_template SET MinLevel=70,MaxLevel=70 WHERE entry IN(21685,21687,21686);
UPDATE creature_template SET MinLevelHealth=20250,MaxLevelHealth=20250 WHERE entry=21685;
UPDATE creature_template SET MinLevelHealth=16200,MaxLevelHealth=16200 WHERE entry=21686;
UPDATE creature_template SET MinLevelHealth=55888,MaxLevelHealth=55888 WHERE entry=21687;
