-- q.12510 'Precious Elemental Fluids'
-- Player must gather 3 items to create another
UPDATE quest_template SET ReqSourceCount2=3, ReqSourceCount3=3 WHERE entry = 12510;
-- Watery Lord 28118
DELETE FROM `dbscript_random_templates` WHERE `id`=20294;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20294, 0, 27501, 0, 'Watery Lord - Aggro Texts'),
(20294, 0, 27502, 0, 'Watery Lord - Aggro Texts'),
(20294, 0, 27503, 0, 'Watery Lord - Aggro Texts'),
(20294, 0, 27504, 0, 'Watery Lord - Aggro Texts');
