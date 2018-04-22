-- Fixed availability of lead-in quests for Lunar Festival
-- There is one quest per capital that should be only available
-- in this capital yet completable in everyone

-- Created area condition for each capital city
DELETE FROM conditions WHERE condition_entry BETWEEN 1460 AND 1465;
INSERT INTO conditions VALUES
(1460, 4, 1519, 0, 'Is In Area ID: 1519'), -- Stormwind
(1461, 4, 1497, 0, 'Is In Area ID: 1497'), -- Undercity
(1462, 4, 1537, 0, 'Is In Area ID: 1537'), -- Ironforge
(1463, 4, 1637, 0, 'Is In Area ID: 1637'), -- Orgrimmar
(1464, 4, 1638, 0, 'Is In Area ID: 1638'), -- Thunderbluff
(1465, 4, 1657, 0, 'Is In Area ID: 1657'); -- Darnassus

-- Assigned correct area condition for each quest
UPDATE quest_template SET RequiredCondition=1460 WHERE entry=8871;
UPDATE quest_template SET RequiredCondition=1461 WHERE entry=8874;
UPDATE quest_template SET RequiredCondition=1462 WHERE entry=8870;
UPDATE quest_template SET RequiredCondition=1463 WHERE entry=8873;
UPDATE quest_template SET RequiredCondition=1464 WHERE entry=8875;
UPDATE quest_template SET RequiredCondition=1465 WHERE entry=8872;

-- Made these lead-in quests optional
UPDATE quest_template SET PrevQuestId=0 WHERE entry=8867;

-- Fixed completion of Lunar Festival Coin of Ancestry quests
-- Texts were missing
UPDATE quest_template SET RequestItemsText='If you are hungry, then you have come to the right place my friend! Dumplings are the traditional food of the Lunar Festival; it has been served since the time of the first Lunar Festival, and I am pleased to be able to offer it at this one.  In exchange for just a single coin of ancestry, I will share with you a sampling of one of the tastiest dishes you will ever enjoy!' WHERE entry=8863;
UPDATE quest_template SET RequestItemsText='I hold the secrets to creating Lunar Festival rockets, and I am happy to share my knowledge with the honored.$BIn exchange for coins of ancestry, I can offer you the recipe to make a small rocket...' WHERE entry=8876;
UPDATE quest_template SET RequestItemsText='Although rockets are a wonderful way to celebrate, in order to see their glory... they must be fired from a launcher.$B$BBring me coins of ancestry and I can offer you the knowledge to create rocket launchers like the ones you see in Moonglade.' WHERE entry=8877;
UPDATE quest_template SET RequestItemsText='The dresses and pant suits you see are traditional clothes from many years past.$B$BThey are worn in honor of old ways and loved ones gone. If you bring me coins of ancestry, <name>, then I will give you the pattern to create traditional red dresses or suits.' WHERE entry=8878;
UPDATE quest_template SET RequestItemsText='Large Festival rockets light up the sky brilliantly - only the cluster rockets rival their magnificence!$B$BBring me coins of ancestry, <name>, and I shall share the knowledge of their creation.' WHERE entry=8879;
UPDATE quest_template SET RequestItemsText='Cluster rockets are a collection of individual rockets, and their beauty is awesome!  Bring me coins of ancestry and I will share the knowledge of their creation to you...' WHERE entry=8880;
UPDATE quest_template SET RequestItemsText='Large cluster rockets require vast resources and skill to create, but their brilliance and beauty is worth that effort!  Bring me coins of ancestry and I will grant you the knowledge of their crafting.' WHERE entry=8881;
