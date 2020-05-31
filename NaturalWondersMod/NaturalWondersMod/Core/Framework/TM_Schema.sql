/*
	Schema
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS TM_Master
	(
	FeatureType						TEXT		NOT NULL,
	New								BOOLEAN		DEFAULT 1,
	Active							BOOLEAN		DEFAULT 0,
	Tiles							INTEGER		DEFAULT 0,
	Impassable						INTEGER		DEFAULT 0,
	NoAdjacentFeatures				INTEGER		DEFAULT 0,
	Coast							INTEGER		DEFAULT 0,
	NoCoast							INTEGER		DEFAULT 0,
	MinDistanceLand					INTEGER		DEFAULT 0,
	MaxDistanceLand					INTEGER		DEFAULT 0,
	Lake							INTEGER		DEFAULT 0,
	NotCliff						INTEGER		DEFAULT 0,
	NoRiver							INTEGER		DEFAULT 0,
	RequiresRiver					INTEGER		DEFAULT 0,
	AddsFreshWater					INTEGER		DEFAULT 0,
	MovementChange					INTEGER		DEFAULT 0,
	SightThroughModifier			INTEGER		DEFAULT 0,
	DefenseModifier					INTEGER		DEFAULT 0,
	Appeal							INTEGER		DEFAULT 0,
	DoubleAdjacentTerrainYield		INTEGER		DEFAULT 0,
	CustomPlacement					TEXT		DEFAULT NULL,
	Required						TEXT		DEFAULT NULL,
	Version							TEXT		DEFAULT NULL,
	Removed							TEXT		DEFAULT NULL,

	PRIMARY KEY	(FeatureType)				
	);

CREATE TABLE IF NOT EXISTS ModValidation
	(
	Version			TEXT	DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS TM_Validation
	(
	FeatureType		TEXT	DEFAULT NULL,
	Required		TEXT	DEFAULT NULL,
	Version			TEXT	DEFAULT NULL,
	Removed			TEXT	DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS TM_FeatureYields
	(
	FeatureType				TEXT		NOT NULL,
	Active					BOOLEAN		DEFAULT 0,
	Impassable				BOOLEAN		DEFAULT 0,
	YieldType				TEXT		DEFAULT NULL,
	YieldChange				INTEGER		DEFAULT 0,
	Reference				TEXT		DEFAULT NULL,
	Required				TEXT		DEFAULT NULL,
	Version					TEXT		DEFAULT NULL,
	Removed					TEXT		DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS TM_Placement
	(
	FeatureType				TEXT		NOT NULL,
	Active					BOOLEAN		DEFAULT 0,
	Type					TEXT		NOT NULL,
	Object					TEXT		NOT NULL,
	Reference				TEXT		NOT NULL,
	Required				TEXT		DEFAULT NULL,
	Version					TEXT		DEFAULT NULL,
	Removed					TEXT		DEFAULT NULL
	);

CREATE TABLE IF NOT EXISTS TM_UserSettings
	(
	Setting				TEXT		NOT NULL,
	Section				TEXT		DEFAULT NULL,
	Value				TEXT		DEFAULT NULL,

	PRIMARY KEY	(Setting)				
	);
