-- In GrayPockets Patch More Maritime Seaside Sectors, adjacencies are added to RuralCommunity from the Arsenal
-- Apply the same to the Royal Navy Dockyard

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",							"Description",										"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",		"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"				)
VALUES
	(	'RurCom_ROYAL_NAVY_DOCKYARD',	'LOC_DISTRICT_RURALCOMMUNITYA_ROYAL_NAVY_DOCKYARD',	'YIELD_PRODUCTION',	1,				0,							1,					0,							0,						NULL,						NULL,				NULL,			NULL,			'DISTRICT_ROYAL_NAVY_DOCKYARD'	);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"					)
VALUES
	(	'DISTRICT_RURALCOMMUNITYA',	'RurCom_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_RURALCOMMUNITYB',	'RurCom_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_RURALCOMMUNITYC',	'RurCom_ROYAL_NAVY_DOCKYARD'	);
