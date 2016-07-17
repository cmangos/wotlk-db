-- UPDATE for: To Legion Hold(q.10596) -H  (q.10563) -A
-- remove old spell_script
DELETE FROM dbscripts_on_spell WHERE id = 37097;
-- server side spell - source: TrinityCore
DELETE FROM spell_template WHERE id = 37492;
INSERT INTO spell_template (id, effect0, effect0_misc_value, comments) VALUES
-- missing effect1 = stun
-- add trigger for server-side spell boxotricks 
(37492,61,13852,'BOX O TRICKS EVENT TRIGGER');
-- emotes moved into db_script_string
UPDATE db_script_string SET emote = 25 WHERE entry = 2000005418;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005419;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005421;
UPDATE db_script_string SET emote = 66 WHERE entry = 2000005422;
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005423;
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005424;
UPDATE db_script_string SET emote = 274 WHERE entry = 2000005425;
-- script updated
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2163301, 2163302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2163301,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,'visual - summon'),
(2163302,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2163302,4,0,0,0,0,0,0,2000005418,0,0,0,0,0,0,0,''),
(2163302,4,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2163302,5,10,21502,43000,0,0,0,0,0,0,0,-3300.25,2927.11,173.654,2.45862,'summon - Image of Warbringer Razuun'),
(2163302,6,0,0,0,21502,10,0x04,2000005419,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,11,0,0,0,0,0,0,2000005420,0,0,0,0,0,0,0,''),
(2163302,16,0,0,0,21502,10,0x04,2000005421,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,19,1,25,0,21502,10,0x04,0,0,0,0,0,0,0,0,'force 21502 to: emote'),
(2163302,24,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2163302,26,0,0,0,0,0,0,2000005422,0,0,0,0,0,0,0,''),
(2163302,31,0,0,0,21502,10,0x04,2000005423,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,35,0,0,0,0,0,0,2000005424,0,0,0,0,0,0,0,''),
(2163302,39,0,0,0,21502,10,0x04,2000005425,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,42,1,25,0,21502,10,0x04,0,0,0,0,0,0,0,0,'force 21502 to: emote'),
(2163302,45,1,66,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- script moved from spell into event
DELETE FROM dbscripts_on_event WHERE id = 13852; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(13852,3,10,21633,61000,0,0,0,0,0,0,0,-3312.04,2948.81,171.12,4.83,'summon - Deathbringer Jovaan'),
(13852,4,40,0,0,184835,25738,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(13852,5,40,0,0,184834,25737,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'), -- doesnt work anymore
(13852,57,8,21502,0,0,0,4,0,0,0,0,0,0,0,0,'q. completed');
