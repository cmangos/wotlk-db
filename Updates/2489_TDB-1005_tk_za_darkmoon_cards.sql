-- Move remaining plain Darkmoon Cards 5-8 Holders to Reference Loot Template 49001 "Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids"
DELETE FROM `creature_loot_template` WHERE `entry` IN (24549,23774,23582,20031,20032,20033,20036,20043,20044,20048,20049,20052,21178,23542,23580,23581,23586,23596,23597,24059,24065,24179,24180,24374) AND `item` IN (31883,31884,31886,31887,31893,31894,31896,31898,31902,31903,31905,31906,31911,31912,31915,31916,49001);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(20031, 49001, 0.1, 0, -49001, 1, 0), -- Bloodwarder Legionnaire
(20032, 49001, 0.1, 0, -49001, 1, 0), -- Bloodwarder Vindicator
(20033, 49001, 0.1, 0, -49001, 1, 0), -- Astromancer
(20036, 49001, 0.1, 0, -49001, 1, 0), -- Bloodwarder Squire
(20043, 49001, 0.1, 0, -49001, 1, 0), -- Apprentice Star Scryer
(20044, 49001, 0.1, 0, -49001, 1, 0), -- Novice Astromancer
(20048, 49001, 0.1, 0, -49001, 1, 0), -- Crimson Hand Centurion
(20049, 49001, 0.1, 0, -49001, 1, 0), -- Crimson Hand Blood Knight
(20052, 49001, 0.1, 0, -49001, 1, 0), -- Crystalcore Mechanic
(21178, 49001, 0.01, 0, -49001, 1, 0), -- Varedis "https://web.archive.org/web/20111028173716/http://www.wowhead.com:80/npc=21178"
(23542, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Axe Thrower
(23580, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Warbringer
(23581, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Medicine Man
-- (23586, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Scout - nonelite, fast respawn
(23596, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Flame Caster
(23597, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Guardian
(24059, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Beast Tamer
(24065, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Handler
(24179, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Wind Walker
(24180, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Protector
(24374, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Berserker
-- NEW
(23582, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Tribesman
(23774, 49001, 0.1, 0, -49001, 1, 0), -- Amani'shi Trainer
(24549, 49001, 0.1, 0, -49001, 1, 0); -- Amani'shi Tempest

-- missing ref added
DELETE FROM reference_loot_template WHERE entry = 49001;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('49001','31883','0','1','1','1','0','Eight of Blessings'),
('49001','31884','0','1','1','1','0','Five of Blessings'),
('49001','31886','0','1','1','1','0','Seven of Blessings'),
('49001','31887','0','1','1','1','0','Six of Blessings'),
('49001','31893','0','1','1','1','0','Eight of Storms'),
('49001','31894','0','1','1','1','0','Five of Storms'),
('49001','31896','0','1','1','1','0','Seven of Storms'),
('49001','31898','0','1','1','1','0','Six of Storms'),
('49001','31902','0','1','1','1','0','Eight of Furies'),
('49001','31903','0','1','1','1','0','Five of Furies'),
('49001','31905','0','1','1','1','0','Seven of Furies'),
('49001','31906','0','1','1','1','0','Six of Furies'),
('49001','31911','0','1','1','1','0','Eight of Lunacy'),
('49001','31912','0','1','1','1','0','Five of Lunacy'),
('49001','31915','0','1','1','1','0','Seven of Lunacy'),
('49001','31916','0','1','1','1','0','Six of Lunacy');
