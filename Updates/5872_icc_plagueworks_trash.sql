-- Icecrown Citadel Plagueworks corridor and trap-event data.

START TRANSACTION;

SET @CGUID := 6310000;
SET @STRINGID := 6310003;

UPDATE `creature_template`
SET `AIName`='', `ScriptName`='npc_icc_vengeful_fleshreaper', `SpellList`=3703801
WHERE `Entry`=37038;
UPDATE `creature_template` SET `ScriptName`='npc_putricides_trap' WHERE `Entry`=38879;

DELETE FROM `string_id` WHERE `Id`=@STRINGID;
INSERT INTO `string_id` (`Id`,`Name`) VALUES
(@STRINGID,'ICC_PLAGUEWORKS_PIPE_FLESHREAPER');

DELETE FROM `creature_spawn_data_template` WHERE `Entry`=3703801;
INSERT INTO `creature_spawn_data_template`
    (`Entry`,`SpawnFlags`,`StringId`,`Name`)
VALUES
    (3703801,1,@STRINGID,'Icecrown Citadel - pipe Vengeful Fleshreaper');

DELETE FROM `creature_spawn_data` WHERE `Guid` IN (@CGUID+187,@CGUID+188);
INSERT INTO `creature_spawn_data` (`Guid`,`Id`) VALUES
(@CGUID+187,3703801),
(@CGUID+188,3703801);

-- Leaping Face Maul is ordinary combat rotation. Keep the pipe jump in core,
-- and migrate the spell from the legacy EventAI row to the shared spell-list system.
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=37038;

DELETE FROM `creature_spell_list` WHERE `Id`=3703801;
INSERT INTO `creature_spell_list`
    (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
     `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`)
VALUES
    (3703801,0,71164,0,-1,1,0,100,1,5000,10000,15000,20000,
     'Vengeful Fleshreaper - Leaping Face Maul');

DELETE FROM `creature_spell_list_entry` WHERE `Id`=3703801;
INSERT INTO `creature_spell_list_entry`
    (`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`)
VALUES
    (3703801,'Icecrown Citadel - Vengeful Fleshreaper',0,0);

DELETE FROM `scripted_areatrigger` WHERE `entry`=5647;
INSERT INTO `scripted_areatrigger` (`entry`,`ScriptName`)
VALUES (5647,'at_putricides_trap');

DELETE FROM `scripted_event_id` WHERE `id` IN (23426,23438);
INSERT INTO `scripted_event_id` (`id`,`ScriptName`) VALUES
(23426,'event_gameobject_citadel_valve'),
(23438,'event_gameobject_citadel_valve');

COMMIT;

-- Precious's Ribbon drops from Precious in both raid sizes.
UPDATE `creature_template`
SET `LootId`=`Entry`
WHERE `Entry` IN (37217,38103);

DELETE FROM `creature_loot_template`
WHERE `entry` IN (37217,38103)
  AND `item`=52019;

INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(37217,52019,30,0,1,1,0,'Precious - Precious''s Ribbon'),
(38103,52019,30,0,1,1,0,'Precious (1) - Precious''s Ribbon');
