-- Fixed in Core
-- q.12849 'The Power Of Blood, Frost And Unholy'
-- fixed annoying yellow question mark hang on npc.. after quest completed. (temp)  
DELETE FROM dbscripts_on_quest_end WHERE id = 12849; -- remove with UPDATEPACK 0.9
UPDATE quest_template SET CompleteScript = 0 WHERE entry = 12849; -- remove with UPDATEPACK 0.9

-- Scarlet Ghoul
-- stats corrected - Class=1. for lvl=1. (will be updated to players one by core)
UPDATE creature_template SET Expansion = 2, MinLevelHealth = 21, MaxLevelHealth = 21, MinMeleeDmg = 1.55, MaxMeleeDmg = 1.68, Armor = 7, MeleeAttackPower = 9, EquipmentTemplateId = 53 WHERE entry = 28845;
DELETE FROM creature_template_addon WHERE entry = 28845;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28845,0,0,1,0,0,0,NULL);
