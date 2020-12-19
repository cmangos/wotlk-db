
-- Icecrown horde ship faction
UPDATE creature_template SET Faction=2132 WHERE entry=30755;

-- missing vehicle accessories
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (29358,29351,30320,29708,29753);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(29358,0,29558, 'Frostworg - Frost Giant Target Bunny'),
(29358,1,29558, 'Frostworg - Frost Giant Target Bunny'),
(29351,0,29558, 'Niffelem Frost Giant - Frost Giant Target Bunny'),
(29351,1,29558, 'Niffelem Frost Giant - Frost Giant Target Bunny'),
(29351,2,29558, 'Niffelem Frost Giant - Frost Giant Target Bunny'),
(29351,3,29558, 'Niffelem Frost Giant - Frost Giant Target Bunny'),
(30320,0,29558, 'Battlescarred Frostworg - Frost Giant Target Bunny'),
(30320,1,29558, 'Battlescarred Frostworg - Frost Giant Target Bunny'),
(29708,0,29805, 'Captive Proto-Drake - Captive Proto Drake Beam Bunny'),
(29753,0,29469, 'Stormpeak Wyrm - Ice Steppe Rhino');
