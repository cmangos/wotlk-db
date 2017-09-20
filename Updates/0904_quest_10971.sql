-- q.10971 'Ethereum Secrets'
-- object must reset itself
UPDATE gameobject_template SET data3 = 0 WHERE entry IN (184418,184419,184420,184421,184422,184423,184424,184425,184426,184427,184428,184429,184430,184431);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184418,184419,184420,184421,184422,184423,184424,184425,184426,184427,184428,184429,184430,184431) AND delay = 1;
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184418,184419,184420,184421,184422,184423,184424,184425,184426,184427,184428,184429,184430,184431) AND delay = 300;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184418,1,18,0,0,0,20520,68948,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184418,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184419,1,18,0,0,0,20520,68951,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184419,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184420,1,18,0,0,0,20520,68952,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184420,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184421,1,18,0,0,0,20520,68949,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184421,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184422,1,18,0,0,0,20520,68953,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184422,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184423,1,18,0,0,0,20520,70518,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184423,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184424,1,18,0,0,0,20520,68950,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184424,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184425,1,18,0,0,0,20520,69736,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184425,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184426,1,18,0,0,0,20520,70168,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184426,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184427,1,18,0,0,0,20520,70514,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184427,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184428,1,18,0,0,0,20520,70515,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184428,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184429,1,18,0,0,0,20520,70516,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184429,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184430,1,18,0,0,0,20520,70517,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184430,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(184431,1,18,0,0,0,20520,70519,7 | 0x10,0,0,0,0,0,0,0,0,''),
(184431,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go');

-- Ethereum Prisoner
-- sync with gameobjects
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 20520;

-- Factions corrected
-- Rescued Keepers of Time Custodian
UPDATE creature_template SET FactionAlliance = 1779, FactionHorde = 1779 WHERE Entry = 22815;
-- Rescued Sporeggar Scout
UPDATE creature_template SET FactionAlliance = 1707, FactionHorde = 1707 WHERE Entry = 22814;
-- Rescued Consortium Dealer
UPDATE creature_template SET FactionAlliance = 1731, FactionHorde = 1731 WHERE Entry = 22813;
-- Rescued Sha'tar Vindicator
UPDATE creature_template SET FactionAlliance = 1741, FactionHorde = 1741 WHERE Entry = 22812;
-- Rescued Sha'tar Vindicator
UPDATE creature_template SET FactionAlliance = 1818, FactionHorde = 1818 WHERE Entry = 22811;
-- Rescued Cenarion Expedition Druid
UPDATE creature_template SET FactionAlliance = 1728, FactionHorde = 1728 WHERE Entry = 22810;
