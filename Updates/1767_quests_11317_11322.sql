-- q.11322 and q.11317 'The Cleansing'

-- Your Inner Turmoil
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 256 WHERE entry = 27959;
DELETE FROM creature_template_addon WHERE entry = 27959;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27959,0,0,1,0,0,0,41408);

DELETE FROM dbscripts_on_spell WHERE id = 43365;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(43365,0,15,43351,0,0,0,0,0,0,0,0,0,0,0,0,0,'player'),
(43365,0,1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,'player'),
(43365,10,15,50167,0,0,0,0,2,0,0,0,0,0,0,0,0,'player casts'),
(43365,11,36,0,0,0,27959,100,0,0,0,0,0,0,0,0,0,'buddy -> player'),
(43365,11,15,50218,0,0,27959,100,2,0,0,0,0,0,0,0,0,'player -> buddy');
