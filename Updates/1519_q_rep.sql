-- Repeatable quests for Aldor/Scryers should be available from 0/3000
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN(10412,10414,10415,10325,10326,10327);
