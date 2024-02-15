-- Update Royal Navy Dockyard adjacency text

UPDATE "LocalizedText"
SET "Text" = '+{1_num} [ICON_PRODUCTION] Production from the adjacent Royal Navy Dockyard {1_Num : plural 1?district; other?districts;}.'
WHERE "Tag" = 'LOC_DISTRICT_RURALCOMMUNITYA_ROYAL_NAVY_DOCKYARD';
