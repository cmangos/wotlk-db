-- q.11593 'The Honored Dead'
-- q. item must be removed after complete
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11593;

-- q.11938 'Buying Some Time'
-- q. item must be removed after complete
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11938;

-- q.11675 'A Proper Death'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11675;

-- q.11677 'Stop the Plague'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11677;

-- q.11909 'Defeat the Gearmaster'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11909;
