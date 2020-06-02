/*
	Motlatse Canyon
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: River tiles with Breathtaking appeal yield +1 [ICON_GOLD] Gold for any Civilization that owns at least one of these tiles.
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_MOTLATSE_CANYON'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,							OwnerRequirementSetId,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_PLAYERS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'REQSET_TM_MAP_HAS_FEATURE_MOTLATSE_CANYON',	'REQSET_TM_PLAYER_HAS_FEATURE_MOTLATSE_CANYON'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_RIVER_BONUS',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	NULL,											'REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value												)
VALUES	('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_MOTLATSE_CANYON_RIVER_BONUS'	),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_RIVER_BONUS',		'YieldType',	'YIELD_GOLD'										),
		('MODIFIER_TM_FEATURE_MOTLATSE_CANYON_RIVER_BONUS',		'Amount',		1													);
