
-- remove movement flags and auras from Taldaram and Jedoga
UPDATE creature_template_addon SET moveflags=0, auras='' WHERE entry IN (29308,29310);
