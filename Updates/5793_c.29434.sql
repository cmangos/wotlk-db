-- Injured Goblin Miner 29434
-- escort quest Fix
UPDATE creature_template_addon SET auras = NULL WHERE Entry = 29434;
DELETE FROM dbscripts_on_relay WHERE id IN (20006);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20006,1,15,51329,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51329');
DELETE FROM creature_spawn_data_template WHERE entry = 20083;
INSERT INTO creature_spawn_data_template (Entry, NpcFlags, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags, RelayId, StringId, Name) VALUES
(20083,-1,-1,0,0,-1,0,0,0,20006,0,'-RelayId 20083');
DELETE FROM creature_spawn_data WHERE guid IN (524928,524929,524930);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(524928,20083),(524929,20083),(524930,20083);
