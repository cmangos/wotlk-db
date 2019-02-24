-- Warpwood Pod - Dire Maul
-- Missing templates - added
DELETE FROM gameobject_template WHERE entry IN (179527,179530,179531);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) values
(179527,6,391,'Warpwood Pod - Root',0,0,0,0.75,0,0,10,22800,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(179530,6,391,'Warpwood Pod - Spore',0,0,0,0.75,0,0,10,22821,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(179531,6,391,'Warpwood Pod - Summon',0,0,0,0.75,0,0,10,22803,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
