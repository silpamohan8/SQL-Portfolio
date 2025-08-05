/*Find  all StateProvinces and how many addresses are associated with it. Order by count descending */

Select StateProvince,Count(*) as TotalCount
From SalesLT.Address
Group by StateProvince
Order  by Count(*) desc

/* Find all stateProvinces, their associated countryRegion, and how many addresses are associated with it
Order by count ascending */

Select StateProvince,Count(*) AS TotalCount,CountryRegion
From SalesLT.Address
Group by StateProvince,CountryRegion
Order  by Count(*) asc





