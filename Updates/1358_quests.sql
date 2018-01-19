-- D.E.H.T.A. Quest Series - Borean Tundra

-- Arch Druid Lathorius
-- gossip available only after q.11892 completed
UPDATE gossip_menu SET condition_id = 1405 WHERE entry = 9188 AND text_id = 12511; 
DELETE FROM conditions WHERE condition_entry = 1405;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1405,8,11892,0,'');

-- q.11876 'Help Those That Cannot Help Themselves'
-- item must be removed from players inventory after completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11876;

-- q.11865 'Unfit for Death'
-- item must be removed from players inventory after completed
UPDATE quest_template SET ReqSourceCount4 = 1 WHERE entry = 11865;

-- Orphaned Mammoth Calf
UPDATE creature_template SET UnitFlags = 776, Expansion = 2, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 291, MaxMeleeDmg = 3196 WHERE entry = 25861;
