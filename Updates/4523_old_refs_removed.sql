/*
Table 'reference_loot_template' entry 30002 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30003 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30005 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30006 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30007 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30008 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30009 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30010 isn't reference id and not referenced from loot, and then useless.
Table 'reference_loot_template' entry 30011 isn't reference id and not referenced from loot, and then useless.
*/
DELETE FROM `reference_loot_template_names` WHERE entry IN (30002,30003,30005,30006,30007,30008,30009,30010,30011);
DELETE FROM `reference_loot_template` WHERE entry IN (30002,30003,30005,30006,30007,30008,30009,30010,30011);