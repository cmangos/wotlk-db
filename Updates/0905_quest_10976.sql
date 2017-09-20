-- q.10976 'The Mark of the Nexus-King'
-- object must reset itself
UPDATE gameobject_template SET data3 = 0 WHERE entry IN (184595,185461,185462,185463,185464,185465,185466,185467);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (184595,185461,185462,185463,185464,185465,185466,185467) AND delay = 300;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184595,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185461,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185462,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185463,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185464,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185465,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185466,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go'),
(185467,300,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset go');

-- Solus the Eternal
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE Entry = 20888;

-- Matron Li-sahar
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE Entry = 22825;

-- King Dorfbruiser
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 22826;

-- Gorgolon the All-Seeing
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE Entry = 22827;

-- Trelopades <Legion Commander>
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90, EquipmentTemplateId = 1568 WHERE Entry = 22828;
