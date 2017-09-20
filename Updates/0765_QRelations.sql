-- [Midsummer Fire Festival] Questline "Striking Back"
DELETE FROM conditions WHERE condition_entry BETWEEN 1148 AND 1163;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1148, 15, 22, 1), 
(1149, 15, 28, 2), 
(1150, -1, 1149, 1148),
(1151, 15, 29, 1), 
(1152, 15, 38, 2), 
(1153, -1, 1152, 1151),
(1154, 15, 39, 1), 
(1155, 15, 48, 2), 
(1156, -1, 1155, 1154),
(1157, 15, 49, 1), 
(1158, 15, 55, 2), 
(1159, -1, 1158, 1157),
(1160, 15, 56, 1), 
(1161, 15, 63, 2), 
(1162, -1, 1161, 1160),
(1163, 15, 64, 1);
UPDATE quest_template SET RequiredCondition = 1150 WHERE entry = 11917;
UPDATE quest_template SET RequiredCondition = 1153 WHERE entry = 11947;
UPDATE quest_template SET RequiredCondition = 1156 WHERE entry = 11948;
UPDATE quest_template SET RequiredCondition = 1159 WHERE entry = 11952;
UPDATE quest_template SET RequiredCondition = 1162 WHERE entry = 11953;
UPDATE quest_template SET RequiredCondition = 1163 WHERE entry = 11954;
