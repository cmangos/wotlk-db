-- "Lunchbox" 25968
DELETE FROM vehicle_accessory WHERE vehicle_entry = 25968;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(25968,0,25801,'Nedar, Lord of Rhinos on "Lunchbox"');
-- not req. anymore
DELETE FROM dbscripts_on_relay WHERE id = 20144;
