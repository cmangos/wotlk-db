-- PoS and HoR - DB updates
UPDATE creature_template SET MinLevel=80, MaxLevel=80, FactionAlliance=974, FactionHorde=974, MinLevelHealth=5342, MaxLevelHealth=5342 WHERE entry=20061;
UPDATE creature SET curhealth=5342 WHERE id=20061;
-- Jaina
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33600, MinLevelHealth=5040000, MaxLevelHealth=5040000, MinLevelMana=881400, MaxLevelMana=881400 WHERE entry=37221;
-- LK for encounter
UPDATE creature_template SET MinLevel=83, MaxLevel=83, MinLevelHealth=20917500, MaxLevelHealth=20917500 WHERE entry=36954;
-- LK for intro
UPDATE creature_template SET FactionAlliance=2102, FactionHorde=2102, UnitFlags=768 WHERE entry=37226;
-- Falric & Marwyn
UPDATE creature_template SET UnitFlags=832 WHERE entry IN (38113,38112);
-- Soldiers
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33555264 WHERE entry=38173;
UPDATE creature_template SET UnitFlags=33555264 WHERE entry IN (38172,38177,38175,38176);
-- Wall
UPDATE creature_template SET MinLevel=60, MaxLevel=60, UnitFlags=33555200, MinLevelHealth=4120, MaxLevelHealth=4120 WHERE entry=37014;
-- Triggers
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=33555200, MinLevelHealth=12600, MaxLevelHealth=12600 WHERE entry=37704;
UPDATE creature SET curhealth=12600 WHERE id=37704;
UPDATE creature SET curhealth=4120 WHERE id=37014;
