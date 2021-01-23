-- Players need 4 "Demonic Rune Stone" to disrupt each of the two portals in quest "Disrupt Their Reinforcements"
UPDATE quest_template SET ReqSourceCount3 = 8 WHERE entry IN (10144, 10208);
