-- Limpieza y extracción de datos de la tabla FactInternetSales -- 
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      -- ,[PromotionKey]
      -- ,[CurrencyKey]
      -- ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      -- ,[SalesOrderLineNumber]
      -- ,[RevisionNumber]
      -- ,[OrderQuantity]
      -- ,[UnitPrice]
      -- ,[ExtendedAmount]
      -- ,[UnitPriceDiscountPct]
      -- ,[DiscountAmount]
      -- ,[ProductStandardCost]
      -- ,[TotalProductCost]
      ,[SalesAmount]
      -- ,[TaxAmt]
      -- ,[Freight]
      -- ,[CarrierTrackingNumber]
      -- ,[CustomerPONumber]
      -- ,[OrderDate]
      -- ,[DueDate]
      -- ,[ShipDate]
  FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE 
	LEFT (OrderDateKey,4) >= YEAR(GETDATE()) -3 -- Asegura que siempre se tengan los datos TRES años atras de la fecha actual --
  ORDER BY
	OrderDateKey
