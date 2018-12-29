-- q.11491 'Iron Rune Constructs and You: The Bluff'
-- only when quest is active
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 902403, condition_id = 1566 WHERE menu_id = 9024 AND id = 2;
DELETE FROM conditions WHERE condition_entry = 1566;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1566, 9, 11491, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 902403; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902403,0,15,49989,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
-- Iron Rune Construct
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 291, MaxMeleeDmg = 415 WHERE entry = 24823;
DELETE FROM creature_template_spells WHERE entry = 24823;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(24823,44562,0,0,0);
-- Part of Iron Rune Construct 24823 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20093;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20093,0,31,24718,7,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - search for 24718'),
(20093,1,20,0,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - idle'),
(20093,2,36,0,0,0,24718,100,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - face target'),
(20093,2,0,0,0,0,24718,100,7,2000001767,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - text'),
(20093,4,0,0,0,0,0,0,0,2000001769,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823'),
(20093,4,15,44563,0,0,24718,100,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - cast Bluff Quest Credit'),
(20093,5,0,0,0,0,24718,100,7,2000001768,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - text'),
(20093,5,20,2,0,0,24718,100,7,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24823 - Lebronski - wps');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001767 AND 2000001769;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001767,'What do you think you\'re doing, man? Lebronski does NOT appreciate you dragging your loose metal parts all over his rug.',0,0,0,5,NULL),
(2000001768,'Far out, man. This bucket of bolts might make it after all...',0,0,0,1,NULL),
(2000001769,'Model U-9207 Iron Rune Construct does not appreciate your tone of voice. Commencing total annihilation of your rug, Lebronski.',0,0,0,0,NULL);
