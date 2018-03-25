-- q.11628 'Shrouds of the Scourge'

-- q end script
DELETE FROM dbscripts_on_quest_end WHERE id = 11628;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11628,1,0,0,0,0,0,0,0,2000001589,0,0,0,0,0,0,0,''),
(11628,4,31,24709,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25987'),
(11628,5,3,0,0,0,24709,30,7,0,0,0,0,3464.547,4194.479,18.24241,3.944444,''),
(11628,7,0,0,0,0,24709,30,7,2000001590,0,0,0,0,0,0,0,''),
(11628,12,3,0,0,0,24709,30,7,0,0,0,0,3462.373,4192.152,18.24142,100,''),
(11628,14,3,0,0,0,24709,30,7,0,0,0,0,3462.373,4192.152,18.24142,0.4537856,''),
(11628,14,1,173,0,0,24709,30,7,0,0,0,0,0,0,0,0,''),
(11628,19,1,0,0,0,24709,30,7,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001589 AND 2000001590;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001589,'Aeire, $n has brought your hides. Please, take them before they make me ill.',0,0,0,25,NULL),
(2000001590,'I\'ll take those. We can\'t have the mighty chieftain cowering in fear of a few hides.',0,0,0,11,NULL);
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 1000, DetailsEmoteDelay3 = 1000, IncompleteEmote = 6, CompleteEmote = 1, OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmoteDelay2 = 1000, CompleteScript = 11628 WHERE entry = 11628;

-- Sage Aeire
DELETE FROM creature_template_addon WHERE entry = 24709;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24709,0,0,1,1,0,0,NULL);
