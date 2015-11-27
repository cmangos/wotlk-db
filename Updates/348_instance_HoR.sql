-- #############################
-- Halls of Reflection mini-boss
-- #############################

-- spell script target
DELETE FROM spell_script_target WHERE entry IN (69886);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(69886,1,36723,0);
-- cleanup summoned creatures
DELETE FROM creature WHERE guid IN (138014,138035,138039);
-- unit flags
UPDATE creature_template SET UnitFlags=33554688 WHERE entry=36736;
-- linking
DELETE FROM creature_linking_template WHERE entry IN (37068,37107);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(37068, 668, 36723, 4096, 0),
(37107, 668, 36723, 4096, 0);
