-- Improve scripts for q.1920 'Investigate the Blue Recluse' and q.1960 'Investigate the Alchemist Shop'
-- Based on sniffs and this video: https://www.youtube.com/watch?v=M9XbZWgzHpM

-- Loot is not from the creature but from g.103574 LootId 4589
DELETE FROM creature_loot_template WHERE entry=6492;
UPDATE creature_template SET LootId=0 WHERE entry=6492;

-- Add missing trap from trinitycore
DELETE FROM gameobject_template WHERE entry=103575;
INSERT INTO gameobject_template (entry,type,displayId,name,size,data0,data1,data2,data3) VALUES
(103575,6,327,'Containment Coffer TRAP',1,0,0,0,9012);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN(122088);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(122088,1,40,0,0,0,0,0,0,0,0,0,0,'Containment Coffer - Despawn Self on Use',0,0,0,0);

UPDATE creature SET spawntimesecsmin=180, spawntimesecsmax=180 WHERE id=6492;
-- The NPCs are invisible on spawn so we have no way to get sniffed spawn coords.
-- Rework it based on wowhead comments: https://www.wowhead.com/quest=1920/investigate-the-blue-recluse
-- Basement: 1
-- Kitchen: 1
-- Balcony: 1
-- Main Room: 3
DELETE FROM creature WHERE id = 6492;
INSERT INTO creature (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(160759, 6492, 0, 1, 0, 0, -9077, 831.549, 108.419, 2.3646, 180, 180, 5, 0, 0, 0, 0, 1), -- Main Room
(160760, 6492, 0, 1, 0, 0, -9102.94, 836.88, 105.122, 5.86749, 180, 180, 5, 0, 0, 0, 0, 1), -- Kitchen
(180000, 6492, 0, 1, 0, 0, -9104.65, 833.212, 97.6289, 3.7165, 180, 180, 5, 0, 0, 0, 0, 1), -- Basement
(180001, 6492, 0, 1, 0, 0, -9090.42, 826.235, 115.668, 2.49835, 180, 180, 5, 0, 0, 0, 0, 1), -- Balcony
(180002, 6492, 0, 1, 0, 0, -9068.78, 839.768, 108.419, 5.41217, 180, 180, 5, 0, 0, 0, 0, 1), -- Main Room
(180003, 6492, 0, 1, 0, 0, -9065.41, 831.277, 108.419, 0.813664, 180, 180, 5, 0, 0, 0, 0, 1); -- Main Room
