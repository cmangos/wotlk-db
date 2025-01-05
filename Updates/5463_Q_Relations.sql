-- Quest Relations

-- q.13172 'Seeds of Chaos'
-- q.13174 'Amidst the Confusion'
-- available after quests 13169 13170 13171 rewarded
UPDATE quest_template SET RequiredCondition = 20848 WHERE entry IN (13172,13174);
DELETE FROM conditions WHERE condition_entry BETWEEN 20845 AND 20848;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20845,8,13169,0,0,0,''),
(20846,8,13170,0,0,0,''),
(20847,8,13171,0,0,0,''),
(20848,-1,20847,20846,20845,0,'');

-- q.13155 'Vereth the Cunning'
-- available after quests 13172 13174 rewarded
UPDATE quest_template SET RequiredCondition = 20851 WHERE entry IN (13155);
DELETE FROM conditions WHERE condition_entry BETWEEN 20849 AND 20851;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20849,8,13172,0,0,0,''),
(20850,8,13174,0,0,0,''),
(20851,-1,20850,20849,0,0,'');

-- q.13161 'The Rider of the Unholy'
-- q.13162 'The Rider of Frost'
-- q.13163 'The Rider of Blood'
-- available after quests 13146 13147 13160 rewarded
UPDATE quest_template SET RequiredCondition = 20855 WHERE entry IN (13161,13162,13163);
DELETE FROM conditions WHERE condition_entry BETWEEN 20852 AND 20855;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20852,8,13146,0,0,0,''),
(20853,8,13147,0,0,0,''),
(20854,8,13160,0,0,0,''),
(20855,-1,20854,20853,20852,0,'');

-- q.13164 'The Fate of Bloodbane'
-- available after quests 13161 13162 13163 rewarded
UPDATE quest_template SET RequiredCondition = 20859 WHERE entry IN (13164);
DELETE FROM conditions WHERE condition_entry BETWEEN 20856 AND 20859;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20856,8,13161,0,0,0,''),
(20857,8,13162,0,0,0,''),
(20858,8,13163,0,0,0,''),
(20859,-1,20858,20857,20856,0,'');
