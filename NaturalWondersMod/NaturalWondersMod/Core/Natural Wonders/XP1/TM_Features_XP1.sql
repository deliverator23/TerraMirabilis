/*
	Features XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Features
-----------------------------------------------

UPDATE	Features
SET		CustomPlacement = 'PLACEMENT_RORAIMA'
WHERE	FeatureType IN (SELECT FeatureType FROM TM_Master WHERE CustomPlacement = 'PLACEMENT_RORAIMA');

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,	Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',		'MOMENT_DATA_FEATURE',		FeatureType,	'MOMENT_'||FeatureType
FROM	TM_Validation WHERE Active = 1 AND Requirement = 'TM';