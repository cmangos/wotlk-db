-- North Fleet Marine
UPDATE creature_template SET PickpocketLootId = 23983 WHERE entry = 23983;

DELETE FROM creature_loot_template WHERE entry = 23983;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(23983, 26000, 3, 1, -26000, 1, 0,''),
(23983, 26001, 3, 1, -26001, 1, 0,''),
(23983, 26003, 1, 1, -26003, 1, 0,''),
(23983, 26004, 1, 1, -26004, 1, 0,''),
(23983, 26017, 0.5, 1, -26017, 1, 0,''),
(23983, 26018, 0.5, 1, -26018, 1, 0,''),
(23983, 26044, 2, 0, -26044, 1, 0,''),
(23983, 33470, 21, 0, 1, 4, 0,'Frostweave Cloth'),
(23983, 33449, 7, 0, 1, 1, 0,'Crusty Flatbread'),
(23983, 33444, 4, 0, 1, 1, 0,'Pungent Seal Whey');

DELETE FROM pickpocketing_loot_template WHERE entry = 23983;
INSERT INTO pickpocketing_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(23983, 43575, 3, 0, 1, 1, 0,'Reinforced Junkbox'),
(23983, 37467, 2, 0, 1, 1, 0,'A Steamy Romance Novel: Forbidden Love'),
(23983, 29448, 1.2, 0, 1, 1, 0,'Mag\'har Mild Cheese'),
(23983, 38261, 0.9, 0, 1, 1, 0,'Bent House Key'),
(23983, 29450, 0.8, 0, 1, 1, 0,'Telaari Grapes'),
(23983, 33447, 0.6, 0, 1, 1, 0,'Runic Healing Potion'),
(23983, 33449, 0.5, 0, 1, 1, 0,'Crusty Flatbread');
