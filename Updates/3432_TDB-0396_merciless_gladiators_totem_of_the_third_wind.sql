-- Merciless Gladiator's Totem of the Third Wind (item 33078)
-- Lesser Healing Wave - SpellFamilyFlags = 0x0000000000000080 (128) - new value
-- Healing Wave - SpellFamilyFlags = 0x0000000000000040 (64) - old value, wrong
UPDATE spell_proc_event SET SpellFamilyMaskA0=128, SpellFamilyMaskA1=128, SpellFamilyMaskA2=128 WHERE entry=42370; -- Merciless Totem of the Third WInd


