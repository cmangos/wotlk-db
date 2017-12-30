-- Force-Commander Steeljaw
UPDATE creature_template SET FactionAlliance = 21, FactionHorde = 21, MinLevel = 71, MaxLevel = 71, MinLevelHealth = 30196, MaxLevelHealth = 30196, Armor = 7018, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 308, MinMeleeDmg = 2241, MaxMeleeDmg = 3196 WHERE entry = 25359;

DELETE FROM dbscripts_on_creature_death WHERE id = 25359;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25359,0,0,0,0,0,0,0,0,2000001517,0,0,0,0,0,0,0,''),
(25359,0,18,20000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000001517;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001517,'I\'m freed! Thank you.',0,0,0,1,NULL);
