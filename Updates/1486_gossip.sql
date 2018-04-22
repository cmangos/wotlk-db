-- Added missing gossip menu options for NPC 11035 (Betina Bigglezink)
-- She is supposed to give back some items to players once quests are completed
DELETE FROM conditions WHERE condition_entry BETWEEN 1466 AND 1475;
INSERT INTO conditions VALUES
(1466, 8, 5213, 0, 'Quest ID 5213 Rewarded'),
(1467, 24, 13209, 1, 'Player Has Less Than 1 of Item ID 13209 in Inventory/Bank'),
(1468, 24, 19812, 1, 'Player Has Less Than 1 of Item ID 19812 in Inventory/Bank'),
(1469, -1, 1466, 1467, '(Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank)'),
(1470, -1, 1466, 1468, '(Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank)'),
(1471, -1, 1469, 1468, '((Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank) AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank)'),
(1472, -1, 1470, 1467, '((Quest ID 5213 Rewarded AND Player Has Less Than 1 of Item ID 19812 in Inventory/Bank) AND Player Has Less Than 1 of Item ID 13209 in Inventory/Bank)'),
(1473, 8, 4771, 0, 'Quest ID 4771 Rewarded'),
(1474, 24, 12368, 1, 'Player Has Less Than 1 of Item ID 12368 in Inventory/Bank'),
(1475, -1, 1473, 1474, '(Quest ID 4771 Rewarded AND Player Has Less Than 1 of Item ID 12368 in Inventory/Bank)');

DELETE FROM gossip_menu_option WHERE menu_id=3651;
INSERT INTO gossip_menu_option VALUES
(3651, 0, 0, 'Betina, I\'d like a another Dawn\'s Gambit please!', 1, 1, -1, 0, 365101, 0, 0, NULL, 1475),
(3651, 1, 0, 'Betina, I\'d like a replacement Seal of the Dawn please!', 1, 1, -1, 0, 365102, 0, 0, NULL, 1471),
(3651, 2, 0, 'Betina, I\'d like a replacement Rune of the Dawn please!', 1, 1, -1, 0, 365103, 0, 0, NULL, 1472);

DELETE FROM dbscripts_on_gossip WHERE id IN (365101, 365102, 365103);
INSERT INTO dbscripts_on_gossip VALUES
(365101, 0, 15, 18367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Dawn\'s Gambit'),
(365102, 0, 15, 24179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Seal of the Dawn'),
(365103, 0, 15, 24201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Rune of the Dawn');
