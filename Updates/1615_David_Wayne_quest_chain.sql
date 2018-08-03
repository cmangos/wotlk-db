/*
David Wayne quest chain
Source:
http://www.wowhead.com/quest=10676/bane-of-the-illidari#comments:id=40405
*/

-- Player must finish 2 quests first:
-- q.10665 'Fresh From the Mechanar'
-- q.10666 'The Lexicon Demonica'
-- then chain continues and new 2 quests are able to pick up
-- q.10670 'Tear of the Earthmother'
-- q.10667 'Underworld Loam'
DELETE FROM conditions WHERE condition_entry BETWEEN 1507 AND 1509;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1507, 8, 10665, 0),
(1508, 8, 10666, 0),
(1509, -1, 1508, 1507);
UPDATE quest_template SET RequiredCondition = 1509 WHERE entry = 10670;
UPDATE quest_template SET RequiredCondition = 1509 WHERE entry = 10667;

-- Player must finish 2 quests first:
-- q.10670 'Tear of the Earthmother'
-- q.10667 'Underworld Loam'
-- then chain continues and new one becomes available
-- q.10676 'Bane of the Illidari'
DELETE FROM conditions WHERE condition_entry BETWEEN 1510 AND 1512;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1510, 8, 10670, 0),
(1511, 8, 10667, 0),
(1512, -1, 1510, 1511);
UPDATE quest_template SET RequiredCondition = 1512 WHERE entry = 10676;

-- missing equipment added
UPDATE creature_template SET EquipmentTemplateId = 2 WHERE Entry = 21465;