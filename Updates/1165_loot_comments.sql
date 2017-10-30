-- =========================================================================================================================================================
-- =================                    APPLY LATEST ITEM NAMES AND REFERENCE NAMES TO LOOT / REFERENCE / VENDOR TABLES                    ================= 
-- =========================================================================================================================================================
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `gameobject_loot_template` SET comments='';
UPDATE `gameobject_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `gameobject_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `disenchant_loot_template` SET comments='';
UPDATE `disenchant_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `disenchant_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `fishing_loot_template` SET comments='';
UPDATE `fishing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `fishing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `item_loot_template` SET comments='';
UPDATE `item_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `item_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `prospecting_loot_template` SET comments='';
UPDATE `prospecting_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `prospecting_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `skinning_loot_template` SET comments='';
UPDATE `skinning_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `skinning_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `npc_vendor_template` SET comments='';
UPDATE `npc_vendor_template` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

UPDATE `npc_vendor` SET comments='';
UPDATE `npc_vendor` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);
