SELECT [ProductKey],
      p.[ProductAlternateKey] AS [Item Code],
      p.[EnglishProductName] AS [Product Name],
	  pc.[EnglishProductCategoryName] AS[Category],
      ps.[EnglishProductSubcategoryName] AS [Sub Category],
      p.[Color] AS [Product Color],
      p.[Size] AS [Product Size],
      p.[ModelName] AS [Product Model Name]
ISNULL(p.status,'Outdated') AS [Product Status]

  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p

LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS ps
ON ps.ProductSubCategoryKey=p.ProductSubCategoryKey
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS pc
ON ps.[ProductCategoryKey]=pc.[ProductCategoryKey]
