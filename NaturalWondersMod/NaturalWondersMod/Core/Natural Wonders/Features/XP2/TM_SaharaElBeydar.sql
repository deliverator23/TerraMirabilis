/*
	Sahara El Beydar
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Owned Floodplains provide +2 appeal to adjacent plots for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_SAHARA_EL_BEYDAR_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_SAHARA_EL_BEYDAR';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_SAHARA_EL_BEYDAR_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_SAHARA_EL_BEYDAR'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_SAHARA_EL_BEYDAR')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_ATTACH_PLAYERS',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_SAHARA_EL_BEYDAR'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_FLOODPLAINS_APPEAL',	'MODTYPE_TM_ADJUST_FEATURE_APPEAL',		NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value														)
VALUES	('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_FLOODPLAINS_APPEAL'	),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_FLOODPLAINS_APPEAL',	'FeatureType',	'FEATURE_FLOODPLAINS'										),
		('MODIFIER_TM_FEATURE_SAHARA_EL_BEYDAR_FLOODPLAINS_APPEAL',	'Amount',		2															);
