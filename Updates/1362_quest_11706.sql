-- q.11706 'The Collapse'
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 11706;

-- event update
-- boss had flag UNIT_FLAG_IMMUNE_TO_PLAYER - fixed
DELETE FROM dbscripts_on_event WHERE id = 16929 AND delay = 20;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(16929,20,22,974,0x01 | 0x10,0,25629,100,7,0,0,0,0,0,0,0,0,'');
