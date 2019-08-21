-- Resolve DBScript Diff for Botanica

-- Delete dbscripts_on_creature_movement substituted by generic script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (8298601,8298602,8298603,8315101,1797502,1841901,1841902,1841903,1841904,1841905,1841906,1841907,1841908,1950507,1950508);

DELETE FROM `dbscript_string` WHERE `entry` IN (
2000005174, -- 2000020091 "We must not fail our leader!  Kael'thas will redeem us!"
2000005175, -- 2000020092 "Hmm...Frost, Fire, and Arcane defenses respond faster than Batch 7, but Nature defenses remain passive."
2000005176, -- 2000020093 "Hmm..."
2000005177, -- 2000020094 "Yes. That did the trick."
2000005554, -- 2000020095 "...mumble...Petals of Fire...mumble..."
2000005555, -- 2000020096 "...mumble mumble..."
2000005556, -- 2000020097 "...with the right mixture, perhaps..."
2000005557, -- 2000020098 "...thorny vines...mumble...ouch!"
2000005558, -- 2000020099 "Get out of here, there are too many of them! Escape while you can!"
2000005559 -- 2000020100 "Help! Someone help us!"
);

