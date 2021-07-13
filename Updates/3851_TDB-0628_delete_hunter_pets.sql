-- Delete two spawned Hunter pets "found by aura 24529"
DELETE FROM `creature` WHERE `guid` = 77583 AND `id` = 22100;
DELETE FROM `creature_addon` WHERE `guid` = 77583;
DELETE FROM `creature` WHERE `guid` = 77668 AND `id` = 22123;
DELETE FROM `creature_addon` WHERE `guid` = 77668;
