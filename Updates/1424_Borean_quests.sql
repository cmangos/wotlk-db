-- q. item must be removed after complete
-- q.11576 'Monitoring the Rift: Cleftcliff Anomaly'
-- q.11582 'Monitoring the Rift: Sundered Chasm'
-- q.11587 'Prison Break'
-- q.11590 'Abduction'
-- q.11593 'The Honored Dead'
-- q.11648 'The Art of Persuasion'
-- q.11653 'Hah... You're Not So Big Now!'
-- q.11671 'A Race Against Time'
-- q.11677 'Stop the Plague'
-- q.11680 'Taking Wing'
-- q.11712 'Re-Cursive'
-- q.11730 'Master and Servant'
-- q.11919 'Drake Hunt'
-- q.11940 'Drake Hunt'
-- q.12728 'Monitoring the Rift: Winterfin Cavern'
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry IN (11576,11582,11587,11590,11593,11648,11653,11671,11677,11680,11712,11730,11919,11940,12728);

-- q.11889 'Death From Above'
-- q.11913 'Take No Chances'
-- q.11938 'Buying Some Time'
-- q.12035 'Repurposed Technology'
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry IN (11889,11913,11938,12035);

-- q.11723 'Deploy the Shake-n-Quake!'
-- q.11728 'Lupus Pupus'
-- q.11897 'Plug the Sinkholes'
UPDATE quest_template SET ReqSourceCount3 = 1 WHERE entry IN (11723,11728,11897);

-- q.11610 'Leading the Ancestors Home'
-- q.11794 'The Hunt is On'
-- q.11796 'Emergency Protocol: Section 8.2, Paragraph D'
-- q.11892 'The Assassination of Harold Lane'
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry IN (11610,11794,11796,11892);


-- Emotes

-- q.11630 'The Bad Earth'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11630;

-- q.11640 'Words of Power'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11640;

-- q.11672 'Enlistment Day'
UPDATE quest_template SET CompleteEmote = 66 WHERE entry = 11672;

-- q.11675 'A Proper Death'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11675;

-- q.11677 'Stop the Plague'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11677;

-- q.11727 'A Time for Heroes'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000 WHERE entry = 11727;

-- q.11898 'Breaking Through'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11898;

-- q.11909 'Defeat the Gearmaster'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11909;

-- q.11929 'The Fall of Taunka'le Village'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 25, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1 WHERE entry = 11929;

-- q.11930 'Across Transborea'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1 WHERE entry = 11930;
