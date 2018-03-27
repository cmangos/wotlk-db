-- q. item must be removed after complete
-- q.11576 'Monitoring the Rift: Cleftcliff Anomaly'
-- q.11582 'Monitoring the Rift: Sundered Chasm'
-- q.11587 'Prison Break'
-- q.11590 'Abduction'
-- q.11593 'The Honored Dead'
-- q.11648 'The Art of Persuasion'
-- q.11671 'A Race Against Time'
-- q.11677 'Stop the Plague'
-- q.11680 'Taking Wing'
-- q.11919 'Drake Hunt'
-- q.11940 'Drake Hunt'
-- q.12728 'Monitoring the Rift: Winterfin Cavern'
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry IN (11576,11582,11587,11590,11593,11648,11671,11677,11680,11919,11940,12728);

-- q.11938 'Buying Some Time'
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11938;

-- q.11610 'Leading the Ancestors Home'
-- q.11892 'The Assassination of Harold Lane'
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry IN (11610,11892);

-- q.11630 'The Bad Earth'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11630;

-- q.11640 'Words of Power'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11640;

-- q.11675 'A Proper Death'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11675;

-- q.11677 'Stop the Plague'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11677;

-- q.11898 'Breaking Through'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11898;

-- q.11909 'Defeat the Gearmaster'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11909;

-- q.11929 'The Fall of Taunka'le Village'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 25, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1 WHERE entry = 11929;

-- q.11930 'Across Transborea'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1 WHERE entry = 11930;
