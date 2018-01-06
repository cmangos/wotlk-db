-- Dire Pool Spell Focus
DELETE FROM gameobject_template WHERE entry = 178225;
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
(178225, 8, 2770, 'Dire Pool Spell Focus', 0, 0, 0, 1, 1083, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- missing object added
DELETE FROM gameobject WHERE guid = 15705;
DELETE FROM game_event_gameobject WHERE guid = 15705;
DELETE FROM gameobject_battleground WHERE guid = 15705;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(15705, 178225, 1, -4033.24, 1345.66, 152.989, 3.14159, 0, 0, 1, 0, 900, 900, 100, 1);
