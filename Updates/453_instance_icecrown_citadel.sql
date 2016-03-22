-- ICC achiev criterias
-- Lower ICC
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12775,12962,13393,13394, 12776,12997,12995,12998, 12777,13080,13079,13081, 12778,13036,13035,13037);
INSERT INTO achievement_criteria_requirement VALUES
-- Achiev: Boned
(12775,18,0,0),
(12775,12,0,0),
(12962,18,0,0),
(12962,12,1,0),
(13393,18,0,0),
(13393,12,2,0),
(13394,18,0,0),
(13394,12,3,0),
-- Achiev: Full House (handled by spell)
(12776,12,0,0),
(12997,12,1,0),
(12995,12,2,0),
(12998,12,3,0),
-- Achiev: On a Boat
(12777,18,0,0),
(12777,12,0,0),
(13080,18,0,0),
(13080,12,1,0),
(13079,18,0,0),
(13079,12,2,0),
(13081,18,0,0),
(13081,12,3,0),
-- Achiev: Made a Mess
(12778,18,0,0),
(12778,12,0,0),
(13036,18,0,0),
(13036,12,1,0),
(13035,18,0,0),
(13035,12,2,0),
(13037,18,0,0),
(13037,12,3,0);

-- Plague wing
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12977,12982,12986,12967, 12984,12966,12985,12983, 12987,12968,12988,12981);
INSERT INTO achievement_criteria_requirement VALUES
-- Achiev: Flu Shot Shortage
(12977,18,0,0),
(12977,12,0,0),
(12982,18,0,0),
(12982,12,1,0),
(12986,18,0,0),
(12986,12,2,0),
(12967,18,0,0),
(12967,12,3,0),
-- Achiev: Dance with Oozes
(12984,18,0,0),
(12984,12,0,0),
(12966,18,0,0),
(12966,12,1,0),
(12985,18,0,0),
(12985,12,2,0),
(12983,18,0,0),
(12983,12,3,0),
-- Achiev: Nausea, Heartburn, Indigestion
(12987,18,0,0),
(12987,12,0,0),
(12968,18,0,0),
(12968,12,1,0),
(12988,18,0,0),
(12988,12,2,0),
(12981,18,0,0),
(12981,12,3,0);

-- Blood Wing
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (13033,12969,13034,13032, 12780,13012,13011,13013);
INSERT INTO achievement_criteria_requirement VALUES
-- Achiev: Org Whisperer
(13033,18,0,0),
(13033,12,0,0),
(12969,18,0,0),
(12969,12,1,0),
(13034,18,0,0),
(13034,12,2,0),
(13032,18,0,0),
(13032,12,3,0),
-- Achiev: Once bitten, twice shy
(12780,18,0,0),
(12780,12,0,0),
(13012,18,0,0),
(13012,12,1,0),
(13011,18,0,0),
(13011,12,2,0),
(13013,18,0,0),
(13013,12,3,0);

-- Frost Wing
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12978,12971,12979,12980, 12822,12972,12996,12989);
INSERT INTO achievement_criteria_requirement VALUES
-- Achiev: Portal Jockey
(12978,18,0,0),
(12978,12,0,0),
(12971,18,0,0),
(12971,12,1,0),
(12979,18,0,0),
(12979,12,2,0),
(12980,18,0,0),
(12980,12,3,0),
-- Achiev: All you can eat
(12822,18,0,0),
(12822,12,0,0),
(12972,18,0,0),
(12972,12,1,0),
(12996,18,0,0),
(12996,12,2,0),
(12989,18,0,0),
(12989,12,3,0);

-- Frozen Throne
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (13246,13244,13247,13245, 12823,13243,13163,13164);
INSERT INTO achievement_criteria_requirement VALUES
-- Achiev: Been Waiting a Long time
(13246,18,0,0),
(13246,12,0,0),
(13244,18,0,0),
(13244,12,1,0),
(13247,18,0,0),
(13247,12,2,0),
(13245,18,0,0),
(13245,12,3,0),
-- Achiev: Neck deep in vile
(12823,18,0,0),
(12823,12,0,0),
(13243,18,0,0),
(13243,12,1,0),
(13163,18,0,0),
(13163,12,2,0),
(13164,18,0,0),
(13164,12,3,0);


-- Creature stats
-- Stats should be the same as 37949 or 37890
UPDATE creature_template SET MinLevel=82,MaxLevel=82,FactionAlliance=21,FactionHorde=21,MinLevelHealth=107840,MaxLevelHealth=107840,MinLevelMana=91600,MaxLevelMana=91600 WHERE entry IN (38010,38136);
UPDATE creature_template SET MinLevel=82,MaxLevel=82,FactionAlliance=21,FactionHorde=21,MinLevelHealth=134810,MaxLevelHealth=134810 WHERE entry IN (38135,38009);
