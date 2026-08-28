-- Icecrown Citadel Gunship Battle world data.

START TRANSACTION;

-- Rocket Artillery's impact SpellScript applies damage to the opposing hull.
DELETE FROM `spell_scripts`
WHERE `Id` = 69679;

INSERT INTO `spell_scripts` (`Id`, `ScriptName`) VALUES
(69679, 'spell_gunship_rocket_artillery_explosion');

-- Cannon Blast overheats the cannon when its heat reaches 100.
DELETE FROM `spell_scripts`
WHERE `Id` IN (69399,70172);

INSERT INTO `spell_scripts` (`Id`, `ScriptName`) VALUES
(69399, 'spell_gunship_cannon_blast'),
(70172, 'spell_gunship_cannon_blast');

-- Zafod's client-known spell lacks the server-side create-item data.
INSERT INTO `spell_template`
    (`Id`, `Attributes`, `AttributesEx2`, `ProcChance`, `Effect1`,
     `EffectImplicitTargetA1`, `EffectItemType1`, `SpellName`, `SchoolMask`)
VALUES
    (70055, 384, 4, 101, 24, 25, 49278, 'Create Rocket Pack', 1)
ON DUPLICATE KEY UPDATE
    `ProcChance` = VALUES(`ProcChance`),
    `Effect1` = VALUES(`Effect1`),
    `EffectImplicitTargetA1` = VALUES(`EffectImplicitTargetA1`),
    `EffectItemType1` = VALUES(`EffectItemType1`);

-- Restrict each cannon to players of its owning faction.
INSERT IGNORE INTO `conditions`
    (`condition_entry`,`type`,`value1`,`value2`,`value3`,`value4`,`flags`,`comments`)
VALUES
    (21,6,67,0,0,0,0,'Horde Player'),
    (22,6,469,0,0,0,0,'Alliance Player');

DELETE FROM `npc_spellclick_spells`
WHERE `npc_entry` IN (36838,36839)
  AND `spell_id` = 70510;

INSERT INTO `npc_spellclick_spells`
    (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`condition_id`)
VALUES
    (36838,70510,0,0,0,1,22),
    (36839,70510,0,0,0,1,21);

-- Cannon heat is encounter-controlled; generic power regeneration races it.
UPDATE `creature_template`
SET `RegenerateStats` = `RegenerateStats` & ~4
WHERE `Entry` IN (36838,36839);

-- Keep routine combat rotations data-driven. Transport-aware target selection,
-- boarding, artillery, and Below Zero remain encounter-script responsibilities.
UPDATE `creature_template` SET `SpellList` = 3694801 WHERE `Entry` = 36948;
UPDATE `creature_template` SET `SpellList` = 3693901 WHERE `Entry` = 36939;
UPDATE `creature_template` SET `SpellList` = 3696101 WHERE `Entry` = 36961;
UPDATE `creature_template` SET `SpellList` = 3696001 WHERE `Entry` = 36960;

DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3694801,3693901,3696101,3696001);
INSERT INTO `creature_spell_list_entry`
(`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`) VALUES
(3694801,'ICC - Gunship - Muradin Bronzebeard',0,0),
(3693901,'ICC - Gunship - High Overlord Saurfang',0,0),
(3696101,'ICC - Gunship - Skybreaker Sergeant',0,0),
(3696001,'ICC - Gunship - Kor''kron Sergeant',0,0);

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3694801,3693901,3696101,3696001);
INSERT INTO `creature_spell_list`
(`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
 `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`) VALUES
(3694801,0,15284,0,-1,0,0,100,1,2000,10000,2000,10000,'Muradin Bronzebeard - Cleave'),
(3693901,0,15284,0,-1,0,0,100,1,2000,10000,2000,10000,'High Overlord Saurfang - Cleave'),
(3696101,0,69652,0,-1,0,0,100,1,13000,18000,25000,30000,'Skybreaker Sergeant - Bladestorm'),
(3696101,1,69651,0,-1,0,0,100,1,8000,10000,9000,13000,'Skybreaker Sergeant - Wounding Strike'),
(3696001,0,69652,0,-1,0,0,100,1,13000,18000,25000,30000,'Kor''kron Sergeant - Bladestorm'),
(3696001,1,69651,0,-1,0,0,100,1,8000,10000,9000,13000,'Kor''kron Sergeant - Wounding Strike');
COMMIT;
