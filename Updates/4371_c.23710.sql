-- Belbi Quikswitch 23710
-- gossip corrected 
UPDATE gossip_menu_option SET action_menu_id = 8955 WHERE menu_id = 8783 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 9561, action_poi_id = 448 WHERE menu_id = 8783 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 9582 WHERE menu_id = 8783 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 8783 WHERE menu_id IN (8955,9561);
-- POI added
DELETE FROM points_of_interest WHERE entry = 448;
INSERT INTO points_of_interest (entry,x,y,icon,flags,data,icon_name) VALUES
(448,-4847.83,-862.606,7,75,0,'Brew of the Month Club, Ironforge');
-- in 3.x.x she and few other vendors also sells `Pint-Sized Pink Pachyderm`
DELETE FROM `npc_vendor` WHERE `entry` IN (23710,24495,27478,27489) AND `item` IN (46707);
INSERT INTO `npc_vendor` (`entry`, `item`,  `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(23710, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Belbi Quikswitch 23710
(24495, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Blix Fixwidget 24495
(27478, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Larkin Thunderbrew 27478
(27489, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'); -- Ray'ma 27489
