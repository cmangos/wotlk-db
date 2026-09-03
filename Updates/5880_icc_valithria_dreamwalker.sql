-- Icecrown Citadel Valithria Dreamwalker encounter and reward data.

START TRANSACTION;

-- The encounter uses the existing fixed creature slot beside Valithria as the
-- hidden controller that summons the difficulty-specific reward cache.
UPDATE `creature`
SET `id`=38153
WHERE `guid`=6310042
  AND `map`=631;

-- Remove the misplaced base spawn and any older standalone-test duplicate in
-- Valithria's room. The fixed controller above remains the single owner.
DELETE FROM `creature`
WHERE `guid`=6310384
  AND `id`=38153
  AND `map`=631;
DELETE FROM `creature`
WHERE `map`=631
  AND `id`=38153
  AND `guid`<>6310042
  AND `position_x` BETWEEN 4190 AND 4215
  AND `position_y` BETWEEN 2470 AND 2500;

UPDATE `creature_template`
SET `ScriptName`='boss_valithria_dreamwalker',
    `RegenerateStats`=`RegenerateStats` & ~2
WHERE `Entry`=36789;
UPDATE `creature_template`
SET `ScriptName`='npc_blazing_skeleton_icc', `SpellList`=3679101
WHERE `Entry`=36791;
UPDATE `creature_template` SET `ScriptName`='npc_suppresser_icc' WHERE `Entry`=37863;
UPDATE `creature_template`
SET `ScriptName`='npc_risen_archmage_icc', `SpellList`=3786801
WHERE `Entry`=37868;
UPDATE `creature_template`
SET `ScriptName`='npc_gluttonous_abomination_icc', `SpellList`=3788601
WHERE `Entry`=37886;
UPDATE `creature_template` SET `ScriptName`='npc_valithria_rot_worm' WHERE `Entry`=37907;
UPDATE `creature_template` SET `ScriptName`='npc_valithria_column_of_frost' WHERE `Entry`=37918;
UPDATE `creature_template` SET `ScriptName`='npc_blistering_zombie_icc' WHERE `Entry`=37934;
UPDATE `creature_template`
SET `ScriptName`='npc_valithria_portal', `NpcFlags`=`NpcFlags` | 16777216
WHERE `Entry` IN (37945,38430);
UPDATE `creature_template`
SET `ScriptName`='npc_valithria_portal_preeffect'
WHERE `Entry` IN (38186,38429);
UPDATE `creature_template`
SET `ScriptName`='npc_valithria_cloud', `InhabitType`=4
WHERE `Entry` IN (37985,38421);
UPDATE `creature_template` SET `ScriptName`='npc_valithria_mana_void' WHERE `Entry`=38068;

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3679101,3786801,3788601);
DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3679101,3786801,3788601);

INSERT INTO `creature_spell_list_entry`
    (`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`)
VALUES
    (3679101,'Icecrown Citadel - Blazing Skeleton',0,0),
    (3786801,'Icecrown Citadel - Risen Archmage',0,0),
    (3788601,'Icecrown Citadel - Gluttonous Abomination',0,0);

INSERT INTO `creature_spell_list`
    (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,
     `ScriptId`,`Availability`,`Probability`,`InitialMin`,`InitialMax`,
     `RepeatMin`,`RepeatMax`,`Comments`)
VALUES
    (3679101,0,70754,0,-1,1,0,100,1,2000,4000,2000,4000,
     'Blazing Skeleton - Fireball on current target'),
    (3679101,1,69325,0,-1,2,0,100,1,15000,20000,15000,20000,
     'Blazing Skeleton - Lay Waste'),
    (3786801,0,70759,0,-1,2,0,100,1,5000,15000,8000,15000,
     'Risen Archmage - Frostbolt Volley'),
    (3788601,0,70633,0,-1,2,0,100,1,10000,13000,10000,13000,
     'Gluttonous Abomination - Gut Spray');

INSERT INTO `creature_template_addon`
(`entry`,`mount`,`stand_state`,`sheath_state`,`pvp_flags`,`emote`,`moveflags`,`auras`) VALUES
(37945,0,0,0,1,0,0,'70763'),
(38186,0,0,0,1,0,0,'71304'),
(38429,0,0,0,1,0,0,'71986'),
(38430,0,0,0,1,0,0,'71994')
ON DUPLICATE KEY UPDATE
`mount`=VALUES(`mount`),`stand_state`=VALUES(`stand_state`),
`sheath_state`=VALUES(`sheath_state`),`pvp_flags`=VALUES(`pvp_flags`),
`emote`=VALUES(`emote`),`moveflags`=VALUES(`moveflags`),`auras`=VALUES(`auras`);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (37945,38430);
INSERT INTO `npc_spellclick_spells`
(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`condition_id`) VALUES
(37945,70766,0,0,0,3,0),
(38430,70766,0,0,0,3,0);

DELETE FROM `spawn_group_spawn` WHERE `Id`=6310000;
DELETE FROM `spawn_group` WHERE `Id`=6310000;
INSERT INTO `spawn_group` (`Id`,`Name`,`Type`,`MaxCount`,`WorldState`,`Flags`) VALUES
(6310000,'Icecrown Citadel - Valithria Dreamwalker starter Risen Archmages',0,4,0,0);
INSERT INTO `spawn_group_spawn` (`Id`,`Guid`,`SlotId`) VALUES
(6310000,6310432,-1),(6310000,6310433,-1),
(6310000,6310434,-1),(6310000,6310435,-1);

UPDATE `gameobject_template` SET `data1`=28052 WHERE `entry`=201959;
UPDATE `gameobject_template` SET `data1`=28064 WHERE `entry`=202338;
UPDATE `gameobject_template` SET `data1`=28082 WHERE `entry`=202339;
UPDATE `gameobject_template` SET `data1`=28096 WHERE `entry`=202340;

-- Cache currency follows the same four-mode amounts as the other ICC cache
-- encounters.
UPDATE `gameobject_template` SET `mingold`=800000,  `maxgold`=900000  WHERE `entry`=201959;
UPDATE `gameobject_template` SET `mingold`=2000000, `maxgold`=2250000 WHERE `entry`=202339;
UPDATE `gameobject_template` SET `mingold`=1000000, `maxgold`=1200000 WHERE `entry`=202338;
UPDATE `gameobject_template` SET `mingold`=2000000, `maxgold`=2250000 WHERE `entry`=202340;

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 65011 AND 65014;
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(65011,51561,0,1,1,1,0,'Dreamhunter''s Carbine'),
(65011,51562,0,1,1,1,0,'Oxheart'),
(65011,51563,0,1,1,1,0,'Taiga Bindings'),
(65011,51564,0,1,1,1,0,'Ironrope Belt of Ymirjar'),
(65011,51565,0,1,1,1,0,'Skinned Whelp Shoulders'),
(65011,51566,0,1,1,1,0,'Legguards of the Twisted Dream'),
(65011,51582,0,1,1,1,0,'Sister Svalna''s Aether Staff'),
(65011,51583,0,1,1,1,0,'Stormbringer Gloves'),
(65011,51584,0,1,1,1,0,'Lich Wrappings'),
(65011,51585,0,1,1,1,0,'Sister Svalna''s Spangenhelm'),
(65011,51586,0,1,1,1,0,'Emerald Saint''s Spaulders'),
(65011,51777,0,1,1,1,0,'Etched Dragonbone Girdle'),
(65012,50183,0,1,1,1,0,'Lungbreaker'),
(65012,50185,0,1,1,1,0,'Devium''s Eternally Cold Ring'),
(65012,50186,0,1,1,1,0,'Frostbrood Sapphire Ring'),
(65012,50187,0,1,1,1,0,'Cold Convergence'),
(65012,50188,0,1,1,1,0,'Anub''ar Stalker Gloves'),
(65012,50190,0,1,1,1,0,'Grinning Skull Greatboots'),
(65012,50192,0,1,1,1,0,'Scourge Reaver''s Legplates'),
(65012,50195,0,1,1,1,0,'Noose of Malachite'),
(65012,50199,0,1,1,1,0,'Leggings of Dying Candles'),
(65012,50202,0,1,1,1,0,'Snowstorm Helm'),
(65012,50205,0,1,1,1,0,'Frostbinder''s Shredded Cape'),
(65012,50416,0,1,1,1,0,'Boots of the Funeral March'),
(65012,50417,0,1,1,1,0,'Bracers of Eternal Dreaming'),
(65012,50418,0,1,1,1,0,'Robe of the Waking Nightmare'),
(65012,50472,0,1,1,1,0,'Nightmare Ender'),
(65013,51823,0,1,1,1,0,'Emerald Saint''s Spaulders heroic'),
(65013,51824,0,1,1,1,0,'Sister Svalna''s Spangenhelm heroic'),
(65013,51825,0,1,1,1,0,'Lich Wrappings heroic'),
(65013,51826,0,1,1,1,0,'Stormbringer Gloves heroic'),
(65013,51827,0,1,1,1,0,'Sister Svalna''s Aether Staff heroic'),
(65013,51828,0,1,1,1,0,'Legguards of the Twisted Dream heroic'),
(65013,51829,0,1,1,1,0,'Skinned Whelp Shoulders heroic'),
(65013,51830,0,1,1,1,0,'Ironrope Belt of Ymirjar heroic'),
(65013,51831,0,1,1,1,0,'Taiga Bindings heroic'),
(65013,51832,0,1,1,1,0,'Oxheart heroic'),
(65013,51833,0,1,1,1,0,'Dreamhunter''s Carbine heroic'),
(65013,51834,0,1,1,1,0,'Etched Dragonbone Girdle heroic'),
(65014,50618,0,1,1,1,0,'Frostbinder''s Shredded Cape heroic'),
(65014,50619,0,1,1,1,0,'Anub''ar Stalker Gloves heroic'),
(65014,50620,0,1,1,1,0,'Cold Convergence heroic'),
(65014,50621,0,1,1,1,0,'Lungbreaker heroic'),
(65014,50622,0,1,1,1,0,'Devium''s Eternally Cold Ring heroic'),
(65014,50623,0,1,1,1,0,'Leggings of Dying Candles heroic'),
(65014,50624,0,1,1,1,0,'Scourge Reaver''s Legplates heroic'),
(65014,50625,0,1,1,1,0,'Grinning Skull Greatboots heroic'),
(65014,50626,0,1,1,1,0,'Snowstorm Helm heroic'),
(65014,50627,0,1,1,1,0,'Noose of Malachite heroic'),
(65014,50628,0,1,1,1,0,'Frostbrood Sapphire Ring heroic'),
(65014,50629,0,1,1,1,0,'Robe of the Waking Nightmare heroic'),
(65014,50630,0,1,1,1,0,'Bracers of Eternal Dreaming heroic'),
(65014,50631,0,1,1,1,0,'Nightmare Ender heroic'),
(65014,50632,0,1,1,1,0,'Boots of the Funeral March heroic');

REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(65011,'ICC Valithria 10 Normal'),
(65012,'ICC Valithria 25 Normal'),
(65013,'ICC Valithria 10 Heroic'),
(65014,'ICC Valithria 25 Heroic');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28052,28064,28082,28096);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28052,65011,100,0,-65011,2,0,'Valithria 10N: two items'),
(28052,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28082,65012,100,0,-65012,3,0,'Valithria 25N: three items'),
(28082,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28082,49908,20,0,1,1,0,'Primordial Saronite'),
(28064,65013,100,0,-65013,2,0,'Valithria 10H: two items'),
(28064,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28064,49908,20,0,1,1,0,'Primordial Saronite'),
(28096,65014,100,0,-65014,3,0,'Valithria 25H: three items'),
(28096,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28096,49908,20,0,1,1,0,'Primordial Saronite');

COMMIT;

-- Dream portals expose the spell-click interaction in world data.
UPDATE `creature_template`
SET `NpcFlags`=`NpcFlags` | 16777216
WHERE `Entry` IN (37945,38430);

-- Final tested ICC data: valithria
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(1631144,'Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!','',1,0,0,0,0,17072,0,0,0,0,0,0,0,12340),
(1631145,'A tragic loss...','',1,0,0,0,0,17066,0,0,0,0,0,0,0,12340),
(1631146,'FAILURES!','',1,0,0,0,0,17067,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (21784,37852,37875,37876,37878,38068);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 21784 THEN 17069
    WHEN 37852 THEN 17071
    WHEN 37875 THEN 17064
    WHEN 37876 THEN 17068
    WHEN 37878 THEN 17070
    WHEN 38068 THEN 16793
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (21784,37852,37875,37876,37878,38068);

-- Four-mode reward bindings and pools.
DELETE FROM `reference_loot_template` WHERE `entry` IN (34241,34253,34265,34277);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34241,51561,0,1,1,1,0,'Dreamhunter''s Carbine'),
(34241,51562,0,1,1,1,0,'Oxheart'),
(34241,51563,0,1,1,1,0,'Taiga Bindings'),
(34241,51564,0,1,1,1,0,'Ironrope Belt of Ymirjar'),
(34241,51565,0,1,1,1,0,'Skinned Whelp Shoulders'),
(34241,51566,0,1,1,1,0,'Legguards of the Twisted Dream'),
(34241,51582,0,1,1,1,0,'Sister Svalna''s Aether Staff'),
(34241,51583,0,1,1,1,0,'Stormbringer Gloves'),
(34241,51584,0,1,1,1,0,'Lich Wrappings'),
(34241,51585,0,1,1,1,0,'Sister Svalna''s Spangenhelm'),
(34241,51586,0,1,1,1,0,'Emerald Saint''s Spaulders'),
(34241,51777,0,1,1,1,0,'Leggings of the Refracted Mind'),
(34253,50183,0,1,1,1,0,'Lungbreaker'),
(34253,50185,0,1,1,1,0,'Devium''s Eternally Cold Ring'),
(34253,50186,0,1,1,1,0,'Frostbrood Sapphire Ring'),
(34253,50187,0,1,1,1,0,'Coldwraith Links'),
(34253,50188,0,1,1,1,0,'Anub''ar Stalker''s Gloves'),
(34253,50190,0,1,1,1,0,'Grinning Skull Greatboots'),
(34253,50192,0,1,1,1,0,'Scourge Reaver''s Legplates'),
(34253,50195,0,1,1,1,0,'Noose of Malachite'),
(34253,50199,0,1,1,1,0,'Leggings of Dying Candles'),
(34253,50202,0,1,1,1,0,'Snowstorm Helm'),
(34253,50205,0,1,1,1,0,'Frostbinder''s Shredded Cape'),
(34253,50416,0,1,1,1,0,'Boots of the Funeral March'),
(34253,50417,0,1,1,1,0,'Bracers of Eternal Dreaming'),
(34253,50418,0,1,1,1,0,'Robe of the Waking Nightmare'),
(34253,50472,0,1,1,1,0,'Nightmare Ender'),
(34265,51823,0,1,1,1,0,'Leggings of the Refracted Mind'),
(34265,51824,0,1,1,1,0,'Emerald Saint''s Spaulders'),
(34265,51825,0,1,1,1,0,'Sister Svalna''s Spangenhelm'),
(34265,51826,0,1,1,1,0,'Lich Wrappings'),
(34265,51827,0,1,1,1,0,'Stormbringer Gloves'),
(34265,51828,0,1,1,1,0,'Sister Svalna''s Aether Staff'),
(34265,51829,0,1,1,1,0,'Legguards of the Twisted Dream'),
(34265,51830,0,1,1,1,0,'Skinned Whelp Shoulders'),
(34265,51831,0,1,1,1,0,'Ironrope Belt of Ymirjar'),
(34265,51832,0,1,1,1,0,'Taiga Bindings'),
(34265,51833,0,1,1,1,0,'Oxheart'),
(34265,51834,0,1,1,1,0,'Dreamhunter''s Carbine'),
(34277,50618,0,1,1,1,0,'Frostbrood Sapphire Ring'),
(34277,50619,0,1,1,1,0,'Anub''ar Stalker''s Gloves'),
(34277,50620,0,1,1,1,0,'Coldwraith Links'),
(34277,50621,0,1,1,1,0,'Lungbreaker'),
(34277,50622,0,1,1,1,0,'Devium''s Eternally Cold Ring'),
(34277,50623,0,1,1,1,0,'Leggings of Dying Candles'),
(34277,50624,0,1,1,1,0,'Scourge Reaver''s Legplates'),
(34277,50625,0,1,1,1,0,'Grinning Skull Greatboots'),
(34277,50626,0,1,1,1,0,'Snowstorm Helm'),
(34277,50627,0,1,1,1,0,'Noose of Malachite'),
(34277,50628,0,1,1,1,0,'Frostbinder''s Shredded Cape'),
(34277,50629,0,1,1,1,0,'Robe of the Waking Nightmare'),
(34277,50630,0,1,1,1,0,'Bracers of Eternal Dreaming'),
(34277,50631,0,1,1,1,0,'Nightmare Ender'),
(34277,50632,0,1,1,1,0,'Boots of the Funeral March');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28052,28064,28082,28096);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28052,34241,100,0,-34241,2,0,'Cache of the Dreamwalker - (ReferenceTable)'),
(28052,49426,100,0,2,2,0,'Cache of the Dreamwalker - Emblem of Frost'),
(28064,34265,100,0,-34265,2,0,'Cache of the Dreamwalker - (ReferenceTable)'),
(28064,49426,100,0,2,2,0,'Cache of the Dreamwalker - Emblem of Frost'),
(28064,49908,20,0,1,1,0,'Cache of the Dreamwalker - Primordial Saronite'),
(28082,34253,100,0,-34253,3,0,'Cache of the Dreamwalker - (ReferenceTable)'),
(28082,49426,100,0,2,2,0,'Cache of the Dreamwalker - Emblem of Frost'),
(28082,49908,20,0,1,1,0,'Cache of the Dreamwalker - Primordial Saronite'),
(28082,50274,-38,0,1,1,0,'Cache of the Dreamwalker - Shadowfrost Shard'),
(28096,34277,100,0,-34277,3,0,'Cache of the Dreamwalker - (ReferenceTable)'),
(28096,49426,100,0,2,2,0,'Cache of the Dreamwalker - Emblem of Frost'),
(28096,49908,20,0,1,1,0,'Cache of the Dreamwalker - Primordial Saronite'),
(28096,50274,-68,0,1,1,0,'Cache of the Dreamwalker - Shadowfrost Shard');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34241,'ICC Valithria 10 Normal'),
(34253,'ICC Valithria 25 Normal'),
(34265,'ICC Valithria 10 Heroic'),
(34277,'ICC Valithria 25 Heroic');

COMMIT;
