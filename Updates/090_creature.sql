-- Eye of Acherus - missing aura 
DELETE FROM creature_template_addon WHERE entry = 28511;
INSERT INTO creature_template_addon VALUES (28511,0,0,1,1,0,0,'51890 51892');
