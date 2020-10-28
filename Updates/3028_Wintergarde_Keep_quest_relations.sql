-- q.12272 'The Bleeding Ore'
-- becomes available after q.12275 'The Demo-gnome' completed
DELETE FROM conditions WHERE condition_entry = 20148;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20148,8,12275,0,0,0,0);
UPDATE quest_template SET RequiredCondition = 20148 WHERE entry = 12272;

-- Siege Engineer Quarterflash 27159
-- Gossip - must complete q.12272 'The Bleeding Ore'
DELETE FROM gossip_menu WHERE entry = 9530;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9530, 12843, 0, 0),
(9530, 12844, 0, 20149);
DELETE FROM conditions WHERE condition_entry = 20149;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20149,8,12272,0,0,0,0);

-- q.12258 'The Fate of the Dead'
-- becomes available after q.12251 'Return to the High Commander' completed
DELETE FROM conditions WHERE condition_entry = 20150;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20150,8,12251,0,0,0,0);
UPDATE quest_template SET RequiredCondition = 20150 WHERE entry = 12258;

-- After q.12237 'Flight of the Wintergarde Defender' completed Players can see civilians
DELETE FROM spell_area WHERE spell = 48358;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(48358,4177,0,0,0,20151,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20151;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20151,8,12237,0,0,0,0);

-- Player will "See Wintergarde Invisibility" until q.12237 'Flight of the Wintergarde Defender' completed
DELETE FROM spell_area WHERE spell = 48356;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(48356,4177,0,0,0,20152,0,0,2,1),
(48356,4178,0,0,0,20152,0,0,2,1),
(48356,4188,0,0,0,20152,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20152;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20152,8,12237,0,0,0,1);
