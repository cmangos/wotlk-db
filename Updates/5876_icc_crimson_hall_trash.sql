-- Icecrown Citadel: Crimson Hall trash spell lists.

START TRANSACTION;

-- These hardcoded selectors are implemented by the core but were absent from
-- the seed data.  Target 5 is used by the advisors to distribute both shrouds
-- only to nearby allies that do not already have the selected aura.  Target
-- 101 and 102 preserve the legacy random-threat choices, including controlled
-- units, with 102 excluding the current victim.
REPLACE INTO `creature_spell_targeting`
    (`Id`,`Type`,`Param1`,`Param2`,`Param3`,`UnitCondition`,`Comments`)
VALUES
    (5,0,0,0,0,-1,'Hardcoded - eligible friendly missing buff'),
    (101,1,0,0,0,-1,'Attack - random hostile'),
    (102,1,0,1,0,-1,'Attack - random hostile except current victim');

SET @ADVISOR_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37571);
SET @ADVISOR_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37571);
SET @ADVISOR_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37571);

SET @BLOOD_KNIGHT_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37595);
SET @BLOOD_KNIGHT_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37595);
SET @BLOOD_KNIGHT_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37595);

SET @COMMANDER_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37662);
SET @COMMANDER_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37662);
SET @COMMANDER_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37662);

SET @NOBLE_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37663);
SET @NOBLE_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37663);
SET @NOBLE_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37663);

SET @ARCHMAGE_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37664);
SET @ARCHMAGE_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37664);
SET @ARCHMAGE_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37664);

SET @LIEUTENANT_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37665);
SET @LIEUTENANT_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37665);
SET @LIEUTENANT_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37665);

SET @TACTICIAN_25_NORMAL :=
    (SELECT `DifficultyEntry1` FROM `creature_template` WHERE `Entry`=37666);
SET @TACTICIAN_10_HEROIC :=
    (SELECT `DifficultyEntry2` FROM `creature_template` WHERE `Entry`=37666);
SET @TACTICIAN_25_HEROIC :=
    (SELECT `DifficultyEntry3` FROM `creature_template` WHERE `Entry`=37666);

-- Remove the superseded EventAI rotations.  Creature spell lists retain the
-- same raid-size spell variants and timing windows for all four difficulties.
DELETE FROM `creature_ai_scripts`
WHERE `creature_id` IN (37571,37595,37662,37663,37664,37665,37666);

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3757101
WHERE `Entry`=37571;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3757102
WHERE `Entry`=@ADVISOR_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3757103
WHERE `Entry`=@ADVISOR_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3757104
WHERE `Entry`=@ADVISOR_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3759501
WHERE `Entry`=37595;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3759502
WHERE `Entry`=@BLOOD_KNIGHT_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3759503
WHERE `Entry`=@BLOOD_KNIGHT_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3759504
WHERE `Entry`=@BLOOD_KNIGHT_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766201
WHERE `Entry`=37662;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766202
WHERE `Entry`=@COMMANDER_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766203
WHERE `Entry`=@COMMANDER_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766204
WHERE `Entry`=@COMMANDER_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766301
WHERE `Entry`=37663;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766302
WHERE `Entry`=@NOBLE_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766303
WHERE `Entry`=@NOBLE_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766304
WHERE `Entry`=@NOBLE_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766401
WHERE `Entry`=37664;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766402
WHERE `Entry`=@ARCHMAGE_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766403
WHERE `Entry`=@ARCHMAGE_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766404
WHERE `Entry`=@ARCHMAGE_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766501
WHERE `Entry`=37665;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766502
WHERE `Entry`=@LIEUTENANT_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766503
WHERE `Entry`=@LIEUTENANT_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766504
WHERE `Entry`=@LIEUTENANT_25_HEROIC;

UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766601
WHERE `Entry`=37666;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766602
WHERE `Entry`=@TACTICIAN_25_NORMAL;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766603
WHERE `Entry`=@TACTICIAN_10_HEROIC;
UPDATE `creature_template`
SET `AIName`='',`SpellList`=3766604
WHERE `Entry`=@TACTICIAN_25_HEROIC;

DELETE FROM `creature_spell_list`
WHERE `Id` IN
    (3757101,3757102,3757103,3757104,
     3759501,3759502,3759503,3759504,
     3766201,3766202,3766203,3766204,
     3766301,3766302,3766303,3766304,
     3766401,3766402,3766403,3766404,
     3766501,3766502,3766503,3766504,
     3766601,3766602,3766603,3766604);

DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN
    (3757101,3757102,3757103,3757104,
     3759501,3759502,3759503,3759504,
     3766201,3766202,3766203,3766204,
     3766301,3766302,3766303,3766304,
     3766401,3766402,3766403,3766404,
     3766501,3766502,3766503,3766504,
     3766601,3766602,3766603,3766604);

INSERT INTO `creature_spell_list_entry`
    (`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`)
VALUES
    (3757101,'ICC - Darkfallen Advisor - 10-player normal',100,0),
    (3757102,'ICC - Darkfallen Advisor - 25-player normal',100,0),
    (3757103,'ICC - Darkfallen Advisor - 10-player heroic',100,0),
    (3757104,'ICC - Darkfallen Advisor - 25-player heroic',100,0),
    (3759501,'ICC - Darkfallen Blood Knight - 10-player normal',0,0),
    (3759502,'ICC - Darkfallen Blood Knight - 25-player normal',0,0),
    (3759503,'ICC - Darkfallen Blood Knight - 10-player heroic',0,0),
    (3759504,'ICC - Darkfallen Blood Knight - 25-player heroic',0,0),
    (3766201,'ICC - Darkfallen Commander - 10-player normal',0,0),
    (3766202,'ICC - Darkfallen Commander - 25-player normal',0,0),
    (3766203,'ICC - Darkfallen Commander - 10-player heroic',0,0),
    (3766204,'ICC - Darkfallen Commander - 25-player heroic',0,0),
    (3766301,'ICC - Darkfallen Noble - 10-player normal',0,100),
    (3766302,'ICC - Darkfallen Noble - 25-player normal',0,100),
    (3766303,'ICC - Darkfallen Noble - 10-player heroic',0,100),
    (3766304,'ICC - Darkfallen Noble - 25-player heroic',0,100),
    (3766401,'ICC - Darkfallen Archmage - 10-player normal',0,100),
    (3766402,'ICC - Darkfallen Archmage - 25-player normal',0,100),
    (3766403,'ICC - Darkfallen Archmage - 10-player heroic',0,100),
    (3766404,'ICC - Darkfallen Archmage - 25-player heroic',0,100),
    (3766501,'ICC - Darkfallen Lieutenant - 10-player normal',0,0),
    (3766502,'ICC - Darkfallen Lieutenant - 25-player normal',0,0),
    (3766503,'ICC - Darkfallen Lieutenant - 10-player heroic',0,0),
    (3766504,'ICC - Darkfallen Lieutenant - 25-player heroic',0,0),
    (3766601,'ICC - Darkfallen Tactician - 10-player normal',0,0),
    (3766602,'ICC - Darkfallen Tactician - 25-player normal',0,0),
    (3766603,'ICC - Darkfallen Tactician - 10-player heroic',0,0),
    (3766604,'ICC - Darkfallen Tactician - 25-player heroic',0,0);

INSERT INTO `creature_spell_list`
    (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
     `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`)
VALUES
    -- Darkfallen Advisor, 10-player.
    (3757101,0,72057,0,-1,101,0,100,1,5000,9000,6000,11000,'Darkfallen Advisor - Lich Slap'),
    (3757101,1,72066,1,-1,5,0,100,1,10000,20000,10000,20000,'Darkfallen Advisor - Shroud of Spell Warding'),
    (3757101,2,72065,1,-1,5,0,100,1,10000,20000,10000,20000,'Darkfallen Advisor - Shroud of Protection'),
    -- Darkfallen Advisor, 25-player.
    (3757102,0,72421,0,-1,101,0,100,1,5000,9000,6000,11000,'Darkfallen Advisor - Lich Slap'),
    (3757102,1,72066,1,-1,5,0,100,1,10000,20000,10000,20000,'Darkfallen Advisor - Shroud of Spell Warding'),
    (3757102,2,72065,1,-1,5,0,100,1,10000,20000,10000,20000,'Darkfallen Advisor - Shroud of Protection'),

    -- Darkfallen Blood Knight, 10-player.
    (3759501,0,71736,8,-1,2,0,100,1,0,0,60000,60000,'Darkfallen Blood Knight - Vampiric Aura'),
    (3759501,1,70437,0,-1,1,0,100,1,3000,6000,3000,6000,'Darkfallen Blood Knight - Unholy Strike'),
    (3759501,2,70450,0,-1,1,0,100,1,8000,13000,8000,14000,'Darkfallen Blood Knight - Blood Mirror'),
    -- Darkfallen Blood Knight, 25-player.
    (3759502,0,71736,8,-1,2,0,100,1,0,0,60000,60000,'Darkfallen Blood Knight - Vampiric Aura'),
    (3759502,1,70437,0,-1,1,0,100,1,3000,6000,3000,6000,'Darkfallen Blood Knight - Unholy Strike'),
    (3759502,2,70450,0,-1,1,0,100,1,8000,13000,8000,14000,'Darkfallen Blood Knight - Blood Mirror'),

    -- Darkfallen Commander, 10-player.
    (3766201,0,70750,8,-1,2,0,100,1,0,0,120000,120000,'Darkfallen Commander - Battle Shout'),
    (3766201,1,70449,0,-1,101,0,100,1,2000,5000,12000,17000,'Darkfallen Commander - Vampire Rush'),
    -- Darkfallen Commander, 25-player.
    (3766202,0,70750,8,-1,2,0,100,1,0,0,120000,120000,'Darkfallen Commander - Battle Shout'),
    (3766202,1,71155,0,-1,101,0,100,1,2000,5000,12000,17000,'Darkfallen Commander - Vampire Rush'),

    -- Darkfallen Noble, 10-player.
    (3766301,0,70645,0,-1,102,0,100,1,7000,12000,13000,17000,'Darkfallen Noble - Chains of Shadow'),
    (3766301,1,72960,2,-1,101,0,100,1,4000,6000,4000,6000,'Darkfallen Noble - Shadow Bolt'),
    -- Darkfallen Noble, 25-player.
    (3766302,0,70645,0,-1,102,0,100,1,7000,12000,13000,17000,'Darkfallen Noble - Chains of Shadow'),
    (3766302,1,72961,2,-1,101,0,100,1,4000,6000,4000,6000,'Darkfallen Noble - Shadow Bolt'),

    -- Darkfallen Archmage, 10-player.
    (3766401,0,70410,0,-1,102,0,100,1,10000,16000,15000,21000,'Darkfallen Archmage - Polymorph Spider'),
    (3766401,1,70408,0,-1,101,0,100,1,5000,12000,25000,35000,'Darkfallen Archmage - Amplify Magic'),
    (3766401,2,70407,0,-1,2,0,100,1,7000,11000,7000,11000,'Darkfallen Archmage - Blast Wave'),
    (3766401,3,70409,2,-1,1,0,100,1,9000,13000,9000,13000,'Darkfallen Archmage - Fireball'),
    -- Darkfallen Archmage, 25-player.
    (3766402,0,70410,0,-1,102,0,100,1,10000,16000,15000,21000,'Darkfallen Archmage - Polymorph Spider'),
    (3766402,1,72336,0,-1,101,0,100,1,5000,12000,25000,35000,'Darkfallen Archmage - Amplify Magic'),
    (3766402,2,71151,0,-1,2,0,100,1,7000,11000,7000,11000,'Darkfallen Archmage - Blast Wave'),
    (3766402,3,71153,2,-1,1,0,100,1,9000,13000,9000,13000,'Darkfallen Archmage - Fireball'),

    -- Darkfallen Lieutenant, 10-player.
    (3766501,0,70435,0,-1,1,0,100,1,5000,9000,8000,13000,'Darkfallen Lieutenant - Rend Flesh'),
    (3766501,1,70423,0,-1,1,0,100,1,4000,9000,20000,27000,'Darkfallen Lieutenant - Vampiric Curse'),
    -- Darkfallen Lieutenant, 25-player.
    (3766502,0,71154,0,-1,1,0,100,1,5000,9000,8000,13000,'Darkfallen Lieutenant - Rend Flesh'),
    (3766502,1,70423,0,-1,1,0,100,1,4000,9000,20000,27000,'Darkfallen Lieutenant - Vampiric Curse'),

    -- Darkfallen Tactician (all difficulties share the same spells).
    (3766601,0,70437,0,-1,1,0,100,1,6000,11000,6000,11000,'Darkfallen Tactician - Unholy Strike'),
    (3766601,1,70432,0,-1,102,0,100,1,7000,12000,12000,16000,'Darkfallen Tactician - Blood Sap'),
    (3766601,2,70431,0,-1,2,0,100,1,16000,24000,16000,24000,'Darkfallen Tactician - Shadowstep'),
    (3766602,0,70437,0,-1,1,0,100,1,6000,11000,6000,11000,'Darkfallen Tactician - Unholy Strike'),
    (3766602,1,70432,0,-1,102,0,100,1,7000,12000,12000,16000,'Darkfallen Tactician - Blood Sap'),
    (3766602,2,70431,0,-1,2,0,100,1,16000,24000,16000,24000,'Darkfallen Tactician - Shadowstep');

-- Heroic rotations use the same raid-size spell IDs as the legacy data.
INSERT INTO `creature_spell_list`
    (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
     `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`)
SELECT
    `Id`+2,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
    `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`
FROM `creature_spell_list`
WHERE `Id` IN
    (3757101,3757102,3759501,3759502,3766201,3766202,3766301,3766302,
     3766401,3766402,3766501,3766502,3766601,3766602);

COMMIT;
