-- -------------------------------
-- CMaNGOS custom DB updates
-- -------------------------------

-- This file holds SQL updates to DB contents that are known to be different from official/sniff data
-- These updates are applied to ensure expected functionning from a gameplay point of view
-- (aka "Blizzlike") when using CMaNGOS core.
--
-- These updates SHOULD NOT be part of a full DB dump (like for DB release) or inserted into a regular 
-- SQL update file as we need to keep DB data as "pure" as possible to analyse them and
-- deduce proper core behaviour from them.
-- 
-- Possible but non-exhaustive reasons for these updates to be needed:
--	- CMaNGOS core does not properly handle the data these updates are fixing (yet)
--	- Official/sniff data are from a different expansion/patch and were possibly changed since Classic
--	- Official/sniff data from client are different from what they are server-side
--	- Data or their parsing were wrong


-- ============================================================
-- Classic section
-- ============================================================

-- -------------------------------
-- Gameobject custom changes
-- -------------------------------

-- Make Moonwell GO server-side (visible by GM only)
UPDATE gameobject_template SET data3=1 WHERE entry=177272;

-- Make Incantion of Celebras Trap only visible by GM
UPDATE gameobject_template SET data8=1 WHERE entry=178963;

-- Make some trap GO only visible by GM
UPDATE gameobject_template SET data8=1 WHERE entry=103575; -- Containment Coffer TRAP
UPDATE gameobject_template SET data8=1 WHERE entry=128972; -- Shallow Grave TRAP
UPDATE gameobject_template SET data8=1 WHERE entry=176592; -- Shellfish Trap
UPDATE gameobject_template SET data8=1 WHERE entry=176750; -- Kodo Bones
UPDATE gameobject_template SET data8=1 WHERE entry=177493; -- Fire of Elune (Trap
UPDATE gameobject_template SET data8=1 WHERE entry=177529; -- Altar of Elune (Trap
UPDATE gameobject_template SET data8=1 WHERE entry=178124; -- Resonite Crystal (Trap
UPDATE gameobject_template SET data8=1 WHERE entry=178248; -- Naga Brazier (trap
UPDATE gameobject_template SET data8=1 WHERE entry=171941; -- Blackrock Keg Trap
UPDATE gameobject_template SET data8=1 WHERE entry=180391; -- Heart of Hakkar Spell Emitter
UPDATE gameobject_template SET data8=1 WHERE entry=181214; -- Necropolis critter spawner
UPDATE gameobject_template SET data8=1 WHERE entry=179324; -- Frostwolf Landmine
UPDATE gameobject_template SET data8=1 WHERE entry=179325; -- Stormpike Landmine
UPDATE gameobject_template SET data8=1 WHERE entry=160842; -- Gor'tesh's Lopped Off Head

-- Make Supply Crate trap GO only visible by GM
 UPDATE gameobject_template SET data8=1 WHERE entry IN (175534, 175535, 175536, 175537);

-- Make Dawn's Gambit Trap only visible by GM
UPDATE gameobject_template SET data2=5, data3=0, data8=0 WHERE entry=176110;
-- Dawn's Gambit: add data from GO trap 176110 until we are able to trigger trap GOs without spells
UPDATE gameobject_template SET data2=5, data3=18110, data4=1, data8=1 WHERE entry=177304;

-- The Demon Seed GO: make it despawnable on use with short autoclose value
UPDATE gameobject_template SET data3=65536, data5=1 WHERE entry=3524;

-- Add missing GO template 175622 spawn by GO Rookery Egg 175124 (guessed data)
DELETE FROM gameobject_template WHERE entry=175622;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`) VALUES
(175622, 6, 477, 'Rookery Egg Spawner', 1, 0, 0, 2, 15745, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Set 10 yards radius to Night Elven Bear Trap GO because it needs to be triggered by SD2 script otherwise (and said script do not exist yet)
UPDATE gameobject_template SET data2=10 WHERE entry=109515;

-- Set a 70 yards diameter for Ragnaros GO because because it needs to be triggered by SD2 script otherwise (and said script do not exist yet)
UPDATE gameobject_template SET data2=70 WHERE entry=178088;

-- Currently the core cannot make a GO usable for a specific quest if the items it holds are not objectives of the quest

-- Link Hive'Ashi Pod GO to quest 1126 so it is usable by players on the quest
UPDATE gameobject_template SET data8=1126 WHERE entry=178553;

-- Link Azsharite GOs to quest 3602 so they are usable by players on the quest
UPDATE gameobject_template SET data8=3602 WHERE entry IN (152620, 152621, 152622, 152631);

-- Link Crate with Holes, Snufflenose Command Stick and Snufflenose Owner's Manual GOs to quest 1221 so they are usable by players on the quest
UPDATE gameobject_template SET data8=1221 WHERE entry IN (68865, 21530, 21277);

-- Thaurissan Relic - original tbc-db value 0, classic-db (and classic sniff) value 3702 - the quest which involves actually using this object is 3701
UPDATE gameobject_template SET data1=3701 WHERE entry=153556;

-- Ritual Candle Aura
UPDATE gameobject_template SET `data8`=1 WHERE entry=179688; -- add serverside attribute so that it's not visible to players
UPDATE gameobject_template SET `faction`=1375 WHERE entry=179688; -- "Treasure" faction 1375 here is guessed based on when patch 1.4 was released, and the fact that it's hostile to Demon faction 90

-- Make PX-238 Winter Wondervolt TRAP GO server-side (visible by GM only)
UPDATE gameobject_template SET `data8`=1 WHERE entry=180797;

-- Andorhal Tower
-- SpellFocus radius reduced to 5 (sync with eff1 from spell:17016 that activates target there = 5y)
UPDATE gameobject_template SET data1 = 5 WHERE entry BETWEEN 176094 AND 176097;

-- Musty Tome 176150/176151
-- must despawn after used (has that flag set up.. but with restock timer it will never happen)
UPDATE gameobject_template SET data2=0 WHERE entry IN (176150,176151);

-- Cannonball: set radius to zero so it is only triggered through spell
UPDATE gameobject_template SET data2=0 WHERE entry=176211;

-- Verigan's Fist: must despawn during scripted quest
UPDATE gameobject_template SET `data3`=0, `data5`=1 WHERE entry=102413;


-- Temporary fix data6 for GO 178559 (Larva Spewer) in prevision of coming core update
UPDATE gameobject_template SET data6=0 WHERE entry=178559;

-- Drek'Thar's Scrolls 179004 - seemingly never used
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` = 179004;

-- Inconspicuous Landmark 142189 - consumable, despawn on s.11462 expire
UPDATE `gameobject_template` SET `data5` = 1 WHERE `entry` = 142189; -- 19660800 / 65536 = 300sec


-- -------------------------------
-- Creature custom changes
-- -------------------------------


-- ============================================================
-- TBC section
-- ============================================================

-- -------------------------------
-- Gameobject custom changes
-- -------------------------------

-- Hellfire Hot Spot Spreader
UPDATE gameobject_template SET data8=1 WHERE entry=183929; -- set serverside so that it's not visible to players
-- Sealed Tome traps
UPDATE gameobject_template SET data8=1 WHERE entry IN (181831,181838,181840,181842,181844);
-- Corki's Prison - make data match 182351
UPDATE gameobject_template SET data2=19660800 WHERE entry IN (182349,182350);
-- Consuming Flames Trap
UPDATE gameobject_template SET data3=0, data8=1 WHERE entry=178673; -- 21650, 0

-- Zul'Aman - Tanzar's Trunk - Is not subject to group loot per blizzlike data but all the other chests are. Confirmed data in sniff to be 0, however no such issues reported on retail. Confirmation that blizz sends unfixed GO template data???
UPDATE gameobject_template SET data15=1 WHERE entry IN(186648);

-- Make some trap GO only visible by GM
UPDATE gameobject_template SET data8=1 WHERE entry=184718; -- Cauldron Summoner
UPDATE gameobject_template SET data8=1 WHERE entry=184722; -- Cauldron Bug Summoner

-- Bogblossom 185497,185500 - consumable
UPDATE `gameobject_template` SET `data5` = 1 WHERE `entry` IN (185497,185500);

UPDATE gameobject_template SET data5=1 WHERE entry=184906; -- Power Converter (consumable)
UPDATE gameobject_template SET data8=1 WHERE entry=184910; -- Power Converter (serverside)

-- o.184958 'Nether Drake Egg'
-- trap makes it look like double spawn - removing its display fixes issue
UPDATE gameobject_template SET displayId = 0 WHERE entry = 184958;

-- -------------------------------
-- Item custom changes
-- -------------------------------


-- -------------------------------
-- Creature custom changes
-- -------------------------------


-- Shattered Halls Dummys add not_attackable and imun by npcs flags
-- Before: update creature_template set UnitFlags = '2304' where entry = 17578;
UPDATE creature_template SET UnitFlags = UnitFlags|640 WHERE entry = 17578;

-- mmap issues
UPDATE creature_template SET ExtraFlags = ExtraFlags|16384 WHERE `entry` IN (19608,21554); -- Frayer Wildling (Botanica)

-- -------------------------------

UPDATE `creature_template` SET `name` = 'Redeemed Spirit of Earth' WHERE `entry` = 21739; -- Redeemed Spriit of Earth

-- -------------------------------
-- Quest custom changes
-- -------------------------------

-- None

-- -------------------------------
-- Spell custom changes
-- -------------------------------

-- Dance Vibe spell should not stack
UPDATE `spell_template` SET `StackAmount`='1' WHERE (`Id`='29521');
-- Incapacitate Maloric - available only from behind target
UPDATE spell_template SET Attributes = Attributes|0x04000000 WHERE id = 63124;

-- ============================================================
-- WoTLK section
-- ============================================================

-- Shield Level 1 2 3 - spam preventing fix
UPDATE spell_template SET EffectTriggerSpell1 = 63104 WHERE id IN (63130,63131,63132);

-- -------------------------------
-- Gameobject custom changes
-- -------------------------------

-- The Eye of Eternity
-- The Focusing Iris 193958 193960 & Exit Portal 193908 - must despawn
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (193958,193960,193908);

-- Coldwind Tree
-- radius reduced to 2 - original 5 often did not trigger effect0 = player could spam credit. 
UPDATE gameobject_template SET data1 = 2 WHERE entry IN (188539);

-- Wolfsbane Root 189313 - must despawn
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (189313);

-- -------------------------------
-- Item custom changes
-- -------------------------------

-- ITEM_MOD_SPELL_HEALING_DONE 41 / ITEM_MOD_SPELL_DAMAGE_DONE 42 -> ITEM_MOD_SPELL_POWER 45
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 45 WHERE `entry` = 34967; -- 41, 4, 42 (+4 healing, +5spelldmg -> 5spellpower)

-- -----------------------------
-- Broadcast Text custom changes
-- -----------------------------

-- -------------------------------
-- Creature custom changes
-- -------------------------------

-- -------------------------------
-- Quest custom changes
-- -------------------------------

-- -------------------------------
-- Spell custom changes
-- -------------------------------

-- The Prodigal Leader - should have no cast delay
UPDATE `spell_template` SET `CastingTimeIndex`='1' WHERE (`Id`='58911');
-- Rope Beam - no idea why target are swaped. sniff shows that spell hits target instead of source (original: EffectImplicitTargetA1 = 1, EffectImplicitTargetB1 = 25)
UPDATE spell_template SET EffectImplicitTargetA1 = 25, EffectImplicitTargetB1 = 1 WHERE id IN (66206,63413);
