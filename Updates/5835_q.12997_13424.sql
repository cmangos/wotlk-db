-- q.12997 'Into the Pit'
-- q.13424 'Back to the Pit'
-- Hyldsmeet Warbear 30174 & Hyldsmeet Bear Rider 30175
UPDATE creature_template SET MinLevel = 79, MaxLevel = 80, UnitFlags = 0, StaticFlags1 = 33555200, StaticFlags2 = 2048, VehicleTemplateId = 0 WHERE entry IN (30175);
UPDATE creature_template SET UnitFlags = 0, StaticFlags1 = 0, StaticFlags2 = 2048, VehicleTemplateId = 222 WHERE entry IN (30174);
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (30174);
INSERT INTO vehicle_accessory (vehicle_entry,seat,accessory_entry,RideSpellId,comment) VALUES
(30174,0,30175,0,'Hyldsmeet Bear Rider'); 
