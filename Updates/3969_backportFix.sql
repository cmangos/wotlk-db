-- Table 'creature_loot_template' entry 18201 isn't creature entry and not referenced from loot, and then useless.
-- Tamed Sporebat
DELETE FROM `creature_loot_template` WHERE `entry` = 18201;

-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 9901) as well. Overwriting.
DELETE FROM `npc_text` WHERE `ID` = 9901;
