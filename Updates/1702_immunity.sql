-- Add MECHANIC_DISARM immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4 WHERE entry IN(
-- vanilla
7728, -- Kirith the Damned
-- alterac valley
11946, -- Drek'Thar
11948, -- Vanndar Stormpike
14762, -- Dun Baldar North Marshal
14763, -- Dun Baldar South Marshal
14764, -- Icewing Marshal
14765, -- Stonehearth Marshal
14772, -- East Frostwolf Warmaster
14773, -- Iceblood Warmaster
14776, -- Tower Point Warmaster
14777, -- West Frostwolf Warmaster
-- outland
18290, -- Tusker
18411, -- Durn the Hungerer
18678, -- Fulgorge
18694, -- Collidus the Warp-Watcher
18696, -- Kraator
18733, -- Fel Reaver
19687, -- Shattrath City Peacekeeper
20216, -- Grulloc
20555, -- Goc
20600, -- Maggoc
21166, -- Illidari Dreadlord
21500, -- Morgroron
21514, -- Gorgrom the Dragon-Eater
21979, -- Val'zareq the Conqueror
22011, -- Corok the Mighty
22012, -- Chancellor Bloodleaf
22093, -- Illidari Watcher
22196, -- Wrath Reaver
22199, -- Slaag
22275, -- Apexis Guardian
22281, -- Galvanoth
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23353, -- Braxxus
23354, -- Mo'arg Incinerator
23355, -- Zarcsin
-- blood furnace
17377,18607, -- Keli'dan the Breaker
17380,18601, -- Broggok
17381,18621, -- The Maker
-- shattered halls
17461,20923, -- Shattered Hand Blood Guard
17465,20583, -- Shattered Hand Centurion
-- underbog
17734,20187, -- Underbog Lord
17827,20165, -- Claw
18107, -- Overseer Tidewrath
20465,21943, -- Underbog Frenzy
-- steamvault
17797,20629, -- Hydromancer Thespia
17798,20633, -- Warlord Kalithresh
21694,21914, -- Bog Overlord
-- auchenai crypts
18478,20303, -- Avatar of the Martyred
18503,20309, -- Phantasmal Possessor
-- mana-tombs
19307,20265, -- Nexus Terror
-- sethekk halls
19428,20688, -- Cobalt Serpent
-- shadow labyrinth
18667,20637, -- Blackheart the Inciter
18708,20657, -- Murmur
18732,20653, -- Grandmaster Vorpil
-- old hillsbrad foothills
22398,22399, -- Durnholde Reinforcement
-- black morass
17879,20738, -- Chrono Lord Deja
21697, -- Infinite Chrono-Lord
21698, -- Infinite Timereaver
-- mechanar
19219,21533, -- Mechano-Lord Capacitus
19220,21537, -- Pathaleon the Calculator
19221,21536, -- Nethermancer Sepethrea
-- botanica
17975,21558, -- High Botanist Freywinn
17976,21551, -- Commander Sarannis
18405,21578, -- Tempest-Forge Peacekeeper
-- arcatraz
20866,21614, -- Soul Devourer
20869,21586, -- Arcatraz Sentinel
20898,21598, -- Gargantuan Abyssal
20900,21621, -- Unchained Doombringer
-- world boss
15467, -- Omen
18728, -- Doom Lord Kazzak
-- karazhan
16151, -- Midnight
16179, -- Hyakiss the Lurker
16180, -- Shadikith the Glider
16181, -- Rokad the Ravager
16470, -- Ghostly Philanthropist
16471, -- Skeletal Usher
16473, -- Spectral Performer
16481, -- Ghastly Haunt
16482, -- Trapped Soul
16485, -- Arcane Watchman
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16524, -- Shade of Aran
16540, -- Shadow Pillager
16544, -- Ethereal Thief
16545, -- Ethereal Spellfilcher
16595, -- Fleshbeast
16596, -- Greater Fleshbeast
17535, -- Dorothee
17543, -- Strawman
17548, -- Tito
18168, -- The Crone
17225, -- Nightbane
-- serpentshrine cavern
21213, -- Morogrim Tidewalker
21875, -- Shadow of Leotheras
21958, -- Enchanted Elemental
22009, -- Tainted Elemental
22238, -- Serpentshrine Tidecaller
22347, -- Colossus Lurker
-- the eye
20038, -- Phoenix-Hawk Hatchling
20042, -- Tempest-Smith
20047, -- Crimson Hand Battle Mage
20052, -- Crystalcore Mechanic
18805, -- High Astromancer Solarian
19514, -- Al'ar
19516, -- Void Reaver
19622, -- Kael'thas Sunstrider
21268, -- Netherstrand Longbow
21269, -- Devastation
21270, -- Cosmic Infuser
21271, -- Infinity Blades
21272, -- Warp Slicer
21273, -- Phaseshift Bulwark
21274, -- Staff of Disintegration
-- hyjal
17895, -- Ghoul
17897, -- Crypt Fiend
17898, -- Abomination
17899, -- Shadowy Necromancer
17902, -- Skeleton Invader
17903, -- Skeleton Mage
17905, -- Banshee
17906, -- Gargoyle
17907, -- Frost Wyrm
17908, -- Giant Infernal
17916, -- Fel Stalker
17767, -- Rage Winterchill
17808, -- Anetheron
17818, -- Towering Infernal
17888, -- Kaz'rogal
17842, -- Azgalor
17864, -- Lesser Doomguard
17968, -- Archimonde
-- black temple
22848, -- Storm Fury
22849, -- Ashtongue Feral Spirit
22875, -- Coilskar Sea-Caller
22878, -- Aqueous Lord
22884, -- Leviathan
22953, -- Wrathbone Flayer
22954, -- Illidari Fearbringer
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22962, -- Priestess of Delight
22964, -- Sister of Pleasure
23018, -- Shadowmoon Houndmaster
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
23083, -- Shadowmoon Riding Hound
23147, -- Shadowmoon Grunt
23172, -- Hand of Gorefiend
23215, -- Ashtongue Sorcerer
23223, -- Bonechewer Spectator
23232, -- Mutant War Hound
23436, -- Image of Dementia
22887, -- High Warlord Naj'entus
22898, -- Supremus
22841, -- Shade of Akama
22871, -- Teron Gorefiend
22948, -- Gurtogg Bloodboil
23418, -- Essence of Suffering
23419, -- Essence of Desire
23420, -- Essence of Anger
23469, -- Enslaved Soul
22947, -- Mother Shahraz
22949, -- Gathios the Shatterer
22950, -- High Nethermancer Zerevor
22951, -- Lady Malande
22952, -- Veras Darkshadow
22917, -- Illidan Stormrage
22997, -- Flame of Azzinoth
23375, -- Shadow Demon
23498, -- Parasitic Shadowfiend
-- zul'aman
23574, -- Akil'zon
23576, -- Nalorakk
23578, -- Jan'alai
23577, -- Halazzi
24143, -- Spirit of the Lynx
24239, -- Hex Lord Malacrass
23863, -- Zul'jin
24217, -- Amani Bear Mount
-- sunwell plateau
24850, -- Kalecgos
24891, -- Kalecgos
25368, -- Sunblade Slayer
25372, -- Sunblade Scout
25373, -- Shadowsword Soulbinder
25484, -- Shadowsword Assassin
25486, -- Shadowsword Vanquisher
25507, -- Sunblade Protector
25508, -- Shadowsword Guardian
25837, -- Shadowsword Commander
25867, -- Sunblade Dragonhawk
26101, -- Fire Fiend
-- event
23694, -- Pulsing Pumpkin
25740,26338, -- Ahune
25755,26342, -- Ahunite Hailstone
26764, -- Ilsa Direbrew
26822 -- Ursula Direbrew
);
