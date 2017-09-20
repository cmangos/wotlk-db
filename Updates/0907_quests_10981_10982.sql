-- q.10981 'Nexus-Prince Shaffar's Personal Chamber'
-- q.10982 'The Eye of Haramad'

-- Objects
-- Missing added - WoTLKDB FREE guids used
DELETE FROM gameobject WHERE guid IN (42059,42060);
DELETE FROM game_event_gameobject WHERE guid IN (42059,42060);
DELETE FROM gameobject_battleground WHERE guid IN (42059,42060);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Ethereum Prison Base Group (Global)
(42059,185460,557,2,1,-235.563, -13.4403, 17.066, 1.43332, 0, 0, 0.656869, 0.754005, 300, 300, 255, 1),
-- Shaffar's Stasis Chamber
(42060,185522,557,2,1,-235.563, -13.4403, 17.066, 1.43332, 0, 0, 0.656869, 0.754005, 300, 300, 255, 1);

-- Quest script
DELETE FROM dbscripts_on_go_template_use WHERE id = 185522;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185522,1,10,22930,7200000,0,0,0,0x08,0,0,0,0,-235.563,-13.4403,17.5932,1.43115,'summon: Yor');

-- Yor <Void Hound of Shaffar>
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE entry = 22930;
