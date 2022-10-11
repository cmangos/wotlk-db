-- q.12541 'Troll Patrol: The Alchemist's Apprentice'
UPDATE quest_template SET RequiredCondition = 20498, PrevQuestId=0, ExclusiveGroup = 0 WHERE entry IN (12541);
UPDATE gossip_menu_option SET action_script_id = 966801 WHERE menu_id IN (9668);
DELETE FROM dbscripts_on_gossip WHERE id IN (966801);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(966801,1,15,51015,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51055'),
(966801,2,0,0,0,0,0,0,0,27633,27636,27637,27677,0,0,0,0,'random say');
-- texts corrected
UPDATE broadcast_text SET ChatTypeId = 5 WHERE Id IN (27630,27631,27632,27633,27634,27635,27636,27637,27677,27678,27679,27680,27681,27682,27683,27684,27685,27686,
27687,27688,27690,27647,27648,27649,27650,27651,27652,27653,27654,27655,27656,27657,27658,27659,27660,27661,27662,27663,27664,27665,27666,27667,27668);
-- loot corrected for objects involved here
DELETE FROM gameobject_loot_template WHERE entry IN(24320,24330);
INSERT INTO gameobject_loot_template VALUES
(24320,38335,100,0,1,1,485,'Ancient Ectoplasm'),
(24330,38342,100,0,1,1,485,'Trollbane');
