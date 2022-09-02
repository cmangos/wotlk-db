-- q.12504 'Argent Crusade, We Are Leaving!'
-- Script added
UPDATE gossip_menu_option SET action_script_id = 964001 WHERE menu_id = 9640;
DELETE FROM dbscripts_on_gossip WHERE id = 964001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(964001,1,0,20292,0,0,0,0,0,0,0,0,0,0,0,0,0,'q.12504 - source random say'),
(964001,10,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'q.12504 - source emote'),
(964001,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'q.12504 - source despawn');
DELETE FROM dbscript_random_templates WHERE id = 20292;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20292,0,27445,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27446,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27447,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27448,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27449,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27450,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27451,0,'28041 - Random Text 1 (q.12504)'),
(20292,0,27452,0,'28041 - Random Text 1 (q.12504)');
UPDATE `broadcast_text` SET ChatTypeID = 4 WHERE Id IN (27445,27446,27447,27448,27449,27450,27451,27452);
