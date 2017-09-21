-- =============================================
-- Fix Quests 9820 - Horde Only Quests
-- =============================================
UPDATE quest_template SET RequiredRaces = 690 WHERE entry = 9820;
