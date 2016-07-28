-- Lesser Darkmoon Decks should NOT require Inscription to turn in
UPDATE quest_template SET RequiredSkill = 0, RequiredSkillValue = 0 WHERE entry IN 
(12517,  /* Rogues Deck */
12518,   /* Mages Deck */
12798,   /* Swords Deck */
13311);  /* Demons Deck */