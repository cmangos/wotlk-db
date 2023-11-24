-- q.10842 'Vengeful Souls'
-- Wotlk ONLY - 3.3.3
-- This quest has now been renamed in patch 3.3.3 to 'Vengeful Souls' (was: 'The Vengeful Harbinger')
-- source item removed - as not needed anymore.
UPDATE quest_template SET SrcItemId = 0, SrcItemCount = 0, ReqItemId1 = 0, ReqItemCount1 = 0 WHERE entry = 10842;
