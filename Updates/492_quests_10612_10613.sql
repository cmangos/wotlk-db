
-- Quest 10613 / 10612
DELETE FROM dbscripts_on_spell WHERE id IN (38020);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,buddy_entry,search_radius,data_flags,comments) VALUES
(38020,0,15,38022,0,0,8,'Cast FRS Quest Credit');

-- Quest 10506
DELETE FROM item_required_target WHERE entry=30251;
INSERT INTO item_required_target (entry,type,targetEntry) VALUES
(30251,1,20058);

