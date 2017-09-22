-- The Shadowmoon Shuffle 10576
UPDATE creature_loot_template SET ChanceOrQuestChance = -25 WHERE item = 30640 AND entry IN (19792,19796,19806);
UPDATE creature_loot_template SET ChanceOrQuestChance = -5 WHERE item = 30640 AND entry IN (19795);

-- What Illidan wants Illidan gets 10577
UPDATE gossip_menu_option SET action_script_id = 8341 WHERE menu_id = 8341 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id = 8340;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8341,0,0,0,0,21639,75468,16,2000001419,0,0,0,0,0,0,0,'Ilidan Slayer - Play emote'),
(8341,1,3,0,0,21639,75468,16,0,0,0,0,-4579.364,1671.540,175.868,3.371,'Ilidan Slayer - Move behind player'),
(8341,1,3,0,0,21639,75469,16,0,0,0,0,-4579.287,1667.287,175.849,2.513,'Ilidan Slayer - Move behind player');
DELETE FROM dbscript_string WHERE entry = 2000001419;
INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000001419,'%s moves in behind you with his axe at the ready.',0,2,0,0,'Ilidan Slayer - emote');
DELETE FROM dbscripts_on_gossip WHERE id = 8338;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8338,0,7,10577,0,0,0,0,0,0,0,0,0,0,0,0,'quest 10577 complete'),
(8338,1,3,0,0,21639,75468,16,0,0,0,0,-4578.17,1674.25,176.243,0,'Ilidan Slayer - Move home'),
(8338,1,3,0,0,21639,75469,16,0,0,0,0,-4578.82,1664.22,176.243,0.296706,'Ilidan Slayer - Move home');

-- The Cipher of Damnation 10588
UPDATE creature_template SET MinLevel = 70,MaxLevel = 70 WHERE entry IN (21685,21687,21686);
UPDATE creature_template SET MinLevelHealth = 20250, MaxLevelHealth = 20250 WHERE entry = 21685;
UPDATE creature_template SET MinLevelHealth = 16200, MaxLevelHealth = 16200 WHERE entry = 21686;
UPDATE creature_template SET MinLevelHealth = 55888, MaxLevelHealth = 55888 WHERE entry = 21687;

UPDATE creature_template SET NpcFlags = 2, UnitFlags = 768, FactionAlliance = 35, FactionHorde = 35 WHERE entry IN (21073,21097,21109,21116); -- fix attackability
DELETE FROM spell_script_target WHERE entry IN (36035); -- target only enraged spirits
INSERT INTO spell_script_target VALUES
(36035,1,21050,0),
(36035,1,21061,0),
(36035,1,21059,0),
(36035,1,21060,0);

-- Trial of the Naaru: Mercy
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item = 31716;
