-- https://wowwiki-archive.fandom.com/wiki/Spell_power_coefficient?oldid=2304225
-- https://wowwiki-archive.fandom.com/wiki/Power_Word:_Shield?oldid=2405383
-- https://wowwiki-archive.fandom.com/wiki/Spell_power?direction=prev&oldid=2407098
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(17, 0.8068, 0, 0, 0, 'Priest - Power Word: Shield'), -- https://web.archive.org/web/20100824111631/http://elitistjerks.com/f77/t83203-wotlk_healing_compendium_v3_3_arthas_downfall/
-- https://web.archive.org/web/20100927095752/http://elitistjerks.com/f77/t97934-wotlk_healing_compendium_v3_3_5_fun_twilight_halion/
-- And with 4000 spellpower you are looking at the following absorb:
-- Total Absorb = (base absorb+(0.8068+0.40)*SP)*(1.15)*(1.04)*(1.05)
-- Total Absorb = (2230+(1.2068)*4000)*1.15*1.04*1.05
-- Total Absorb = 8862 absorb (Pretty large shield)
(543, (1.5 / 3.5) * (0.855 / 0.455), 0, 0, 0, 'Mage - Fire Ward'), -- -- https://web.archive.org/web/20100724031145/http://elitistjerks.com/f75/t30655-wotlk_complete_mage_compendium_3_3_3_live/
(1463, (1.5 / 3.5) * (0.855 / 0.455), 0, 0, 0, 'Mage - Mana Shield'),
(6143, (1.5 / 3.5) * (0.855 / 0.455), 0, 0, 0, 'Mage - Frost Ward'),
(6229, (1.5 / 3.5) * (0.855 / 0.455), 0, 0, 0, 'Warlock - Shadow Ward'),
(11426, (1.5 / 3.5) * (0.855 / 0.455), 0, 0, 0, 'Mage - Ice Barrier');

