SELECT 
    c.CustomerKey AS [CUSTOMER KEY],
    c.FirstName AS [FIRST NAME],
    c.LastName AS [LAST NAME],
    c.FirstName + ' ' + c.LastName AS [FULL NAME],
    c.DateFirstPurchase AS [DATE FIRST PURCHASED],
    CASE 
        WHEN c.Gender = 'M' THEN 'MALE' 
        WHEN c.Gender = 'F' THEN 'FEMALE' 
    END AS [GENDER],
    g.City
FROM 
    [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimGeography] AS g
ON 
    c.GeographyKey = g.GeographyKey

ORDER BY [CUSTOMER KEY] ASC