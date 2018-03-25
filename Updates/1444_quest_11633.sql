-- q.11633 'Blending In'
UPDATE quest_template SET ReqSourceCount4 = 1, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11633;

-- movement corrected
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (85121,85206,107628);
UPDATE creature SET position_z = 136.32 WHERE guid = 85206;
-- Addon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (25471,25472,25473));
DELETE FROM creature_template_addon WHERE entry IN (25471,25472,25473);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25471,0,0,1,0,0,0,47749),
(25472,0,0,1,0,0,0,47749),
(25473,0,0,1,0,0,0,47749);
