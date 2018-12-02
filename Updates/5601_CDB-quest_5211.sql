-- Fix quest 5211 (Defenders of Darrowshire) being completable too easily by exploiting NPC
-- NPC 11064 (Darrowshire Spirit) should despawn when gossip is open by a player on the quest
-- Source: https://www.youtube.com/watch?v=0DBaH_jNZOM
SET @COND:=412;

DELETE FROM dbscripts_on_gossip WHERE id=3141;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, comments) VALUES
(3141, 0, 34, @COND, 0, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Spirit - Terminate if Player has not quest 5211'),
(3141, 1000, 8, 11064, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Spirit - Send kill credit Darrowshire Spirit'),
(3141, 1000, 18, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Spirit - Despawn');

DELETE FROM conditions WHERE condition_entry=@COND;
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(@COND, 9, 5211, 0);
