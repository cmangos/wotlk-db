-- Corrected Blood Elf Paladin for WotLK
-- Newly created char:
-- should have Seal of Righteousness in action bar
-- shouldnt have bread (removed in 3.3.0) 
DELETE FROM playercreateinfo_action WHERE race = 10 AND class = 2;
INSERT INTO playercreateinfo_action (race, class, button, action, type) VALUES
(10,2,0,6603,0),
(10,2,1,20154,0),
(10,2,2,635,0),
(10,2,3,28730,0);

-- q.9676 'Paladin Training'
-- quest 8325 'Reclaiming Sunstrider Isle' must be completed before this one become available
-- misiing emotes added
UPDATE quest_template SET PrevQuestId = 8325, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000, OfferRewardText = 'I see the pride swelling in your chest. Already you fancy yourself one of the Blood Knights.$B$BIn time. you will earn your place among us. But first you must learn to harness and master the powers of the Light, hone your skills at arms, and prove your worthiness.$B$BYou must be prepared to endure the derision, fear, and revulsion of those you\'re sworn to defend. So it is among those who can\'t comprehend the price of the great power that safeguards them. Keep your head high and your blade at the ready, $N.' WHERE entry = 9676;

-- q.8325 'Reclaiming Sunstrider Isle'
-- misiing emotes added
UPDATE quest_template SET OfferRewardEmote1 = 4, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8325;

-- q.8326 'Unfortunate Measures'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 4, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8326;

-- Paladins gossip updated - missing emotes added
UPDATE npc_text SET em0_0 = 1, em0_1 = 1 WHERE ID = 7904;

-- q.10068 'Well Watcher Solanian'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1 WHERE entry = 10068;

-- q.8345 'The Shrine of Dath'Remar'
-- this quest shouldnt have any prequests (available from 2nd lvl)
UPDATE quest_template SET PrevQuestId = 0, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 2 WHERE entry = 8345; 

-- q.8330 'Solanian's Belongings?'
-- quest should become available after q.10068 completed
UPDATE quest_template SET PrevQuestId = 10068, NextQuestID = 0, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, IncompleteEmote = 6, CompleteEmote = 6, OfferRewardEmote1 = 21, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8330;

-- Lynx Collar - drop corrected
-- Source: https://web.archive.org/web/20080103055003/http://wow.allakhazam.com/db/item.html?witem=20797
-- Springpaw Cub: 59.93% (30,115)
UPDATE creature_loot_template SET ChanceOrQuestChance = -59.93 WHERE entry = 15366 AND item = 20797; 
-- Springpaw Lynx: 55.84% (18,923)
UPDATE creature_loot_template SET ChanceOrQuestChance = -55.84 WHERE entry = 15372 AND item = 20797;

-- q.8336 'A Fistful of Slivers?'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 4, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8336;

-- q.8346 'Thirst Unending'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8346; 

-- Tender & Feral Tender
-- patch 3.3.0 - no longer hostile.
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7 WHERE entry IN (15271,15294);

-- q.8327 'Report to Lanthan Perilon'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 2 WHERE entry = 8327;

-- Lanthan Perilon
-- gossip added
DELETE FROM npc_gossip WHERE npc_guid = 54987;
UPDATE creature_template SET GossipMenuId = 6570 WHERE entry = 15281;  
DELETE FROM gossip_menu WHERE entry = 6570;
INSERT INTO gossip_menu VALUES
(6570, 7785, 0, 0), -- normal
(6570, 7869, 0, 1101);
DELETE FROM conditions WHERE condition_entry = 1101;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1101, 8, 8347, 0);

-- q.8334 'Aggression'
-- misiing emotes added
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 2000, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, IncompleteEmote = 1, OfferRewardEmoteDelay2 = 2000 WHERE entry = 8334;
