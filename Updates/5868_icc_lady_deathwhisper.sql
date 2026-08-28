-- Icecrown Citadel: Lady Deathwhisper phase spell lists.

START TRANSACTION;

UPDATE `creature_template`
SET `SpellList` = 3685501
WHERE `Entry` = 36855;

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3685501, 3685502);

DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3685501, 3685502);

INSERT INTO `creature_spell_list_entry`
    (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`)
VALUES
    (3685501, 'Icecrown Citadel - Lady Deathwhisper - phase one', 0, 0),
    (3685502, 'Icecrown Citadel - Lady Deathwhisper - phase two', 0, 0);

INSERT INTO `creature_spell_list`
    (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`,
     `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`,
     `RepeatMin`, `RepeatMax`, `Comments`)
VALUES
    (3685501, 0, 71254, 0, -1, 100, 0, 100, 1, 0, 0, 2000, 3000,
     'Lady Deathwhisper phase one - Shadow Bolt'),
    (3685501, 1, 71001, 0, -1, 100, 0, 100, 1, 20000, 20000, 20000, 20000,
     'Lady Deathwhisper phase one - Death and Decay'),
    (3685502, 0, 71001, 0, -1, 100, 0, 100, 1, 20000, 20000, 20000, 20000,
     'Lady Deathwhisper phase two - Death and Decay'),
    (3685502, 1, 71204, 0, -1, 1, 0, 100, 1, 1000, 1000, 7000, 7000,
     'Lady Deathwhisper phase two - Touch of Insignificance'),
    (3685502, 2, 71420, 0, -1, 100, 0, 100, 1, 5000, 5000, 12000, 12000,
     'Lady Deathwhisper phase two - Frostbolt'),
    (3685502, 3, 72905, 0, -1, 2, 0, 100, 1, 20000, 20000, 20000, 20000,
     'Lady Deathwhisper phase two - Frostbolt Volley');

COMMIT;

-- Final tested ICC data: deathwhisper
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(38125,'All part of the Master\'s plan.... Your end is inevitable....','',1,0,0,0,0,16871,0,0,0,0,0,0,0,12340),
(38130,'Take this blessing and show these intruders a taste of the Master\'s power!','',1,0,0,0,0,16873,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (38122,38123,38124,38125,38126,38127,38128,38130,38132,38133,38134,38135,38136,38137,38138,38139,38140);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 38122 THEN 16868
    WHEN 38123 THEN 16869
    WHEN 38124 THEN 16870
    WHEN 38125 THEN 16871
    WHEN 38126 THEN 16877
    WHEN 38127 THEN 16876
    WHEN 38128 THEN 16872
    WHEN 38130 THEN 16873
    WHEN 38132 THEN 16874
    WHEN 38133 THEN 16875
    WHEN 38134 THEN 16878
    WHEN 38135 THEN 17268
    WHEN 38136 THEN 17269
    WHEN 38137 THEN 17270
    WHEN 38138 THEN 17271
    WHEN 38139 THEN 17272
    WHEN 38140 THEN 17273
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (38122,38123,38124,38125,38126,38127,38128,38130,38132,38133,38134,38135,38136,38137,38138,38139,38140);

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (36855,38106,38296,38297);
DELETE FROM `creature_loot_template` WHERE `entry` IN (36855,38106,38296,38297);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(36855,49426,100,0,2,2,0,'Lady Deathwhisper - Emblem of Frost'),
(36855,34231,100,0,-34231,2,0,'Lady Deathwhisper - (ReferenceTable)'),
(38106,49426,100,0,2,2,0,'Lady Deathwhisper (1) - Emblem of Frost'),
(38106,49908,38,0,1,1,0,'Lady Deathwhisper (1) - Primordial Saronite'),
(38106,50274,-38,0,1,1,0,'Lady Deathwhisper (1) - Shadowfrost Shard'),
(38106,34243,100,0,-34243,3,0,'Lady Deathwhisper (1) - (ReferenceTable)'),
(38296,49426,100,0,2,2,0,'Lady Deathwhisper (2) - Emblem of Frost'),
(38296,49908,38,0,1,1,0,'Lady Deathwhisper (2) - Primordial Saronite'),
(38296,34255,100,0,-34255,2,0,'Lady Deathwhisper (2) - (ReferenceTable)'),
(38297,49426,100,0,2,2,0,'Lady Deathwhisper (3) - Emblem of Frost'),
(38297,49908,38,0,1,1,0,'Lady Deathwhisper (3) - Primordial Saronite'),
(38297,50274,-68,0,1,1,0,'Lady Deathwhisper (3) - Shadowfrost Shard'),
(38297,34267,100,0,-34267,3,0,'Lady Deathwhisper (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34231,34243,34255,34267);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34231,50342,0,1,1,1,0,'Whispering Fanged Skull'),
(34231,50776,0,1,1,1,0,'Njorndar Bone Bow'),
(34231,50777,0,1,1,1,0,'Handgrips of Frost and Sleet'),
(34231,50778,0,1,1,1,0,'Soulthief''s Braided Belt'),
(34231,50779,0,1,1,1,0,'Deathspeaker Zealot''s Helm'),
(34231,50780,0,1,1,1,0,'Chestguard of the Frigid Noose'),
(34231,50781,0,1,1,1,0,'Scourgelord''s Baton'),
(34231,50782,0,1,1,1,0,'Sister''s Handshrouds'),
(34231,50783,0,1,1,1,0,'Boots of the Frozen Seed'),
(34231,50784,0,1,1,1,0,'Deathspeaker Disciple''s Belt'),
(34231,50785,0,1,1,1,0,'Bracers of Dark Blessings'),
(34231,50786,0,1,1,1,0,'Ghoul Commander''s Cuirass'),
(34243,49982,0,1,1,1,0,'Heartpierce'),
(34243,49983,0,1,1,1,0,'Blood-Soaked Saronite Stompers'),
(34243,49985,0,1,1,1,0,'Juggernaut Band'),
(34243,49986,0,1,1,1,0,'Broken Ram Skull Helm'),
(34243,49987,0,1,1,1,0,'Cultist''s Bloodsoaked Spaulders'),
(34243,49988,0,1,1,1,0,'Leggings of Northern Lights'),
(34243,49989,0,1,1,1,0,'Ahn''kahar Onyx Neckguard'),
(34243,49990,0,1,1,1,0,'Ring of Maddening Whispers'),
(34243,49991,0,1,1,1,0,'Shoulders of Mercy Killing'),
(34243,49992,0,1,1,1,0,'Nibelung'),
(34243,49993,0,1,1,1,0,'Necrophotic Greaves'),
(34243,49994,0,1,1,1,0,'The Lady''s Brittle Bracers'),
(34243,49995,0,1,1,1,0,'Fallen Lord''s Handguards'),
(34243,49996,0,1,1,1,0,'Deathwhisper Raiment'),
(34243,50034,0,1,1,1,0,'Zod''s Repeating Longbow'),
(34255,50343,0,1,1,1,0,'Whispering Fanged Skull'),
(34255,51917,0,1,1,1,0,'Ghoul Commander''s Cuirass'),
(34255,51918,0,1,1,1,0,'Bracers of Dark Blessings'),
(34255,51919,0,1,1,1,0,'Deathspeaker Disciple''s Belt'),
(34255,51920,0,1,1,1,0,'Boots of the Frozen Seed'),
(34255,51921,0,1,1,1,0,'Sister''s Handshrouds'),
(34255,51922,0,1,1,1,0,'Scourgelord''s Baton'),
(34255,51923,0,1,1,1,0,'Chestguard of the Frigid Noose'),
(34255,51924,0,1,1,1,0,'Deathspeaker Zealot''s Helm'),
(34255,51925,0,1,1,1,0,'Soulthief''s Braided Belt'),
(34255,51926,0,1,1,1,0,'Handgrips of Frost and Sleet'),
(34255,51927,0,1,1,1,0,'Njorndar Bone Bow'),
(34267,50638,0,1,1,1,0,'Zod''s Repeating Longbow'),
(34267,50639,0,1,1,1,0,'Blood-Soaked Saronite Stompers'),
(34267,50640,0,1,1,1,0,'Broken Ram Skull Helm'),
(34267,50641,0,1,1,1,0,'Heartpierce'),
(34267,50642,0,1,1,1,0,'Juggernaut Band'),
(34267,50643,0,1,1,1,0,'Shoulders of Mercy Killing'),
(34267,50644,0,1,1,1,0,'Ring of Maddening Whispers'),
(34267,50645,0,1,1,1,0,'Leggings of Northern Lights'),
(34267,50646,0,1,1,1,0,'Cultist''s Bloodsoaked Spaulders'),
(34267,50647,0,1,1,1,0,'Ahn''kahar Onyx Neckguard'),
(34267,50648,0,1,1,1,0,'Nibelung'),
(34267,50649,0,1,1,1,0,'Deathwhisper Raiment'),
(34267,50650,0,1,1,1,0,'Fallen Lord''s Handguards'),
(34267,50651,0,1,1,1,0,'The Lady''s Brittle Bracers'),
(34267,50652,0,1,1,1,0,'Necrophotic Greaves');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34231,'ICC Deathwhisper 10 Normal'),
(34243,'ICC Deathwhisper 25 Normal'),
(34255,'ICC Deathwhisper 10 Heroic'),
(34267,'ICC Deathwhisper 25 Heroic');

COMMIT;
