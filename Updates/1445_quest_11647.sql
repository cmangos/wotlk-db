-- q.11647 'Neutralizing the Cauldrons'
UPDATE quest_template SET ReqSourceCount4 = 1, DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmoteDelay2 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000 WHERE entry = 11647;

-- Purifying Totem - Stats
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75, UnitFlags = 768, UnitClass = 2, Expansion = 2, MinLevelHealth = 10635, MaxLevelHealth = 10635, MinLevelMana = 3561, MaxLevelMana = 3561, Armor = 8204, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 370, MinMeleeDmg = 339, MaxMeleeDmg = 482 WHERE entry = 25494;

-- spells need target
DELETE FROM spell_script_target WHERE entry IN (45655,45656);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(45655,1,25494,0),
(45656,1,25490,0), -- east
(45656,1,25492,0), -- cental
(45656,1,25493,0); -- west

-- movement corrected for targets
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (85215,109772,109630);
