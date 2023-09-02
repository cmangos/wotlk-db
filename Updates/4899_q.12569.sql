-- q.12569 'Crocolisk Mastery: The Ambush'
DELETE FROM dbscripts_on_event WHERE id = 18503;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18503,1,10,28317,300000,0,0,0,0x08,0,0,0,0,5421.839,4867.183,-199.7485,1.518436,'summon: 28317');
DELETE FROM dbscripts_on_relay WHERE id = 20772;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20772,1,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: Run ON'),
(20772,100,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: move towards summoner'),
(20772,10000,0,0,0,0,0,0,0,27731,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: emote'),
(20772,10001,1,50,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: emote'),
(20772,10010,14,51319,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: remove aura from player'),
(20772,11000,48,256,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Bushwhacker 28317 EAI: remove unitflags');
UPDATE creature_template SET UnitFlags = 33024, MovementType = 0 WHERE entry IN (28317);
UPDATE broadcast_text SET ChatTypeID = 2 WHERE id IN (27731);
