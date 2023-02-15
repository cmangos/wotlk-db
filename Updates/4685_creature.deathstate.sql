-- Remove creature.deathstate for Crazed Northsea Slaver 24676
-- SELECT * FROM creature where deathstate != 0 order by guid;
-- https://www.wowhead.com/wotlk/npc=24676/crazed-northsea-slaver
-- ServerToClient: SMSG_AURA_UPDATE (0x2C22) Length: 52 ConnIdx: 1 Time: 08/28/2017 10:12:25.589 Number: 33005
-- UpdateAll: True
-- AurasCount: 1
-- [0] Slot: 0
-- [0] SpellID: 29266 (29266)
-- UnitGUID: Full: 0x2030A0476018190000001D00051CF6CA Creature/0 R3112/S29 Map: 571 Entry: 24676 Low: 85784266
REPLACE INTO `creature_addon` (`guid`, `auras`) SELECT `guid`, 29266 FROM `creature` WHERE `guid` BETWEEN 507019 AND 507035;
REPLACE INTO `creature_addon` (`guid`, `auras`) SELECT `guid`, 29266 FROM `creature` WHERE `guid` IN (507048,507051);
UPDATE `creature` SET `deathstate` = 0 WHERE `guid` IN (507019,507020,507021,507022,507023,507024,507025,507026,507027,507028,507029,507030,507031,507032,507033,507034,507035,507048,507051);

