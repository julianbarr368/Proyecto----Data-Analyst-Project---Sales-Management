-- Limpieza y extracción de los datos de la tabla DimProduct --
SELECT [ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
	  ,[EnglishProductName] AS [Product Name]
      ,ps.[EnglishProductSubcategoryName] AS [Product Subcategory] -- Desde la tabla ps se trae le nombre de la subcategoría según su key --
	  ,pc.[EnglishProductCategoryName] AS [Product Category] -- Se agrega la categoría del producto --  
      -- ,[WeightUnitMeasureCode]
      -- ,[SizeUnitMeasureCode]
      -- ,[SpanishProductName]
      -- ,[FrenchProductName]
      -- ,[StandardCost]
      -- ,[FinishedGoodsFlag]
      ,[Color] AS [Product Color]
      -- ,[SafetyStockLevel]
      -- ,[ReorderPoint]
      -- ,[ListPrice]
      ,[Size] AS [Product Size]
      -- ,[SizeRange]
      -- ,[Weight]
      -- ,[DaysToManufacture]
      ,[ProductLine] AS [Product Line]
      -- ,[DealerPrice]
      -- ,[Class]
      -- ,[Style]
      ,[ModelName] AS [Model Name]
      -- ,[LargePhoto]
      ,[EnglishDescription] AS [Product Desciption]
      -- ,[FrenchDescription]
      -- ,[ChineseDescription]
      -- ,[ArabicDescription]
      -- ,[HebrewDescription]
      -- ,[ThaiDescription]
      -- ,[GermanDescription]
      -- ,[JapaneseDescription]
      -- ,[TurkishDescription]
      -- ,[StartDate]
      -- ,[EndDate]
 ,ISNULL(P.Status,'Outdated') AS [Product Status]

  FROM 
  [dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  -- Se hace doble join para traer las subcategorías según la key y también se usa la ProductCategoryKey que tienen -- 
  -- en común las 2 tablas para poder traer las categorías de los productos. --
  ORDER BY
	p.ProductKey