--Cleansed Dim_Customer_Table--

SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  , FirstName + ' ' + LastName as FullName
      --,[NameStyle]
      --,[BirthDate]
	  ,DATEDIFF(Year, BirthDate, getdate()) as Age
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
	  ,case when Gender ='M' then 'Male' else 'Female' end as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,City
	  ,EnglishCountryRegionName as Country
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
  left join [dbo].[DimGeography] g on c.GeographyKey = g.GeographyKey
  order by CustomerKey asc