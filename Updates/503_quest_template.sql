-- ExclusiveGroup for quests 12182 & 12189 corrected
-- Players should be able to finish only one.
UPDATE quest_template SET ExclusiveGroup = 12182 WHERE entry IN (12182, 12189);
