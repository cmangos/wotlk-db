-- Moorabi 29305 - Gundrak
-- missing data added
DELETE FROM creature_spell_list_entry WHERE Id IN (2930501,2930502,3053001,3053002);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2930501, 'Gundrak - Moorabi - Normal - Troll Form',0,0),
(2930502, 'Gundrak - Moorabi - Normal - Mammoth Form',0,0),
(3053001, 'Gundrak - Moorabi - Heroic - Troll Form',0,0),
(3053002, 'Gundrak - Moorabi - Heroic - Mammoth Form',0,0);
