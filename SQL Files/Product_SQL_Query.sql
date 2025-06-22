--Cleansed Dim_Product_Table--

SELECT [ProductKey]
      ,[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName
	  ,pc.[ProductCategoryKey]
	  ,pc.EnglishProductCategoryName as Category
	  ,ps.[ProductSubcategoryKey] 
	  ,ps.EnglishProductSubcategoryName as SubCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  ,isnull(Status,'Outdated') as ProductStatus
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  left join [dbo].[DimProductSubcategory] ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join [dbo].[DimProductCategory] pc on pc.ProductCategoryKey = ps.ProductCategoryKey
  order by ProductKey asc
