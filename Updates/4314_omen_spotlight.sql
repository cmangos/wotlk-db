-- Use wotlk aura for Omen Spotlight 15902
-- ServerToClient: SMSG_AURA_UPDATE (0x0496) Length: 24 ConnIdx: 0 Time: 02/11/2009 22:33:50.000 Number: 553123
-- GUID: Full: 0xF130003E1E030D3A Type: Creature Entry: 15902 Low: 199994
-- [0] Slot: 0
-- [0] Spell ID: 50236 (50236)
UPDATE `creature_template_addon` SET `auras` = '50236' WHERE `entry` = 15902; -- s.25824 -> s.50236

