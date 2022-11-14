-- q.13549 'Tails Up'
UPDATE gossip_menu_option SET action_script_id = 1027301 WHERE menu_id IN (10273,10274);
DELETE FROM dbscripts_on_gossip WHERE id IN (1027301,10273);
INSERT INTO dbscripts_on_gossip (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
('1021901','0','0','15','62110','1','0','0','0','8','0','0','0','0','0','0','0','0','0','cast Tails Up: Gender Master (triggered)');
-- Female Frost Leopard 33010 & Female Icepaw Bear 33011
UPDATE creature_template SET UnitFlags = 768, minLevel = 76, maxLevel = 77, MinLevelHealth = 11001, MaxLevelHealth = 11379 WHERE entry IN (33010,33011);
