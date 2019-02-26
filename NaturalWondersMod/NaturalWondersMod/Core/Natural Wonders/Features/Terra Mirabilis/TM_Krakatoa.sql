/*
	Krakatoa
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Harbor buildings provide +2 Science in any City that owns this tile, increasing to +3 if the City has a National Park
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES',			'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_KRAKATOA'		),
		('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP',		'MODTYPE_TM_ATTACH_ALL_CITIES',		'REQSET_TM_CITY_HAS_FEATURE_KRAKATOA_NP'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'MODTYPE_TM_CITY_YIELD_DISTRICTS',	NULL										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'MODTYPE_TM_CITY_YIELD_DISTRICTS',	NULL										);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES',			'ModifierId',	'MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_ATTACH_CITIES_NP',		'ModifierId',	'MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP'	),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'YieldType',	'YIELD_SCIENCE'										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE',		'Amount',		2													),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'YieldType',	'YIELD_SCIENCE'										),
		('MODIFIER_TM_FEATURE_KRAKATOA_DISTRICTS_SCIENCE_NP',	'Amount',		1													);

-----------------------------------------------
-- Volcanic Random Events
-----------------------------------------------

INSERT INTO Features_XP2(FeatureType, Volcano) VALUES ('FEATURE_KRAKATOA', 1);

INSERT INTO Types (Type, Kind) VALUES ('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', 'KIND_RANDOM_EVENT');

INSERT INTO RandomEvents (RandomEventType, Name, Description, EffectString, EffectOperatorType, Severity, NaturalWonder, IconLarge, IconSmall)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', 'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME', 'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION', EffectString, EffectOperatorType, Severity, 'FEATURE_KRAKATOA', IconLarge, IconSmall
FROM RandomEvents
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';


INSERT INTO Types (Type, Kind) VALUES ('RANDOM_EVENT_KRAKATOA_CATASTROPHIC', 'KIND_RANDOM_EVENT');

INSERT INTO RandomEvents (RandomEventType, Name, Description, EffectString, EffectOperatorType, Severity, NaturalWonder, IconLarge, IconSmall)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC', 'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME', 'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION', EffectString, EffectOperatorType, Severity, 'FEATURE_KRAKATOA', IconLarge, IconSmall
FROM RandomEvents
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';


INSERT INTO Types (Type, Kind) VALUES ('RANDOM_EVENT_KRAKATOA_GENTLE', 'KIND_RANDOM_EVENT');

INSERT INTO RandomEvents (RandomEventType, Name, Description, EffectString, EffectOperatorType, Severity, NaturalWonder, IconLarge, IconSmall)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE', 'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME', 'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION', EffectString, EffectOperatorType, Severity, 'FEATURE_KRAKATOA', IconLarge, IconSmall
FROM RandomEvents
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';