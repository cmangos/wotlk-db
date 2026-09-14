-- Icecrown Citadel Festergut encounter data.

UPDATE `creature_template` SET  `SpellList`=0 WHERE `Entry`=36626;
DELETE FROM `creature_spell_list` WHERE `Id`=3662601;
DELETE FROM `creature_spell_list_entry` WHERE `Id`=3662601;

-- Final tested ICC data: festergut
UPDATE `broadcast_text` SET `ChatTypeID`=1 WHERE `Id` IN (37823,37824,37825,37826,37827,37829,37843);
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id` IN (36706);
UPDATE `broadcast_text` SET `ChatTypeID`=6 WHERE `Id` IN (37830,37847);
UPDATE `broadcast_text` SET `SoundEntriesID1` = CASE `Id`
    WHEN 36706 THEN 0
    WHEN 37823 THEN 16901
    WHEN 37824 THEN 16902
    WHEN 37825 THEN 16903
    WHEN 37826 THEN 16904
    WHEN 37827 THEN 16905
    WHEN 37829 THEN 16906
    WHEN 37830 THEN 16907
    WHEN 37843 THEN 17119
    WHEN 37847 THEN 17146
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (36706,37823,37824,37825,37826,37827,37829,37830,37843,37847);

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (36626,37504,37505,37506);
DELETE FROM `creature_loot_template` WHERE `entry` IN (36626,37504,37505,37506);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(36626,49426,100,0,2,2,0,'Festergut - Emblem of Frost'),
(36626,34232,100,0,-34232,2,0,'Festergut - (ReferenceTable)'),
(37504,49426,100,0,2,2,0,'Festergut (1) - Emblem of Frost'),
(37504,49908,38,0,1,1,0,'Festergut (1) - Primordial Saronite'),
(37504,50226,-100,0,1,1,0,'Festergut (1) - Festergut''s Acidic Blood'),
(37504,50274,-38,0,1,1,0,'Festergut (1) - Shadowfrost Shard'),
(37504,34244,100,0,-34244,3,0,'Festergut (1) - (ReferenceTable)'),
(37505,49426,100,0,2,2,0,'Festergut (2) - Emblem of Frost'),
(37505,49908,38,0,1,1,0,'Festergut (2) - Primordial Saronite'),
(37505,34256,100,0,-34256,2,0,'Festergut (2) - (ReferenceTable)'),
(37506,49426,100,0,2,2,0,'Festergut (3) - Emblem of Frost'),
(37506,49908,38,0,1,1,0,'Festergut (3) - Primordial Saronite'),
(37506,50226,-100,0,1,1,0,'Festergut (3) - Festergut''s Acidic Blood'),
(37506,50274,-68,0,1,1,0,'Festergut (3) - Shadowfrost Shard'),
(37506,34268,100,0,-34268,3,0,'Festergut (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34232,34244,34256,34268);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34232,50810,0,1,1,1,0,'Gutbuster'),
(34232,50811,0,1,1,1,0,'Festering Fingerguards'),
(34232,50812,0,1,1,1,0,'Taldron''s Long Neglected Boots'),
(34232,50852,0,1,1,1,0,'Precious''s Putrid Collar'),
(34232,50858,0,1,1,1,0,'Plague-Soaked Leather Leggings'),
(34232,50859,0,1,1,1,0,'Cloak of Many Skins'),
(34232,50966,0,1,1,1,0,'Abracadaver'),
(34232,50967,0,1,1,1,0,'Festergut''s Gaseous Gloves'),
(34232,50985,0,1,1,1,0,'Wrists of Septic Shock'),
(34232,50986,0,1,1,1,0,'Signet of Putrefaction'),
(34232,50988,0,1,1,1,0,'Bloodstained Surgeon''s Shoulderguards'),
(34232,50990,0,1,1,1,0,'Kilt of Untreated Wounds'),
(34244,50035,0,1,1,1,0,'Black Bruise'),
(34244,50036,0,1,1,1,0,'Belt of Broken Bones'),
(34244,50037,0,1,1,1,0,'Fleshrending Gauntlets'),
(34244,50038,0,1,1,1,0,'Carapace of Forgotten Kings'),
(34244,50040,0,1,1,1,0,'Distant Land'),
(34244,50041,0,1,1,1,0,'Leather of Stitched Scourge Parts'),
(34244,50042,0,1,1,1,0,'Gangrenous Leggings'),
(34244,50056,0,1,1,1,0,'Plaguebringer''s Stained Pants'),
(34244,50059,0,1,1,1,0,'Horrific Flesh Epaulets'),
(34244,50060,0,1,1,1,0,'Faceplate of the Forgotten'),
(34244,50061,0,1,1,1,0,'Holiday''s Grace'),
(34244,50062,0,1,1,1,0,'Plague Scientist''s Boots'),
(34244,50063,0,1,1,1,0,'Lingering Illness'),
(34244,50064,0,1,1,1,0,'Unclean Surgical Gloves'),
(34244,50413,0,1,1,1,0,'Nerub''ar Stalker''s Cord'),
(34244,50414,0,1,1,1,0,'Might of Blight'),
(34256,51882,0,1,1,1,0,'Kilt of Untreated Wounds'),
(34256,51883,0,1,1,1,0,'Bloodstained Surgeon''s Shoulderguards'),
(34256,51884,0,1,1,1,0,'Signet of Putrefaction'),
(34256,51885,0,1,1,1,0,'Wrists of Septic Shock'),
(34256,51886,0,1,1,1,0,'Festergut''s Gaseous Gloves'),
(34256,51887,0,1,1,1,0,'Abracadaver'),
(34256,51888,0,1,1,1,0,'Cloak of Many Skins'),
(34256,51889,0,1,1,1,0,'Plague-Soaked Leather Leggings'),
(34256,51890,0,1,1,1,0,'Precious''s Putrid Collar'),
(34256,51891,0,1,1,1,0,'Taldron''s Long Neglected Boots'),
(34256,51892,0,1,1,1,0,'Festering Fingerguards'),
(34256,51893,0,1,1,1,0,'Gutbuster'),
(34268,50688,0,1,1,1,0,'Nerub''ar Stalker''s Cord'),
(34268,50689,0,1,1,1,0,'Carapace of Forgotten Kings'),
(34268,50690,0,1,1,1,0,'Fleshrending Gauntlets'),
(34268,50691,0,1,1,1,0,'Belt of Broken Bones'),
(34268,50692,0,1,1,1,0,'Black Bruise'),
(34268,50693,0,1,1,1,0,'Might of Blight'),
(34268,50694,0,1,1,1,0,'Plaguebringer''s Stained Pants'),
(34268,50695,0,1,1,1,0,'Distant Land'),
(34268,50696,0,1,1,1,0,'Leather of Stitched Scourge Parts'),
(34268,50697,0,1,1,1,0,'Gangrenous Leggings'),
(34268,50698,0,1,1,1,0,'Horrific Flesh Epaulets'),
(34268,50699,0,1,1,1,0,'Plague Scientist''s Boots'),
(34268,50700,0,1,1,1,0,'Holiday''s Grace'),
(34268,50701,0,1,1,1,0,'Faceplate of the Forgotten'),
(34268,50702,0,1,1,1,0,'Lingering Illness'),
(34268,50703,0,1,1,1,0,'Unclean Surgical Gloves');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34232,'ICC Festergut 10 Normal'),
(34244,'ICC Festergut 25 Normal'),
(34256,'ICC Festergut 10 Heroic'),
(34268,'ICC Festergut 25 Heroic');

