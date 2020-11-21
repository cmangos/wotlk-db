-- Instance: The Ruby Sanctum - Updates
-- NOTE -- all DamageMultipliers may not be correct - need more research

-- General Zarithrian 39746
UPDATE creature_template SET DifficultyEntry1 = 39805, DamageMultiplier = 80.6, MinLootGold = 600000, MaxLootGold = 700000, MechanicImmuneMask = 617299839 WHERE entry = 39746;
UPDATE creature_template SET UnitFlags = 33587520, MinLevel = 83, MaxLevel = 83, Faction = 16, DamageMultiplier = 160.4, MinLootGold = 1500000, MaxLootGold = 1750000, MechanicImmuneMask = 617299839, EquipmentTemplateId = 1764, VisibilityDistanceType = 4 WHERE entry = 39805;

-- Saviana Ragefire 39747
UPDATE creature_template SET DifficultyEntry1 = 39823, DamageMultiplier = 90.5, MinLootGold = 600000, MaxLootGold = 700000, MechanicImmuneMask = 617299839 WHERE entry = 39747;
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, Faction = 103, DamageMultiplier = 141.7, MinLootGold = 1500000, MaxLootGold = 1750000, MechanicImmuneMask = 617299839, VisibilityDistanceType = 4 WHERE entry = 39823;

-- Baltharus the Warborn 39751
UPDATE creature_template SET MovementType = 2 WHERE entry = 39751;
UPDATE creature_template SET DifficultyEntry1 = 39920, DamageMultiplier = 101.6, MinLootGold = 600000, MaxLootGold = 700000, MechanicImmuneMask = 617299839, MovementType = 2 WHERE entry = 39751;
UPDATE creature_template SET DifficultyEntry1 = 39922, DamageMultiplier = 101.6, MechanicImmuneMask = 617299839, VisibilityDistanceType = 4 WHERE entry = 39899; -- clone
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, Faction = 103, DamageMultiplier = 129.3, MinLootGold = 1500000, MaxLootGold = 1750000, MechanicImmuneMask = 617299839, EquipmentTemplateId = 1568, VisibilityDistanceType = 4 WHERE entry = 39920;
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, Faction = 103, DamageMultiplier = 129.3, MechanicImmuneMask = 617299839, EquipmentTemplateId = 1568, VisibilityDistanceType = 4 WHERE entry = 39922;

-- Charscale Invoker 40417
UPDATE creature_template SET UnitClass = 8, DifficultyEntry1 = 40418, DamageMultiplier = 56 WHERE entry = 40417;
UPDATE creature_template SET MinLevel = 82, MaxLevel = 82, Faction = 103, SpeedWalk = 1.6, DamageMultiplier = 90.2, EquipmentTemplateId = 2289 WHERE entry = 40418;

-- Charscale Assaulter 40419
UPDATE creature_template SET DifficultyEntry1 = 40420, DamageMultiplier = 56 WHERE entry = 40419;
UPDATE creature_template SET MinLevel = 82, MaxLevel = 82, Faction = 103, SpeedWalk = 1.6, DamageMultiplier = 90.2, EquipmentTemplateId = 1906 WHERE entry = 40420;

-- Charscale Elite 40421
UPDATE creature_template SET DifficultyEntry1 = 40422, DamageMultiplier = 70.9 WHERE entry = 40421;
UPDATE creature_template SET MinLevel = 82, MaxLevel = 82, Faction = 103, SpeedWalk = 1.6, DamageMultiplier = 98.6, EquipmentTemplateId = 2290 WHERE entry = 40422;

-- Charscale Commander 40423
UPDATE creature_template SET DifficultyEntry1 = 40424, DamageMultiplier = 50.9 WHERE entry = 40423;
UPDATE creature_template SET MinLevel = 82, MaxLevel = 82, Faction = 103, SpeedWalk = 1.6, DamageMultiplier = 98.6, EquipmentTemplateId = 2291 WHERE entry = 40424;

-- Ruby Drakonid 40626
-- Ruby Drake 40627
-- Ruby Scalebane 40628
UPDATE creature_template SET UnitFlags = 33555200 WHERE Entry IN (40626,40627,40628);

-- Halion (all versions)
UPDATE creature_template SET DamageMultiplier = 71.7, MechanicImmuneMask = 617299839, MinLootGold = 2000000, MaxLootGold = 2250000, LootId = 39863 WHERE Entry = 39863; -- 10 normal
UPDATE creature_template SET DamageMultiplier = 217.5, MechanicImmuneMask = 617299839, MinLootGold = 2000000, MaxLootGold = 2250000, LootId = 39864 WHERE Entry = 39864; -- 25 normal
UPDATE creature_template SET DamageMultiplier = 102.2, MechanicImmuneMask = 617299839, MinLootGold = 2000000, MaxLootGold = 2250000, LootId = 39944 WHERE Entry = 39944; -- 10 heroic
UPDATE creature_template SET DamageMultiplier = 385.4, MechanicImmuneMask = 617299839, MinLootGold = 2000000, MaxLootGold = 2250000, LootId = 39945 WHERE Entry = 39945; -- 25 heroic
-- his other versions
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, DamageMultiplier = 71.7, MechanicImmuneMask = 617299839 WHERE entry = 40142;
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, DamageMultiplier = 217.5, MechanicImmuneMask = 617299839 WHERE entry = 40143;
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, DamageMultiplier = 102.2, MechanicImmuneMask = 617299839 WHERE entry = 40144;
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, DamageMultiplier = 385.4, MechanicImmuneMask = 617299839 WHERE entry = 40145;
-- Loot Reconstructed
-- 10 normal
DELETE FROM creature_loot_template WHERE entry IN (39863,39864,39944,39945);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(39863,53110,0,1,1,1,0,'Zarithrian\'s Offering'),
(39863,53114,0,1,1,1,0,'Gloaming Sark'),
(39863,53119,0,2,1,1,0,'Boots of Divided Being'),
(39863,53111,0,1,1,1,0,'Scion\'s Treads'),
(39863,53103,0,1,1,1,0,'Baltharus\' Gift'),
(39863,53117,0,2,1,1,0,'Changeling Gloves'),
(39863,53113,0,1,1,1,0,'Twilight Scale Shoulders'),
(39863,53112,0,1,1,1,0,'Bracers of the Heir'),
(39863,53116,0,2,1,1,0,'Saviana\'s Tribute'),
(39863,53118,0,2,1,1,0,'Misbegotten Belt'),
(39863,53121,0,2,1,1,0,'Surrogate Belt'),
(39863,53115,0,2,1,1,0,'Abduction\'s Cover'),
-- 10 heroic
(39944,54567,0,1,1,1,0,'Zarithrian\'s Offering'),
(39944,54561,0,1,1,1,0,'Gloaming Sark'),
(39944,54558,0,2,1,1,0,'Boots of Divided Being'),
(39944,54564,0,1,1,1,0,'Scion\'s Treads'),
(39944,54557,0,1,1,1,0,'Baltharus\' Gift'),
(39944,54560,0,2,1,1,0,'Changeling Gloves'),
(39944,54566,0,1,1,1,0,'Twilight Scale Shoulders'),
(39944,54559,0,1,1,1,0,'Bracers of the Heir'),
(39944,54563,0,2,1,1,0,'Saviana\'s Tribute'),
(39944,54562,0,2,1,1,0,'Misbegotten Belt'),
(39944,54565,0,2,1,1,0,'Surrogate Belt'),
(39944,54556,0,2,1,1,0,'Abduction\'s Cover'),
-- 25 normal
(39864,53489,0,1,1,1,0,'Cloak of Burning Dusk'),
(39864,53134,0,3,1,1,0,'Phaseshifter\'s Bracers'),
(39864,53490,0,3,1,1,0,'Ring of Phased Regeneration'),
(39864,53486,0,1,1,1,0,'Bracers of Fiery Night'),
(39864,53129,0,2,1,1,0,'Treads of Impending Resurrection'),
(39864,53125,0,2,1,1,0,'Apocalypse\'s Advance'),
(39864,53126,0,1,1,1,0,'Umbrage Armbands'),
(39864,54571,0,2,1,1,0,'Petrified Twilight Scale'),
(39864,53133,0,3,1,1,0,'Signet of Twilight'),
(39864,54572,0,3,1,1,0,'Charred Twilight Scale'),
(39864,53127,0,1,1,1,0,'Returning Footfalls'),
(39864,53487,0,1,1,1,0,'Foreshadow Steps'),
(39864,54573,0,3,1,1,0,'Glowing Twilight Scale'),
(39864,54569,0,3,1,1,0,'Sharpened Twilight Scale'),
(39864,53132,0,2,1,1,0,'Penumbra Pendant'),
(39864,53488,0,2,1,1,0,'Split Shape Belt'),
-- 25 heroic
(39945,54583,0,1,1,1,0,'Cloak of Burning Dusk'),
(39945,54584,0,3,1,1,0,'Phaseshifter\'s Bracers'),
(39945,54585,0,3,1,1,0,'Ring of Phased Regeneration'),
(39945,54582,0,1,1,1,0,'Bracers of Fiery Night'),
(39945,54579,0,2,1,1,0,'Treads of Impending Resurrection'),
(39945,54578,0,2,1,1,0,'Apocalypse\'s Advance'),
(39945,54580,0,1,1,1,0,'Umbrage Armbands'),
(39945,54591,0,3,1,1,0,'Petrified Twilight Scale'),
(39945,54576,0,3,1,1,0,'Signet of Twilight'),
(39945,54588,0,3,1,1,0,'Charred Twilight Scale'),
(39945,54577,0,1,1,1,0,'Returning Footfalls'),
(39945,54586,0,1,1,1,0,'Foreshadow Steps'),
(39945,54589,0,3,1,1,0,'Glowing Twilight Scale'),
(39945,54590,0,3,1,1,0,'Sharpened Twilight Scale'),
(39945,54581,0,2,1,1,0,'Penumbra Pendant'),
(39945,54587,0,2,1,1,0,'Split Shape Belt');
