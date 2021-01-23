-- Players need 4 "Demonic Rune Stone" to disrupt portals in quest "Disrupt Their Reinforcements"
UPDATE quest_template SET ReqSourceCount3 = 4 WHERE entry IN (10144, 10208);
