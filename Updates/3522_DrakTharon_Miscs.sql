-- Drak'Tharon Keep - Updates

-- spell updates
DELETE FROM spell_target_position WHERE id=47506;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(47506, 600, -369, -601, 2, 0);
DELETE FROM spell_script_target WHERE entry IN (48597,48605,51825);
INSERT INTO spell_script_target VALUES
(48597, 1, 26620, 0),
(48605, 1, 26620, 0),
(51825, 1, 28016, 0);

-- Drakkari Guardian 26620
UPDATE creature_template SET UnitFlags = 0 WHERE entry = 26620;

-- Darkweb Hatchling 26674
UPDATE creature_template SET ExtraFlags = 16384 WHERE entry = 26674;

-- Risen Drakkari Bat Rider 26638
UPDATE creature_template SET UnitFlags = 64, InhabitType = 1 WHERE entry = 26638;
DELETE FROM creature_spawn_data_template WHERE Entry = 20006;
INSERT INTO creature_spawn_data_template (Entry, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags) VALUES
(20006,33554496,0,0,0,0,0,1);

-- Spell Script
DELETE FROM dbscripts_on_spell WHERE id IN (49960);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49960,0,15,49958,0,0,0,0,0,49959,0,0,0,0,0,0,0,'Random spell');

-- Drakkari Commander 27431
UPDATE creature_template SET MovementType = 2 WHERE entry = 27431;

-- Drakuru 28016
UPDATE creature_template SET MinLevel=70, MaxLevel=70, Faction = 190, UnitFlags = 33024, MovementType = 2 WHERE entry = 28016;

-- The Lich King 28498
UPDATE creature_template SET MinLevel=83, MaxLevel=83, MinLevelHealth = 13945000, MaxLevelHealth = 13945000, HealthMultiplier = 1000 WHERE entry = 28498;
