-- q.11489 'Iron Rune Constructs and You: Collecting Data' 

-- only when quest is active
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 902402, condition_id = 1565 WHERE menu_id = 9024 AND id = 1;
DELETE FROM conditions WHERE condition_entry = 1565;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1565, 9, 11489, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 902402; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902402,0,15,49986,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
-- Iron Rune Construct
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 24821;
DELETE FROM creature_template_spells WHERE entry = 24821;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(24821,44550,0,0,0);
-- Part of Iron Rune Construct 24821
DELETE FROM dbscripts_on_relay WHERE id = 20092;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20092,4,31,24821,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24821 - Send EVENT - search for 24821'),
(20092,5,35,5,25,0,24821,25,7,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24821 - Send EVENT');

-- respawntime for Iron Dwarf Relic
UPDATE creature SET spawntimesecsmin = 1, spawntimesecsmax = 1 WHERE id = 24820;
