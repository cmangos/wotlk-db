ALTER TABLE db_version CHANGE COLUMN required_14091_01_mangos_spell_groups required_14092_01_mangos_proc_cooldown bit;

UPDATE spell_proc_event SET cooldown=cooldown*1000 WHERE entry BETWEEN 0 AND 100000;

UPDATE spell_proc_event SET cooldown=3500 WHERE entry=324;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=974;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=12281;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=14186;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=13983;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=16620;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=30160;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=15088;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16257;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=15600;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16164;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=18094;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=21185;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22618;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=23552;
UPDATE spell_proc_event SET cooldown=120000 WHERE entry=22648;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=23572;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=27521;
UPDATE spell_proc_event SET cooldown=8 WHERE entry=29074;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29441;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29385;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=30881;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=32734;
UPDATE spell_proc_event SET cooldown=35000 WHERE entry=32837;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=33648;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=33127;
UPDATE spell_proc_event SET cooldown=17000 WHERE entry=33511;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=33953;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=33746;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=33150;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=33757;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=33759;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=33297;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=34598;
UPDATE spell_proc_event SET cooldown=20000 WHERE entry=34774;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=35077;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=34320;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=35080;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=35083;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=34935;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=35086;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=34355;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=34584;
UPDATE spell_proc_event SET cooldown=1 WHERE entry=34753;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=34827;
UPDATE spell_proc_event SET cooldown=40000 WHERE entry=37247;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=37189;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=37197;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=37227;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=37655;
UPDATE spell_proc_event SET cooldown=2500 WHERE entry=37657;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=37173;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=38334;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=38347;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=38350;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=39027;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=38299;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=40250;
UPDATE spell_proc_event SET cooldown=40000 WHERE entry=39958;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=41393;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=41469;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=41260;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=41262;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=41434;
UPDATE spell_proc_event SET cooldown=7000 WHERE entry=40816;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=40899;
UPDATE spell_proc_event SET cooldown=90000 WHERE entry=42135;
UPDATE spell_proc_event SET cooldown=90000 WHERE entry=42136;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=42083;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=45054;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=45057;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45481;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=43730;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45482;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45483;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=43737;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45484;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=43748;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45354;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45355;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=43750;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=51414;
UPDATE spell_proc_event SET cooldown=25000 WHERE entry=46662;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=46832;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=46569;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=7434;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=61618;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=48110;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=48111;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=48833;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=48837;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=49222;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=49622;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=51698;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=51349;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=51672;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=52020;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=52423;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=53646;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=52898;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=54838;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=54707;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=54738;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=54808;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=55768;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=55640;
UPDATE spell_proc_event SET cooldown=40000 WHERE entry=55380;
UPDATE spell_proc_event SET cooldown=55000 WHERE entry=55776;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=55747;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=56451;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=56218;
UPDATE spell_proc_event SET cooldown=5800 WHERE entry=56636;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=57907;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=57345;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=57352;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=57470;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=59176;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=58444;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=59345;
UPDATE spell_proc_event SET cooldown=35000 WHERE entry=59630;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60061;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60063;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=60066;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=60487;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=60770;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60490;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60436;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60493;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60301;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60442;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=61356;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60306;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=60519;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60537;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60473;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60482;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=64571;
UPDATE spell_proc_event SET cooldown=100 WHERE entry=63730;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=64860;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=64867;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=67365;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=67712;
UPDATE spell_proc_event SET cooldown=9000 WHERE entry=67379;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=67381;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=67386;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=67209;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=67389;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=67667;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=67115;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=67353;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=67361;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=67363;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=67771;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=69755;
UPDATE spell_proc_event SET cooldown=100000 WHERE entry=71606;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=71404;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=71634;
UPDATE spell_proc_event SET cooldown=100000 WHERE entry=71637;
UPDATE spell_proc_event SET cooldown=105000 WHERE entry=71519;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=71640;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71642;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=71585;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71540;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71602;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=72413;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=75455;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=75465;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=75474;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=75475;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=75481;
UPDATE spell_proc_event SET cooldown=8 WHERE entry=44449;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=75457;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60529;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=60221;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=58901;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60317;
UPDATE spell_proc_event SET cooldown=9000 WHERE entry=67392;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=67672;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=63251;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71402;
UPDATE spell_proc_event SET cooldown=2500 WHERE entry=54841;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=60826;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=56821;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=69739;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=67151;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=67758;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=58442;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=50781;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=54695;
UPDATE spell_proc_event SET cooldown=100 WHERE entry=49208;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=67384;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71611;
UPDATE spell_proc_event SET cooldown=105000 WHERE entry=71562;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=52127;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=51346;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=52420;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=71645;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=51352;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=67356;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=51359;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=67702;

INSERT INTO spell_proc_event(entry,cooldown) VALUES
(905,3500),
(27561,20000),
(3582,10000),
(3284,16000),
(3338,4000),
(3417,4000),
(8876,4000),
(5202,3000),
(6961,15000),
(7849,5000),
(8788,3500),
(945,3500),
(7445,5000),
(325,3500),
(7446,5000),
(8134,3500),
(10432,3500),
(10431,3500),
(10400,8),
(15641,5000),
(12550,3500),
(12812,6000),
(12815,6000),
(12813,6000),
(12814,6000),
(13879,1000),
(13961,500),
(14195,500),
(13960,500),
(13964,500),
(14869,8000),
(13962,500),
(14796,8000),
(13585,3500),
(12787,4000),
(14193,500),
(14194,500),
(15569,8),
(15567,8),
(15507,3500),
(14190,500),
(15573,4000),
(14178,8000),
(13963,500),
(15568,8),
(15733,3000),
(14071,1000),
(19449,3000),
(15506,4000),
(14870,8000),
(16280,500),
(16312,8),
(16689,1000),
(16277,500),
(16278,500),
(14070,1000),
(16279,500),
(16313,8),
(16792,2000),
(16311,8),
(16813,1000),
(16812,1000),
(15876,9000),
(15852,10000),
(18095,6000),
(17329,1000),
(16811,1000),
(16810,1000),
(18189,1000),
(18983,30000),
(19194,3000),
(19818,3000),
(18943,3000),
(19362,3000),
(19817,3000),
(19514,3500),
(20178,1000),
(23378,3000),
(20545,3500),
(22620,1000),
(21853,5000),
(24256,240000),
(24398,3500),
(25020,3500),
(27539,10000),
(29180,500),
(29179,500),
(29075,8),
(29220,10000),
(29076,8),
(28780,750),
(31255,5000),
(29444,1000),
(25469,3500),
(25472,3500),
(27997,50000),
(27009,1000),
(29788,1000),
(29793,1000),
(29794,1000),
(29118,10000),
(29119,8000),
(29315,24000),
(31583,1000),
(31256,2000),
(30731,2000),
(30557,30000),
(31757,6000),
(30564,2000),
(31765,3500),
(30883,30000),
(30884,30000),
(30885,30000),
(30886,30000),
(32339,3000),
(32732,4000),
(32898,3000),
(32981,25000),
(32593,3500),
(32594,3500),
(32910,1000),
(32912,1000),
(32066,60000),
(34158,8000),
(33736,3500),
(33522,25000),
(33207,8000),
(34191,5000),
(33154,6000),
(34201,15000),
(34303,3500),
(35230,5000),
(34524,5000),
(34392,2000),
(34859,1),
(34860,1),
(34329,30000),
(34938,8000),
(34939,8000),
(35249,8000),
(35408,8000),
(34582,30000),
(34365,10000),
(35131,45000),
(36733,15000),
(35848,4000),
(35922,1000),
(36637,3000),
(38164,120000),
(38319,50000),
(38184,1000),
(39067,3500),
(38805,3000),
(40292,2000),
(39598,17000),
(40303,1000),
(39831,3000),
(39832,3000),
(40394,45000),
(39556,17000),
(40019,1000),
(41151,3500),
(40594,2000),
(40773,5000),
(40546,500),
(41266,1000),
(41435,45000),
(43124,4000),
(42760,20000),
(45444,45000),
(44480,100),
(43983,500),
(45343,1000),
(44326,10000),
(44583,1000),
(46030,100),
(46045,1000),
(46364,45000),
(46478,1000),
(46810,7000),
(47300,1000),
(46834,15000),
(13163,20000),
(24907,6000),
(61570,2000),
(62344,5000),
(62114,50000),
(62115,50000),
(44472,8),
(43224,4000),
(42636,1000),
(44557,6000),
(44469,8),
(44470,8),
(45384,1000),
(45433,1000),
(46340,4000),
(48294,500),
(49217,500),
(49027,20000),
(49280,3500),
(49281,3500),
(49283,3500),
(49542,20000),
(50401,8),
(49717,1000),
(49871,2000),
(50303,10000),
(51385,8),
(51386,8),
(51387,8),
(51388,8),
(51700,1000),
(51701,1000),
(50908,4000),
(50831,2000),
(50920,3000),
(51810,60000),
(52651,3500),
(52129,3500),
(51776,3500),
(52131,3500),
(52134,3500),
(52701,4000),
(52871,8000),
(52881,12000),
(53514,8000),
(53516,8000),
(53312,1000),
(54637,100),
(54639,100),
(54493,1000),
(54647,8000),
(54582,8000),
(54715,7000),
(54174,10000),
(54176,10000),
(54178,3000),
(54515,20000),
(55843,1399),
(54913,4000),
(55067,4000),
(55461,20000),
(55599,3500),
(55603,1000),
(56035,8000),
(56835,100),
(56343,22000),
(56344,22000),
(56637,5800),
(57769,1000),
(57408,2000),
(57455,3000),
(57472,15000),
(57935,2000),
(57481,3000),
(57545,20000),
(58781,8000),
(58784,8),
(58981,3500),
(58791,8),
(58792,8),
(58501,30000),
(59454,7000),
(59407,800),
(59288,5000),
(59301,500),
(61367,1000),
(60470,45000),
(64700,1000),
(64764,50000),
(64714,45000),
(64786,45000),
(64415,45000),
(64792,50000),
(63737,100),
(64191,250),
(64738,50000),
(64742,45000),
(64752,15000),
(65013,50000),
(64889,4000),
(65020,45000),
(65025,45000),
(65956,100),
(64975,4000),
(65879,500),
(65975,1000),
(65976,1000),
(65979,500),
(65916,500),
(65002,50000),
(66214,13000),
(65005,45000),
(67711,5000),
(67653,50000),
(67670,45000),
(66484,5000),
(67530,3500),
(67534,1000),
(69264,1500),
(69053,2000),
(70904,1000),
(69637,2000),
(70188,3000),
(69926,3500),
(69569,3500),
(71604,10000),
(72214,10000),
(71494,5000),
(71567,250),
(71845,250),
(71971,5000),
(71846,250),
(71993,3000),
(71770,3000),
(72980,1000),
(72415,60000),
(72556,1000),
(72417,60000),
(72560,1000),
(44471,8),
(72365,10000),
(52342,3000),
(75381,3500),
(75164,3000),
(49676,500),
(72419,60000),
(52710,2000),
(49654,500),
(55381,15000),
(51915,600000),
(52734,3000),
(54921,4000),
(54638,100),
(59022,1000),
(61587,3000),
(59025,3500),
(72122,3000),
(66063,3500),
(51674,1000),
(54479,3500),
(52138,3500),
(55866,2000),
(61185,3000),
(44561,6000),
(52628,3000),
(70107,2000),
(56834,100),
(69762,100),
(51470,500),
(62664,250),
(59776,1000),
(51620,3500),
(56638,5800),
(63733,100),
(49655,500),
(69698,3500),
(52136,3500),
(56342,22000),
(44560,6000),
(57688,750),
(59471,3500),
(57802,3500),
(60013,3500),
(58835,2000),
(57960,3500),
(49543,20000),
(59845,2000),
(49284,3500),
(47699,10000),
(66865,8000);



