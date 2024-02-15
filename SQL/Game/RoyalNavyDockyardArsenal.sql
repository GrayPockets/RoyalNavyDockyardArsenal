-- Royal Navy Dockyard to be a Unique Arsenal instead of a Unique Harbor

UPDATE "Districts"
SET
	"PrereqTech" = 'TECH_SHIPBUILDING',
	"NoAdjacentCity" = 1,
	"ZOC" = 1,
	"HitPoints" = 100, 
	"CaptureRemovesBuildings" = 0,
	"PlunderType" = 'NO_PLUNDER',
	"PlunderAmount" = 0,
	"TradeEmbark" = 0,
	"Appeal" = -1,
	"Maintenance" = 1,
	"TravelTime" = -1,
	"CanAttack" = 1,
	"AdvisorType" = 'ADVISOR_CONQUEST'
WHERE
	"DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD';

UPDATE "DistrictReplaces"
SET	"ReplacesDistrictType" = 'DISTRICT_ARSENAL'
WHERE "CivUniqueDistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD';

INSERT INTO "Districts_XP2"
	(	"DistrictType",					"OnePerRiver",	"PreventsFloods",	"PreventsDrought",	"Canal",	"AttackRange"	)
VALUES
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	0,				0,					0,					0,			2				);
		
DELETE FROM "District_TradeRouteYields"
WHERE "DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD'
	AND "YieldType" = 'YIELD_GOLD';

UPDATE "District_TradeRouteYields"
SET "YieldChangeAsInternationalDestination" = 1
WHERE "DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD'
	AND "YieldType" = 'YIELD_PRODUCTION';

UPDATE "District_CitizenYieldChanges"
SET "YieldType" = 'YIELD_PRODUCTION'
WHERE "DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD'
	AND "YieldType" = 'YIELD_FOOD';

INSERT INTO "MutuallyExclusiveDistricts"
	(	"District",						"MutuallyExclusiveDistrict"		)
VALUES
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'DISTRICT_ENCAMPMENT'			),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'DISTRICT_IKANDA'				),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'DISTRICT_THANH'				),
	(	'DISTRICT_ENCAMPMENT',			'DISTRICT_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_IKANDA',				'DISTRICT_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_THANH',				'DISTRICT_ROYAL_NAVY_DOCKYARD'	);
		
DELETE FROM "District_Adjacencies"
WHERE "DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD';

-- Since Arsenals already increase Strategic Resource Stockpiles, Workshop of the World affects Industrial Zone buildings

UPDATE Modifiers
SET "SubjectRequirementSetId" = 'BUILDING_IS_WORKSHOP_ENGLAND'
WHERE ModifierId = 'TRAIT_ADJUST_LIGHTHOUSE_STOCKPILE_CAP';

UPDATE Modifiers
SET "SubjectRequirementSetId" = 'BUILDING_IS_FACTORY_ENGLAND'
WHERE ModifierId = 'TRAIT_ADJUST_SHIPYARD_STOCKPILE_CAP';

UPDATE Modifiers
SET "SubjectRequirementSetId" = 'BUILDING_IS_POWER_PLANT_ENGLAND'
WHERE ModifierId = 'TRAIT_ADJUST_SEAPORT_STOCKPILE_CAP';
