/*
	Krakatoa XP2
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- General Changes
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KRAKATOA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Yields
-----------------------------------------------

DELETE FROM Feature_AdjacentYields
WHERE	FeatureType IN ('FEATURE_KRAKATOA')
AND		YieldType NOT IN ('YIELD_SCIENCE');

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,									Kind				)
VALUES	('RANDOM_EVENT_KRAKATOA_GENTLE',		'KIND_RANDOM_EVENT'	),
		('RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'KIND_RANDOM_EVENT'	),
		('RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'KIND_RANDOM_EVENT'	);

-----------------------------------------------
-- Features_XP2
-----------------------------------------------

INSERT INTO Features_XP2
		(FeatureType,			Volcano	)
VALUES	('FEATURE_KRAKATOA',	1		);

-----------------------------------------------
-- RandomEvents
-----------------------------------------------

INSERT INTO RandomEvents
		(NaturalWonder,			RandomEventType,						Name,											Description,											EffectString,								EffectOperatorType, Severity,	IconLarge,						IconSmall						)
VALUES	('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_GENTLE',			'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME',		'LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION',			'LOC_RANDOM_EVENT_PROP_DAMAGE_FERTILITY',	'FEATURE',			0,			'ClimateEvent_VolcanoInactive',	'ClimateEventStat_Volcanoes'	),
		('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_CATASTROPHIC',	'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME',	'LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION',	'LOC_RANDOM_EVENT_ALL_DAMAGE_FERTILITY',	'FEATURE',			1,			'ClimateEvent_VolcanoActive',	'ClimateEventStat_Volcanoes'	),
		('FEATURE_KRAKATOA',	'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',	'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME',	'LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION',	'LOC_RANDOM_EVENT_ALL_DAMAGE_FERTILITY',	'FEATURE',			2,			'ClimateEvent_VolcanoErupting',	'ClimateEventStat_Volcanoes'	);
		
-----------------------------------------------
-- RandomEvent_Frequencies
-----------------------------------------------

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Frequencies (RandomEventType, RealismSettingType, OccurrencesPerGame)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', RealismSettingType, OccurrencesPerGame
FROM RandomEvent_Frequencies
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';

-----------------------------------------------
-- RandomEvent_Damages
-----------------------------------------------

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Damages(RandomEventType, DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL', DamageType, Percentage, MinHP, MaxHP, ExtraRangePercentage
FROM RandomEvent_Damages
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';

-----------------------------------------------
-- RandomEvent_Yields
-----------------------------------------------

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_GENTLE',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_GENTLE';

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_CATASTROPHIC',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_KILIMANJARO_CATASTROPHIC';

INSERT INTO RandomEvent_Yields(RandomEventType, YieldType, FeatureType, Percentage, ReplaceFeature)
SELECT 'RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL',  YieldType, FeatureType, Percentage, ReplaceFeature
FROM RandomEvent_Yields
WHERE RandomEventType = 'RANDOM_EVENT_VESUVIUS_MEGACOLOSSAL';