-- Limpiando y extrayendo información de la tabla DimCustumer --
SELECT [CustomerKey]
      -- ,[GeographyKey]
      -- ,[CustomerAlternateKey]
      -- ,[Title]
      ,[FirstName] AS [First Name]
      -- ,[MiddleName]
      ,[LastName] As [Last Name]
	  ,[FirstName]+ ' '+ [LastName] AS [Full Name] -- se conbinan los nombres. 
      -- ,[NameStyle]
      -- ,[BirthDate]
      -- ,[MaritalStatus]
      -- ,[Suffix]
      ,CASE [Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender -- Se cambia la forma de ver el genero --
      -- ,[EmailAddress]
      -- ,[YearlyIncome]
      -- ,[TotalChildren]
      -- ,[NumberChildrenAtHome]
      -- ,[EnglishEducation]
      -- ,[SpanishEducation]
      -- ,[FrenchEducation]
      -- ,[EnglishOccupation]
      -- ,[SpanishOccupation]
      -- ,[FrenchOccupation]
      -- ,[HouseOwnerFlag]
      -- ,[NumberCarsOwned]
      -- ,[AddressLine1]
      -- ,[AddressLine2]
      -- ,[Phone]
      ,[DateFirstPurchase] 
      -- ,[CommuteDistance]
	  , g.City AS [Custumer City]
From 
	dbo.DimCustomer AS c -- Se traen las ciudades a la que pertenece cada cliente  -- 
	LEFT JOIN dbo.DimGeography As g ON g.GeographyKey = c.GeographyKey
ORDER BY 
	CustomerKey


  
	
 