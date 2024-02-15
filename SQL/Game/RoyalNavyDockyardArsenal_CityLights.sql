-- City Lights adds adjacencies to the Royal Navy Dockyard as a Harbor
-- Remove these

DELETE FROM "District_Adjacencies"
WHERE "DistrictType" = 'DISTRICT_ROYAL_NAVY_DOCKYARD';

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExA_RoyalNavyGoldOne', 'CoreExB_RoyalNavyGoldOne', 'CoreExB_RoyalNavyProdOne', 'CoreExC_RoyalNavyGoldOne', 'CoreExC_RoyalNavyProdOne');
