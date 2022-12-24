-- Add missing InteractionPauseTimer from tbcmangos
-- https://github.com/cmangos/wotlk-db/commit/33fa03e4e4c2ece70cb553bdd66adb81d2081ff4#diff-8e240ed79d2e34b9f47040c387bb20100c153b686aedb9fb16ec3b3326f08c10
UPDATE `creature_template` SET `InteractionPauseTimer`=0 WHERE `Entry` IN (738, 14508); -- Private Thorsen, Short John Mithril
UPDATE `creature_template` SET `InteractionPauseTimer`=5000 WHERE `Entry`=9077; -- Warlord Goretooth
UPDATE `creature_template` SET `InteractionPauseTimer`=30000 WHERE `Entry`=11317; -- Jinar'Zillen
-- https://github.com/cmangos/tbc-db/commit/de673045e4ce6427e3a65134168f9a0f0e243d42
UPDATE `creature_template` SET `InteractionPauseTimer`=20000 WHERE `Entry`=21981; -- Overseer Nuaar

