-- CompleteScript for q.10203 Invaluable Asset Zapping

UPDATE `quest_template` SET `DetailsEmote1`='6', `DetailsEmote2`='11', `DetailsEmote3`='1', `DetailsEmoteDelay2`='1000', `DetailsEmoteDelay3`='1000', `IncompleteEmote`='6', `CompleteEmote`='6', `OfferRewardEmote1`='4', `OfferRewardEmote2`='6', `OfferRewardEmoteDelay2`='1000', `CompleteScript`=10203 WHERE  `entry`=10203;

UPDATE `creature_template` SET `ExtraFlags`='0' WHERE  `entry` IN(21262,21261); -- Remove CREATURE_EXTRA_FLAG_INVISIBLE

-- ----------------------------
-- Lead Sapper Blastfizzle (Entry: 19634) - Convert old npc_gossip entry to gossip_menu with correct IDs
UPDATE creature_template SET GossipMenuId=8003 WHERE entry=19634;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=19634);

DELETE FROM `gossip_menu` WHERE `entry`=8003;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8003, 9869, 0, 0);

-- Delete the old version of this script that used creature_movement
-- Doing everything in dbscripts_on_quest_end is better because this way Blastfizzle won't stop moving when a player talks to him 
-- (Yes, it's Blizzlike that he keeps gossip and quest flags during the script)
DELETE FROM `creature_movement_template` WHERE `entry`=19634;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1963401,1963402);
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10203;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10203,0,25,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run On',0,0,0,0),
(10203,9,0,0,0,0,2000001248,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Ack!  Everyone run... the last asset is materializing!!!',0,0,0,0),
(10203,9,3,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Move Point 1',2930.243,3579.115,129.5008,2.481788),
(10203,10,36,0,0,0,0,0,0,0,21259,10,1,'Lead Sapper Blastfizzle - Face Crash Bigbomb',0,0,0,0),
(10203,11,15,34427,0,0,0,0,0,0,21262,10,7,'Goblin Equipment Trigger - Cast Ethereal Teleport',0,0,0,0),
(10203,12,1,5,0,0,0,0,0,0,21259,10,0,'Crash Bigbomb - OneShotExclamation',0,0,0,0),
(10203,12,25,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run Off',0,0,0,0),
(10203,12,0,0,0,0,2000001249,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Crash, get out of there!!!  Oh no!!!  Not another of my proteges!!!',0,0,0,0),
(10203,12,9,94553,13,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Big Wagon Full of Explosives)',0,0,0,0),
(10203,12,15,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cast Permanent Feign Death',0,0,0,0),
(10203,20,0,0,0,0,2000001250,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Uh oh.  The wagon looks unstable... it''s going to blow!!!',0,0,0,0),
(10203,21,15,30934,0,0,0,0,0,0,21261,74496,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,23,15,30934,0,0,0,0,0,0,21261,74498,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,23,15,30934,0,0,0,0,0,0,21261,74497,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,25,9,94554,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,25,9,94555,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,25,9,94556,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,26,14,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cancel Aura',0,0,0,0),
(10203,28,0,0,0,0,2000001251,0,0,0,21259,10,7,'Crash Bigbomb - I''m ok!  It''s just a flesh wound...  That was fun!!!',0,0,0,0),
(10203,32,0,0,0,0,2000001252,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Fun?!!  You nearly gave me a heart attack!  Yeah, I guess you''re right.  That was fun!!!',0,0,0,0),
(10203,40,3,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Move Point 2',2923.388,3577.391,129.3778,0.6806784),
(10203,44,36,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Reset Facing',0,0,0,0);
