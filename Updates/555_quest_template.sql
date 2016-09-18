-- quest relations
-- q.11585 'Hellscream's Vigil' -- normal
UPDATE quest_template SET ExclusiveGroup = 11585 WHERE entry = 11585; 
-- q.11586 'Hellscream's Vigil' -- after chain in nagrand
UPDATE quest_template SET PrevQuestId = 10212, ExclusiveGroup = 11585, DetailsEmote1 = 5, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmote4 = 66 WHERE entry = 11586; 

-- Fixed: DB-SCRIPTS: Process table `dbscripts_on_gossip` id 9155',' command 18 target must be creature',' but (only) source is',' use data_flags to fix
UPDATE dbscripts_on_gossip SET data_flags = 0x04 WHERE id = 9155 AND command = 18;
  