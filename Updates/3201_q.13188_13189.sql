-- DK Final quest - make sure that aura is removed from Player
-- q.13188 'Where Kings Walk'
UPDATE dbscripts_on_quest_end SET data_flags = 6 WHERE id = 13188 AND delay = 0;
-- q.13189 'Warchief's Blessing'
UPDATE dbscripts_on_quest_end SET data_flags = 6 WHERE id = 13189 AND delay = 0;
