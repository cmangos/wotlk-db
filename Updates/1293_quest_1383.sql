-- Nothing But The Truth (1383) changed requirements in 2.3
-- no longer need the Deepstrider Tumor (the item was replaced by Green Whelp Blood)
UPDATE item_template SET name='Green Whelp Blood', displayid=47459 WHERE entry=6082;
UPDATE creature_loot_template SET comments='Green Whelp Blood' WHERE entry=741 AND item=6082;
UPDATE quest_template SET
Objectives='Apothecary Faustin at Beggar\'s Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and some Green Whelp Blood.',
OfferRewardText='That Infiltrator in Stonard will surely.... open up... after he drinks my special serum. Haha!$b$bThe ingredients required are by no means easy to procure. Shadow Panthers are common in the Swamp but collecting enough hearts for our purpose can be daunting. And the Mire Lord can be such a fussy beast.$b$b'
WHERE entry=1383;
