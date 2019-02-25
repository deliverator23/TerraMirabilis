/*
	Vesuvius
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Cities do not suffer loss of [ICON_CITIZEN] Population from Volcanos other than Vesuvius for any Civilization that owns this tile.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_VESUVIUS_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_VESUVIUS';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_VESUVIUS_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_VESUVIUS'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_VESUVIUS_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_VESUVIUS')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_VESUVIUS_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_VESUVIUS'	),
		('MODIFIER_TM_FEATURE_VESUVIUS_PLOT_PURCHASE',	'MODTYPE_TM_PLAYER_PLOT_PURCHASE',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value											)
VALUES	('MODIFIER_TM_FEATURE_VESUVIUS_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_VESUVIUS_PLOT_PURCHASE'	),
		('MODIFIER_TM_FEATURE_VESUVIUS_PLOT_PURCHASE',	'Amount',		-20												);
