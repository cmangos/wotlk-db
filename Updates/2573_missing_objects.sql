-- missing traps added
-- source TC (need to be confirmed)
DELETE FROM `gameobject_template` WHERE Entry IN (190721,194645,195089);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `ExtraFlags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) values
('190721','6','0','Harvested Blight Crystal','','','','0','0','0','0.5','0','0','0','0','0','0','0','0','0','52261','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
('194645','6','5932','Stone Block Trap','','','','0','0','0','1','0','0','0','0','0','0','0','0','0','64055','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
('195089','6','0','Spirit Candle','','','','0','0','0','1','0','0','0','0','0','0','0','0','10','65459','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
 