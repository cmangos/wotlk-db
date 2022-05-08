-- q.9418 'Avruu's Orb' - Update
-- fix for non working quest data taken from TDB
UPDATE gossip_menu SET script_id = 1021901 WHERE entry = 10219;
UPDATE gossip_menu_option SET action_script_id = 1021902 WHERE menu_id = 10219;
DELETE FROM dbscripts_on_gossip WHERE id IN (1021901,1021902,10219); -- 10219 old not up to curent standards script
INSERT INTO dbscripts_on_gossip (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
('1021901','0','0','31','17085','20','0','0','0','8','0','0','0','0','0','0','0','0','0','Check for Aeranas'),
('1021901','1000','0','10','17085','180000','0','0','0','0','0','0','0','0','-1323.91','4042.45','116.626','0.296706','0','Summon Aeranas'),
('1021902','0','0','0','0','0','0','17085','20','7','13448','0','0','0','0','0','0','0','0','Aeranas SAY'),
('1021902','6000','0','22','14','3','0','17085','20','7','0','0','0','0','0','0','0','0','0','Aeranas Change Faction');
