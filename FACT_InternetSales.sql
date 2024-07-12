SELECT [ProductKey] AS [Product Key]
		,[CustomerKey] AS [CUSTOMER KEY]
      ,[OrderDateKey] AS [Order Date]
      ,[DueDateKey] AS [Due Date] 
      ,[ShipDateKey] AS [Ship Date] 
      ,[SalesOrderNumber] AS [Sales Order Number]
      ,[SalesAmount] AS [Sales Amount]

  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey,4)=YEAR(GETDATE())-2
