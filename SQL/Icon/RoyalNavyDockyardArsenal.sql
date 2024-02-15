-------------------------------------
-- Utilize the Arsenal icons for the Royal Navy Dockyard.
-- If Leugi's Unique Districts is in use, no ICON changes are made, instead the art will be overwritten.
-------------------------------------    

UPDATE "IconDefinitions"
SET
	"Atlas" = 'iconsWTR_Districts',
	"Index" = 0
WHERE
	"Name" IN ('ICON_DISTRICT_ROYAL_NAVY_DOCKYARD', 'ICON_DISTRICT_ROYAL_NAVY_DOCKYARD_FOW')
	AND "Atlas" = 'ICON_ATLAS_DISTRICTS'; -- Only apply change if the Atlas is the default
