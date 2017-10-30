-- Fix southsea swashbuckler wrong 100% drop chance for pirate key
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE entry=7858 AND item=9249;
