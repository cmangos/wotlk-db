-- Persistence 29863
UPDATE creature_template SET MovementType=0, InhabitType=4 WHERE entry=29863;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 29863;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29863,0,28518,'Persistence, Stefan Vadu');
-- Gossip
-- must be diff for vehicle
DELETE FROM npc_text WHERE id IN (13270,13271);
DELETE FROM npc_text_broadcast_text WHERE Id IN (13270,13271);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(13270, 0, 28437),
(13271, 0, 28438);
UPDATE gossip_menu SET condition_id=20425 WHERE entry=9709 AND text_id=13271;
UPDATE gossip_menu SET condition_id=0 WHERE entry=9709 AND text_id=13270;
DELETE FROM conditions WHERE condition_entry IN (20425,20426);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20425,37,29863,5,1);
DELETE FROM dbscripts_on_relay WHERE id IN (20634,20635);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(20634,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Remove NPC FLAGS'),
(20634,0,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Remove eqip'),
(20634,2000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Add NPC FLAGS'),
(20634,2001,23,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'demorph'),
(20634,2002,42,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Reset eqip'),
(20634,4000,31,29863,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29863'),
(20634,4100,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,'self send event AI 5'),
(20634,8000,0,0,0,0,0,0,0,30477,30478,30479,0,0,0,0,0,0,'random say'),
(20635,10,39,1,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,0,'Fly ON'),
(20635,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,''),
(20635,3000,39,0,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,0,'Fly OFF');
