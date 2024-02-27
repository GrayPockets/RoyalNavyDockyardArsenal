-- In GrayPockets Patch More Maritime Seaside Sectors, adjacencies are added to unique RuralCommunities from the Arsenal (352)
-- Apply the same to the Royal Navy Dockyard

INSERT INTO "District_Adjacencies"
	(	"DistrictType",					"YieldChangeID"					)
VALUES
	(	'DISTRICT_COREX_GYOSON',		'RurCom_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_COREX_TROYU',			'RurCom_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_COREX_FRONTIER_TOWN',	'RurCom_ROYAL_NAVY_DOCKYARD'	),
	(	'DISTRICT_COREX_TSIKHE',		'RurCom_ROYAL_NAVY_DOCKYARD'	);
