-- Scarlet Peasant
-- missing spawn added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid = 111457;
DELETE FROM creature_movement WHERE id = 111457;
DELETE FROM creature_linking WHERE guid = 111457;
DELETE FROM creature_linking WHERE master_guid = 111457;
DELETE FROM creature WHERE guid = 111457;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(111457,28557,609,1,1,0,0,2243.8,-5751.91,101.717,3.86353,360,360,0,0,924,0,0,0);
DELETE FROM creature_addon WHERE guid = 111457;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(111457,0,0,1,0,234,0,48356);

-- Script req. for passive creatures in DK zone
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20040 AND 20044;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20040
(20040,0,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'active'),
(20040,0,16,14562,3,0,0,0,2,0,0,0,0,0,0,0,0,'play sound'),
(20040,0,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face target'),
(20040,1,1,431,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20040,1,10,28765,3000,0,0,0,0,0,0,0,0,0,0,0,0,'summon'),
(20040,3,0,20035,0,0,28765,30,3,0,0,0,0,0,0,0,0,'buddy: random whisper'),
(20040,60,36,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - face target'),
(20040,61,1,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - emote'),
(20040,62,1,234,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20040,62,35,11,10,0,0,0,2,0,0,0,0,0,0,0,0,'Send AI Event 11 (F)'),
(20040,63,21,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'unactive'),
-- 20041
(20041,0,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'active'),
(20041,0,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'movement: idle'),
(20041,0,16,14562,3,0,0,0,2,0,0,0,0,0,0,0,0,'play sound'),
(20041,0,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face target'),
(20041,1,1,431,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20041,1,10,28765,3000,0,0,0,0,0,0,0,0,0,0,0,0,'summon'),
(20041,3,0,20035,0,0,28765,30,3,0,0,0,0,0,0,0,0,'buddy: random whisper'),
(20041,60,36,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - face target'),
(20041,61,1,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - emote'),
(20041,62,35,10,10,0,0,0,2,0,0,0,0,0,0,0,0,'Send AI Event 10 (E)'),
(20041,62,20,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'movement: wps'),
(20041,63,21,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'unactive'),
-- 20042
(20042,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(20042,0,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'add - unitflag'),
(20042,29,5,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'remove - unitflag'),
(20042,29,18,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20042,29,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
-- 20043
(20043,0,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'active'),
(20043,0,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face target'),
(20043,0,16,14562,3,0,0,0,2,0,0,0,0,0,0,0,0,'play sound'),
(20043,1,1,431,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20043,60,36,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - face target'),
(20043,61,1,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'reset - emote'),
(20043,62,35,8,10,0,0,0,2,0,0,0,0,0,0,0,0,'Send AI Event 8 (C)'),
(20043,63,21,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'unactive'),
-- 20044
(20044,0,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'active'),
(20044,0,16,14556,3,0,0,0,2,0,0,0,0,0,0,0,0,'play sound'),
(20044,16,20,1,1,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20044,17,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'default movement'),
(20044,17,35,9,10,0,0,0,2,0,0,0,0,0,0,0,0,'Send AI Event 9 (D)'),
(20044,18,21,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'unactive');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001684 AND 2000001696;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001684,'No mercy.',0,4,0,0,NULL),
(2000001685,'Kill them all.',0,4,0,0,NULL),
(2000001686,'Mercy is for the weak.',0,4,0,0,NULL),
(2000001687,'End it.',0,4,0,0,NULL),
(2000001688,'Finish it.',0,4,0,0,NULL),
(2000001689,'No survivors.',0,4,0,0,NULL),
(2000001690,'Kill or be killed, $n.',0,4,0,0,NULL),
(2000001691,'Do not hesitate.',0,4,0,0,NULL),
(2000001692,'Harness your rage and focus!',0,4,0,0,NULL),
(2000001693,'Strike it down!',0,4,0,0,NULL),
(2000001694,'Suffering to the conquered!',0,4,0,0,NULL),
(2000001695,'Show it the meaning of terror.',0,4,0,0,NULL),
(2000001696,'End its miserable life.',0,4,0,0,NULL);

-- The Lich King
UPDATE creature_template_addon SET auras = NULL WHERE entry = 28765;
DELETE FROM creature_addon WHERE guid IN (128581,129882);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(128581, 0, 0, 1, 0, 0, 0, 53274),
(129882, 0, 0, 1, 0, 0, 0, 53274);
DELETE FROM dbscript_random_templates WHERE id = 20035;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20035,0,2000001684,0,'28765 - Random Whisper'),
(20035,0,2000001685,0,'28765 - Random Whisper'),
(20035,0,2000001686,0,'28765 - Random Whisper'),
(20035,0,2000001687,0,'28765 - Random Whisper'),
(20035,0,2000001688,0,'28765 - Random Whisper'),
(20035,0,2000001689,0,'28765 - Random Whisper'),
(20035,0,2000001690,0,'28765 - Random Whisper'),
(20035,0,2000001691,0,'28765 - Random Whisper'),
(20035,0,2000001692,0,'28765 - Random Whisper'),
(20035,0,2000001693,0,'28765 - Random Whisper'),
(20035,0,2000001694,0,'28765 - Random Whisper'),
(20035,0,2000001695,0,'28765 - Random Whisper'),
(20035,0,2000001696,0,'28765 - Random Whisper');

-- All targets for s.52638 'Cowardly Peasant Trigger'
DELETE FROM spell_script_target WHERE entry = 52638;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(52638,1,28557,0),
(52638,1,28577,0),
(52638,1,28576,0);

-- All targets for s.52732 'Cowardly Citizen Trigger'
DELETE FROM spell_script_target WHERE entry = 52732;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(52732,1,28942,0),
(52732,1,28941,0);

-- workaround script for spell removed
DELETE FROM dbscripts_on_spell WHERE id = 52149;

-- spell ID - 52637 See Acherus Invisibility:
-- starts after player completes: q.12657 'The Might Of The Scourge'
-- finishes after player completes: q.12706 'Victory At Death's Breach!'
DELETE FROM spell_area WHERE spell = 52637;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(52637,4298,12657,0,12706,0,0,0,2,1);

-- spell ID - 52598 Ebon Hold: Chapter II, Skybox
-- must finish after player completes: q.12801 'The Light of Dawn'
UPDATE spell_area SET quest_end = 12801 WHERE spell = 52598;
