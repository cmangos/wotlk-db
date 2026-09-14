-- Icecrown Citadel Plagueworks corridor and trap-event data.
UPDATE `creature_template` SET `SpellList`=3703801 WHERE `Entry`=37038;

-- Leaping Face Maul is ordinary combat rotation. Keep the pipe jump in core,
-- and migrate the spell from the legacy EventAI row to the shared spell-list system.
DELETE FROM `creature_spell_list` WHERE `Id`=3703801;
INSERT INTO `creature_spell_list` (`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,`Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`) VALUES
(3703801,0,71164,0,-1,1,0,100,1,5000,10000,15000,20000,'Vengeful Fleshreaper - Leaping Face Maul');
DELETE FROM `creature_spell_list_entry` WHERE `Id`=3703801;
INSERT INTO `creature_spell_list_entry` (`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`) VALUES
(3703801,'Icecrown Citadel - Vengeful Fleshreaper',0,0);

-- Precious's Ribbon drops from Precious in both raid sizes.
UPDATE `creature_template` SET `LootId`=`Entry` WHERE `Entry` IN (37217,38103);
DELETE FROM `creature_loot_template` WHERE `entry` IN (37217,38103) AND `item`=52019;
INSERT INTO `creature_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(37217,52019,30,0,1,1,0,'Precious - Precious''s Ribbon'),
(38103,52019,30,0,1,1,0,'Precious (1) - Precious''s Ribbon');
