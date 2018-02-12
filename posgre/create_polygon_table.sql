
/* please run step by step (once a time) */


/* create table */
/* ------------ */
create table rw.zone_table_dev (
zone_id serial primary key,
fleet_id int,
name varchar(200),
geo_text text,
geom geometry,
quartier_code int,
area_km float) ; 

/* insert coordinates */
/* ------------ */
insert into rw.zone_table_dev(name, geo_text, geom)
    VALUES
('a', '{"coordinates": [[[[4.41012325819542, 50.87002386646439], [4.410252176362707, 50.87007701361068], [4.410585053639169, 50.87021423949663], [4.410851146199317, 50.87031095134438], [4.41121494178652, 50.87044317144207], [4.412204483238464, 50.8708150719594], [4.413857488940979, 50.871447389653355], [4.414573134081985, 50.871758071957856], [4.414824424849972, 50.871867154657494], [4.414868603954798, 50.87189525721346], [4.414915313649252, 50.87186549525856], [4.414948394990962, 50.8718552356154], [4.415118042776795, 50.87180286662109], [4.415354277312655, 50.87172979982148], [4.41566812576956, 50.871632198771294], [4.415738388243261, 50.87161069798619], [4.415756908080086, 50.87160034903982], [4.415845973170217, 50.87154949644301], [4.415935038294618, 50.87149873301641], [4.416247472990561, 50.87132181894441], [4.416282816260714, 50.8713006748772], [4.416381777471972, 50.87122591214354], [4.416535167349421, 50.87111019921476], [4.416640773127543, 50.871030529296974], [4.41698798563723, 50.870767251881304], [4.417005233171433, 50.870752085045254], [4.417404895129939, 50.87044125328394], [4.417876798710982, 50.870081438851386], [4.417880898535529, 50.8700830447249], [4.418493199861124, 50.870314386210325], [4.418739542568548, 50.87036582007092], [4.418407145969443, 50.870762523363815], [4.419711596164746, 50.87120921987379], [4.42005196620982, 50.87118799546048], [4.424783033312452, 50.87103656033107], [4.424691791072931, 50.8709527774018], [4.421700546952922, 50.868291282726815], [4.421001329415476, 50.8677543724167], [4.420879380949919, 50.86766073345879], [4.421800837077552, 50.86683031397225], [4.42217708761235, 50.86649123427356], [4.422784228826945, 50.86592379688163], [4.422975421869276, 50.865745112796745], [4.422760633623906, 50.86566403288921], [4.42226309904597, 50.86547622885069], [4.421554508488549, 50.865236966792665], [4.421184746943856, 50.865112111013445], [4.421032502234717, 50.865063517715676], [4.420880271575462, 50.865014924388895], [4.418057827039537, 50.864058394607625], [4.417975576108642, 50.863944769724675], [4.417741207705725, 50.86397314475572], [4.417278012653703, 50.864024362491534], [4.417109566544128, 50.864058358941925], [4.416941106316132, 50.86409234641325], [4.416665174142804, 50.8642095222682], [4.416276454507726, 50.8643121178428], [4.415973604916462, 50.864379673035096], [4.41600096058796, 50.86466718525301], [4.415630732552867, 50.86500301250547], [4.415400082263147, 50.8651335523772], [4.415122100211815, 50.86536962062937], [4.41468405547933, 50.86574162406506], [4.414531216939871, 50.865869806293986], [4.41437837840041, 50.86599798812723], [4.412702752933721, 50.86736909079394], [4.41231252057167, 50.8676710297314], [4.411977579333052, 50.867955381040204], [4.411714201107595, 50.86827407196509], [4.411409103672042, 50.86860451996704], [4.410791034355242, 50.869311303447724], [4.410188247439424, 50.86996442046448], [4.41012325819542, 50.87002386646439]]]], "type": "MultiPolygon"}', ST_GeomFromGeoJSON('{"coordinates": [[[[4.41012325819542, 50.87002386646439], [4.410252176362707, 50.87007701361068], [4.410585053639169, 50.87021423949663], [4.410851146199317, 50.87031095134438], [4.41121494178652, 50.87044317144207], [4.412204483238464, 50.8708150719594], [4.413857488940979, 50.871447389653355], [4.414573134081985, 50.871758071957856], [4.414824424849972, 50.871867154657494], [4.414868603954798, 50.87189525721346], [4.414915313649252, 50.87186549525856], [4.414948394990962, 50.8718552356154], [4.415118042776795, 50.87180286662109], [4.415354277312655, 50.87172979982148], [4.41566812576956, 50.871632198771294], [4.415738388243261, 50.87161069798619], [4.415756908080086, 50.87160034903982], [4.415845973170217, 50.87154949644301], [4.415935038294618, 50.87149873301641], [4.416247472990561, 50.87132181894441], [4.416282816260714, 50.8713006748772], [4.416381777471972, 50.87122591214354], [4.416535167349421, 50.87111019921476], [4.416640773127543, 50.871030529296974], [4.41698798563723, 50.870767251881304], [4.417005233171433, 50.870752085045254], [4.417404895129939, 50.87044125328394], [4.417876798710982, 50.870081438851386], [4.417880898535529, 50.8700830447249], [4.418493199861124, 50.870314386210325], [4.418739542568548, 50.87036582007092], [4.418407145969443, 50.870762523363815], [4.419711596164746, 50.87120921987379], [4.42005196620982, 50.87118799546048], [4.424783033312452, 50.87103656033107], [4.424691791072931, 50.8709527774018], [4.421700546952922, 50.868291282726815], [4.421001329415476, 50.8677543724167], [4.420879380949919, 50.86766073345879], [4.421800837077552, 50.86683031397225], [4.42217708761235, 50.86649123427356], [4.422784228826945, 50.86592379688163], [4.422975421869276, 50.865745112796745], [4.422760633623906, 50.86566403288921], [4.42226309904597, 50.86547622885069], [4.421554508488549, 50.865236966792665], [4.421184746943856, 50.865112111013445], [4.421032502234717, 50.865063517715676], [4.420880271575462, 50.865014924388895], [4.418057827039537, 50.864058394607625], [4.417975576108642, 50.863944769724675], [4.417741207705725, 50.86397314475572], [4.417278012653703, 50.864024362491534], [4.417109566544128, 50.864058358941925], [4.416941106316132, 50.86409234641325], [4.416665174142804, 50.8642095222682], [4.416276454507726, 50.8643121178428], [4.415973604916462, 50.864379673035096], [4.41600096058796, 50.86466718525301], [4.415630732552867, 50.86500301250547], [4.415400082263147, 50.8651335523772], [4.415122100211815, 50.86536962062937], [4.41468405547933, 50.86574162406506], [4.414531216939871, 50.865869806293986], [4.41437837840041, 50.86599798812723], [4.412702752933721, 50.86736909079394], [4.41231252057167, 50.8676710297314], [4.411977579333052, 50.867955381040204], [4.411714201107595, 50.86827407196509], [4.411409103672042, 50.86860451996704], [4.410791034355242, 50.869311303447724], [4.410188247439424, 50.86996442046448], [4.41012325819542, 50.87002386646439]]]], "type": "MultiPolygon", "crs":{"type":"name","properties":{"name":"EPSG:4326"}}}')),
('b', '{"coordinates": [[[[4.326955362476136, 50.78149160378038], [4.329352401040769, 50.784187413346054], [4.330417591280539, 50.783352602785634], [4.330570203582605, 50.78343043814352], [4.331019091638241, 50.783659402775136], [4.331274793315756, 50.78380287156283], [4.331494826485447, 50.7838777922868], [4.331843763738275, 50.783561671088194], [4.332510875407142, 50.782990087480144], [4.332981478448723, 50.78247548912761], [4.333058767132098, 50.782463726011194], [4.333137653390033, 50.78245173045341], [4.333482377699617, 50.78242918741106], [4.333466572163216, 50.78219629271087], [4.333453297250712, 50.78194946151374], [4.333455050264959, 50.78177427261469], [4.333456831584582, 50.781605232843795], [4.333471506071091, 50.78142933650615], [4.333477062080394, 50.78135663760415], [4.333583360552042, 50.781302012791265], [4.334011749484945, 50.78107954408591], [4.334166383462446, 50.78100080196445], [4.334270773377355, 50.78094764273967], [4.334722446531121, 50.780704648626944], [4.335058377464095, 50.780528328770544], [4.335125727636818, 50.78055696904655], [4.335369101535317, 50.780660275999296], [4.335613875007824, 50.78076444083557], [4.335748674319278, 50.78082222165983], [4.336608491791716, 50.78125066843977], [4.337337086641824, 50.781630851206366], [4.337989820687939, 50.78201852145714], [4.338815383413515, 50.78254067790321], [4.336134170705471, 50.780027710742374], [4.336108836640872, 50.77997696392926], [4.336083431847103, 50.779926065083906], [4.336030968245596, 50.7798219788324], [4.336354825908055, 50.779548711085404], [4.336272504350795, 50.779294607312835], [4.336198636814056, 50.779100126618324], [4.336138143258633, 50.77882286776957], [4.336123369806114, 50.77867733657046], [4.336113501921828, 50.778514900754466], [4.336107182558366, 50.778312416094764], [4.33612875612024, 50.777977850997274], [4.336129689135308, 50.777786377401675], [4.336206652718087, 50.77743728183854], [4.336278046138875, 50.77724400919864], [4.336373473016264, 50.777092841183155], [4.336651115780044, 50.77669599376205], [4.337107044232311, 50.776209978008396], [4.338253863370082, 50.775104288166546], [4.335567631872305, 50.776955689965604], [4.335275526638185, 50.77700413366957], [4.335079032060782, 50.77703590495997], [4.334737361407711, 50.77728776826241], [4.334482253560518, 50.777461463197504], [4.334149885232519, 50.777693711028014], [4.334028304325622, 50.7777900068187], [4.333749106445344, 50.7780392110544], [4.333525793381748, 50.77826708466478], [4.333346928049895, 50.778465207115694], [4.333142276281463, 50.77872739650216], [4.333007957647364, 50.778929191032965], [4.332815831521428, 50.77926918432903], [4.3327853655484, 50.779318921792836], [4.332754885525488, 50.77936866817427], [4.332734584334773, 50.779418503882965], [4.332639737066481, 50.77963112067811], [4.332555690731814, 50.779795242116364], [4.332546713575874, 50.77982707408702], [4.332543179242005, 50.779841045829905], [4.332471856447584, 50.779833009637386], [4.331454676510266, 50.77971841081597], [4.326955362476136, 50.78149160378038]]]], "type": "MultiPolygon"}', ST_GeomFromGeoJSON('{"coordinates": [[[[4.326955362476136, 50.78149160378038], [4.329352401040769, 50.784187413346054], [4.330417591280539, 50.783352602785634], [4.330570203582605, 50.78343043814352], [4.331019091638241, 50.783659402775136], [4.331274793315756, 50.78380287156283], [4.331494826485447, 50.7838777922868], [4.331843763738275, 50.783561671088194], [4.332510875407142, 50.782990087480144], [4.332981478448723, 50.78247548912761], [4.333058767132098, 50.782463726011194], [4.333137653390033, 50.78245173045341], [4.333482377699617, 50.78242918741106], [4.333466572163216, 50.78219629271087], [4.333453297250712, 50.78194946151374], [4.333455050264959, 50.78177427261469], [4.333456831584582, 50.781605232843795], [4.333471506071091, 50.78142933650615], [4.333477062080394, 50.78135663760415], [4.333583360552042, 50.781302012791265], [4.334011749484945, 50.78107954408591], [4.334166383462446, 50.78100080196445], [4.334270773377355, 50.78094764273967], [4.334722446531121, 50.780704648626944], [4.335058377464095, 50.780528328770544], [4.335125727636818, 50.78055696904655], [4.335369101535317, 50.780660275999296], [4.335613875007824, 50.78076444083557], [4.335748674319278, 50.78082222165983], [4.336608491791716, 50.78125066843977], [4.337337086641824, 50.781630851206366], [4.337989820687939, 50.78201852145714], [4.338815383413515, 50.78254067790321], [4.336134170705471, 50.780027710742374], [4.336108836640872, 50.77997696392926], [4.336083431847103, 50.779926065083906], [4.336030968245596, 50.7798219788324], [4.336354825908055, 50.779548711085404], [4.336272504350795, 50.779294607312835], [4.336198636814056, 50.779100126618324], [4.336138143258633, 50.77882286776957], [4.336123369806114, 50.77867733657046], [4.336113501921828, 50.778514900754466], [4.336107182558366, 50.778312416094764], [4.33612875612024, 50.777977850997274], [4.336129689135308, 50.777786377401675], [4.336206652718087, 50.77743728183854], [4.336278046138875, 50.77724400919864], [4.336373473016264, 50.777092841183155], [4.336651115780044, 50.77669599376205], [4.337107044232311, 50.776209978008396], [4.338253863370082, 50.775104288166546], [4.335567631872305, 50.776955689965604], [4.335275526638185, 50.77700413366957], [4.335079032060782, 50.77703590495997], [4.334737361407711, 50.77728776826241], [4.334482253560518, 50.777461463197504], [4.334149885232519, 50.777693711028014], [4.334028304325622, 50.7777900068187], [4.333749106445344, 50.7780392110544], [4.333525793381748, 50.77826708466478], [4.333346928049895, 50.778465207115694], [4.333142276281463, 50.77872739650216], [4.333007957647364, 50.778929191032965], [4.332815831521428, 50.77926918432903], [4.3327853655484, 50.779318921792836], [4.332754885525488, 50.77936866817427], [4.332734584334773, 50.779418503882965], [4.332639737066481, 50.77963112067811], [4.332555690731814, 50.779795242116364], [4.332546713575874, 50.77982707408702], [4.332543179242005, 50.779841045829905], [4.332471856447584, 50.779833009637386], [4.331454676510266, 50.77971841081597], [4.326955362476136, 50.78149160378038]]]], "type": "MultiPolygon", "crs":{"type":"name","properties":{"name":"EPSG:4326"}}}')),
('c', '{"coordinates": [[[[4.432526889757325, 50.802722297782175], [4.432452287137535, 50.8027569196271], [4.43226874233777, 50.802842102715005], [4.432162401442329, 50.802882281822036], [4.432098359434618, 50.8029064768334], [4.432039788520085, 50.80292859903812], [4.429196689353204, 50.80428091737785], [4.429362449364927, 50.80444723053461], [4.429109645904238, 50.804505955995545], [4.42933030114109, 50.80478588575202], [4.429417895962314, 50.805134160712235], [4.429125592796175, 50.80524154094107], [4.42905066500725, 50.805269058225164], [4.428974478999856, 50.80529704012104], [4.428633995870353, 50.80542211854377], [4.428398920586956, 50.805471595905786], [4.428278159644967, 50.80552512036436], [4.428292763505112, 50.80563037337902], [4.428231916475181, 50.805833472324466], [4.428213297603811, 50.805922616510564], [4.428203274279837, 50.80600315703779], [4.428193250921596, 50.80606967100586], [4.428194692953666, 50.80615790349819], [4.428211162878217, 50.80622939346314], [4.428273437787529, 50.806244331120226], [4.428249093314482, 50.80630858441289], [4.428295619229607, 50.80638414807455], [4.428487830203133, 50.80654633520003], [4.428812861202205, 50.806727363408065], [4.428897063079364, 50.806827038967654], [4.429014346263966, 50.80705395035621], [4.429022022846175, 50.80708621046944], [4.429010712998355, 50.807146174401865], [4.428968385805249, 50.80724249886187], [4.428953301336286, 50.8072896068625], [4.428961090968655, 50.807336464635576], [4.428965544199174, 50.80736319454534], [4.428979158467768, 50.80740988249144], [4.429083364671882, 50.807654158253875], [4.429155804226435, 50.807959431871105], [4.429240076798496, 50.80820155175303], [4.429242805320142, 50.80820938653247], [4.429240783644709, 50.80827045680517], [4.429230986489592, 50.808282758386476], [4.429087294835518, 50.80846309196866], [4.429083718043587, 50.80846759447262], [4.428965035284979, 50.80861655273683], [4.428908853604541, 50.80864085201123], [4.428808690717026, 50.80872787360915], [4.428806457025422, 50.808730946728026], [4.428436384498552, 50.809239556561145], [4.428605933352643, 50.809673835436136], [4.42861475500036, 50.809971842061735], [4.428630150520039, 50.81006475709889], [4.428628284421363, 50.81012254642541], [4.428613016138801, 50.810167051911876], [4.428551631855031, 50.810227780139485], [4.428453702693388, 50.81027052567065], [4.428425230158955, 50.81034334043182], [4.427885212913957, 50.81042993897425], [4.427600586330029, 50.81047558764747], [4.427717572650872, 50.81106644326165], [4.427729730734709, 50.811130618509814], [4.427752067685009, 50.81124854382331], [4.427742694665034, 50.811650904399855], [4.427655820842711, 50.812164181109], [4.427471201603806, 50.81260795515002], [4.427935485213389, 50.81266026551721], [4.429057012676088, 50.81282167158918], [4.429429644063696, 50.81287482141944], [4.429802261298615, 50.81292798011001], [4.432532841562128, 50.813477687895535], [4.433170689002759, 50.81357713465324], [4.433910805785393, 50.81363010497264], [4.434570608499246, 50.8136428964278], [4.435003945492713, 50.81360796999374], [4.436472770312688, 50.81329953536456], [4.436890867260431, 50.81314731374657], [4.437142412502649, 50.81304654400362], [4.437393957847671, 50.812945783029], [4.437588091427817, 50.81286428970394], [4.437913758646737, 50.81272787766173], [4.437947914427589, 50.81271361204917], [4.437982070174174, 50.81269934641061], [4.438937441726846, 50.81230936684023], [4.439014815257812, 50.812276681545605], [4.439092188823044, 50.812243996271405], [4.442768682805935, 50.81066091531677], [4.442904613064476, 50.81060018765225], [4.443040543391554, 50.81053945990878], [4.445063254062279, 50.80966767143612], [4.444861655916092, 50.80947781949049], [4.442273438427548, 50.8081168608796], [4.442336773589044, 50.80809502703754], [4.442902351101766, 50.807867709741984], [4.442648034914106, 50.80761852154505], [4.44398559468796, 50.80752839789573], [4.440568478106257, 50.805502088154796], [4.442071147587834, 50.8052712649874], [4.443461750572292, 50.80557456188522], [4.443510990856376, 50.805144997917715], [4.442847215589361, 50.80473134193416], [4.443432882173824, 50.80435601075928], [4.443211392819376, 50.80421798355158], [4.442625726200645, 50.80459331585693], [4.441961300629631, 50.80417924401449], [4.442902322830658, 50.80359457326861], [4.442906535773901, 50.803531299048316], [4.442331274190492, 50.802983296841084], [4.439027454019004, 50.79989171508765], [4.438748821663673, 50.80001290329998], [4.432641868555422, 50.802668939839705], [4.432546257864434, 50.802713309490194], [4.432526889757325, 50.802722297782175]]]], "type": "MultiPolygon"}', ST_GeomFromGeoJSON('{"coordinates": [[[[4.432526889757325, 50.802722297782175], [4.432452287137535, 50.8027569196271], [4.43226874233777, 50.802842102715005], [4.432162401442329, 50.802882281822036], [4.432098359434618, 50.8029064768334], [4.432039788520085, 50.80292859903812], [4.429196689353204, 50.80428091737785], [4.429362449364927, 50.80444723053461], [4.429109645904238, 50.804505955995545], [4.42933030114109, 50.80478588575202], [4.429417895962314, 50.805134160712235], [4.429125592796175, 50.80524154094107], [4.42905066500725, 50.805269058225164], [4.428974478999856, 50.80529704012104], [4.428633995870353, 50.80542211854377], [4.428398920586956, 50.805471595905786], [4.428278159644967, 50.80552512036436], [4.428292763505112, 50.80563037337902], [4.428231916475181, 50.805833472324466], [4.428213297603811, 50.805922616510564], [4.428203274279837, 50.80600315703779], [4.428193250921596, 50.80606967100586], [4.428194692953666, 50.80615790349819], [4.428211162878217, 50.80622939346314], [4.428273437787529, 50.806244331120226], [4.428249093314482, 50.80630858441289], [4.428295619229607, 50.80638414807455], [4.428487830203133, 50.80654633520003], [4.428812861202205, 50.806727363408065], [4.428897063079364, 50.806827038967654], [4.429014346263966, 50.80705395035621], [4.429022022846175, 50.80708621046944], [4.429010712998355, 50.807146174401865], [4.428968385805249, 50.80724249886187], [4.428953301336286, 50.8072896068625], [4.428961090968655, 50.807336464635576], [4.428965544199174, 50.80736319454534], [4.428979158467768, 50.80740988249144], [4.429083364671882, 50.807654158253875], [4.429155804226435, 50.807959431871105], [4.429240076798496, 50.80820155175303], [4.429242805320142, 50.80820938653247], [4.429240783644709, 50.80827045680517], [4.429230986489592, 50.808282758386476], [4.429087294835518, 50.80846309196866], [4.429083718043587, 50.80846759447262], [4.428965035284979, 50.80861655273683], [4.428908853604541, 50.80864085201123], [4.428808690717026, 50.80872787360915], [4.428806457025422, 50.808730946728026], [4.428436384498552, 50.809239556561145], [4.428605933352643, 50.809673835436136], [4.42861475500036, 50.809971842061735], [4.428630150520039, 50.81006475709889], [4.428628284421363, 50.81012254642541], [4.428613016138801, 50.810167051911876], [4.428551631855031, 50.810227780139485], [4.428453702693388, 50.81027052567065], [4.428425230158955, 50.81034334043182], [4.427885212913957, 50.81042993897425], [4.427600586330029, 50.81047558764747], [4.427717572650872, 50.81106644326165], [4.427729730734709, 50.811130618509814], [4.427752067685009, 50.81124854382331], [4.427742694665034, 50.811650904399855], [4.427655820842711, 50.812164181109], [4.427471201603806, 50.81260795515002], [4.427935485213389, 50.81266026551721], [4.429057012676088, 50.81282167158918], [4.429429644063696, 50.81287482141944], [4.429802261298615, 50.81292798011001], [4.432532841562128, 50.813477687895535], [4.433170689002759, 50.81357713465324], [4.433910805785393, 50.81363010497264], [4.434570608499246, 50.8136428964278], [4.435003945492713, 50.81360796999374], [4.436472770312688, 50.81329953536456], [4.436890867260431, 50.81314731374657], [4.437142412502649, 50.81304654400362], [4.437393957847671, 50.812945783029], [4.437588091427817, 50.81286428970394], [4.437913758646737, 50.81272787766173], [4.437947914427589, 50.81271361204917], [4.437982070174174, 50.81269934641061], [4.438937441726846, 50.81230936684023], [4.439014815257812, 50.812276681545605], [4.439092188823044, 50.812243996271405], [4.442768682805935, 50.81066091531677], [4.442904613064476, 50.81060018765225], [4.443040543391554, 50.81053945990878], [4.445063254062279, 50.80966767143612], [4.444861655916092, 50.80947781949049], [4.442273438427548, 50.8081168608796], [4.442336773589044, 50.80809502703754], [4.442902351101766, 50.807867709741984], [4.442648034914106, 50.80761852154505], [4.44398559468796, 50.80752839789573], [4.440568478106257, 50.805502088154796], [4.442071147587834, 50.8052712649874], [4.443461750572292, 50.80557456188522], [4.443510990856376, 50.805144997917715], [4.442847215589361, 50.80473134193416], [4.443432882173824, 50.80435601075928], [4.443211392819376, 50.80421798355158], [4.442625726200645, 50.80459331585693], [4.441961300629631, 50.80417924401449], [4.442902322830658, 50.80359457326861], [4.442906535773901, 50.803531299048316], [4.442331274190492, 50.802983296841084], [4.439027454019004, 50.79989171508765], [4.438748821663673, 50.80001290329998], [4.432641868555422, 50.802668939839705], [4.432546257864434, 50.802713309490194], [4.432526889757325, 50.802722297782175]]]], "type": "MultiPolygon", "crs":{"type":"name","properties":{"name":"EPSG:4326"}}}'))


/* dev 

-- insert geojson into posgre 
-- https://www.queryoverflow.gdn/query/how-to-insert-a-geojson-polygon-into-a-postgis-table-23_60928.html

INSERT INTO rw.zone_table_dev (name, geom)
VALUES ('Woluwe Stockel',
        ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.442896842956543,50.8437522425508],[4.443368911743164,50.8415301248178],[4.440708160400391,50.84033772533234],[4.438991546630859,50.8407713286708],[4.437403678894043,50.83974151416288],[4.437575340270996,50.83838646044699],[4.439334869384766,50.83811544498199],[4.440107345581055,50.839145295375644],[4.442939758300781,50.83835935897131],[4.457745552062988,50.84022932386816],[4.458818435668945,50.84022932386816],[4.458732604980469,50.839226598386105],[4.4611358642578125,50.83700426511972],[4.464998245239258,50.83963311131365],[4.465384483337402,50.84082552880482],[4.463796615600586,50.844538088124544],[4.46444034576416,50.84537811530771],[4.462895393371582,50.84787101015696],[4.459891319274902,50.84833163918871],[4.449892044067383,50.8475458575137],[4.442896842956543,50.8437522425508]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857)), ('Woluwe saint Pierre',
             ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.437532424926758,50.838196749786746],[4.436459541320801,50.83846776477957],[4.435772895812988,50.837546307382226],[4.435214996337891,50.8376005112622],[4.4329833984375,50.83331821076725],[4.435386657714843,50.83112270182924],[4.440021514892578,50.83131244124628],[4.442167282104492,50.82868312633194],[4.441952705383301,50.82816808853875],[4.445600509643554,50.82700245570873],[4.4484758377075195,50.82892708961907],[4.449591636657715,50.82871023342679],[4.454784393310547,50.82944211903826],[4.45469856262207,50.830932961640926],[4.457788467407226,50.83396871210152],[4.45645809173584,50.834836033110854],[4.461007118225098,50.83697716284132],[4.4583892822265625,50.839199497398354],[4.458518028259277,50.84003962069985],[4.443154335021972,50.838305155972755],[4.440064430236816,50.838901385494296],[4.439377784729004,50.83795283494747],[4.437532424926758,50.838196749786746]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857)), ('Leaken',
             ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.346122741699219,50.85916865680137],[4.358997344970703,50.87352382675771],[4.348268508911133,50.87796490837991],[4.347324371337891,50.881214212173845],[4.339771270751953,50.8830553837478],[4.335136413574219,50.882892930359034],[4.331274032592773,50.8828387791036],[4.327583312988281,50.88051021557967],[4.326982498168945,50.878777255570405],[4.323549270629883,50.877315020431254],[4.319601058959961,50.878506474747056],[4.316425323486328,50.878398161977145],[4.317197799682617,50.877152547027954],[4.321660995483398,50.874390412502265],[4.330244064331055,50.86344858502363],[4.346122741699219,50.85916865680137]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857)), ('Jette Ganshoren',
             ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.331102371215819,50.86263597063919],[4.315652847290039,50.87991451784596],[4.304065704345703,50.878398161977145],[4.300804138183594,50.877639965538485],[4.29865837097168,50.87173644277088],[4.303379058837891,50.86946149128906],[4.302692413330078,50.86870314945455],[4.29840087890625,50.8668614107797],[4.299774169921875,50.865344630175976],[4.305267333984374,50.86675307094459],[4.309301376342773,50.8668614107797],[4.317197799682617,50.86079399226619],[4.329214096069336,50.86328606327979],[4.331102371215819,50.86263597063919]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857)), ('Anderlecht',
             ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.3251800537109375,50.839660212049566],[4.311532974243164,50.839931218543114],[4.306297302246094,50.84066292821393],[4.301018714904785,50.83906399222352],[4.298958778381347,50.83906399222352],[4.2993879318237305,50.837248184916945],[4.2990875244140625,50.835540719563056],[4.29964542388916,50.83535099733417],[4.301791191101074,50.833047165868834],[4.302778244018555,50.83299295670028],[4.307069778442383,50.83497155056262],[4.3172407150268555,50.836516421700495],[4.319601058959961,50.83686875357037],[4.32436466217041,50.836028573181615],[4.326038360595703,50.839118194340664],[4.3251800537109375,50.839660212049566]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857)), ('Uccle de Free',
             ST_TRANSFORM(ST_GeomFromGeoJSON('{
    "type":"Polygon",
    "coordinates":[[[4.3688249588012695,50.81059918724785],[4.36830997467041,50.811982164496555],[4.353160858154297,50.811819463416064],[4.3488264083862305,50.81092459734309],[4.349384307861328,50.80975853400941],[4.346294403076172,50.80593472676908],[4.347023963928223,50.80381929468499],[4.354190826416016,50.804388843514594],[4.361057281494141,50.80373792999973],[4.37204360961914,50.805365196784166],[4.3688249588012695,50.81059918724785]]],
    "crs":{"type":"name","properties":{"name":"EPSG:4326"}}
}'),3857));

*/





/* insert other values */
/* ------------ */
update rw.zone_table_dev set quartier_code = '1' where zone_id =1;
update rw.zone_table_dev set quartier_code = '2' where zone_id =2;
update rw.zone_table_dev set quartier_code = '3' where zone_id =3;
update rw.zone_table_dev SET area_km ='0.6454' where quartier_code='1';
update rw.zone_table_dev SET area_km ='1.1772' where quartier_code='2';
update rw.zone_table_dev SET area_km ='0.7598' where quartier_code='3';




