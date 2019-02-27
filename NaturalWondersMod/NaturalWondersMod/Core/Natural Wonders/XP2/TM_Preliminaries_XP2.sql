/*
	Preliminaries XP2
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 												Kind			)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 										CollectionType, 				EffectType													)
VALUES	('MODTYPE_TM_CITIES_ACCUMULATE_SPECIFIC_STRATEGIC',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE'	);