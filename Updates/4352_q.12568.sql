-- q.12568 'Troll Patrol: Done to Death'
-- targets for spell 51276
DELETE FROM spell_script_target WHERE entry=51276;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(51276, 1, 28156, 0),
(51276, 1, 28260, 0);
DELETE FROM dbscripts_on_relay WHERE `id` In (20662);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20662,3000,15,51278,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Defeated Argent Footman 28156 & 28260: cast 51278'),
(20662,3100,15,51279,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Defeated Argent Footman 28156 & 28260: cast 51278'),
(20662,4000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Defeated Argent Footman 28156 & 28260: despawn Self');
