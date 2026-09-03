-- Icecrown Citadel Blood Prince Council encounter and reward data.

START TRANSACTION;

UPDATE `creature_template` SET `ScriptName`='boss_valanar_icc', `SpellList`=3797001 WHERE `Entry`=37970;
UPDATE `creature_template` SET `ScriptName`='boss_keleseth_icc', `SpellList`=3797201 WHERE `Entry`=37972;
UPDATE `creature_template` SET `ScriptName`='boss_taldaram_icc', `SpellList`=3797301 WHERE `Entry`=37973;
UPDATE `creature_template` SET `ScriptName`='npc_blood_orb_control' WHERE `Entry`=38008;
UPDATE `creature_template` SET `ScriptName`='npc_dark_nucleus' WHERE `Entry`=38369;
UPDATE `creature_template` SET `ScriptName`='npc_ball_of_flame' WHERE `Entry` IN (38332,38451);
UPDATE `creature_template` SET `ScriptName`='npc_kinetic_bomb' WHERE `Entry`=38454;

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3797001,3797201,3797301);
DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3797001,3797201,3797301);

INSERT INTO `creature_spell_list_entry`
    (`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`)
VALUES
    (3797001,'Icecrown Citadel - Prince Valanar',0,0),
    (3797201,'Icecrown Citadel - Prince Keleseth',0,0),
    (3797301,'Icecrown Citadel - Prince Taldaram',0,0);

INSERT INTO `creature_spell_list`
    (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,
     `ScriptId`,`Availability`,`Probability`,`InitialMin`,`InitialMax`,
     `RepeatMin`,`RepeatMax`,`Comments`)
VALUES
    (3797001,0,72053,0,-1,0,0,100,1,5000,15000,27000,27000,
     'Prince Valanar - Kinetic Bomb target'),
    (3797201,0,71943,0,-1,0,0,100,1,4000,4000,25000,25000,
     'Prince Keleseth - Shadow Resonance'),
    (3797301,0,71806,0,-1,0,0,100,1,8000,15000,30000,30000,
     'Prince Taldaram - Glittering Sparks');

UPDATE `creature_template`
SET `DisplayId1`=26767,`DisplayId2`=0,`DisplayId3`=0,`DisplayId4`=0,
    `DisplayIdProbability1`=100,`DisplayIdProbability2`=0,
    `DisplayIdProbability3`=0,`DisplayIdProbability4`=0
WHERE `Entry` IN (38332,38451);

UPDATE `creature_template`
SET `DisplayId1`=21342,`DisplayId2`=0,`DisplayId3`=0,`DisplayId4`=0,
    `DisplayIdProbability1`=100,`DisplayIdProbability2`=0,
    `DisplayIdProbability3`=0,`DisplayIdProbability4`=0,
    `UnitFlags`=`UnitFlags` | 33554432
WHERE `Entry`=38458;

DELETE FROM `spell_scripts` WHERE `Id`=73001;
INSERT INTO `spell_scripts` (`Id`,`ScriptName`)
VALUES (73001,'spell_blood_council_shadow_prison');

SET @KELESETH_D1 := (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37972);
SET @KELESETH_D2 := (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37972);
SET @KELESETH_D3 := (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37972);
SET @TALDARAM_D1 := (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37973);
SET @TALDARAM_D2 := (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37973);
SET @TALDARAM_D3 := (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37973);
UPDATE `creature_template`
SET `LootId`=0,`MinLootGold`=0,`MaxLootGold`=0
WHERE `Entry` IN
(37972,@KELESETH_D1,@KELESETH_D2,@KELESETH_D3,
 37973,@TALDARAM_D1,@TALDARAM_D2,@TALDARAM_D3);
UPDATE `creature_template` SET `LootId`=`Entry`
WHERE `Entry` IN (37970,38401,38784,38785);

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 65031 AND 65034;
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(65031,51021,0,1,1,1,0,'Soulbreaker'),
(65031,51022,0,1,1,1,0,'Hersir''s Greatspear'),
(65031,51023,0,1,1,1,0,'Taldaram''s Soft Slippers'),
(65031,51024,0,1,1,1,0,'Thrice Fanged Signet'),
(65031,51025,0,1,1,1,0,'Battle-Maiden''s Legguards'),
(65031,51325,0,1,1,1,0,'Blood-Drinker''s Girdle'),
(65031,51326,0,1,1,1,0,'Wand of Ruby Claret'),
(65031,51379,0,1,1,1,0,'Bloodsoul Raiment'),
(65031,51380,0,1,1,1,0,'Pale Corpse Boots'),
(65031,51381,0,1,1,1,0,'Cerise Coiled Ring'),
(65031,51382,0,1,1,1,0,'Heartsick Mender''s Cape'),
(65031,51383,0,1,1,1,0,'Spaulders of the Blood Princes'),
(65032,49919,0,1,1,1,0,'Cryptmaker'),
(65032,50071,0,1,1,1,0,'Treads of the Wasteland'),
(65032,50072,0,1,1,1,0,'Landsoul''s Horned Greathelm'),
(65032,50073,0,1,1,1,0,'Geistlord''s Punishment Sack'),
(65032,50074,0,1,1,1,0,'Royal Crimson Cloak'),
(65032,50075,0,1,1,1,0,'Taldaram''s Plated Fists'),
(65032,50170,0,1,1,1,0,'Valanar''s Other Signet Ring'),
(65032,50171,0,1,1,1,0,'Shoulders of Frost-Tipped Thorns'),
(65032,50172,0,1,1,1,0,'Sanguine Silk Robes'),
(65032,50173,0,1,1,1,0,'Shadow Silk Spindle'),
(65032,50174,0,1,1,1,0,'Incarnadine Band of Mending'),
(65032,50175,0,1,1,1,0,'Crypt Keeper''s Bracers'),
(65032,50176,0,1,1,1,0,'San''layn Ritualist Gloves'),
(65032,50177,0,1,1,1,0,'Mail of Crimson Coins'),
(65032,50184,0,1,1,1,0,'Keleseth''s Seducer'),
(65033,51847,0,1,1,1,0,'Spaulders of the Blood Princes heroic'),
(65033,51848,0,1,1,1,0,'Heartsick Mender''s Cape heroic'),
(65033,51849,0,1,1,1,0,'Cerise Coiled Ring heroic'),
(65033,51850,0,1,1,1,0,'Pale Corpse Boots heroic'),
(65033,51851,0,1,1,1,0,'Bloodsoul Raiment heroic'),
(65033,51852,0,1,1,1,0,'Wand of Ruby Claret heroic'),
(65033,51853,0,1,1,1,0,'Blood-Drinker''s Girdle heroic'),
(65033,51854,0,1,1,1,0,'Battle-Maiden''s Legguards heroic'),
(65033,51855,0,1,1,1,0,'Thrice Fanged Signet heroic'),
(65033,51856,0,1,1,1,0,'Taldaram''s Soft Slippers heroic'),
(65033,51857,0,1,1,1,0,'Hersir''s Greatspear heroic'),
(65033,51858,0,1,1,1,0,'Soulbreaker heroic'),
(65034,50603,0,1,1,1,0,'Cryptmaker heroic'),
(65034,50710,0,1,1,1,0,'Keleseth''s Seducer heroic'),
(65034,50711,0,1,1,1,0,'Treads of the Wasteland heroic'),
(65034,50712,0,1,1,1,0,'Landsoul''s Horned Greathelm heroic'),
(65034,50713,0,1,1,1,0,'Geistlord''s Punishment Sack heroic'),
(65034,50714,0,1,1,1,0,'Valanar''s Other Signet Ring heroic'),
(65034,50715,0,1,1,1,0,'Shoulders of Frost-Tipped Thorns heroic'),
(65034,50716,0,1,1,1,0,'Taldaram''s Plated Fists heroic'),
(65034,50717,0,1,1,1,0,'Sanguine Silk Robes heroic'),
(65034,50718,0,1,1,1,0,'Royal Crimson Cloak heroic'),
(65034,50719,0,1,1,1,0,'Shadow Silk Spindle heroic'),
(65034,50720,0,1,1,1,0,'Incarnadine Band of Mending heroic'),
(65034,50721,0,1,1,1,0,'Crypt Keeper''s Bracers heroic'),
(65034,50722,0,1,1,1,0,'San''layn Ritualist Gloves heroic'),
(65034,50723,0,1,1,1,0,'Mail of Crimson Coins heroic');

REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(65031,'ICC Blood Prince Council 10 Normal'),
(65032,'ICC Blood Prince Council 25 Normal'),
(65033,'ICC Blood Prince Council 10 Heroic'),
(65034,'ICC Blood Prince Council 25 Heroic');

DELETE FROM `creature_loot_template` WHERE `entry` IN (37970,38401,38784,38785);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(37970,65031,100,0,-65031,2,0,'Council 10N: two items'),
(37970,49426,100,0,2,2,0,'Emblem of Frost x2'),
(38401,65032,100,0,-65032,3,0,'Council 25N: three items'),
(38401,49426,100,0,2,2,0,'Emblem of Frost x2'),
(38401,49908,38,0,1,1,0,'Primordial Saronite'),
(38784,65033,100,0,-65033,2,0,'Council 10H: two items'),
(38784,49426,100,0,2,2,0,'Emblem of Frost x2'),
(38784,49908,38,0,1,1,0,'Primordial Saronite'),
(38785,65034,100,0,-65034,3,0,'Council 25H: three items'),
(38785,49426,100,0,2,2,0,'Emblem of Frost x2'),
(38785,49908,38,0,1,1,0,'Primordial Saronite');

COMMIT;

-- Final tested ICC data: council
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(37997,'','Foolish mortals. You thought us defeated so easily? The San\'layn are the Lich King\'s immortal soldiers! Now you shall face their might combined!',6,0,0,0,0,16795,0,1,0,0,0,0,0,12340),
(38000,'BOW DOWN BEFORE THE SAN\'LAYN!','',1,0,0,0,0,16684,0,0,0,0,0,0,0,12340),
(1631114,'%s gurgles and dies.','',2,0,0,0,0,16855,0,0,0,0,0,0,0,12340),
(1631120,'...why...?','',1,0,0,0,0,16683,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (37998,37999,38000,38001,38002,38003,38004,38005,38006,38007,38008,38009,38010,38011);

UPDATE `broadcast_text` SET `ChatTypeID`=2
WHERE `Id` IN (13022,37127);

UPDATE `broadcast_text` SET `ChatTypeID`=3
WHERE `Id` IN (38588,38589,38590,38624,38972);

UPDATE `broadcast_text` SET `ChatTypeID`=6
WHERE `Id` IN (37997,38079);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 13022 THEN 16726
    WHEN 37127 THEN 16856
    WHEN 37997 THEN 16795
    WHEN 37998 THEN 16681
    WHEN 37999 THEN 16682
    WHEN 38000 THEN 16684
    WHEN 38001 THEN 16685
    WHEN 38002 THEN 16686
    WHEN 38003 THEN 16723
    WHEN 38004 THEN 16724
    WHEN 38005 THEN 16725
    WHEN 38006 THEN 16727
    WHEN 38007 THEN 16728
    WHEN 38008 THEN 16853
    WHEN 38009 THEN 16854
    WHEN 38010 THEN 16857
    WHEN 38011 THEN 16858
    WHEN 38079 THEN 16796
    WHEN 38588 THEN 0
    WHEN 38589 THEN 0
    WHEN 38590 THEN 0
    WHEN 38624 THEN 0
    WHEN 38972 THEN 0
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (13022,37127,37997,37998,37999,38000,38001,38002,38003,38004,38005,38006,38007,38008,38009,38010,38011,38079,38588,38589,38590,38624,38972);

UPDATE `broadcast_text` SET `EmoteID1`=1 WHERE `Id`=37997;

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (37970,38401,38784,38785);
DELETE FROM `creature_loot_template` WHERE `entry` IN (37970,38401,38784,38785);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(37970,49426,100,0,2,2,0,'Prince Valanar - Emblem of Frost'),
(37970,34235,100,0,-34235,2,0,'Prince Valanar - (ReferenceTable)'),
(38401,49426,100,0,2,2,0,'Prince Valanar (1) - Emblem of Frost'),
(38401,49908,38,0,1,1,0,'Prince Valanar (1) - Primordial Saronite'),
(38401,50274,-38,0,1,1,0,'Prince Valanar (1) - Shadowfrost Shard'),
(38401,34248,100,0,-34248,3,0,'Prince Valanar (1) - (ReferenceTable)'),
(38784,49426,100,0,2,2,0,'Prince Valanar (2) - Emblem of Frost'),
(38784,49908,38,0,1,1,0,'Prince Valanar (2) - Primordial Saronite'),
(38784,34259,100,0,-34259,2,0,'Prince Valanar (2) - (ReferenceTable)'),
(38785,49426,100,0,2,2,0,'Prince Valanar (3) - Emblem of Frost'),
(38785,49908,38,0,1,1,0,'Prince Valanar (3) - Primordial Saronite'),
(38785,50274,-68,0,1,1,0,'Prince Valanar (3) - Shadowfrost Shard'),
(38785,34271,100,0,-34271,3,0,'Prince Valanar (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34235,34248,34259,34271);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34235,51021,0,1,1,1,0,'Soulbreaker'),
(34235,51022,0,1,1,1,0,'Hersir''s Greatspear'),
(34235,51023,0,1,1,1,0,'Taldaram''s Soft Slippers'),
(34235,51024,0,1,1,1,0,'Thrice Fanged Signet'),
(34235,51025,0,1,1,1,0,'Battle-Maiden''s Legguards'),
(34235,51325,0,1,1,1,0,'Blood-Drinker''s Girdle'),
(34235,51326,0,1,1,1,0,'Wand of Ruby Claret'),
(34235,51379,0,1,1,1,0,'Bloodsoul Raiment'),
(34235,51380,0,1,1,1,0,'Pale Corpse Boots'),
(34235,51381,0,1,1,1,0,'Cerise Coiled Ring'),
(34235,51382,0,1,1,1,0,'Heartsick Mender''s Cape'),
(34235,51383,0,1,1,1,0,'Spaulders of the Blood Princes'),
(34248,49919,0,1,1,1,0,'Cryptmaker'),
(34248,50071,0,1,1,1,0,'Treads of the Wasteland'),
(34248,50072,0,1,1,1,0,'Landsoul''s Horned Greathelm'),
(34248,50073,0,1,1,1,0,'Geistlord''s Punishment Sack'),
(34248,50074,0,1,1,1,0,'Royal Crimson Cloak'),
(34248,50075,0,1,1,1,0,'Taldaram''s Plated Fists'),
(34248,50170,0,1,1,1,0,'Valanar''s Other Signet Ring'),
(34248,50171,0,1,1,1,0,'Shoulders of Frost-Tipped Thorns'),
(34248,50172,0,1,1,1,0,'Sanguine Silk Robes'),
(34248,50173,0,1,1,1,0,'Shadow Silk Spindle'),
(34248,50174,0,1,1,1,0,'Incarnadine Band of Mending'),
(34248,50175,0,1,1,1,0,'Crypt Keeper''s Bracers'),
(34248,50176,0,1,1,1,0,'San''layn Ritualist Gloves'),
(34248,50177,0,1,1,1,0,'Mail of Crimson Coins'),
(34248,50184,0,1,1,1,0,'Keleseth''s Seducer'),
(34259,51847,0,1,1,1,0,'Spaulders of the Blood Princes'),
(34259,51848,0,1,1,1,0,'Heartsick Mender''s Cape'),
(34259,51849,0,1,1,1,0,'Cerise Coiled Ring'),
(34259,51850,0,1,1,1,0,'Pale Corpse Boots'),
(34259,51851,0,1,1,1,0,'Bloodsoul Raiment'),
(34259,51852,0,1,1,1,0,'Wand of Ruby Claret'),
(34259,51853,0,1,1,1,0,'Blood-Drinker''s Girdle'),
(34259,51854,0,1,1,1,0,'Battle-Maiden''s Legguards'),
(34259,51855,0,1,1,1,0,'Thrice Fanged Signet'),
(34259,51856,0,1,1,1,0,'Taldaram''s Soft Slippers'),
(34259,51857,0,1,1,1,0,'Hersir''s Greatspear'),
(34259,51858,0,1,1,1,0,'Soulbreaker'),
(34271,50603,0,1,1,1,0,'Cryptmaker'),
(34271,50710,0,1,1,1,0,'Keleseth''s Seducer'),
(34271,50711,0,1,1,1,0,'Treads of the Wasteland'),
(34271,50712,0,1,1,1,0,'Landsoul''s Horned Greathelm'),
(34271,50713,0,1,1,1,0,'Geistlord''s Punishment Sack'),
(34271,50714,0,1,1,1,0,'Valanar''s Other Signet Ring'),
(34271,50715,0,1,1,1,0,'Shoulders of Frost-Tipped Thorns'),
(34271,50716,0,1,1,1,0,'Taldaram''s Plated Fists'),
(34271,50717,0,1,1,1,0,'Sanguine Silk Robes'),
(34271,50718,0,1,1,1,0,'Royal Crimson Cloak'),
(34271,50719,0,1,1,1,0,'Shadow Silk Spindle'),
(34271,50720,0,1,1,1,0,'Incarnadine Band of Mending'),
(34271,50721,0,1,1,1,0,'Crypt Keeper''s Bracers'),
(34271,50722,0,1,1,1,0,'San''layn Ritualist Gloves'),
(34271,50723,0,1,1,1,0,'Mail of Crimson Coins');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34235,'ICC Blood Council 10 Normal'),
(34248,'ICC Blood Council 25 Normal'),
(34259,'ICC Blood Council 10 Heroic'),
(34271,'ICC Blood Council 25 Heroic');

COMMIT;
