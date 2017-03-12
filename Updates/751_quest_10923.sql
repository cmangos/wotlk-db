-- q.10923 'Evil Draws Near'
UPDATE quest_template SET SpecialFlags = 2 WHERE entry = 10923; -- set default value
DELETE FROM dbscripts_on_event WHERE id = 14484; 
INSERT INTO dbscripts_on_event VALUES 
-- summoning spell (visual) missing
(14484,1,7,10923,0,0,0,0,0,0,0,0,0,0,0,0,'quest 10923'),
(14484,1,10,22441,600000,0,0,0x08,1,0,0,0,-3398.8,4565.9,57.4391,4.43695,'summon - Teribus the Cursed');

-- Teribus the Cursed
UPDATE creature_template_addon SET bytes1 = 50331648 WHERE entry = 22441;
UPDATE creature_template SET InhabitType = 4, ExtraFlags = 0, MovementType = 2 WHERE entry = 22441;
DELETE FROM creature_movement_template WHERE entry = 22441;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(22441,1,-3398.8,4565.9,57.4391,0,0,4.43695),
(22441,2,-3414.27,4478.91,33.7375,0,0,4.53512),
(22441,3,-3417.92,4453.57,-7.968,10000,2244101,5.02208);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2244101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2244101,1,39,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'fly off'),
(2244101,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2244101,3,22,16,0x01 | 0x10,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- Auchenai Death-Speaker (around summoning Circle)
DELETE FROM creature_addon WHERE guid IN (74466,74467,74468);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(74466,0,0,1,16,0,0,38159),
(74467,0,0,1,16,0,0,38159),
(74468,0,0,1,16,0,0,38159);
