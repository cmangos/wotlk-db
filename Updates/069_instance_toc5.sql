-- #####
-- ToC5 fixes
-- #####
-- delete herald (summoned based on faction)
DELETE FROM creature WHERE guid=101589;
-- delete mounts (summoned based on faction)
DELETE FROM creature WHERE guid IN (103239,103245,103246,103292,103293,103294,103299,103300,103321,103322,103323,103363,103393,103404,
103412,103414,103423,103424,103462,103466,103467,103468,103470,103471);

-- template update
UPDATE creature_template SET UnitFlags=UnitFlags|512, NpcFlags=NpcFlags|1 WHERE entry=35004;
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE entry=35644;

-- vehicle spells
DELETE FROM creature_template_spells WHERE entry IN (36558,36557);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(36557, 68505, 62575, 68282, 62552),
(36558, 68505, 62575, 68282, 62552); -- 36558 is guesswork based on 36557
-- vehicle boarding
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36557,36558);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, cast_flags) VALUES
(36557, 67830, 0, 1),
(36558, 67830, 0, 1); -- 36558 is guesswork based on 36557

-- creature addons
DELETE FROM creature_template_addon WHERE entry IN (34657,34701,34702,34703,34705,35569,35570,35571,35572,35617,35328,35331,35330,35332,
35329,35314,35326,35323,35325,35327,35644,36558);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, auras) VALUES
(35644, 0, 0x0, 0x1, '67870'), -- argent warhorse H
(36558, 0, 0x0, 0x1, '67865'), -- battleworg H
(34657, 0, 0x0, 0x1, '63406'), -- night elf
(34701, 0, 0x0, 0x1, '63423'), -- draenei
(34702, 0, 0x0, 0x1, '63396'), -- gnome
(34703, 0, 0x0, 0x1, '63427'), -- dwarf
(34705, 0, 0x0, 0x1, '62594'), -- human
(35569, 0, 0x0, 0x1, '63403'), -- blood elf
(35570, 0, 0x0, 0x1, '63399'), -- troll
(35571, 0, 0x0, 0x1, '63436'), -- tauren
(35572, 0, 0x0, 0x1, '63433'), -- orc
(35617, 0, 0x0, 0x1, '63430'), -- undead
(35328, 28912, 0x0, 0x1, '64100'), -- human champ
(35331, 28571, 0x0, 0x1, '64100'), -- gnome champ
(35330, 29255, 0x0, 0x1, '64100'), -- draenei champ
(35332, 29256, 0x0, 0x1, '64100'), -- night elf champ
(35329, 29258, 0x0, 0x1, '64100'), -- dwarf champ
(35314, 29260, 0x0, 0x1, '64100'), -- orc champ
(35326, 29262, 0x0, 0x1, '64100'), -- blood elf champ
(35323, 29261, 0x0, 0x1, '64100'), -- trool champ
(35325, 29259, 0x0, 0x1, '64100'), -- tauren champ
(35327, 29257, 0x0, 0x1, '64100'); -- undead champ
