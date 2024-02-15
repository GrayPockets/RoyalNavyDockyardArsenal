-- Update Royal Navy Dockyard description

UPDATE "LocalizedText"
SET "Text" = 'A district unique to England for naval military facilities. Replaces the Arsenal district. Also removes the [ICON_Movement] Movement penalty for embarking and disembarking to and from this tile. Must be built on Coast or Lake Terrain adjacent to land.[NEWLINE][NEWLINE]+1 [ICON_Movement] Movement for all naval units built in Dockyard[NEWLINE]+2 [ICON_Gold] Gold and +4 Loyalty per turn when built on a foreign continent. Cannot be built on Reef'
WHERE "Tag" = 'LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_EXPANSION2_DESCRIPTION';

-- Update Workshop of the World description

UPDATE "LocalizedText"
SET "Text" = 'Iron and Coal Mines accumulate 2 more resources per turn. +100% [ICON_PRODUCTION] Production towards Military Engineers. Military Engineers receive +2 charges. Buildings that provide additional yields when [ICON_POWER] Powered receive +4 of that yield. +20% [ICON_PRODUCTION] Production towards Industrial Zone buildings. Industrial Zone buildings increase Strategic Resource Stockpiles by +10 (on Standard Speed).'
WHERE "Tag" = 'LOC_TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION_DESCRIPTION';
