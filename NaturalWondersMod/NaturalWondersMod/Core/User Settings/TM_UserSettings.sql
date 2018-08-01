/*
	User Settings
	Credits: ChimpanG, Deliverator
*/

INSERT INTO TM_UserSettings (Setting, Section, Value)
VALUES

-----------------------------------------------
-- SECTION A

-- Natural Wonder Minimum Distance?
-- Game Default: 8

-- NOTE: Lowering this number will increase the likelihood of NWs appearing closer to each other
-----------------------------------------------

	('WONDER_DISTANCE',		NULL,	5),

-----------------------------------------------
-- SECTION B

-- Amount of Natural Wonders In Game (by map size)
-- Game Defaults below

-- NOTE: This does not guarantee you will see X number of wonders in the game. This will be due to map script placement. Consider this more of a maximum value.
-----------------------------------------------

	('WONDERS_DUEL',		'NW_MAP_SIZE',	6), -- Game Default 2
	('WONDERS_TINY',		'NW_MAP_SIZE',	9), -- Game Default 3
	('WONDERS_SMALL',		'NW_MAP_SIZE',	12), -- Game Default 4
	('WONDERS_STANDARD',	'NW_MAP_SIZE',	15), -- Game Default 5
	('WONDERS_LARGE',		'NW_MAP_SIZE',	18), -- Game Default 6
	('WONDERS_HUGE',		'NW_MAP_SIZE',	21), -- Game Default 7

-----------------------------------------------
-- SECTION C

-- Natural Wonders provide standard adjacency bonuses to all Specialty Districts?
-- 1 = Yes, 0 = No
-- Our Default: 1

-- NOTE: When this is enabled, the Natural Wonder adjacency bonus for the Holy Site (and any unique replacements) is replaced with a standard adjacency bonus instead of a major
-----------------------------------------------

	('NW_ADJACENCY',	NULL,	1),

-----------------------------------------------
-- SECTION D

-- Buildings in Specialty Districts increase the base yield of the district by +1 when adjacent to a Natural Wonder?
-- 1 = Yes, 0 = No
-- Our Default: 1
-----------------------------------------------
	
	('NW_ADJACENCY_BUILDING',	NULL,	1),

-----------------------------------------------
-- SECTION E

-- All wonders have effects?
-- 1 = Yes, 0 = No
-- Our Default: 1
-----------------------------------------------

	('NW_EFFECTS',		NULL,	1),

-----------------------------------------------
-- SECTION F

-- Naturalist purchase with Gold instead of Faith?
-- Game Default: 'YIELD_FAITH'
-- Our Default: 'YIELD_GOLD'

-- NOTE: The game will only allow you to purchase with Gold or Faith. Nothing else.
-----------------------------------------------

	('NATURALIST_PURCHASE',	'YIELD_GOLD',	NULL),

-----------------------------------------------
-- SECTION G

-- National Parks provide Gold equal to their tourism?
-- 1 = Yes, 0 = No

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('PARK_GOLD_TOURISM',	NULL,	1),

-----------------------------------------------
-- SECTION H

-- Number of Amenities National Parks provide to their City?

-- Game Default: 2
-----------------------------------------------

	('PARK_AMENITIES',	NULL,	2),

-----------------------------------------------
-- SECTION I

-- Minimum Start Distances between Major/Minor Civilization and Natural Wonder
-----------------------------------------------

	('START_DISTANCE_MAJOR',	NULL,	3), -- Game Default 3 (tiles)
	('START_DISTANCE_MINOR',	NULL,	5), -- Game Default 3 (tiles)

-----------------------------------------------
-- SECTION J

-- Experience earned for discovering Natural Wonder
-----------------------------------------------

	('NW_REVEAL_XP',	NULL,	15), -- Game Default 10

-----------------------------------------------
-- SECTION K

-- Enable Natural Wonders
-- Change the word Enabled to Disabled below

-- NOTE: Don't disable less wonders than you expect to appear in-game. (See Section B above)
-- NOTE: Enabling Natural Wonders added by DLC or XP here that you do not own will not enable them in game.
-----------------------------------------------

	-- Vanilla
	('FEATURE_BARRIER_REEF',		'DISABLED',		NULL),
	('FEATURE_CLIFFS_DOVER',		'DISABLED',		NULL),
	('FEATURE_CRATER_LAKE',			'DISABLED',		NULL),
	('FEATURE_DEAD_SEA',			'DISABLED',		NULL),
	('FEATURE_EVEREST',				'DISABLED',		NULL),
	('FEATURE_GALAPAGOS',			'DISABLED',		NULL),
	('FEATURE_KILIMANJARO',			'DISABLED',		NULL),
	('FEATURE_PANTANAL',			'DISABLED',		NULL),
	('FEATURE_PIOPIOTAHI',			'DISABLED',		NULL),
	('FEATURE_TORRES_DEL_PAINE',	'DISABLED',		NULL),
	('FEATURE_TSINGY',				'DISABLED',		NULL),
	('FEATURE_YOSEMITE',			'DISABLED',		NULL),

	-- Vikings DLC
	('FEATURE_EYJAFJALLAJOKULL',	'DISABLED',		NULL),
	('FEATURE_GIANTS_CAUSEWAY',		'DISABLED',		NULL),
	('FEATURE_LYSEFJORDEN',			'DISABLED',		NULL),

	-- Australia DLC
	('FEATURE_ULURU',				'DISABLED',		NULL),

	-- Khmer and Indonesia DLC
	('FEATURE_HA_LONG_BAY',			'DISABLED',		NULL),

	-- Rise and Fall
	('FEATURE_DELICATE_ARCH',		'DISABLED',		NULL),
	('FEATURE_EYE_OF_THE_SAHARA',	'DISABLED',		NULL),
	('FEATURE_LAKE_RETBA',			'DISABLED',		NULL),
	('FEATURE_MATTERHORN',			'DISABLED',		NULL),
	('FEATURE_RORAIMA',				'DISABLED',		NULL),
	('FEATURE_UBSUNUR_HOLLOW',		'DISABLED',		NULL),
	('FEATURE_ZHANGYE_DANXIA',		'DISABLED',		NULL),

	-- Terra Mirabilis
	('FEATURE_BARRINGER_CRATER',	'DISABLED',		NULL),
	('FEATURE_CERRO_DE_POTOSI',		'DISABLED',		NULL),
	('FEATURE_GRAND_MESA',			'DISABLED',		NULL),
	('FEATURE_KAILASH',				'DISABLED',		NULL),
	('FEATURE_KRAKATOA',			'DISABLED',		NULL),
	('FEATURE_LAKE_VICTORIA',		'DISABLED',		NULL),
	('FEATURE_MOTLATSE_CANYON',		'DISABLED',		NULL),
	('FEATURE_OLD_FAITHFUL',		'DISABLED',		NULL),
	('FEATURE_GIBRALTAR',			'ENABLED',		NULL),
	('FEATURE_SALAR_DE_UYUNI',		'DISABLED',		NULL),
	('FEATURE_SINAI',				'DISABLED',		NULL),
	('FEATURE_SRI_PADA',			'DISABLED',		NULL),
	('FEATURE_WULINGYUAN',			'DISABLED',		NULL),

-----------------------------------------------
-- Don't do anything with this one. This is to make sure all records are caught.
-----------------------------------------------

	('CLOSE_USER_SETTINGS',		NULL,	1);