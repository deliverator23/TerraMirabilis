/*
	Localisation
	Language: Japanese ("ja_JP")
	Authors: Sub6
*/

-----------------------------------------------
-- Incorporate available translations
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
SELECT	(SELECT Language IN ('de_DE', 'es_ES', 'fr_FR', 'it_IT', 'ja_JP', 'ko_KR', 'pl_PL', 'pt_BR', 'ru_RU', 'zh_Hans_CN', 'zh_Hans_HK')),
		Tag,
		Text
FROM	LocalizedText
WHERE	Tag LIKE 'LOC_TM_FEATURE_%_EFFECT%DESCRIPTION';

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF
-----------------------------------------------

	("ja_JP",		"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",			"2タイルの自然遺産。沿岸。 [ICON_Food] 食料+2、 [ICON_Science] 科学力+2、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",				"このタイルを1つ以上領有する文明は、改善した海洋資源に [ICON_Gold] ゴールド+1を得る。"	),
	("ja_JP",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRIER_REEF_EFFECT}"	),

-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_BARRINGER_CRATER_NAME",					"バリンジャー・クレーター"	),
	("ja_JP",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",			"1タイルの自然遺産。 [ICON_Science] 科学力+3、 [ICON_Gold] ゴールド+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",				"このタイルを領有する都市で、宇宙競争プロジェクトに対する [ICON_Production] 生産力+20%。"	),
	("ja_JP",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'「このクレーターは地球外の物体が衝突してできたものだと証明できる。おそらく、小さな金属隕石が衝突したのだろう。」[NEWLINE]– ダニエル・モロー・バリンジャー'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"バリンジャー・クレーターは、アメリカのアリゾナ州にある巨大な隕石孔である。科学者によれば、約1.2キロメートルの直径を持つこのクレーターは、およそ5万年前に16万トンの鉄隕石が時速約4万キロで落下したことで作られたとのことである。"	),

-----------------------------------------------
-- BIOLUMINESCENT BAY
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_BIOLUMINESCENT_BAY_NAME",					"バイオルミネセント・ベイ"	),
	("ja_JP",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION",		"1タイルの自然遺産。 [ICON_SCIENCE] 科学力+2、 [ICON_CULTURE] 文化力+2、 [ICON_GOLD] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT",				"このタイルを領有する文明は、国家間の [ICON_TRADEROUTE] 交易路に対し、出発する都市にある漁船1つにつき [ICON_GOLD] ゴールド+1がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_QUOTE',
	'「炎、稲妻、星々、生物から放たれる光は人間の注目を集める。生物発光に関して言うと、その奇妙な輝きはどこか魔法や神秘を彷彿とさせる。」[NEWLINE]– カッシウス・ステファニ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_1",	
	"バイオルミネセント・ベイ (あるいは、「プエルト・モスキート」または「モスキート・ベイ」) は、アメリカで最もよく生物発光が見られる入り江と考えられている。国定自然ランドマークに指定されており、プエルトリコでは5箇所指定されている内の1つである。この発光は、渦鞭毛藻類に属する微生物のパイロジニウム・バハメンスによって引き起こされるものであり、波が押し寄せるたびにネオン・ブルーの光が残される。"	),
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_2",	
	"この生物発光には以下の要素が複数関係している。周囲がレッド・マングローブに覆われていて、開発されていない。海水が十分に低温で、入り江に深度がある。小さな水路を通じて外洋から渦鞭毛藻類が流れ込んでくる。この水路は、海から乗り入れしようとしたスペイン船が人工的に作ったものである。周囲を探索したスペイン人たちは、この生物発光が悪魔の仕業であると信じ、水路に巨大な丸石を落として外海の水が流れ込まないよう試みた。その結果、隔絶された入り江の自然が保護され、生物発光が一層よく見られるようになったのである。"	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",						"ポトシ"	),
	("ja_JP",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",			"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Production] 生産力+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",				"このタイルを領有する都市から出発する国家間の [ICON_TradeRoute] 交易路に対し、 [ICON_Gold] ゴールド+4。"	),
	("ja_JP",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'「我は豊かなるポトシ。世界の財宝にして全ての山の王。諸王の羨望の的。」[NEWLINE]– ポトシの紋章'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"ボリビア南部に位置する山、ポトシは、埋蔵していた銀のほとんどを、帝国時代のスペインによって取り尽くされた鉱山である。ポトシで採掘された銀は、ラマやラバを使って財宝船が待ち受ける海岸へと運ばれた後、ヨーロッパへと運搬された。200年の間に約41,000トンの純銀が採掘され、そのうち8,200トンは直接スペイン王の元へと運ばれた。1800年を過ぎた頃には、ポトシの主要な銀脈は全て枯渇していたが、採掘は現在も続いている。今でも多少の銀は採れるものの、採掘のほとんどがスズを目的としたものである。"	),

-----------------------------------------------
-- CHOCOLATE HILLS
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION",			"4タイルの自然遺産。 [ICON_CULTURE] 文化力+2、 [ICON_PRODUCTION] 生産力+2、 [ICON_FOOD] 食料+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT",				"このタイルを1つ以上領有する文明は、 [ICON_TRADEROUTE] 交易路を結んでいる文明に及ぼす[ICON_TOURISM] 観光力+25%を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT}"	),

-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",				"2タイルの自然遺産。崖。 [ICON_Culture] 文化力+3、 [ICON_Food] 食料+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",					"このタイルを1つ以上領有する文明は、港区域が崖から少量の隣接ボーナスを得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT}"	),

	("ja_JP",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"隣接する崖により [ICON_Gold] ゴールド+{1_num}。"	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",			"1タイルの自然遺産。湖。真水をもたらす。 [ICON_Faith] 信仰力+4、 [ICON_Science] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",				"このタイルを領有する都市では、 [ICON_Faith] 信仰力を用いて建造物を購入できる。"	),
	("ja_JP",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CRATER_LAKE_EFFECT}"	),

-----------------------------------------------
-- DALLOL
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_DALLOL_NAME",					"ダロル"	),
	("ja_JP",	"LOC_TM_FEATURE_DALLOL_DESCRIPTION",		"1タイルの自然遺産。 [ICON_SCIENCE] 科学力+2、 [ICON_PRODUCTION] 生産力+2、 [ICON_GOLD] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_DALLOL_EFFECT",				"このタイルを領有する文明は、高級資源の [ICON_RESOURCE_TM_SYLVITE] カリ岩塩を1つ得る。この高級資源は [ICON_Amenities] 快適性+6をもたらすが、取り引きできない。"	),
	("ja_JP",	"LOC_TM_FEATURE_DALLOL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DALLOL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DALLOL_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_DALLOL_QUOTE',	
	'「そこは地獄だ。暗闇だ。硫黄の穴だ。燃え上がり、焼け焦げ、悪臭を放ち、燃え尽きる！」[NEWLINE]– ウィリアム・シェイクスピア 『リア王』'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_1",	
	"ダロルは、エチオピアのエトラエール山脈の北東、ダナキル低地に位置するスコリア丘火山である。中新世の塩類鉱床に玄武岩マグマが侵入し、その後の熱水活動によって形成された。1926年には水蒸気噴火が発生し、ダロル火山が形成された。周囲の塩原には多数の噴火クレーターが点在している。これらのクレーターは海抜マイナス45メートル以下にあり、世界で最も低い場所にある陸上火口として知られている。"	),
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_2",	
	"付近にはおびただしい数の塩泉と酸性泉が存在している。また、点在する小さな間欠泉からは円錐状の塩が生成されているほか、ダロルの地表には膨大な量のカリウムが堆積している。ダロルという名はアファル人の言葉で「溶解」や「崩壊」を意味している。これは、緑色をした酸性池 (pH1未満) や酸化鉄、硫黄、塩の砂漠といった風景を描写したものである。"	),

	("ja_JP",	"LOC_RESOURCE_TM_SYLVITE_NAME",	"カリ岩塩"	),
	("ja_JP",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_1",
	"エチオピアのダロルでは、1917年以降、年間51,000トンのカリウムが採掘されたと言われている。1925年から1929年にかけては、イタリアの会社が25,000トンのカリ岩塩を採掘した。1965年までにはダロルの65地点にあわせて約10,000棟のホテルが建設された。"	),
	("ja_JP",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_2",
	"カリ岩塩の英名「シルヴィウス」はオランダの化学者フランシスクス・シルヴィウスに由来する。世界中の蒸発鉱床に存在しているが、イタリアのナポリ近郊のヴェスヴィオ山で初めて発見されたとされている。溶液から最後に沈殿する蒸発岩の1つであるため、非常に乾燥した塩性地でのみ見られる。プリズムやレンズにも用いられるが、主な用途はカリウム肥料である。"	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",				"2タイルの自然遺産。湖。真水はもたらさない。 [ICON_Faith] 信仰力+2、 [ICON_Culture] 文化力+2、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",					"このタイルを1つ以上領有する文明は、 [ICON_Fortified] 防御中のユニットが追加で10HP回復する。"	),
	("ja_JP",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEAD_SEA_EFFECT}"	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",			"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",				"このタイルを1つ以上領有する文明は、タイルの購入費用が20%軽減される。"	),
	("ja_JP",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DELICATE_ARCH_EFFECT}"	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",			"3タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_EVEREST_EFFECT",				"このタイルを1つ以上領有する文明は、宗教ユニットの布教回数が1回追加される。"	),
	("ja_JP",	"LOC_TM_FEATURE_EVEREST_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EVEREST_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EVEREST_EFFECT}"	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",			"3タイルの自然遺産。 [ICON_Production] 生産力+2、 [ICON_Science] 科学力+2、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",				"このタイルを1つ以上領有する文明は、時代スコア4以上の歴史的瞬間が発生するときに時代スコアがさらに+1される。"	),
	("ja_JP",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT}"	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",				"2タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Food] 食料+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION",			"2タイルの自然遺産。通行不可。火山。隣接するタイルに [ICON_Culture] 文化力+1。噴火によって産出量が追加されるが、 [ICON_CITIZEN] 人口やインフラに被害を与える。常に活動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",					"このタイルを1つ以上領有する文明は、ツンドラや雪原上に建設する専門区域から [ICON_Food] 食料+1を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT}"	),
	("ja_JP",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT}"	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("ja_JP",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Science] 科学力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",				"このタイルを1つ以上領有する文明は、高級資源の [ICON_RESOURCE_TM_TORTOISE] リクガメを1つ得る。この高級資源は [ICON_Amenities] 快適性+6をもたらすが、取り引きできない。"	),
	("ja_JP",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GALAPAGOS_EFFECT}"	),

	("ja_JP",	"LOC_RESOURCE_TM_TORTOISE_NAME",	"リクガメ"	),
	("ja_JP",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"ガラパゴスゾウガメは現存するリクガメの中で最も巨大な種である。その体重は最大417キログラムに及ぶ。現在、ゾウガメが生息しているのは、ガラパゴス諸島とアルダブラ環礁のみである。16世紀には25万匹いたが、肉や油を求めて乱獲された結果、1970年には3000匹ほどに減少した。ガラパゴス諸島にはゾウガメの天敵が存在しないため、多くのゾウガメ種が絶滅した原因は人間にあると考えられている。"	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",			"2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",				"このタイルを1つ以上領有する都市で生産する陸上ユニットに [ICON_Promotion] レベルアップが1つ無償でもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT}"	),

-----------------------------------------------
-- GOBUSTAN
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION",			"3タイルの自然遺産。 [ICON_CULTURE] 文化力+3、 [ICON_PRODUCTION] 生産力+1、 [ICON_SCIENCE] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT",				"このタイルを1つ以上領有する文明は、ターン毎に [ICON_RESOURCE_OIL] 石油が2つ備蓄される。"	),
	("ja_JP",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GOBUSTAN_EFFECT}"	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_GRAND_MESA_NAME",					"グランド・メサ"	),
	("ja_JP",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",		"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Culture] 文化力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",				"このタイルを領有する文明は、ユニットが森林や熱帯雨林で [ICON_Movement] 移動ペナルティを負わなくなる。"	),
	("ja_JP",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GRAND_MESA_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'「環境保護とは、将来の人類のために大地とその資源を賢く活用するということを意味する。」[NEWLINE]– ギフォード・ピンショー'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"グランド・メサは、アメリカのコロラド州にある巨大な累層である。周囲の土地から1,500メートルほどせり上がった台地は、約1,300平方キロメートルの面積を持ち、世界最大のメサを形成している。グランド・メサの一番上には、侵食に強い火山岩の一種、玄武岩の層がある。そのため周辺の土地がコロラド川とガニソン川に浸食されていくなか、この場所だけが昔と同じ高さのまま残り、現在のような姿になったのである。"	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",			"2タイルの自然遺産。 [ICON_Culture] 文化力+2、 [ICON_Food] 食料+2、 [ICON_Production] 生産力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",				"このタイルを1つ以上領有する文明は、港区域から [ICON_Housing] 住宅+2を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_HA_LONG_BAY_EFFECT}"	),

-----------------------------------------------
-- IK-KIL
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_IK_KIL_DESCRIPTION",			"1タイルの自然遺産。通行不可。真水をもたらす。隣接するタイルに [ICON_SCIENCE] 科学力+1、 [ICON_FAITH] 信仰力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_IK_KIL_EFFECT",					"このタイルを領有する文明は、世界遺産に対して [ICON_PRODUCTION] 生産力+15%を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_IK_KIL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_IK_KIL_EFFECT}"	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_KAILASH_NAME",						"カイラス山"	),
	("ja_JP",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",			"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+1、 [ICON_Culture] 文化力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_KAILASH_EFFECT",				"このタイルを領有する文明は、自らの [ICON_Religion] 宗教を信奉する他国都市1つにつき [ICON_Culture] 文化力+1を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_KAILASH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_KAILASH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KAILASH_EFFECT}"	),
		
	("ja_JP",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'「シヴァ神が住まう至上の山。」[NEWLINE]– バーガヴァタ・プラーナ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"チベットのヒマラヤ山脈に属する霊峰カイラスは、数多くの宗教の信徒、とりわけヒンドゥー教の信徒から聖地と崇められている。彼らによれば、この山にはシヴァ神が住み、永遠の至福に包まれているのだという。カイラス山はあらゆる巡礼地の中でもきわめて到達困難な場所とされる。なぜなら、厳しい自然環境が生半可な巡礼志願者を寄せつけない上、現代の輸送手段のいずれをもってしてもこの山に近づけないからである。"	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",				"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Food] 食料+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION",			"1タイルの自然遺産。通行不可。火山。隣接するタイルに [ICON_Food] 食料+1。噴火によって産出量が追加されるが、 [ICON_CITIZEN] 人口やインフラに被害を与える。常に活動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",					"このタイルを領有する都市は、専門区域の完成時に [ICON_Citizen] 人口+1を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KILIMANJARO_EFFECT}"	),
	("ja_JP",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KILIMANJARO_EFFECT}"	),

-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_KRAKATOA_NAME",						"クラカタウ"	),
	("ja_JP",	"LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION",			"1タイルの自然遺産。通行不可。火山。隣接するタイルに [ICON_Science] 科学力+1。噴火によって産出量が追加されるが、 [ICON_CITIZEN] 人口やインフラに被害を与える。常に活動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",				"このタイルを領有する文明は、 [ICON_GreatAdmiral] 大提督を得るたびに [ICON_TechBoosted] ひらめきが1回発動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT}"	),
	("ja_JP",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	("ja_JP",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'「私は驚きの光景を目の当たりにした。眼前のクラカタウ島は4箇所から大きな炎を吹き上げ、島全体を焼き尽くしていた。」[NEWLINE]– ヨハン・ウィルヘルム・ボーゲル'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"クラカタウは、ジャワ島とスマトラ島の間に位置する、インドネシアの火山島である。1883年8月に起きた大噴火のエネルギーは、広島に落とされた原爆の13,000倍に匹敵する。この噴火により島の半分が吹き飛び、その轟音は3,200キロ離れたオーストラリアにも届くほどだった。この噴火では、噴火とそれによって引き起こされた津波により、約37,000人が死亡した。火山はこの80年間、溶岩を吐き出し続け、山頂は1年で約4.5メートルずつ高くなっているという。"	),

	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME",				"小規模噴火"	),
	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION",			"人々が”クラカタウ”と呼ぶ山から煙が吹き上がっている。Could this be a foreboding sign of things to come?"	),
	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME",			"大規模噴火"	),
	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION",	"我々は神に見捨てられたに違いない。雨乞いをしていたというのに、クラカタウは炎をもって応えてきた。"	),
	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME",			"超大規模噴火"	),
	("ja_JP",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION",	"クラカタウの大地は呪われた。我々には炎と岩が降り注ぐ。灰にまみれ、灰燼に帰す。"	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",			"2タイルの自然遺産。湖。真水はもたらさない。 [ICON_Culture] 文化力+2、 [ICON_Gold] ゴールド+2、 [ICON_Production] 生産力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",					"このタイルを1つ以上領有する文明は、所有する高級資源1種類につき [ICON_Gold] ゴールド+2を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_RETBA_EFFECT}"	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_LAKE_VICTORIA_NAME",						"ヴィクトリア湖"	),
	("ja_JP",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",				"4タイルの自然遺産。湖。真水をもたらす。 [ICON_Food] 食料+3、 [ICON_Culture] 文化力+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",					"このタイルを1つ以上領有する文明は、 [ICON_Capital] 首都と異なる大陸にある都市で [ICON_FoodSurplus] 成長速度+15%を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'「私の予想通り、ヴィクトリア・ニアンザが父なるナイルの源流であることは疑いない。我々の信仰を最初に説いた聖なる川は、ここから生まれたのだ。」[NEWLINE]– ジョン・ハニング・スピーク'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"湖水面積26,000平方マイル（約67,340平方キロメートル）を超えるヴィクトリア湖は、アフリカ最大の湖であり、淡水湖としては世界で2番目に大きく、熱帯地方の湖としては世界最大である。また、白ナイルとカトンガという2つの大河の水源でもある。記録に現れるのは、金や象牙、あるいは原住民から手に入るその他の商材を求めて内陸に分け入ったアラビアの交易商人たちが手記に記したのが最初とされる。19世紀にはヨーロッパ人探検家によるナイル川の水源を探る調査が盛んに行われ、1858年、イギリス人ジョン・スピークがこの湖を発見、当時の英国女王の名にちなんでヴィクトリア湖と名付けた。"	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",			"3タイルの自然遺産。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",				"このタイルを1つ以上領有する都市で生産する海洋ユニットに [ICON_Promotion] レベルアップが1つ無償でもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LYSEFJORDEN_EFFECT}"	),

-----------------------------------------------
-- MATO TIPILA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION",			"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_FAITH] 信仰力+1、 [ICON_PRODUCTION] 生産力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT",				"このタイルを領有する文明は、自然遺産の購入費用が50%軽減される。"	),
	("ja_JP",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEVILSTOWER_EFFECT}"	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",			"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",					"このタイルを領有する文明は、陸上ユニットが丘陵で [ICON_Movement] 移動ペナルティを負わなくなる。"	),
	("ja_JP",	"LOC_TM_FEATURE_MATTERHORN_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_MATTERHORN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MATTERHORN_EFFECT}"	),

	("ja_JP",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",		"丘陵で+{1_Amount} (マッターホルン)"	),

-----------------------------------------------
-- MOSI_OA_TUNYA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_MOSI_OA_TUNYA_NAME",					"モシ・オ・トゥニャ"	),
	("ja_JP",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION",			"1タイルの自然遺産。通行不可。真水をもたらす。隣接するタイルに [ICON_Food] 食料+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT",				"このタイルを領有する文明は、川に隣接した改善済みボーナス資源に [ICON_FOOD] 食料+1がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_MOSI_OA_TUNYA_QUOTE',	
	'「恐れおののきながら絶壁を覗き込むと、幅1000ヤードの水が高さ100フィートから流れ落ち、突如として15～20フィートの幅に収縮していた。あれこそ、私がアフリカで目にした最も素晴らしい光景だ。」[NEWLINE]– デイヴィッド・リヴィングストン'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOSI_OA_TUNYA_CHAPTER_HISTORY_PARA_1",	
	"モシ・オ・トゥニャ、別名「ヴィクトリアの滝」は、世界で最も壮観な滝である。この場所では、幅2キロメートル以上になるザンベジ川が凄まじい音を立てて玄武岩の峡谷に流れ込む。このとき立ち上がる虹色の霧は50キロメートル先からも見ることができる。「モシ・オ・トゥニャ」という名前は、ザンビアの全土やジンバブエの一部で用いられるコロロ語やロジ語で「雷鳴轟く水煙」という意味を持つ。もっとも、世界的には「ヴィクトリアの滝」という名前で知られている。これを命名したのは、スコットランドの伝道師で探検家でもあったデイヴィッド・リヴィングストンである。"	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",						"モトラツィ・キャニオン"	),
	("ja_JP",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",			"4タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",				"このタイルを1つ以上領有する文明は、アピールが「最高」の川タイルに [ICON_GOLD] ゴールド+1がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT}"	),

	("ja_JP",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'「私は南アフリカこそ地上で最も美しい場所であると信じている。贔屓目であることは認めるが、我々がまこと素晴らしい大地に恵まれていることは否定できないだろう。」[NEWLINE]– ネルソン・マンデラ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"モトラツィ・キャニオンは南アフリカのムプマランガ州にある重要な地形であり、ドラケンスバーグ山地の北側を形成している。ブライドリバー・キャニオン自然保護区に存在しており、長さは25キロメートル、深さは平均750メートルに及び、地球上で有数の深い絶壁を持っている。"	),
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"世界の渓谷と比較するのは困難であるが、ブライドリバー・キャニオンは世界で最も巨大な渓谷の1つである。亜熱帯地帯にあることもあって、緑地の渓谷としては世界最大かもしれない。多数の魚、アンテロープ、カバ、ワニの他、南アフリカの霊長類など多様な動植物相を備えており、人気の観光スポットとなっている。"	),

-----------------------------------------------
-- NAMIB
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_NAMIB_NAME",					"ナミブ砂漠"	),
	("ja_JP",	"LOC_TM_FEATURE_NAMIB_DESCRIPTION",			"3タイルの自然遺産。 [ICON_CULTURE] 文化力+3、 [ICON_GOLD] ゴールド+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_NAMIB_EFFECT",				"このタイルを1つ以上領有する文明は、国内都市を通過する他国の [ICON_TRADEROUTE] 交易路から [ICON_CULTURE] 文化力+1を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_NAMIB_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_NAMIB_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_NAMIB_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_NAMIB_QUOTE',	
	'「私は砂丘の奏でる音が好きだ。多くの絵画に描かれた風景のリズムを受け止め、ついに故郷へ戻ってきたことを知る。」[NEWLINE]– ムヴラ・ヤ・ナンゴロ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_NAMIB_CHAPTER_HISTORY_PARA_1",	
	"ナミブは、アフリカ南部の沿岸にある砂漠である。その名はナマ語に由来し、「広漠とした場所」という意味を持っている。砂漠は2000キロメートル以上にわたり、アンゴラ、ナミビア、南アフリカにまで及んでいる。この乾燥・準乾燥状態は5500万年から8000万年ほど続いており、世界で最も古い砂漠といえるかもしれない。世界有数の乾燥地帯であるため、ここで生活する者はほとんどいない。もっとも、少数の入植地が点在しており、これらの場所は歴史的に交易や伝道の中継地として機能してきた。"	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_OLD_FAITHFUL_NAME",					"オールド・フェイスフル"	),
	("ja_JP",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",			"1タイルの自然遺産。 [ICON_Science] 科学力+3、 [ICON_Faith] 信仰力+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",				"このタイルを領有する文明では、キャンパス区域が完成するたびに文化爆弾が発動する。また、国立公園がある都市でキャンパス区域の隣接ボーナスが2倍になる。"	),
	("ja_JP",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'「我々の滞在中、この間欠泉は一定の間隔を挟んで9回蒸気を噴出した。水柱は毎回90フィートから125フィートに達し、15分から20分持続した。規則に忠実なその性質に鑑み、我々はこの間欠泉を”オールド・フェイスフル”と名付けた。」[NEWLINE]– ナサニエル・P・ラングフォード'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"オールド・フェイスフルは、アメリカ合衆国のワイオミング州イエローストーン国立公園にある間欠泉である。1870年にヨーロッパ人によって初めて発見された(先住民族の間では、すでにその約1万年前からよく知られていたという)。規則正しく熱湯を噴き出す姿から、フェイスフル(＝忠実な)と名付けられた。この間欠泉は60分から90分(間隔は直前の噴出の大きさによって決まる)ごとに、30メートルから50メートルの高さまで熱湯を噴出する。噴出は地下水がマグマ(溶岩)に触れることで発生する。水は一瞬にして水蒸気となり、とてつもない圧力によって押し出され、一番近い穴から外へと噴出する。イエローストーンにあるオールド・フェイスフルと他の250の間欠泉は、毎年300万人の旅行者を楽しませている。"	),

-----------------------------------------------
-- OUNIANGA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_OUNIANGA_NAME",					"ウニアンガ湖群"	),
	("ja_JP",	"LOC_TM_FEATURE_OUNIANGA_DESCRIPTION",			"2タイルの自然遺産。真水をもたらす。 [ICON_FOOD] 食料+2、 [ICON_CULTURE] 文化力+2、 [ICON_GOLD] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_OUNIANGA_EFFECT",				"このタイルを1つ以上領有する文明は、専門区域がオアシスから大量の隣接ボーナスを得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_OUNIANGA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OUNIANGA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OUNIANGA_EFFECT}"	),

	("ja_JP",	"LOC_ADJ_OUNIANGA_FAITH_DESCRIPTION",			"隣接するオアシスにより [ICON_FAITH] 信仰力+{1_num} (ウニアンガ湖群)。"	),
	("ja_JP",	"LOC_ADJ_OUNIANGA_SCIENCE_DESCRIPTION",			"隣接するオアシスにより [ICON_SCIENCE] 科学力+{1_num} (ウニアンガ湖群)。"	),
	("ja_JP",	"LOC_ADJ_OUNIANGA_CULTURE_DESCRIPTION",			"隣接するオアシスにより [ICON_CULTURE] 文化力+{1_num} (ウニアンガ湖群)。"	),
	("ja_JP",	"LOC_ADJ_OUNIANGA_GOLD_DESCRIPTION",			"隣接するオアシスにより [ICON_GOLD] ゴールド+{1_num} (ウニアンガ湖群)。"	),
	("ja_JP",	"LOC_ADJ_OUNIANGA_PRODUCTION_DESCRIPTION",		"隣接するオアシスにより [ICON_PRODUCTION] 生産力+{1_num} (ウニアンガ湖群)。"	),
	
	("ja_JP",	'LOC_TM_FEATURE_OUNIANGA_QUOTE',	
	'「当初、砂漠の言葉は、風の壁、揺れるヤシの木、気流に乗って砂へと運ばれる噴石に抗って茂る草であった。彼女は我々にとって最初の噴水であり、母であり、後に到来する都市の時代へと人々を誘ってくれた。」[NEWLINE]– アル＝ムンシフ・アル＝ワハイビ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OUNIANGA_CHAPTER_HISTORY_PARA_1",	
	"ウニアンガ湖群は、サハラ砂漠のエネディ地域にある18の湖である。ティベスティ山地西部からエネディ地域東部に位置しており、際立つ色と形をした美しい景観をたたえている。この塩湖、過塩湖、淡水湖は地下水から供給されたもので、40キロメートル離れた2つのグループとして構成されている。1つ目のグループ、ウニアンガ・ケビル群は4つの湖からなる。その中で最も大きいヨアン湖は358ヘクタールの広さと27メートルの深さを備えている。ここは塩分濃度が高いため、藻類と少数の微生物しか生息していない。2つ目のグループ、ウニアンガ・セリル群は14の湖からなり、砂丘で隔てられている。これらの湖面の約半分は浮き葦で覆われていて、水の蒸発が防がれている。テリ湖は湖面が最も広いが、深さは10メートルにも満たない。これらの湖は純度の高い淡水湖であるため、魚などの水生生物が生息している。"	),

-----------------------------------------------
-- PAMUKKALE
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION",				"2タイルの自然遺産。通行不可。真水をもたらす。隣接するタイルに [ICON_CULTURE] 文化力+1、 [ICON_GOLD] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT",					"このタイルを1つ以上領有する文明は、総合娯楽施設またはウォーターパークで地域効果を持つ建造物に [ICON_AMENITIES] 快適性+1が追加される。"	),
	("ja_JP",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PAMUKKALE_EFFECT}"	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",				"4タイルの自然遺産。湿原。 [ICON_Food] 食料+3、 [ICON_Culture] 文化力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_PANTANAL_EFFECT",					"このタイルを1つ以上領有する文明は、専門区域が湿原から通常の隣接ボーナスを得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_PANTANAL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PANTANAL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PANTANAL_EFFECT}"	),
	
	("ja_JP",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",				"隣接する湿原により [ICON_Faith] 信仰力+{1_num} (パンタナル)。"	),
	("ja_JP",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",				"隣接する湿原により [ICON_Science] 科学力+{1_num} (パンタナル)。"	),
	("ja_JP",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",				"隣接する湿原により [ICON_Culture] 文化力+{1_num} (パンタナル)。"	),
	("ja_JP",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",				"隣接する湿原により [ICON_Gold] ゴールド+{1_num} (パンタナル)。"	),
	("ja_JP",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",			"隣接する湿原により [ICON_Production] 生産力+{1_num} (パンタナル)。"	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",		"3タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",				"このタイルを領有する文明は、地域効果をもたらす建造物からの [ICON_Amenities] 快適性がさらに3タイル遠くにまで及ぶ。"	),
	("ja_JP",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PIOPIOTAHI_EFFECT}"	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_GIBRALTAR_NAME",					"ジブラルタルの岩山"	),
	("ja_JP",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",			"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Gold] ゴールド+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",				"このタイルを領有する都市は、兵営区域から [ICON_GreatGeneral] 大将軍ポイント+2、港区域から [ICON_GreatAdmiral] 大提督ポイント+2を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIBRALTAR_EFFECT}"	),

	("ja_JP",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'「少年たちよ、輝く火に照らされた、かの美しき岩山を見よ。」[NEWLINE]– ジョージ・オーガスタス・エリオット'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"ジブラルタルは地中海の入り口に位置する、特徴的な岩山を持つ半島である。1704年にイギリスとオランダがスペインから奪った後に、1713年にイギリスに割譲されて以来、ジブラルタルはイギリスの領土となっている(スペインはこれを不服とし、返還を求めている)。地中海から大西洋へと続く海路を見渡すことができるため、300年に渡ってイギリス海軍の重要な拠点となっている。ジブラルタルの大部分は「ザ・ロック」と呼ばれる岩山に覆われている。ザ・ロックは、項岩や砂岩、そして石灰岩から成る岩層が強大なプレートの活動によって隆起したもので、その高さは約430メートルにもなる。かつてイギリスは、ジブラルタルという巨大な要塞を利用して地中海から大西洋へと続く狭い航路を牛耳っていたが、現在この半島は軍隊の基地というよりも、自然保護や旅行者の訪れる観光地として有名である。"	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",			"4タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_FAITH] 信仰力+1、 [ICON_SCIENCE] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_RORAIMA_EFFECT",				"このタイルを1つ以上領有する文明では、隣接する熱帯雨林によってはアピールが低下しなくなる。"	),
	("ja_JP",	"LOC_TM_FEATURE_RORAIMA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_RORAIMA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_RORAIMA_EFFECT}"	),


-----------------------------------------------
-- SAHARA EL BEYDA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION",			"4タイルの自然遺産。 [ICON_GOLD] ゴールド+3、 [ICON_SCIENCE] 科学力+1、 [ICON_CULTURE] 文化力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT",				"このタイルを1つ以上領有する文明は、都市が砂嵐から被害を受けなくなる。"	),
	("ja_JP",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT}"	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",					"ウユニ塩原"	),
	("ja_JP",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",		"4タイルの自然遺産。 [ICON_Science] 科学力+2、 [ICON_Production] 生産力+1、 [ICON_Gold] ゴールド+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",				"このタイルを1つ以上領有する文明は、高級資源の [ICON_RESOURCE_TM_LITHIUM] リチウムを1つ得る。この高級資源は [ICON_Amenities] 快適性+6をもたらすが、取り引きできない。"	),
	("ja_JP",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT}"	),

	("ja_JP",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'「砂漠で塩の声を耳にしたとき、私はその荒野で身体が震えた。」[NEWLINE]– パブロ・ネルーダ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"ボリビア南西部、チリ国境とアタカマ砂漠の近くには、世界最大の塩原――ウユニ塩原が存在する。広さは10,582平方キロメートルあり、アメリカのボンネビル・ソルトフラッツの約100倍に及ぶ。成り立ちは、有史以前の複数の湖が変化して形成されたものである。表面は数メートルの塩に覆われており、全体の平均標高が1メートル以内に収まるなど著しく平らな地形をしている。広大な面積、澄んだ空、類を見ない平地といった特徴から、地球観測衛星の高度調整に最適な場所となっている。"	),

	("ja_JP",	"LOC_RESOURCE_TM_LITHIUM_NAME",	"リチウム"	),
	("ja_JP",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"リチウムは軟らかく、反応性の高い銀白色の金属である。その語源はギリシャ語で「石」を意味する「リトス」に由来している。リチウムとその化合物は、耐熱のガラスやセラミックス、潤滑グリス、鉄・鋼・アルミ製品の溶剤、バッテリーなどの工業用途に利用されている。ボリビア南西にあるウユニ塩原は世界のリチウム埋蔵量の50%から70%を占めており、現在開発が進められている。"	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_SINAI_NAME",					"シナイ山"	),
	("ja_JP",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",			"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_SINAI_EFFECT",				"このタイルを領有する文明は、聖地区域から [ICON_GreatProphet] 大預言者ポイント+1を得る。また、宗教ユニットの購入に必要な [ICON_FAITH] 信仰力が50%軽減される。"	),
	("ja_JP",	"LOC_TM_FEATURE_SINAI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SINAI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SINAI_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'「主はシナイ山でモーセに語り終えられたとき、あかしの板二枚、すなわち神が指をもって書かれた石の板をモーセに授けられた。」[NEWLINE]– 出エジプト記 31章 18節'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"エジプトのシナイ半島にそびえるシナイ山はユダヤ教、キリスト教、イスラム教の信徒から、至高の聖地とみなされている。シナイ山は、かつてヘブライの民を率いてエジプトを出たモーセが神から初めて十戒を授かった場所と言われており、今なお世界中から訪れる巡礼者が絶えない。"	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_SRI_PADA_NAME",					"スリー・パーダ"	),
	("ja_JP",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",			"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Faith] 信仰力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",				"このタイルを領有する文明は、宗教ユニットで都市を自らの [ICON_Religion] 宗教に初めて改宗させると [ICON_Culture] 文化力を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_SRI_PADA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SRI_PADA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SRI_PADA_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'「この上なく壮麗で、驚嘆すべき光景。」[NEWLINE]– マハーバーラタ'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"スリランカにそびえるスリーパーダは珍しい円錐形をした雄大な孤峰で、頂上で発見された「足跡」によって数多くの宗教から神聖視されている。山頂付近の岩に刻まれた大きな窪みは、ブッダやシヴァ神、または聖書に登場するアダムの足跡だとされ、そのため、この山では仏教、ヒンドゥー教、イスラム教それぞれの信徒から聖地と崇められている。毎年数千人もの巡礼者が、何時間もかかってこの山に登り、「足跡」の前で尊崇の念を捧げている。"	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",			"2タイルの自然遺産。通行不可。隣接するタイルの地形産出量が2倍になる。"	),
	("ja_JP",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",				"このタイルを1つ以上領有する都市は、通常の [ICON_Citizen] 人口条件より1つ多くの専門区域を建設できる。"	),
	("ja_JP",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT}"	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",			"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_TSINGY_EFFECT",					"このタイルを領有する文明では、劇場広場区域が完成するたびに文化爆弾が発動する。また、国立公園がある都市で劇場広場区域の隣接ボーナスが2倍になる。"	),
	("ja_JP",	"LOC_TM_FEATURE_TSINGY_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_TSINGY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TSINGY_EFFECT}"	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",		"4タイルの自然遺産。湿原。 [ICON_Faith] 信仰力+2、 [ICON_Food] 食料+1、 [ICON_Production] 生産力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",				"このタイルを1つ以上領有する文明は、 [ICON_GreatGeneral] 大将軍を得るたびに [ICON_CivicBoosted] 天啓が1回発動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT}"	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",			"1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Faith] 信仰力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_ULURU_EFFECT",				"このタイルを領有する文明は、砂漠上に建設する専門区域から [ICON_Food] 食料+1を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_ULURU_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_ULURU_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_ULURU_EFFECT}"	),

-----------------------------------------------
-- VESUVIUS
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_VESUVIUS_DESCRIPTION",				"1タイルの自然遺産。火山。隣接するタイルに [ICON_PRODUCTION] 生産力+1。噴火によって産出量が追加されるが、 [ICON_CITIZEN] 人口やインフラに被害を与える。常に活動する。"	),
	("ja_JP",	"LOC_TM_FEATURE_VESUVIUS_EFFECT",					"このタイルを領有する文明は、史跡から [ICON_CULTURE] 文化力+4がもたらされるとともに、 [ICON_GREATWORK_ARTIFACT] 秘宝から [ICON_CULTURE] 文化力+2および [ICON_TOURISM] 観光力+2がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_VESUVIUS_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_VESUVIUS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VESUVIUS_EFFECT}"	),

-----------------------------------------------
-- VREDEFORT DOME
-----------------------------------------------

	("ja_JP",	"LOC_FEATURE_VREDEFORT_DOME_NAME",					"フレデフォート・ドーム"	),
	("ja_JP",	"LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION",		"2タイルの自然遺産。 [ICON_FOOD] 食料+2、 [ICON_SCIENCE] 科学力+2、 [ICON_CULTURE] 文化力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT",				"このタイルを1つ以上領有する都市は、別の農場に隣接する農場に対して [ICON_FOOD] 食料+1がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_VREDEFORT_DOME_QUOTE',	
	'「約150年前、フレデフォート北部のバール川に広がる壮観な丘陵地帯を散策した地質学者たちがいた。彼らは、不自然なほど粉々に砕けて上を向いた岩を目にし、遙か昔に起きた激変的現象を即座に見抜いたのである。」[NEWLINE]– ヴォルフ・ウーヴェ・ライモルド'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_VREDEFORT_DOME_CHAPTER_HISTORY_PARA_1",	
	"フレデフォート・ドームは、地球上で確認された中で最大のクレーターである。形成時点では300キロメートルを超える規模であったとされる。現在残っている隕石跡は、南アフリカのフリーステイト州に位置しており、現地では農業が営まれている。クレーターは20億年以上前の古原生代に形成されたと考えられていて、地球上で知られている中では2番目に古いクレーターとされている。"	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("ja_JP",	"LOC_FEATURE_WULINGYUAN_NAME",					"武陵源"	),
	("ja_JP",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",		"2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",				"このタイルを1つ以上領有する文明は、 [ICON_GreatWork_Writing] 傑作 (書物) に対して [ICON_Culture] 文化力+2および [ICON_Tourism] 観光力+2がもたらされる。"	),
	("ja_JP",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_WULINGYUAN_EFFECT}"	),
	
	("ja_JP",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'「万の谷には樹木が天にそびえ、千の山にはホトトギスの声が響く。山間に一夜雨降れば、木の梢より幾重もの滴がこぼれ落ちる。」[NEWLINE]– 王維'	),
	
	("ja_JP",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"武陵源は中国の中南部にある歴史的な景勝地である。高さ200メートルを超える珪岩の柱や峰が3000以上そびえ立ち、その間には渓谷や川、滝が流れている。他にも40の洞窟、2つの天然の橋が存在する。"	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",			"2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Gold] ゴールド+1、 [ICON_Science] 科学力+1。"	),
	("ja_JP",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",				"このタイルを1つ以上領有する文明は、国内の森林が隣接するタイルに対してアピール+1が追加される。"	),
	("ja_JP",	"LOC_TM_FEATURE_YOSEMITE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_YOSEMITE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_YOSEMITE_EFFECT}"	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",		"3タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Science] 科学力+2。"	),
	("ja_JP",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",				"このタイルを1つ以上領有する都市は、商業ハブ区域から [ICON_GreatMerchant] 大商人ポイント+2、キャンパス区域から [ICON_GreatScientist] 大科学者ポイント+2を得る。"	),
	("ja_JP",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT}"	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("ja_JP",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"隣接する自然遺産により [ICON_Faith] 信仰力+{1_num}。"	),
	("ja_JP",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"隣接する自然遺産により [ICON_Science] 科学力+{1_num}。"	),
	("ja_JP",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"隣接する自然遺産により [ICON_Culture] 文化力+{1_num}。"	),
	("ja_JP",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"隣接する自然遺産により [ICON_Production] 生産力+{1_num}。"	),
	("ja_JP",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"隣接する自然遺産により [ICON_Gold] ゴールド+{1_num}。"	),
	("ja_JP",	"LOC_TM_ADJ_NW_FOOD_DESCRIPTION",			"隣接する自然遺産により [ICON_Food] フード+{1_num}。"	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("ja_JP",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",			"ゲーム終盤に登場する民間人ユニットで、 [ICON_Tourism] 観光客を引き寄せる国立公園を1つ作れる。 [ICON_Gold] ゴールドまたは [ICON_FAITH] 信仰力で購入できる。"	),

-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------

	("ja_JP",	"LOC_TM_FEATURE_FUJI_DESCRIPTION",		"1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Faith] 信仰力+1。[NEWLINE][NEWLINE]隣接するタイルに建設する区域に対し、対応する [ICON_GreatPerson] 偉人ポイント+2。"	);
