-- Cleansed Data (For Date) 
SELECT [DateKey],
      [FullDateAlternateKey] AS DATE,
      [EnglishDayNameOfWeek] AS WEEK,
      [EnglishMonthName] AS MONTH,
      [MonthNumberOfYear] AS MONTHNO,
      [CalendarYear] AS YEAR

  FROM [AdventureWorksDW2022].[dbo].[DimDate]

  WHERE 
  CalendarYear>=2022