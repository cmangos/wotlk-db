-- q.9067 9395 chaining fixes
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='9395'; -- Removes prerequisite for quest 9395 which was set incorrectly
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='9067'; -- Removes prerequisite for quest 9067 which was set incorrectly
