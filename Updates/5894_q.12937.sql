-- q.12937 'Relief for the Fallen'
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 12937;
DELETE FROM dbscripts_on_relay WHERE id IN (21275);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21275,1,28,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - stand'),
(21275,1000,36,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - face target'),
(21275,2500,1,2,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - emote'),
(21275,2600,0,0,0,0,0,0,0x002,30720,30721,30722,30723,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - random say'),
(21275,5000,8,30035,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - kill credit'),
(21275,5500,15,55809,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - cast on target');
-- duplicates
DELETE FROM creature_addon WHERE guid IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM creature_movement WHERE Id IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM game_event_creature WHERE guid IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM game_event_creature_data WHERE guid IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM creature_battleground WHERE guid IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM creature_linking WHERE guid IN (525112,525111,525118,533764,525130,525127,525123)
OR master_guid IN (525112,525111,525118,533764,525130,525127,525123);
DELETE FROM creature WHERE guid IN (525112,525111,525118,533764,525130,525127,525123);
-- c.30036 Rejuvenated Defender
UPDATE creature_template SET UnitClass = 2, SpeedWalk = (2.5 / 2.5), SpeedRun = (9 / 7), EquipmentTemplateId = 222 WHERE entry IN (30036);
