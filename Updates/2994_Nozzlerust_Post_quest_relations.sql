-- q.12469 'Return to Sender' not available to players if q.12044 'Stocking Up' taken or completed - breadcrumb quests
DELETE FROM conditions WHERE condition_entry = 20180;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20180, 22, 12044, 0);
UPDATE quest_template SET RequiredCondition = 20180 WHERE entry = 12469;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12044;

-- q.12049 'Hard to Swallow'
-- becomes available after q.12046 'Soft Packaging' completed
UPDATE quest_template SET PrevQuestId = 12046 WHERE entry = 12049;

-- q.12050 'Lumber Hack'
-- q.12052 'Harp on This!'
-- becomes available after q.12046 'Soft Packaging' & q.12047 'Something That Doesn't Melt' completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20181 AND 20183;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20181, 8, 12046, 0),
(20182, 8, 12047, 0),
(20183, -1, 20182, 20181);
UPDATE quest_template SET RequiredCondition = 20183 WHERE entry = 12050;
UPDATE quest_template SET RequiredCondition = 20183 WHERE entry = 12052;

-- q.12112 'Stiff Negotiations'
-- becomes available after q.12050 'Lumber Hack' & q.12052 'Harp on This!' completed
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12112;
DELETE FROM conditions WHERE condition_entry BETWEEN 20113 AND 20115;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20113, 8, 12050, 0),
(20114, 8, 12052, 0),
(20115, -1, 20114, 20113);
UPDATE quest_template SET RequiredCondition = 20115, PrevQuestId = 0 WHERE entry = 12112;
