
-- spell implemented by spell script
DELETE FROM dbscripts_on_relay WHERE id IN (20050);
DELETE FROM dbscripts_on_relay WHERE id IN (20048,20049,20047) AND command=15;

-- Fix condition for flight aura
UPDATE spell_area SET aura_spell=0, area=50296 WHERE spell=50296;
