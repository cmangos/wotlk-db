-- missing Seal of Righteousness added for Draenei Paladin
DELETE FROM playercreateinfo_action WHERE `race` = 11 AND `class` = 2 AND `button` = 1;
INSERT INTO playercreateinfo_action (race,class,button,action,type) VALUES
(11,2,1,21084,0);
