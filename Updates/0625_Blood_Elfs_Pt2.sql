-- All Newly created Blood Elf classes shouldnt have bread (removed in 3.3.0)
DELETE FROM playercreateinfo_action WHERE race = 10 AND action = 20857;

-- quest 8325 'Reclaiming Sunstrider Isle' must be completed before 'Class* Training' become available
-- misiing emotes added
-- q.9676 'Paladin Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 9676;

-- q.9393 'Hunter Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 9393;

-- q.9392 'Rogue Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 9392;

-- q.8564 'Priest Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8564;

-- q.8328 'Mage Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8328;

-- q.8563 'Warlock Training'
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8563;

-- quests 'Well Watcher Solanian'
UPDATE quest_template SET NextQuestID = 8330 WHERE entry in (10068,10069,10070,10071,10072,10073);
-- q.8330 'Solanian's Belongings?' -- must be after 'Well Watcher Solanian'
UPDATE quest_template SET PrevQuestId = 0, NextQuestID = 0 WHERE entry = 8330;
