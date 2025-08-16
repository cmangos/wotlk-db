/* DB errors fixed
LoadSpawnGroups: Invalid spawn_group_spawn Id 7000000. Skipping.
LoadSpawnGroups: Invalid spawn_group_spawn Id 7000001. Skipping.
LoadSpawnGroups: Invalid spawn_group_spawn Id 7000002. Skipping.
*/
DELETE FROM spawn_group_spawn WHERE id BETWEEN 7000000 AND 7000002;
