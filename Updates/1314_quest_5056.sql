-- quest should not require external event
UPDATE quest_template SET SpecialFlags=0 WHERE entry IN(5056);
DELETE FROM dbscripts_on_event WHERE id=4975 AND delay=1 AND command=7; 
