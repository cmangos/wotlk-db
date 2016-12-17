-- more emotes corrected
-- q.8347 'Aiding the Outrunners'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8347;

-- q.8338 'Tainted Arcane Sliver'
UPDATE quest_template SET OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8338;

-- q.8350 'Completing the Delivery'
UPDATE quest_template SET CompleteEmote = 2, OfferRewardEmote1 = 2, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8350;

-- q.8472 'Major Malfunction'
UPDATE quest_template SET CompleteEmote = 0 WHERE entry = 8472;

-- q.8468 'Wanted: Thaelis the Hungerer'
UPDATE quest_template SET CompleteEmote = 0, OfferRewardEmote1 = 4 WHERE entry = 8468;

-- q.8463 'Unstable Mana Crystals'
UPDATE quest_template SET CompleteEmote = 0 WHERE entry = 8463;
