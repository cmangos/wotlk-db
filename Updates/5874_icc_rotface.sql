-- Icecrown Citadel Rotface encounter data.

START TRANSACTION;

UPDATE `creature_template` SET `ScriptName`='boss_rotface', `SpellList`=0 WHERE `Entry`=36627;
UPDATE `creature_template` SET `ScriptName`='mob_little_ooze', `SpellList`=0 WHERE `Entry`=36897;
UPDATE `creature_template` SET `ScriptName`='mob_big_ooze', `SpellList`=0 WHERE `Entry`=36899;

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3662701,3689701,3689901);
DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3662701,3689701,3689901);

DELETE FROM `spell_scripts` WHERE `Id` IN (69558,69795,69782);
INSERT INTO `spell_scripts` (`Id`,`ScriptName`) VALUES
(69558,'spell_unstable_ooze_rotface'),
(69795,'spell_ooze_flood_trigger'),
(69782,'spell_ooze_flood');

COMMIT;

-- Final tested ICC data: rotface
START TRANSACTION;

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (37063,37831,37832,37833,37834);

UPDATE `broadcast_text` SET `ChatTypeID`=2
WHERE `Id` IN (36950,36952,36956);

UPDATE `broadcast_text` SET `ChatTypeID`=3
WHERE `Id` IN (38363);

UPDATE `broadcast_text` SET `ChatTypeID`=6
WHERE `Id` IN (37837,37848);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 36950 THEN 0
    WHEN 36952 THEN 0
    WHEN 36956 THEN 0
    WHEN 37063 THEN 16992
    WHEN 37831 THEN 16986
    WHEN 37832 THEN 16988
    WHEN 37833 THEN 16987
    WHEN 37834 THEN 16989
    WHEN 37837 THEN 16993
    WHEN 37848 THEN 17124
    WHEN 38363 THEN 0
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (36950,36952,36956,37063,37831,37832,37833,37834,37837,37848,38363);

-- Four-mode reward bindings and pools.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (36627,38390,38549,38550);
DELETE FROM `creature_loot_template` WHERE `entry` IN (36627,38390,38549,38550);
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(36627,49426,100,0,2,2,0,'Rotface - Emblem of Frost'),
(36627,34233,100,0,-34233,2,0,'Rotface - (ReferenceTable)'),
(38390,49426,100,0,2,2,0,'Rotface (1) - Emblem of Frost'),
(38390,49908,38,0,1,1,0,'Rotface (1) - Primordial Saronite'),
(38390,50231,-100,0,1,1,0,'Rotface (1) - Rotface''s Acidic Blood'),
(38390,50274,-38,0,1,1,0,'Rotface (1) - Shadowfrost Shard'),
(38390,34245,100,0,-34245,3,0,'Rotface (1) - (ReferenceTable)'),
(38549,49426,100,0,2,2,0,'Rotface (2) - Emblem of Frost'),
(38549,49908,38,0,1,1,0,'Rotface (2) - Primordial Saronite'),
(38549,34257,100,0,-34257,2,0,'Rotface (2) - (ReferenceTable)'),
(38550,49426,100,0,2,2,0,'Rotface (3) - Emblem of Frost'),
(38550,49908,38,0,1,1,0,'Rotface (3) - Primordial Saronite'),
(38550,50231,-100,0,1,1,0,'Rotface (3) - Rotface''s Acidic Blood'),
(38550,50274,-68,0,1,1,0,'Rotface (3) - Shadowfrost Shard'),
(38550,34269,100,0,-34269,3,0,'Rotface (3) - (ReferenceTable)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (34233,34245,34257,34269);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34233,50998,0,1,1,1,0,'Shaft of Glacial Ice'),
(34233,50999,0,1,1,1,0,'Gluth''s Fetching Knife'),
(34233,51000,0,1,1,1,0,'Flesh-Shaper''s Gurney Strap'),
(34233,51001,0,1,1,1,0,'Rotface''s Rupturing Ring'),
(34233,51002,0,1,1,1,0,'Taldron''s Short-Sighted Helm'),
(34233,51003,0,1,1,1,0,'Abomination Knuckles'),
(34233,51004,0,1,1,1,0,'Lockjaw'),
(34233,51005,0,1,1,1,0,'Gloves of Broken Fingers'),
(34233,51006,0,1,1,1,0,'Shuffling Shoes'),
(34233,51007,0,1,1,1,0,'Ether-Soaked Bracers'),
(34233,51008,0,1,1,1,0,'Choker of Filthy Diamonds'),
(34233,51009,0,1,1,1,0,'Chestguard of the Failed Experiment'),
(34245,50016,0,1,1,1,0,'Rib Spreader'),
(34245,50019,0,1,1,1,0,'Winding Sheet'),
(34245,50020,0,1,1,1,0,'Raging Behemoth''s Shoulderplates'),
(34245,50021,0,1,1,1,0,'Aldriana''s Gloves of Secrecy'),
(34245,50022,0,1,1,1,0,'Dual-Bladed Pauldrons'),
(34245,50023,0,1,1,1,0,'Bile-Encrusted Medallion'),
(34245,50024,0,1,1,1,0,'Blightborne Warplate'),
(34245,50025,0,1,1,1,0,'Seal of Many Mouths'),
(34245,50026,0,1,1,1,0,'Helm of the Elder Moon'),
(34245,50027,0,1,1,1,0,'Rot-Resistant Breastplate'),
(34245,50028,0,1,1,1,0,'Trauma'),
(34245,50030,0,1,1,1,0,'Bloodsunder''s Bracers'),
(34245,50032,0,1,1,1,0,'Death Surgeon''s Sleeves'),
(34245,50033,0,1,1,1,0,'Corpse-Impaling Spike'),
(34245,50353,0,1,1,1,0,'Dislodged Foreign Object'),
(34257,51870,0,1,1,1,0,'Chestguard of the Failed Experiment'),
(34257,51871,0,1,1,1,0,'Choker of Filthy Diamonds'),
(34257,51872,0,1,1,1,0,'Ether-Soaked Bracers'),
(34257,51873,0,1,1,1,0,'Shuffling Shoes'),
(34257,51874,0,1,1,1,0,'Gloves of Broken Fingers'),
(34257,51875,0,1,1,1,0,'Lockjaw'),
(34257,51876,0,1,1,1,0,'Abomination Knuckles'),
(34257,51877,0,1,1,1,0,'Taldron''s Short-Sighted Helm'),
(34257,51878,0,1,1,1,0,'Rotface''s Rupturing Ring'),
(34257,51879,0,1,1,1,0,'Flesh-Shaper''s Gurney Strap'),
(34257,51880,0,1,1,1,0,'Gluth''s Fetching Knife'),
(34257,51881,0,1,1,1,0,'Shaft of Glacial Ice'),
(34269,50348,0,1,1,1,0,'Dislodged Foreign Object'),
(34269,50673,0,1,1,1,0,'Dual-Bladed Pauldrons'),
(34269,50674,0,1,1,1,0,'Raging Behemoth''s Shoulderplates'),
(34269,50675,0,1,1,1,0,'Aldriana''s Gloves of Secrecy'),
(34269,50676,0,1,1,1,0,'Rib Spreader'),
(34269,50677,0,1,1,1,0,'Winding Sheet'),
(34269,50678,0,1,1,1,0,'Seal of Many Mouths'),
(34269,50679,0,1,1,1,0,'Helm of the Elder Moon'),
(34269,50680,0,1,1,1,0,'Rot-Resistant Breastplate'),
(34269,50681,0,1,1,1,0,'Blightborne Warplate'),
(34269,50682,0,1,1,1,0,'Bile-Encrusted Medallion'),
(34269,50684,0,1,1,1,0,'Corpse-Impaling Spike'),
(34269,50685,0,1,1,1,0,'Trauma'),
(34269,50686,0,1,1,1,0,'Death Surgeon''s Sleeves'),
(34269,50687,0,1,1,1,0,'Bloodsunder''s Bracers');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34233,'ICC Rotface 10 Normal'),
(34245,'ICC Rotface 25 Normal'),
(34257,'ICC Rotface 10 Heroic'),
(34269,'ICC Rotface 25 Heroic');

COMMIT;
