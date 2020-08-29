-- q.12263 'The Best of Intentions'
DELETE FROM dbscripts_on_quest_start WHERE id = 12263;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12263,500,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.146755,'face target'),
(12263,1000,15,48748,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Absorb Image'),
(12263,5000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(12263,5100,15,48750,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Sense Demons on Player'),
(12263,7000,15,48770,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Serinar\'s Vision on Player'),
(12263,7100,0,0,0,0,0,0,0,2000000194,0,0,0,0,0,0,0,'Say text'),
(12263,9000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.12611,'face reset');
UPDATE quest_template SET StartScript = 12263 WHERE entry = 12263;
DELETE FROM dbscripts_on_quest_end WHERE id = 12263;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12263,1,14,48750,0,0,0,0,6,0,0,0,0,0,0,0,0,'remove: Sense Demons on Player'),
(12263,2,14,48770,0,0,0,0,6,0,0,0,0,0,0,0,0,'remove: Serinar\'s Vision on Player');
UPDATE quest_template SET  CompleteScript = 12263 WHERE entry = 12263;
-- gossip
UPDATE gossip_menu_option SET action_script_id = 953701 WHERE menu_id = 9537;
DELETE FROM dbscripts_on_gossip WHERE id IN (9537,953701);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(953701,1000,15,48750,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Sense Demons on Player'),
(953701,3000,15,48770,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Serinar\'s Vision on Player');
