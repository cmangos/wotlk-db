-- q.10588 'The Cipher of Damnation'
-- equip corrected to few creatures involved
-- Oronok Torn-heart 21685
UPDATE creature_template SET EquipmentTemplateId = 2531 WHERE entry = 21685;
-- Borak, Son of Oronok 21686
UPDATE creature_template SET EquipmentTemplateId = 2532 WHERE entry = 21686;
-- Grom'tor, Son of Oronok 21687
UPDATE creature_template SET EquipmentTemplateId = 2373 WHERE entry = 21687;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry IN (2531,2532);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2531, 30669, 0, 0),
(2532, 30660, 30660, 0);
