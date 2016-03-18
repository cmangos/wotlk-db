-- ICC teleporters
UPDATE gameobject_template SET flags=flags|16 WHERE entry IN (202242,202245,202243,202244);
UPDATE gameobject SET state=1 WHERE id IN (202223);
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (70856,70781,70857,70858,70859,70860,70861);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(70856,0,202245,0),
(70857,0,202243,0),
(70858,0,202244,0),
(70859,0,202235,0),
(70860,0,202190,0), -- needs confirmation
(70861,0,202246,0),
(70781,0,202242,0);
