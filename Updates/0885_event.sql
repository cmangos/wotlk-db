-- [Love is in the Air] Questline Crushing the Crown
SET @CONDITION := 1186;
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION AND @CONDITION + 21;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(@CONDITION, 15, 5, 1),       (@CONDITION + 1, 15, 13, 2),  (@CONDITION + 2, -1, @CONDITION + 1, @CONDITION),
(@CONDITION + 3, 15, 14, 1),  (@CONDITION + 4, 15, 22, 2),  (@CONDITION + 5, -1, @CONDITION + 4, @CONDITION + 3),
(@CONDITION + 6, 15, 23, 1),  (@CONDITION + 7, 15, 31, 2),  (@CONDITION + 8, -1, @CONDITION + 7, @CONDITION + 6),
(@CONDITION + 9, 15, 32, 1),  (@CONDITION + 10, 15, 40, 2), (@CONDITION + 11, -1, @CONDITION + 10, @CONDITION + 9),
(@CONDITION + 12, 15, 41, 1), (@CONDITION + 13, 15, 50, 2), (@CONDITION + 14, -1, @CONDITION + 13, @CONDITION + 12),
(@CONDITION + 15, 15, 51, 1), (@CONDITION + 16, 15, 60, 2), (@CONDITION + 17, -1, @CONDITION + 16, @CONDITION + 15),
(@CONDITION + 18, 15, 61, 1), (@CONDITION + 19, 15, 70, 2), (@CONDITION + 20, -1, @CONDITION + 19, @CONDITION + 18),
(@CONDITION + 21, 15, 71, 1);

UPDATE quest_template SET RequiredCondition = @CONDITION + 2 WHERE entry in (24638, 24658);
UPDATE quest_template SET RequiredCondition = @CONDITION + 5 WHERE entry in (24645, 24659);
UPDATE quest_template SET RequiredCondition = @CONDITION + 8 WHERE entry in (24647, 24660);
UPDATE quest_template SET RequiredCondition = @CONDITION + 11 WHERE entry in (24648, 24662);
UPDATE quest_template SET RequiredCondition = @CONDITION + 14 WHERE entry in (24649, 24663);
UPDATE quest_template SET RequiredCondition = @CONDITION + 17 WHERE entry in (24650, 24664);
UPDATE quest_template SET RequiredCondition = @CONDITION + 20 WHERE entry in (24651, 24665);
UPDATE quest_template SET RequiredCondition = @CONDITION + 21 WHERE entry in (24652, 24666);
