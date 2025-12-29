SELECT 
    CAST([DateTime] AS DATE) AS ConsumptionDate,
    [ENERGY_CONSUMED] AS EnergyConsumed
FROM [CONSUMPTION]
WHERE 
    DateTime BETWEEN :StartDate AND :EndDate
    AND CAST([DateTime] AS TIME) = '00:00:00'
ORDER BY ConsumptionDate DESC;