-- ReQ for Altar of Quetz'lun chain
-- spell: Ghostly 51671
DELETE FROM spell_area WHERE spell IN (51671);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(51671,4325,12667,1,12684,0,0,0,2,1);
UPDATE `broadcast_text` SET `ChatTypeID`= 5 WHERE `Id` IN (28025);
UPDATE creature_template SET InhabitType = 7 WHERE entry = 28473;
DELETE FROM `dbscripts_on_relay` WHERE id IN (20671);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20671,0,0,0,0,0,0,0,0x04,28025,0,0,0,0,0,0,0,'Part of Material You 28473 EAI: Player Say'),
(20671,1,15,51719,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Material You 28473 EAI: cast 43671 on buddy');
