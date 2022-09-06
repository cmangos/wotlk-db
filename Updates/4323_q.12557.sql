-- q.12557 'Lab Work'
-- Alchemist Finklestein 28205
-- gossip
DELETE FROM `gossip_menu` WHERE `entry` = 9668;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9668, 13097, 0, 0),
(9668, 13098, 0, 485),
(9668, 13119, 0, 20465);
DELETE FROM conditions WHERE condition_entry BETWEEN 20431 AND 20467;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
-- 485 - quest 12541 taken
(20431, 2, 39668, 1, 0, 0, 0), -- item in inventory
(20432, 2, 38340, 1, 0, 0, 0), -- item in inventory
(20433, 2, 38335, 1, 0, 0, 0), -- item in inventory
(20434, 2, 39670, 1, 0, 0, 0), -- item in inventory
(20435, 2, 38346, 1, 0, 0, 0), -- item in inventory
(20436, 2, 38379, 1, 0, 0, 0), -- item in inventory
(20437, 2, 38336, 1, 0, 0, 0), -- item in inventory
(20438, 2, 38345, 1, 0, 0, 0), -- item in inventory
(20439, 2, 39669, 1, 0, 0, 0), -- item in inventory
(20440, 2, 38396, 1, 0, 0, 0), -- item in inventory
(20441, 2, 38398, 1, 0, 0, 0), -- item in inventory
(20442, 2, 38338, 1, 0, 0, 0), -- item in inventory
(20443, 2, 38386, 1, 0, 0, 0), -- item in inventory
(20444, 2, 38341, 1, 0, 0, 0), -- item in inventory
(20445, 2, 38343, 1, 0, 0, 0), -- item in inventory
(20446, 2, 38384, 1, 0, 0, 0), -- item in inventory
(20447, 2, 38397, 1, 0, 0, 0), -- item in inventory
(20448, 2, 38370, 1, 0, 0, 0), -- item in inventory
(20449, 2, 38381, 1, 0, 0, 0), -- item in inventory
(20450, 2, 38344, 1, 0, 0, 0), -- item in inventory
(20451, 2, 38337, 1, 0, 0, 0), -- item in inventory
(20452, 2, 38393, 1, 0, 0, 0), -- item in inventory
(20453, 2, 38342, 1, 0, 0, 0), -- item in inventory
(20454, 2, 38369, 1, 0, 0, 0), -- item in inventory
(20455, 2, 38339, 1, 0, 0, 0), -- item in inventory
(20456, -2, 20434, 20433, 20432, 20431, 0),
(20457, -2, 20438, 20437, 20436, 20435, 0),
(20458, -2, 20442, 20441, 20440, 20439, 0),
(20459, -2, 20446, 20445, 20444, 20443, 0),
(20460, -2, 20450, 20449, 20448, 20447, 0),
(20461, -2, 20454, 20453, 20452, 20451, 0),
(20462, -2, 20459, 20458, 20457, 20456, 0),
(20463, -2, 20461, 20460, 20455, 0, 0),
(20464, -2, 20463, 20462, 0, 0, 0),
(20465, -1, 20464, 485, 0, 0, 0),
(20466, 9, 12557, 0, 0, 0, 0),
(20467, -2, 20466, 485, 0, 0, 0);
-- objects
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100, condition_id = 485 WHERE item IN (39668,38335,39670,38379,38336,38345,39669,38396,38398,38338,38341,38343,38384,38397,38370,38381,38344,38337,38393,38342,38369); -- q.12541 'Troll Patrol: The Alchemist's Apprentice'
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100, condition_id = 20467 WHERE item IN (38386,38340,38346,38339); -- q.12557 'Lab Work' + q.12541 'Troll Patrol: The Alchemist's Apprentice'
-- pickled eagle egg hass wrong loot
DELETE FROM gameobject_loot_template WHERE entry = 24326 AND item = 38397;