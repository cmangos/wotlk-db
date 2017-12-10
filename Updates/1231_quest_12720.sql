-- q.12720 'How To Win Friends And Influence Enemies'

-- Players part
DELETE FROM dbscripts_on_relay WHERE id IN (20001,20002);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20001,1,0,20007,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20002,1,15,52805,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20002,2,0,0,0,0,0,0,0,2000001469,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001461 AND 2000001469;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001461,'I\'ll tear the secrets from your soul! Tell me about the \"Crimson Dawn\" and your life may be spared!',0,0,0,0,''),
(2000001462,'Tell me what you know about \"Crimson Dawn\" or the beatings will continue!',0,0,0,0,''),
(2000001463,'I\'m through being courteous with your kind, human! What is the \"Crimson Dawn?\"',0,0,0,0,''),
(2000001464,'Is your life worth so little? Just tell me what I need to know about \"Crimson Dawn\" and I\'ll end your suffering quickly.',0,0,0,0,''),
(2000001465,'I can keep this up for a very long time, Scarlet dog! Tell me about the \"Crimson Dawn!\"',0,0,0,0,''),
(2000001466,'What is the \"Crimson Dawn?\"',0,0,0,0,''),
(2000001467,'\"Crimson Dawn!\" What is it! Speak!',0,0,0,0,''),
(2000001468,'I grow tired of these games, human. Tell me of the \"Crimson Dawn\" or I will tear your spine out with my bare hands!',0,0,0,0,''),
(2000001469,'LIES! The pain you are about to endure will be talked about for years to come!',0,0,0,0,'');

DELETE FROM dbscript_random_templates WHERE id = 20007;
INSERT INTO dbscript_random_templates (id, type, target_id, chance,comments) VALUES
(20007,0,2000001461,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001462,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001463,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001464,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001465,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001466,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001467,0,'(q.12720)Player - Random Texts'),
(20007,0,2000001468,0,'(q.12720)Player - Random Texts');

-- Scarlet Marksman
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 28610;
