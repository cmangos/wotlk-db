-- Icecrown Citadel: Lord Marrowgar normal-phase spell list.

START TRANSACTION;

UPDATE `creature_template`
SET `SpellList` = 3661201
WHERE `Entry` = 36612;

DELETE FROM `creature_spell_list`
WHERE `Id` = 3661201;

DELETE FROM `creature_spell_list_entry`
WHERE `Id` = 3661201;

INSERT INTO `creature_spell_list_entry`
    (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`)
VALUES
    (3661201, 'Icecrown Citadel - Lord Marrowgar - normal phase', 0, 0);

INSERT INTO `creature_spell_list`
    (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`,
     `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`,
     `RepeatMin`, `RepeatMax`, `Comments`)
VALUES
    (3661201, 0, 69055, 0, -1, 1, 0, 100, 1, 8000, 8000, 1000, 1000,
     'Lord Marrowgar - Bone Slice'),
    (3661201, 1, 69140, 0, -1, 2, 0, 100, 1, 5000, 5000, 5000, 5000,
     'Lord Marrowgar - Coldflame');

COMMIT;

-- Final tested ICC data: marrowgar
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(37690,'THE MASTER\'S RAGE COURSES THROUGH ME!','THE MASTER\'S RAGE COURSES THROUGH ME!',1,0,0,0,0,16945,0,0,0,0,0,0,0,12340),
(38508,'This is the beginning AND the end, mortals. None may enter the master\'s sanctum!','',1,0,0,0,0,16950,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (36554,37684,37686,37687,37688,37690,37693,37695,37696,38508);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 36554 THEN 16946
    WHEN 37684 THEN 16941
    WHEN 37686 THEN 16942
    WHEN 37687 THEN 16943
    WHEN 37688 THEN 16944
    WHEN 37690 THEN 16945
    WHEN 37693 THEN 16949
    WHEN 37695 THEN 16947
    WHEN 37696 THEN 16948
    WHEN 38508 THEN 16950
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (36554,37684,37686,37687,37688,37690,37693,37695,37696,38508);

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (36612,37957,37958,37959);
DELETE FROM `creature_loot_template` WHERE `entry` IN (36612,37957,37958,37959);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(36612,49426,100,0,2,2,0,'Lord Marrowgar - Emblem of Frost'),
(36612,34230,100,0,-34230,2,0,'Lord Marrowgar - (ReferenceTable)'),
(37957,49426,100,0,2,2,0,'Lord Marrowgar (1) - Emblem of Frost'),
(37957,49908,38,0,1,1,0,'Lord Marrowgar (1) - Primordial Saronite'),
(37957,50274,-38,0,1,1,0,'Lord Marrowgar (1) - Shadowfrost Shard'),
(37957,34242,100,0,-34242,3,0,'Lord Marrowgar (1) - (ReferenceTable)'),
(37958,49426,100,0,2,2,0,'Lord Marrowgar (2) - Emblem of Frost'),
(37958,49908,38,0,1,1,0,'Lord Marrowgar (2) - Primordial Saronite'),
(37958,34254,100,0,-34254,2,0,'Lord Marrowgar (2) - (ReferenceTable)'),
(37959,49426,100,0,2,2,0,'Lord Marrowgar (3) - Emblem of Frost'),
(37959,49908,38,0,1,1,0,'Lord Marrowgar (3) - Primordial Saronite'),
(37959,50274,-68,0,1,1,0,'Lord Marrowgar (3) - Shadowfrost Shard'),
(37959,34266,100,0,-34266,3,0,'Lord Marrowgar (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34230,34242,34254,34266);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34230,50339,0,1,1,1,0,'Sliver of Pure Ice'),
(34230,50759,0,1,1,1,0,'Bone Warden''s Splitter'),
(34230,50760,0,1,1,1,0,'Bonebreaker Scepter'),
(34230,50761,0,1,1,1,0,'Citadel Enforcer''s Claymore'),
(34230,50762,0,1,1,1,0,'Linked Scourge Vertebrae'),
(34230,50763,0,1,1,1,0,'Marrowgar''s Scratching Choker'),
(34230,50764,0,1,1,1,0,'Shawl of Nerubian Silk'),
(34230,50771,0,1,1,1,0,'Frost Needle'),
(34230,50772,0,1,1,1,0,'Ancient Skeletal Boots'),
(34230,50773,0,1,1,1,0,'Cord of the Patronizing Practitioner'),
(34230,50774,0,1,1,1,0,'Coldwraith Bracers'),
(34230,50775,0,1,1,1,0,'Corrupted Silverplate Leggings'),
(34242,49949,0,1,1,1,0,'Band of the Bone Colossus'),
(34242,49950,0,1,1,1,0,'Frostbitten Fur Boots'),
(34242,49951,0,1,1,1,0,'Gendarme''s Cuirass'),
(34242,49952,0,1,1,1,0,'Snowserpent Mail Helm'),
(34242,49960,0,1,1,1,0,'Bracers of Dark Reckoning'),
(34242,49964,0,1,1,1,0,'Legguards of Lost Hope'),
(34242,49967,0,1,1,1,0,'Marrowgar''s Frigid Eye'),
(34242,49968,0,1,1,1,0,'Frozen Bonespike'),
(34242,49975,0,1,1,1,0,'Bone Sentinel''s Amulet'),
(34242,49976,0,1,1,1,0,'Bulwark of Smouldering Steel'),
(34242,49977,0,1,1,1,0,'Loop of the Endless Labyrinth'),
(34242,49978,0,1,1,1,0,'Crushing Coldwraith Belt'),
(34242,49979,0,1,1,1,0,'Handguards of Winter''s Respite'),
(34242,49980,0,1,1,1,0,'Rusted Bonespike Pauldrons'),
(34242,50415,0,1,1,1,0,'Bryntroll, the Bone Arbiter'),
(34254,50346,0,1,1,1,0,'Sliver of Pure Ice'),
(34254,51928,0,1,1,1,0,'Corrupted Silverplate Leggings'),
(34254,51929,0,1,1,1,0,'Coldwraith Bracers'),
(34254,51930,0,1,1,1,0,'Cord of the Patronizing Practitioner'),
(34254,51931,0,1,1,1,0,'Ancient Skeletal Boots'),
(34254,51932,0,1,1,1,0,'Frost Needle'),
(34254,51933,0,1,1,1,0,'Shawl of Nerubian Silk'),
(34254,51934,0,1,1,1,0,'Marrowgar''s Scratching Choker'),
(34254,51935,0,1,1,1,0,'Linked Scourge Vertebrae'),
(34254,51936,0,1,1,1,0,'Citadel Enforcer''s Claymore'),
(34254,51937,0,1,1,1,0,'Bonebreaker Scepter'),
(34254,51938,0,1,1,1,0,'Bone Warden''s Splitter'),
(34266,50604,0,1,1,1,0,'Band of the Bone Colossus'),
(34266,50605,0,1,1,1,0,'Snowserpent Mail Helm'),
(34266,50606,0,1,1,1,0,'Gendarme''s Cuirass'),
(34266,50607,0,1,1,1,0,'Frostbitten Fur Boots'),
(34266,50608,0,1,1,1,0,'Frozen Bonespike'),
(34266,50609,0,1,1,1,0,'Bone Sentinel''s Amulet'),
(34266,50610,0,1,1,1,0,'Marrowgar''s Frigid Eye'),
(34266,50611,0,1,1,1,0,'Bracers of Dark Reckoning'),
(34266,50612,0,1,1,1,0,'Legguards of Lost Hope'),
(34266,50613,0,1,1,1,0,'Crushing Coldwraith Belt'),
(34266,50614,0,1,1,1,0,'Loop of the Endless Labyrinth'),
(34266,50615,0,1,1,1,0,'Handguards of Winter''s Respite'),
(34266,50616,0,1,1,1,0,'Bulwark of Smouldering Steel'),
(34266,50617,0,1,1,1,0,'Rusted Bonespike Pauldrons'),
(34266,50709,0,1,1,1,0,'Bryntroll, the Bone Arbiter');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34230,'ICC Marrowgar 10 Normal'),
(34242,'ICC Marrowgar 25 Normal'),
(34254,'ICC Marrowgar 10 Heroic'),
(34266,'ICC Marrowgar 25 Heroic');

COMMIT;
