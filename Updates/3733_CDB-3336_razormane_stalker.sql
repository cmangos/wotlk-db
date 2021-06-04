-- Fix stealth for NPC 3457 (Razormane Stalker)
-- Thanks @Tobschinski.
UPDATE creature_template_addon SET auras='7939 22766' WHERE entry=3457;
