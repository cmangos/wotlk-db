-- q.13633 'The Black Knight of Westfall?' - A
-- q.13634 'The Black Knight of Silverpine?' - H
-- Source won't offer this quest until you've done "The Argent Tournament"
UPDATE quest_template SET RequiredCondition = 20326 WHERE entry = 13633;
UPDATE quest_template SET RequiredCondition = 20327 WHERE entry = 13634;
DELETE FROM conditions WHERE condition_entry IN (20326,20327);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20326,8,13667,0,0,0,''), -- A
(20327,8,13668,0,0,0,''); -- H
