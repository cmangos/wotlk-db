-- Karazhan trash fixes 

/* Phantom Guest (add females) */
UPDATE `creature_model_info` SET `modelid_other_gender`= 16466 WHERE `modelid` = 16464;
UPDATE `creature_model_info` SET `modelid_other_gender`= 16467 WHERE `modelid` = 16465;

/*
Mana Feeder (16491)
http://www.wowhead.com/npc=16491/mana-feeder
- Added immunity to all magic
*/

UPDATE `creature_template` SET `SchoolImmuneMask` = 126 WHERE `Entry` = 16491;

/* 
Arcane Protector (16504)
http://www.wowhead.com/npc=16504/arcane-protector
http://wowwiki.wikia.com/wiki/Arcane_Protector
http://www.wowhead.com/spell=29815/return-fire (This is the actual missle that does damage - triggered by 29788, 29793, 29794)
http://www.wowhead.com/spell=29788/return-fire (Counterattack when hit by melee)
http://www.wowhead.com/spell=29793/return-fire (Counterattack when hit by spells)
http://www.wowhead.com/spell=29794/return-fire (Counterattack when hit by ranged)
- Added immunity to stuns and snares
*/

UPDATE `creature_template` SET `MechanicImmuneMask` = 19456 WHERE `Entry` = 16504;

/*
Ghostly Steward (16414)
http://www.wowhead.com/npc=16414/ghostly-steward#comments:id=41030
http://www.wowhead.com/npc=16414/ghostly-steward#comments:id=32842:reply=2230
http://wowwiki.wikia.com/wiki/Ghostly_Steward
- Now casts Frenzy at 50% (up from 25%)
- Added immunity to taunt, stun, shackle, and freeze trap
- Made Drunken Skull Crack happen a little sooner first time after Frenzy? (just guessing)
*/
UPDATE `creature_template` SET `ExtraFlags` = 256, `MechanicImmuneMask` = 8919056 WHERE `Entry` = 16414;
