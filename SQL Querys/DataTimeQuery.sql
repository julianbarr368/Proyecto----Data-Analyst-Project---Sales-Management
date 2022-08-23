-- Se limpia y extrae la información de la tabla DimDate --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] AS Day
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  ,[WeekNumberOfYear] AS WeekNo
  ,[EnglishMonthName] AS Month
  ,	LEFT([EnglishMonthName],3) AS MonthShort -- Se toman solo las tres primeras letras del nombre del mes--
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] As MonthNo 
  ,[CalendarQuarter] AS Quarter
  ,[CalendarYear] AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE [CalendarYear] >=2019; -- Se toma solo la información del 2019 en adelante --