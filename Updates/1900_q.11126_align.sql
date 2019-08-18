-- Align q.11126 'Traitors Among Us' with tbc-db to make space for aligning Zul'Farrak Scripts with classic/tbc-data

-- Move https://github.com/cmangos/wotlk-db/commit/1bf04471be54ffd24db62f773d44a4497f8d8864 to TBC Range as it is a tbc quest
-- Line 10 - 33 of https://github.com/cmangos/tbc-db/commit/c4ac6aaf0ccd942207a389f4e0da8d75cd2ffcfe
DELETE FROM dbscripts_on_gossip WHERE id IN (876201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(876201,0,45,0,10080,0,0,0,0,0,0,0,0,0,0,0,0,'Deserter Agitator - Start Random Script');

DELETE FROM dbscripts_on_relay WHERE `id` IN (2,3,10091,10092);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 75%
(10091,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(10091,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(10091,1,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(10091,4,22,1883,0x01 | 0x04 | 0x10,0,0,0,0,0,0,0,0,0,0,0,0,'change faction'),
(10091,5,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'start attack'),
-- 25%
(10092,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(10092,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'change NPC_flag'),
(10092,1,0,0,0,0,0,0,0,2000000314,2000000315,2000000316,0,0,0,0,0,'Say'),
(10092,4,8,23602,1,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit'),
(10092,5,35,5,5,0,0,0,0,0,0,0,0,0,0,0,0,'Throw AI Event A');

DELETE FROM `dbscript_random_templates` WHERE `id` IN (7,10080);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10080,1,10091,75,'Deserter Agitator - START_RELAY_SCRIPT 2'),
(10080,1,10092,25,'Deserter Agitator - START_RELAY_SCRIPT 3');

-- https://github.com/cmangos/tbc-db/commit/adedf42102d1268bca6e68d327a7241426c0afab#diff-ed4f20455fe3c8005839356bd9a7fe43 will be ported later

