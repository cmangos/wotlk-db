-- q.10977 'Stasis Chambers of the Mana-Tombs'

-- Objects
-- Missing added - WoTLKDB FREE guids used
DELETE FROM gameobject WHERE guid IN (35872,35873);
DELETE FROM game_event_gameobject WHERE guid IN (35872,35873);
DELETE FROM gameobject_battleground WHERE guid IN (35872,35873);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Ethereum Prison Base Group (Global)
(35872,185460,557,2,1,8.73419, -223.864, -0.954936, 0.284522, 0, 0, 0.141782, 0.989898, 300, 300, 255, 1),
-- Mana-Tombs Stasis Chamber
(35873,185519,557,2,1,8.73419, -223.864, -0.954936, 0.284522, 0, 0, 0.141782, 0.989898, 300, 300, 255, 1);

-- Quest script
DELETE FROM dbscripts_on_go_template_use WHERE id = 185519;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(185519,2,10,22928,15000,0,0,0,0x08,0,0,0,0,8.73419,-223.864,-0.427713,2.64365,'summon: Ambassador Pax\'ivi'),
(185519,4,7,10977,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Quest Credit');

-- Ambassador Pax'ivi
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, Expansion = 1, MinLevelHealth = 6986, MaxLevelHealth = 6986, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 252, MaxMeleeDmg = 357 WHERE entry = 22928;
