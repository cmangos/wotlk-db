UPDATE `item_template` SET `spellid_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE `entry` IN (966,973,980,1030,1031,1034,1036,1052,1053,1136,1149,1228,1536,1568,1588,1589,1597,1603,1619,3114,3132,3140,4149,4155,4159,4163,4169,4172,4176,4180,4182,4183,4184,4185,4186,4188,4208,4216,4219,4220,4221,4223,4267,4272,4274,4276,4277,4283,4288,5641,5657,5658,5660,5661,5662,5666,5667,5670,5671,5677,5679,5682,5683,5685,5708,5710,5711,5715,5722,5726,5727,6132,6133,8547,8764,8779,8930,8936,8938,8942,9040,9049,9051,9052,9062,9063,9064,9065,9078,9079,9080,9081,9082,9083,9096,9097,9098,9099,9129,9130,9131,9132,9133,9134,9135,9136,9150,9151,9152,9156,9157,9158,9159,9160,9161,9183,9188,9227,9228,9229,9230,17412,23689,37328);
UPDATE `item_template` SET `spellid_3` = 0, `spelltrigger_3` = 0 WHERE `entry` = 44851;
UPDATE `item_template` SET `spellid_1` = 0, `spellid_2` = 0 WHERE `entry` = 39303;
UPDATE `item_template` SET `AllowableClass` = 32767 WHERE `entry` = 17412;

-- Item (Entry: 34093) spell 44333 Haste has travel speed. -> travel speed removed
-- Item (Entry: 34096) spell 44333 Haste has travel speed. -> travel speed removed
-- Item (Entry: 34097) spell 44333 Haste has travel speed. -> travel speed removed
-- Item (Entry: 34967) has deprecated stat_type4 (41) -> converted to 45
-- Item (Entry: 34967) has deprecated stat_type5 (42) -> converted to 45

-- Table 'milling_loot_template' entry 44299 (item entry (herb)) not exist but used as loot id in DB.
UPDATE `item_template` SET `Flags` = `Flags`&~536870912 WHERE `entry` = 44299; -- https://www.wowhead.com/wotlk/item=44299/crinkly-grass

