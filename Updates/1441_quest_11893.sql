-- q.11893 'The Power of the Elements'
-- Steam Rager
DELETE FROM creature_template_addon WHERE entry = 24601;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24601,0,0,1,0,0,0,36151);
DELETE FROM dbscripts_on_creature_death WHERE id = 24601;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24601,0,31,25987,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25987'),
(24601,1,15,46376,0,0,25987,21,1,0,0,0,0,0,0,0,0,'Cast Airy Soul'),
(24601,2,15,46378,0,0,25987,21,3,0,0,0,0,0,0,0,0,'Cast Windsoul Credt');

-- Windsoul Totem
DELETE FROM creature_template_addon WHERE entry = 25987;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25987,0,0,1,0,0,0,46373);
-- Stats
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75, UnitFlags = 768, UnitClass = 2, Expansion = 2, MinLevelHealth = 10635, MaxLevelHealth = 10635, MinLevelMana = 3561, MaxLevelMana = 3561, Armor = 8204, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 370, MinMeleeDmg = 339, MaxMeleeDmg = 482 WHERE entry = 25987;

-- spell need target
DELETE FROM spell_script_target WHERE entry IN (46374,46399);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(46374,1,24601,0),
(46399,1,26041,0);

-- Quest end Script
DELETE FROM dbscripts_on_quest_end WHERE id = 11893;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11893,1,0,0,0,0,0,0,0,2000001583,0,0,0,0,0,0,0,''),
(11893,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.7853982,''),
(11893,5,15,46399,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11893,11,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.42601,'');
DELETE FROM dbscript_string WHERE entry = 2000001583;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001583,'Fezzix, I think we\'ve solved your little engine problem.',0,0,0,1,NULL);
UPDATE quest_template SET ReqSourceCount3 = 1, CompleteScript = 11893 WHERE entry = 11893;