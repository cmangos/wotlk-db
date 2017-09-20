-- Camp Mojache - Feralas
-- creatures missing PvP flag
UPDATE creature_template_addon SET b2_1_pvp_state = 1 WHERE entry IN (3500,5390,7737,7776,7854,7875,8020,8021,8115,8143,8144,8145,8146,8147,8158,8159,9548,9986,11098,11752,14373);
