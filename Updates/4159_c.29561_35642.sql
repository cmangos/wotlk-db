-- Stats

-- Scrapbot 29561 & Jeeves 35642
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 16026, MaxLevelHealth = 16026, UnitFlags = 768 WHERE entry IN (29561);

-- Jeeves 35642
-- vendor list corrected Frop 3.3.3
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 16026, MaxLevelHealth = 16026, UnitFlags = 768, VendorTemplateId = 35642 WHERE entry IN (35642);
DELETE FROM `npc_vendor` WHERE `entry` = 35642;
DELETE FROM `npc_vendor_template` WHERE `entry` = 35642;
INSERT INTO `npc_vendor_template` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `comments`) VALUES
('35642','0','5565','0','0','0','Infernal Stone'),
('35642','0','16583','0','0','0','Demonic Figurine'),
('35642','0','17020','0','0','0','Arcane Powder'),
('35642','0','17030','0','0','0','Ankh'),
('35642','0','17031','0','0','0','Rune of Teleportation'),
('35642','0','17032','0','0','0','Rune of Portals'),
('35642','0','17033','0','0','0','ymbol of Divinity'),
('35642','0','21177','0','0','0','Symbol of Kings'),
('35642','0','37201','0','0','0','Corpse Dust'),
('35642','0','41584','0','0','0','Frostbite Bullets'),
('35642','0','41586','0','0','0','Terrorshaft Arrow'),
('35642','0','44605','0','0','0','Wild Spineleaf'),
('35642','0','44614','0','0','0','Starleaf Seed'),
('35642','0','44615','0','0','0','Devout Candle');
