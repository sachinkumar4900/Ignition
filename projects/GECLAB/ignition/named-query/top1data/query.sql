SELECT TOP 1
    [ENERGY_CONSUMED] AS EnergyConsumed
FROM CONSUMPTION
WHERE 
    [DateTime] BETWEEN :StartDate AND :EndDate
    AND CAST([DateTime] AS TIME) = '00:00:00'
ORDER BY [DateTime] DESC;
