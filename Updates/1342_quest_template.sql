-- Several quests had scripts in dbscripts_on_quest_* but was not set in quest_template

-- WotlkDB needed 1 :)
UPDATE quest_template SET StartScript=790, CompleteScript = 0 WHERE entry=790; -- Sarkoth
