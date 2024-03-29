-- Dim Customer Table Cleansed --
SELECT c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] AS [First Name]
      --,[MiddleName]
      ,c.[LastName] AS [Last Name]
	  ,c.[FirstName] + ' ' + c.[LastName] AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
		,CASE
			[Gender]  
			WHEN 'M' THEN 'Male' 
			WHEN 'F' THEN 'Female' 
		 END AS [Gender]
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
	  ,g.[City] AS [Customer City] -- Joined in Customer City from Dim Geography Table
  FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] AS c
	LEFT JOIN [dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY 
	c.CustomerKey ASC -- Order the list by ascending Customer Key
