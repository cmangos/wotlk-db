-- remove exclusive group, the group is for prequests (one horde one ally)
UPDATE quest_template SET ExclusiveGroup=0 WHERE entry=8280;
