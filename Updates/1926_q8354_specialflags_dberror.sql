-- Chicken Clucking for a Mint 8354 "Event 674101 Action 2. SpecialFlags for quest entry 8354 does not include |2, Action will not have any effect."
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry` = 8354; -- tbc-db

