-- The Etymidian quest chain
-- Remove q.12803 "Force of Nature" as requirement for q.12561 "An Issue of Trust"
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12561;

-- Make q.12803 "Force of Nature" and q.12561 "An Issue of Trust" require "Cold Weather Flying" ability.
UPDATE quest_template SET RequiredCondition = 309 WHERE entry IN (12561, 12803);

-- Make q.12805 "Salvaging Life's Strength" require q.12611 "Returned Sevenfold"
UPDATE quest_template SET PrevQuestId = 12611 WHERE entry = 12805;

-- Make q.12620 "The Lifewarden's Wrath" require completion of both q.12617 "Exterminate the Intruders" and q.12660 "Weapons of Destruction"
UPDATE quest_template SET NextQuestId = 12620 WHERE entry IN (12617, 12660);
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12620;

-- Give The Etymidian his Mana bar
UPDATE creature_template SET UnitClass = 2 WHERE entry = 28222;