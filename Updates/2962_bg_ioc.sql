
-- ** Update creatures
-- creature linking: boss with helpers
DELETE FROM creature_linking_template WHERE entry IN (34918,34919);
INSERT INTO creature_linking_template VALUES
(34918, 628, 34922, 3, 30),
(34919, 628, 34924, 3, 30);

-- delete summoned vehicles at workshop
DELETE FROM creature WHERE id IN (34776,35069,34775) AND map=628;
-- delete summoned vehicles at docks
DELETE FROM creature WHERE id IN (34802,35273,34793) AND map=628;
-- delete boss and helpers
DELETE FROM creature WHERE id IN (34924,34922,34918,34919) AND map=628;

-- ** Gameobject fixes **
UPDATE gameobject SET spawntimesecsmin = 800, spawntimesecsmax = 800 WHERE id IN (195702, 195701);
-- spawn effects
DELETE FROM gameobject WHERE guid IN (6280132,6280133,6280134,6280135,6280136,6280137);
INSERT INTO gameobject VALUES
(6280132, 195705, 628, 3, 1, 827.9618, -994.4757, 134.0703, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1),
(6280133, 195705, 628, 3, 1, 738.7952, -1106.747, 134.745, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1),
(6280134, 195705, 628, 3, 1, 672.2639, -1157.035, 133.7057, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1),
(6280135, 195706, 628, 3, 1, 827.9618, -994.4757, 134.0703, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1),
(6280136, 195706, 628, 3, 1, 738.7952, -1106.747, 134.745, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1),
(6280137, 195706, 628, 3, 1, 672.2639, -1157.035, 133.7057, 3.141593, 0, 0, -1, 0, -800, -800, 0, 1);

-- ** Spell fixes ***
-- Spell script targets
DELETE FROM spell_script_target WHERE entry IN (66550,66551,66630,66637);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(66550, 1, 22515),
(66551, 1, 22515),
(66630, 1, 34984),
(66637, 1, 34984);

-- ** Achievements **
-- battleground achiev conditions
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12060,12061);
INSERT INTO achievement_criteria_requirement VALUES
(12060, 22, 0, 0),
(12061, 22, 0, 0);

-- ** Creature Script **
-- Part of High Commander Halford Wyrmbane / Overlord Agmar EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20500;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20500,10,31,22515,15,0,0,0,0,0,0,0,0,0,0,0,0,'Part of High Commander Halford Wyrmbane / Overlord Agmar EAI: search for 22515 (terminate if not found)'),
(20500,500,15,66776,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of High Commander Halford Wyrmbane / Overlord Agmar EAI: cast 66776'),
(20500,900,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of High Commander Halford Wyrmbane / Overlord Agmar EAI: send self event A');
