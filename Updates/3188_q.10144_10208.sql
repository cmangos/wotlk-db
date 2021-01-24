-- Players need 8 "Demonic Rune Stone" to disrupt each of the two portals in quest "Disrupt Their Reinforcements"
-- Source: wdb questcache 335 : ReqSourceIdMaxCount = 8
UPDATE quest_template SET ReqSourceCount3 = 8 WHERE entry IN (10144, 10208);
