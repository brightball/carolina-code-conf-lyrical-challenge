-- I ain't the sharpest tool in the shed
SELECT max(tool.sharpness) AS sharpestTool
FROM shed
INNER JOIN tool ON shed.id = tool.locationId
WHERE tool.name <> 'I';
