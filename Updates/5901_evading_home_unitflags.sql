-- UNIT_FLAG_EVADING_HOME (0x10) is a state: the core sets it while a creature evades home after combat.
-- Evidence found: these templates spawn without it, so it does not belong in creature_template.
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`&~16 WHERE `Entry` IN (
17587, -- Draenei Youngling
18948, -- Stormwind Soldier
18950, -- Orgrimmar Grunt
18965, -- Darnassian Archer
18966, -- Justinius the Harbinger
18969, -- Melgromm Highmountain
18970, -- Darkspear Axe Thrower
18972, -- Orgrimmar Shaman
18986, -- Ironforge Paladin
19581, -- Maddix
22089, -- Toshley Flying Machine
22433, -- Ja'y Nosliw
24175, -- Amani'shi Lookout
24418, -- Steel Gate Flying Machine
24761, -- Brightscale Wyrm
25545, -- Brightscale Wyrm (1)
26199, -- Snowfall Glade Den Mother
26815, -- Lieutenant Ta'zinni
36065, -- Fjola Lightbane
36066, -- Eydis Darkbane
36838, -- Alliance Gunship Cannon
37810); -- Healing Stream Totem

-- No proof found for these: changed like the templates above, to revert if one of them turns out to spawn with the flag.
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`&~16 WHERE `Entry` IN (
1855, -- Tirion Fordring
4789, -- Fallenroot Rogue
10037, -- Lakeshire Guard
23089, -- Akama
23369, -- Whirling Blade
24737, -- William Dunadaire
26045); -- Storm Tempest
