-- Icecrown Citadel Professor Putricide encounter and reward data.

START TRANSACTION;

UPDATE `creature_template`
SET `AIName`='', `ScriptName`='boss_professor_putricide', `SpellList`=0
WHERE `Entry`=36678;

UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_gas_cloud_icc' WHERE `Entry`=37562;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_volatile_ooze_icc' WHERE `Entry`=37697;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_growing_ooze_puddle' WHERE `Entry`=37690;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_choking_gas_bomb' WHERE `Entry`=38159;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_puddle_stalker' WHERE `Entry`=37013;

UPDATE `creature_template`
SET `AIName`='', `ScriptName`='npc_mutated_abomination',
    `MinLevel`=80, `MaxLevel`=80,
    `MinLevelHealth`=945000, `MaxLevelHealth`=945000,
    `UnitFlags`=33587200, `SpellList`=3767201, `CharmedSpellList`=0,
    `RegenerateStats`=2
WHERE `Entry` IN (37672,38285);

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3667801,3667802,3667803,3767201,3767202);
DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3667801,3667802,3667803,3767201,3767202);

INSERT INTO `creature_spell_list_entry`
(`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`) VALUES
(3767201,'ICC - Professor Putricide - Mutated Abomination',0,0),
(3767202,'ICC - Professor Putricide - Mutated Abomination - Unholy Infusion',0,0);

INSERT INTO `creature_spell_list`
(`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
 `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`) VALUES
(3767201,0,70542,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Mutated Slash'),
(3767201,1,70360,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Eat Ooze'),
(3767201,2,70539,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Regurgitated Ooze'),
(3767202,0,70542,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Mutated Slash'),
(3767202,1,70360,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Eat Ooze'),
(3767202,2,70539,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Regurgitated Ooze'),
(3767202,5,71516,0,-1,0,0,100,1,0,0,0,0,'Mutated Abomination - Shadow Infusion');

DELETE FROM `creature_ai_scripts`
WHERE `id` IN (3767201,3767202);

SET @PUTRICIDE_D1 := (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=36678);
SET @PUTRICIDE_D2 := (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=36678);
SET @PUTRICIDE_D3 := (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=36678);
UPDATE `creature_template`
SET `MinLootGold`=400000, `MaxLootGold`=500000
WHERE `Entry` IN (36678,@PUTRICIDE_D1,@PUTRICIDE_D2,@PUTRICIDE_D3);

COMMIT;

-- Final tested ICC data: putricide
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(37690,'THE MASTER\'S RAGE COURSES THROUGH ME!','THE MASTER\'S RAGE COURSES THROUGH ME!',1,0,0,0,0,16945,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (33033,37049,37690,37697,37838,37840,37841,37842,37844,37845,37846,38120);

UPDATE `broadcast_text` SET `ChatTypeID`=3
WHERE `Id` IN (38498,38499,38500);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 33033 THEN 17115
    WHEN 37049 THEN 17123
    WHEN 37690 THEN 16945
    WHEN 37697 THEN 17091
    WHEN 37838 THEN 17114
    WHEN 37840 THEN 17116
    WHEN 37841 THEN 17117
    WHEN 37842 THEN 17118
    WHEN 37844 THEN 17120
    WHEN 37845 THEN 17121
    WHEN 37846 THEN 17122
    WHEN 38120 THEN 17126
    WHEN 38498 THEN 0
    WHEN 38499 THEN 0
    WHEN 38500 THEN 0
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (33033,37049,37690,37697,37838,37840,37841,37842,37844,37845,37846,38120,38498,38499,38500);

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (36678,38431,38585,38586);
DELETE FROM `creature_loot_template` WHERE `entry` IN (36678,38431,38585,38586);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(36678,49426,100,0,2,2,0,'Professor Putricide - Emblem of Frost'),
(36678,34234,100,0,-34234,2,0,'Professor Putricide - (ReferenceTable)'),
(38431,49426,100,0,2,2,0,'Professor Putricide (1) - Emblem of Frost'),
(38431,49908,38,0,1,1,0,'Professor Putricide (1) - Primordial Saronite'),
(38431,50067,0,1,1,1,0,'Professor Putricide (1) - Astrylian''s Sutured Cinch'),
(38431,50068,0,1,1,1,0,'Professor Putricide (1) - Rigormortis'),
(38431,50069,0,1,1,1,0,'Professor Putricide (1) - Professor''s Bloodied Smock'),
(38431,50179,0,1,1,1,0,'Professor Putricide (1) - Last Word'),
(38431,50274,-38,0,1,1,0,'Professor Putricide (1) - Shadowfrost Shard'),
(38431,50351,0,1,1,1,0,'Professor Putricide (1) - Tiny Abomination in a Jar'),
(38431,34278,100,0,-34278,2,0,'Professor Putricide (1) - (ReferenceTable)'),
(38585,49426,100,0,2,2,0,'Professor Putricide (2) - Emblem of Frost'),
(38585,49908,38,0,1,1,0,'Professor Putricide (2) - Primordial Saronite'),
(38585,34258,100,0,-34258,2,0,'Professor Putricide (2) - (ReferenceTable)'),
(38585,34278,100,0,-34278,1,0,'Professor Putricide (2) - (ReferenceTable)'),
(38586,49426,100,0,2,2,0,'Professor Putricide (3) - Emblem of Frost'),
(38586,49908,38,0,1,1,0,'Professor Putricide (3) - Primordial Saronite'),
(38586,50274,-68,0,1,1,0,'Professor Putricide (3) - Shadowfrost Shard'),
(38586,50704,0,1,1,1,0,'Professor Putricide (3) - Rigormortis'),
(38586,50705,0,1,1,1,0,'Professor Putricide (3) - Professor''s Bloodied Smock'),
(38586,50706,0,1,1,1,0,'Professor Putricide (3) - Tiny Abomination in a Jar'),
(38586,50707,0,1,1,1,0,'Professor Putricide (3) - Astrylian''s Sutured Cinch'),
(38586,50708,0,1,1,1,0,'Professor Putricide (3) - Last Word'),
(38586,34278,100,0,-34278,2,0,'Professor Putricide (3) - (ReferenceTable)'),
(38586,34279,100,0,-34279,1,0,'Professor Putricide (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34234,34258);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34234,50341,0,1,1,1,0,'Unidentifiable Organ'),
(34234,51010,0,1,1,1,0,'The Facelifter'),
(34234,51011,0,1,1,1,0,'Flesh-Carving Scalpel'),
(34234,51012,0,1,1,1,0,'Infected Choker'),
(34234,51013,0,1,1,1,0,'Discarded Bag of Entrails'),
(34234,51014,0,1,1,1,0,'Scalpel-Sharpening Shoulderguards'),
(34234,51015,0,1,1,1,0,'Shoulderpads of the Morbid Ritual'),
(34234,51016,0,1,1,1,0,'Pendant of Split Veins'),
(34234,51017,0,1,1,1,0,'Cauterized Cord'),
(34234,51018,0,1,1,1,0,'Chestplate of Septic Stitches'),
(34234,51019,0,1,1,1,0,'Rippling Flesh Kilt'),
(34234,51020,0,1,1,1,0,'Shoulders of Ruinous Senility'),
(34258,50344,0,1,1,1,0,'Unidentifiable Organ'),
(34258,51859,0,1,1,1,0,'Shoulders of Ruinous Senility'),
(34258,51860,0,1,1,1,0,'Rippling Flesh Kilt'),
(34258,51861,0,1,1,1,0,'Chestplate of Septic Stitches'),
(34258,51862,0,1,1,1,0,'Cauterized Cord'),
(34258,51863,0,1,1,1,0,'Pendant of Split Veins'),
(34258,51864,0,1,1,1,0,'Shoulderpads of the Morbid Ritual'),
(34258,51865,0,1,1,1,0,'Scalpel-Sharpening Shoulderguards'),
(34258,51866,0,1,1,1,0,'Discarded Bag of Entrails'),
(34258,51867,0,1,1,1,0,'Infected Choker'),
(34258,51868,0,1,1,1,0,'Flesh-Carving Scalpel'),
(34258,51869,0,1,1,1,0,'The Facelifter');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34234,'ICC Putricide 10 Normal'),
(34258,'ICC Putricide 10 Heroic');

COMMIT;
