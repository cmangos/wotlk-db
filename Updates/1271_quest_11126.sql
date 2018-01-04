-- q.11126 'Traitors Among Us' - REDONE

-- should either:
-- attack player          - 75%
-- give credit and flee   - 25% (OOC flee option is not available in cmangos - used RandomMovement instead)

-- Deserter Agitator
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 23602;
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 876201 WHERE menu_id = 8762;
DELETE FROM dbscripts_on_gossip WHERE id IN (8762,876201); -- 8762 removed - lets keep id+01 etc pls
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(876201,0,45,0,7,0,0,0,0,0,0,0,0,0,0,0,0,'Deserter Agitator - Start Random Script');

DELETE FROM dbscripts_on_relay WHERE id IN (2,3);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 75%
(2,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(2,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(2,1,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(2,4,22,1883,0x01 | 0x04 | 0x10,0,0,0,0,0,0,0,0,0,0,0,0,'change faction'),
(2,5,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'start attack'),
-- 25%
(3,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(3,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(3,1,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(3,4,8,23602,1,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit'),
(3,5,35,5,5,0,0,0,0,0,0,0,0,0,0,0,0,'Throw AI Event A');
DELETE FROM dbscript_random_templates WHERE id = 7;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(7,1,2,75,'Deserter Agitator - START_RELAY_SCRIPT 2'),
(7,1,3,25,'Deserter Agitator - START_RELAY_SCRIPT 3');
-- text updates
UPDATE dbscript_string SET emote = 5 WHERE entry IN (2000000314,2000000315,2000000316);
