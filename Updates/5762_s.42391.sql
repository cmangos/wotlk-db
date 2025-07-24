-- s.42391 - missing targets added 
-- data backported from TDBDB.
DELETE FROM spell_script_target WHERE entry IN(42391);
INSERT INTO spell_script_target VALUES
(42391,0,186285,0),
(42391,0,186286,0);
