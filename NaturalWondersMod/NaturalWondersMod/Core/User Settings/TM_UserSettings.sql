/*
	User Settings
	Authors: ChimpanG, Deliverator
*/

INSERT INTO TM_UserSettings (Setting, Section, Value)
VALUES

-----------------------------------------------
-- Natural Wonder Minimum Distance?
-- Game Default: 8

-- NOTE: Lowering this number will increase the likelihood of NWs appearing closer to each other
-----------------------------------------------

	('WONDER_DISTANCE',		NULL,	7),

-----------------------------------------------
-- Amount of Natural Wonders In Game (by map size)
-- Game Defaults below. We've doubled them on every map size.

-- NOTE: This does not guarantee you will see X number of wonders in the game. This will be due to map script placement. Consider this more of a maximum value.
-----------------------------------------------

	('WONDERS_DUEL',		'NW_MAP_SIZE',	4), -- Game Default 2
	('WONDERS_TINY',		'NW_MAP_SIZE',	6), -- Game Default 3
	('WONDERS_SMALL',		'NW_MAP_SIZE',	8), -- Game Default 4
	('WONDERS_STANDARD',	'NW_MAP_SIZE',	10), -- Game Default 5
	('WONDERS_LARGE',		'NW_MAP_SIZE',	12), -- Game Default 6
	('WONDERS_HUGE',		'NW_MAP_SIZE',	14), -- Game Default 7

	-- Gedemon's YNAMP
	('WONDERS_ENORMOUS',	'NW_MAP_SIZE',	16), -- Default 8
	('WONDERS_GIANT',		'NW_MAP_SIZE',	24), -- Default 12
	('WONDERS_LUDICROUS',	'NW_MAP_SIZE',	32), -- Default 16

	-- pOkiehl's Larger Map Sizes
	('WONDERS_MASSIVE',		'NW_MAP_SIZE',	16), -- Default 8
	('WONDERS_GIGANTIC',	'NW_MAP_SIZE',	24), -- Default 12
	('WONDERS_COLOSSAL',	'NW_MAP_SIZE',	32), -- Default 16

-----------------------------------------------
-- Natural Wonders provide standard adjacency bonuses to all Specialty Districts?
-- 1 = Yes, 0 = No
-- Our Default: 1

-- NOTE: When this is enabled, the Natural Wonder adjacency bonus for the Holy Site (and any unique replacements) is replaced with a standard adjacency bonus instead of a major
-----------------------------------------------

	('NW_ADJACENCY',	NULL,	1),

-----------------------------------------------
-- Buildings in Specialty Districts increase the base yield of the district by +1 when adjacent to a Natural Wonder?
-- 1 = Yes, 0 = No
-- Our Default: 1
-----------------------------------------------
	
	('NW_ADJACENCY_BUILDING',	NULL,	1),

-----------------------------------------------
-- All wonders have ownership effects?

-- 1 = Yes, 0 = No
-- Our Default: 1

-- NOTE: Natural Wonders that originally had effects (eg: Everest) will default to their original effects when this is disabled.
-----------------------------------------------

	('NW_EFFECTS',		NULL,	1),

-----------------------------------------------
-- National Parks provide Gold equal to their tourism?
-- 1 = Yes, 0 = No

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('PARK_GOLD_TOURISM',	NULL,	1),

-----------------------------------------------
-- Number of Amenities National Parks provide to their City?

-- Game Default: 2
-----------------------------------------------

	('PARK_AMENITIES',	NULL,	2),

-----------------------------------------------
-- Minimum Start Distances between Major/Minor Civilization and Natural Wonder

-- NOTE:
-- Apparently there is some override in the background that makes the start distance superfluous :/
-- I believe it only happens when there are many NWs and many CSs on the map and it becomes impossible to adhere to these rules.
-----------------------------------------------

	('START_DISTANCE_MAJOR',	NULL,	3), -- Game Default 3 (tiles)
	('START_DISTANCE_MINOR',	NULL,	5), -- Game Default 3 (tiles)

-----------------------------------------------
-- Experience earned for discovering Natural Wonder
-----------------------------------------------

	('NW_REVEAL_XP',	NULL,	15), -- Game Default 10

-----------------------------------------------
-- Natural Wonder adjacent fertility

-- NOTE: "Fertility" is essentially a weight that determines how desirable a plot is to the AI. It is not the only weight that determines this, but it is one of them.
-- NOTE: By increasing this number, you are making the AI more competitive for them. We feel 2 is a decent weight to add a bit of a "settler race", but you can increase or decrease it.

-- Some examples of existing fertility weights:
-- Coast = 0
-- Fresh Water = 2
-- Luxury Resource = 5
-- River = 1
-- Snow / Ice = 0
-----------------------------------------------

	('NW_FERTILITY',	NULL,	2), -- Game Default 1

-----------------------------------------------
-- Adjust EraScore earned for finding or settling Natural Wonders. (Rise & Fall Only)

-- NOTE: The more wonders you have on the map, the more likely you'll see a Golden Age due to Era Score
-----------------------------------------------

	('ERASCORE_SETTLE',				NULL,	2), -- Game Default 3
	('ERASCORE_DISCOVERED',			NULL,	1), -- Game Default 1
	('ERASCORE_DISCOVERED_FIRST',	NULL,	2), -- Game Default 3

-----------------------------------------------
-- Enable Natural Wonders

-- Change the word ENABLED to DISABLED below (case sensitive)
-- NOTE: Enabling Natural Wonders added by DLC or XP here that you do not own will not enable them in game.
-----------------------------------------------

	-- BASE
	('FEATURE_BARRIER_REEF',		'ENABLED',		NULL),
	('FEATURE_CLIFFS_DOVER',		'ENABLED',		NULL),
	('FEATURE_CRATER_LAKE',			'ENABLED',		NULL),
	('FEATURE_DEAD_SEA',			'ENABLED',		NULL),
	('FEATURE_EVEREST',				'ENABLED',		NULL),
	('FEATURE_GALAPAGOS',			'ENABLED',		NULL),
	('FEATURE_KILIMANJARO',			'ENABLED',		NULL),
	('FEATURE_PANTANAL',			'ENABLED',		NULL),
	('FEATURE_PIOPIOTAHI',			'ENABLED',		NULL),
	('FEATURE_TORRES_DEL_PAINE',	'ENABLED',		NULL),
	('FEATURE_TSINGY',				'ENABLED',		NULL),
	('FEATURE_YOSEMITE',			'ENABLED',		NULL),

	-- DLC2 (Vikings DLC)
	('FEATURE_EYJAFJALLAJOKULL',	'ENABLED',		NULL),
	('FEATURE_GIANTS_CAUSEWAY',		'ENABLED',		NULL),
	('FEATURE_LYSEFJORDEN',			'ENABLED',		NULL),

	-- DLC3 (Australia DLC)
	('FEATURE_ULURU',				'ENABLED',		NULL),

	-- DLC6 (Khmer and Indonesia DLC)
	('FEATURE_HA_LONG_BAY',			'ENABLED',		NULL),

	-- DLC7 (Gran Colombia and Maya DLC)
	('FEATURE_BERMUDA_TRIANGLE',	'ENABLED',		NULL),
	('FEATURE_FOUNTAIN_OF_YOUTH',	'ENABLED',		NULL),
	('FEATURE_PAITITI',				'ENABLED',		NULL),

	-- XP1 (Rise and Fall)
	('FEATURE_DELICATE_ARCH',		'ENABLED',		NULL),
	('FEATURE_EYE_OF_THE_SAHARA',	'ENABLED',		NULL),
	('FEATURE_LAKE_RETBA',			'ENABLED',		NULL),
	('FEATURE_MATTERHORN',			'ENABLED',		NULL),
	('FEATURE_RORAIMA',				'ENABLED',		NULL),
	('FEATURE_UBSUNUR_HOLLOW',		'ENABLED',		NULL),
	('FEATURE_ZHANGYE_DANXIA',		'ENABLED',		NULL),

	-- XP2 (Gathering Storm)
	('FEATURE_CHOCOLATEHILLS',		'ENABLED',		NULL),
	('FEATURE_DEVILSTOWER',			'ENABLED',		NULL), -- Mato Tipila
	('FEATURE_GOBUSTAN',			'ENABLED',		NULL),
	('FEATURE_IKKIL',				'ENABLED',		NULL),
	('FEATURE_PAMUKKALE',			'ENABLED',		NULL),
	('FEATURE_VESUVIUS',			'ENABLED',		NULL),
	('FEATURE_WHITEDESERT',			'ENABLED',		NULL), -- Sahara el Beyda

	-- Terra Mirabilis
	('FEATURE_BARRINGER_CRATER',	'ENABLED',		NULL),
	('FEATURE_BIOLUMINESCENT_BAY',	'ENABLED',		NULL),
	('FEATURE_CERRO_DE_POTOSI',		'ENABLED',		NULL),
	('FEATURE_DALLOL',				'ENABLED',		NULL),
	('FEATURE_GIBRALTAR',			'ENABLED',		NULL),
	('FEATURE_GRAND_MESA',			'ENABLED',		NULL),
	('FEATURE_KAILASH',				'ENABLED',		NULL),
	('FEATURE_KRAKATOA',			'ENABLED',		NULL),
	('FEATURE_LAKE_VICTORIA',		'ENABLED',		NULL),
	('FEATURE_LENCOIS_MARANHENSES',	'ENABLED',		NULL),
	('FEATURE_MOSI_OA_TUNYA',		'ENABLED',		NULL),
	('FEATURE_MOTLATSE_CANYON',		'ENABLED',		NULL),
	('FEATURE_NAMIB',				'ENABLED',		NULL),
	('FEATURE_OLD_FAITHFUL',		'ENABLED',		NULL),
	('FEATURE_OUNIANGA',			'ENABLED',		NULL),
	('FEATURE_SALAR_DE_UYUNI',		'ENABLED',		NULL),
	('FEATURE_SINAI',				'ENABLED',		NULL),
	('FEATURE_SRI_PADA',			'ENABLED',		NULL),
	('FEATURE_VREDEFORT_DOME',		'ENABLED',		NULL),
	('FEATURE_WULINGYUAN',			'ENABLED',		NULL),

-----------------------------------------------
-- Don't do anything with this one. This is to make sure all records are caught.
-----------------------------------------------

	('CLOSE_USER_SETTINGS',		NULL,	1);